local setmetatable = setmetatable
local ipairs = ipairs

local et_game = et.game

-- 发起事件，带返回结果
function et.event_dispatch(obj, name, ...)
	local events = obj.events
	if not events then
		return
	end
	local event = events[name]
	if not event then
		return
	end
	for i = #event, 1, -1 do
		local res = event[i](...)
		if res ~= nil then
			return res
		end
	end
end

-- 发起事件，不带返回结果
function et.event_notify(obj, name, ...)
	local events = obj.events
	if not events then
		return
	end
	local event = events[name]
	if not event then
		return
	end
	for i = #event, 1, -1 do
		event[i](...)
	end
end

-- 注册事件
function et.event_register(obj, name)
	local events = obj.events
	if not events then
		events = {}
		obj.events = events
	end
	local event = events[name]
	if not event then
		event = {}
		events[name] = event
		function event:remove()
			events[name] = nil
		end
	end
	return function (f)
		return et.trigger(event, f)
	end
end

function et.game:event_dispatch(name, ...)
	return et.event_dispatch(self, name, ...)
end

function et.game:event_notify(name, ...)
	return et.event_notify(self, name, ...)
end

function et.game:event(name)
	return et.event_register(self, name)
end
