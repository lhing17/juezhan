local setmetatable = setmetatable
--鸟的贩卖技能

--切换物品
local ipairs = ipairs
local pairs = pairs
local table_insert = table.insert
local math_max = math.max
local math_floor = math.floor

local cur_frame = 0
local max_frame = 0
local cur_index = 0
local free_queue = {}
local timer = {}

-- 从队尾分配
local function alloc_queue()
	local n = #free_queue
	if n > 0 then
		local r = free_queue[n]
		free_queue[n] = nil
		return r
	else
		return {}
	end
end

-- 将到期时间的计时器加入到队列中
local function m_timeout(self, timeout)
	local ti = cur_frame + timeout
	local q = timer[ti]
	if q == nil then
		q = alloc_queue()
		timer[ti] = q
	end
	self.timeout_frame = ti
	q[#q + 1] = self
end

local function m_wakeup(self)
	if self.removed then
		return
	end
	-- 执行回调函数
	self:on_timer()
	if self.removed or self.pause_remaining then
		return
	end
	if self.timeout then
		m_timeout(self, self.timeout)
	else
		self.removed = true
	end
end

local function on_tick()
	local q = timer[cur_frame]
	if q == nil then
		cur_index = 0
		return
	end
	for i = cur_index + 1, #q do
		local callback = q[i]
		cur_index = i
		q[i] = nil
		if callback then
			m_wakeup(callback)
		end
	end
	cur_index = 0
	timer[cur_frame] = nil
	free_queue[#free_queue + 1] = q
end

function et.clock()
	return cur_frame
end

function et.timer_size()
	local n = 0
	for _, ts in pairs(timer) do
		n = n + #ts
	end
	return n
end

local jass = require 'jass.common'
local jtimer = jass.CreateTimer()
require('jass.debug').handle_ref(jtimer)
jass.TimerStart(jtimer, 0.01, true, function ()
	local delta = 10
	if cur_index ~= 0 then
		cur_frame = cur_frame - 1
	end
	max_frame = max_frame + delta
	-- 每0.01秒执行10次
	while cur_frame < max_frame do
		cur_frame = cur_frame + 1
		on_tick()
	end
end)


local mt = {}
local api = {}
mt.__index = api
mt.type = 'timer'

function api:remove()
	self.removed = true
end

function api:get_remaining()
	if self.removed then
		return 0
	end
    if self.pause_remaining then
        return self.pause_remaining
    end
    if self.timeout_frame == cur_frame then
        return self.timeout or 0
    end
    return self.timeout_frame - cur_frame
end

function api:pause()
	self.pause_remaining = self:get_remaining()
	local ti = self.timeout_frame
	local q = timer[ti]
	if q then
		for i= #q, 1, -1 do
			if q[i] == self then
				q[i] = false
				return
			end
		end
	end
end

function api:resume()
	if self.pause_remaining then
		m_timeout(self, self.pause_remaining)
		self.pause_remaining = nil
	end
end

-- 以毫秒为单位，最低为1
function et.wait(timeout, on_timer)
	local timeout = math_max(math_floor(timeout) or 1, 1)
	local t = setmetatable({
		['on_timer'] = on_timer,
	}, mt)
	m_timeout(t, timeout)
	return t
end

function et.loop(timeout, on_timer)
	local t = setmetatable({
		['timeout'] = math_max(math_floor(timeout) or 1, 1),
		['on_timer'] = on_timer,
	}, mt)
	m_timeout(t, t.timeout)
	return t
end

-- 显示一个timerdialog，时间到了之后销毁
function et.timerdialog(timeout, title)
	local t = jass.CreateTimer()
	local td = jass.CreateTimerDialog(t)
	jass.TimerStart(t, timeout, false, function()
		jass.DestroyTimerDialog(td)
		jass.PauseTimer(t)
		jass.DestroyTimer(t)
	end)
	jass.TimerDialogSetTitle(td, title)
	jass.TimerDialogDisplay(td, true)
end

function et.timer(timeout, count, on_timer)
	if count == 0 then
		return et.loop(timeout, on_timer)
	end
	local t = et.loop(timeout, function(t)
		on_timer(t)
		count = count - 1
		if count <= 0 then
			t:remove()
		end
	end)
	return t
end

local function utimer_initialize(u)
	if not u._timers then
		u._timers = {}
	end
	if #u._timers > 0 then
		return
	end
	u._timers[1] = et.loop(10000, function()
		local timers = u._timers
		for i = #timers, 2, -1 do
			if timers[i].removed then
				local len = #timers
				timers[i] = timers[len]
				timers[len] = nil
			end
		end
		if #timers == 1 then
			timers[1]:remove()
			timers[1] = nil
		end
	end)
end

function et.uwait(u, timeout, on_timer)
	utimer_initialize(u)
	local t = et.wait(timeout, on_timer)
	table_insert(u._timers, t)
	return t
end

function et.uloop(u, timeout, on_timer)
	utimer_initialize(u)
	local t = et.loop(timeout, on_timer)
	table_insert(u._timers, t)
	return t
end

function et.utimer(u, timeout, count, on_timer)
	utimer_initialize(u)
	local t = et.timer(timeout, count, on_timer)
	table_insert(u._timers, t)
	return t
end
