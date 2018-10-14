local jass = require 'jass.common'

local player = {}
setmetatable(player, player)
et.player = player

-- 表player的toString()方法
function player:__tostring()
    return ('玩家%02d|%s|%s'):format(self.id, self.base_name, jass.GetPlayerName(self.handle))
end

-- __index元方法对应的表
local mt = {}
player.__index = mt

--类型
mt.type = 'player'

--句柄，存储jass的player对象
mt.handle = 0

-- id
mt.id = 0

-- 获取玩家id
function mt:get()
    return self.id
end

--注册事件
function mt:event(name)
	return et.event_register(self, name)
end

local et_game = et.game

--发起事件
function mt:event_dispatch(name, ...)
	local res = et.event_dispatch(self, name, ...)
	if res ~= nil then
		return res
	end
	local res = et.event_dispatch(et_game, name, ...)
	if res ~= nil then
		return res
	end
	return nil
end

function mt:event_notify(name, ...)
	et.event_notify(self, name, ...)
	et.event_notify(et_game, name, ...)
end

-- 获取玩家名字
function mt:get_name()
    return jass.GetPlayerName(self.handle)
end

-- 获取原始名字
function mt:get_base_name()
    return self.base_name
end

-- 设置玩家名字
function mt:set_name(name)
    jass.setPlayerName(self.handle, name)
end

-- 判断是否为真人玩家
function mt:is_player()
    return jass.GetPlayerController(self.handle) == jass.MAP_CONTROL_USER and jass.GetPlayerSlotState(self.handle) == jass.Player_SLOT_STATE_PLAYING
end

-- 判断是否为本地玩家
function mt:is_local()
    return self == player.localplayer
end

-- 小地图信号
function mt:pingMinimap(x, y, time, red, green, blue, flag)
    if self == player.localplayer then
        jass.PintMinimapEx(x, y, time, red or 0, green or 255, blue or 0, not not flag)
    end
end

-- 设置队伍
function mt:set_team(team_id)
    jass.setPlayerTeam(self.handle, team_id - 1)
    self.team_id = team_id
end

-- 获取队伍
function mt:get_team()
    if not self.team_id then
        self.team_id = jass.GetPlayerTeam(self.handle) + 1
    end
end

-- 判断目标玩家是否为敌人
function mt:is_enemy(dest)
    return self:get_team() ~= dest.get_team()
end

-- 判断目标玩家是否为友军
function mt:is_ally(dest)
    return self:get_team() == dest.get_team()
end

-- 发送消息
function mt:send_message(text, time)
    jass.DisplayTimedTextToPlayer(self.handle, 0, 0, time or 15, text)
end

-- 清空屏幕消息
function mt:clear_messages()
    if self == player.localplayer then
        jass.ClearTextMessages()
    end
end

-- 直接作为方法调用，获取玩家
function player:__call(i)
    return player[i]
end

-- 清点在线玩家
function player.countAlive()
    local count = 0
    for i = 1, 16 do
        if player[i]:is_player() then
            count = count + 1
        end
    end
    return count
end

-- 创建玩家（一般不允许外部创建）
-- jPlayer指jass中的player对象
function player.create(id, jPlayer)
    local p = {}
    setmetatable(p, player)

    p.handle = jPlayer
    player[jPlayer] = p

    p.id = id
    p.base_name = p:get_name()

    player[id] = p
    return p
end

--一些常用事件
function player.regist_jass_triggers()
    --玩家聊天事件
    local trg = war3.CreateTrigger(function()
        local player = et.player(jass.GetTriggerPlayer())
        player:event_notify('玩家-聊天', player, jass.GetEventPlayerChatString())
    end)

    for i = 1, 16 do
        jass.TriggerRegisterPlayerChatEvent(trg, player[i].handle, '', false)
    end

    --玩家离开事件
    local trg = war3.CreateTrigger(function()
        local p = et.player(jass.GetTriggerPlayer())
        if p:is_player() then
            player.count = player.count - 1
        end
        p:event_notify('玩家-离开', p)
    end)

    for i = 1, 16 do
        jass.TriggerRegisterPlayerEvent(trg, player[i].handle, jass.EVENT_PLAYER_LEAVE)
    end
end

local function init()
    -- 存活玩家数
    player.count = 0

    for i = 1, 16 do
        player.create(i, jass.Player(i - 1))

        if player[i]:is_player() then
            player.count = player.count + 1
        end

        log.debug(('玩家[%s][%s]'):format(i, player[i]:get_name()))
    end

    --保留2个图标位置
    jass.SetReservedLocalHeroButtons(2)
    
    -- 本地玩家
    player.localplayer = et.player(jass.GetLocalPlayer())
    log.debug(('本地玩家[%s][%s]'):format(player.localplayer:get(), player.localplayer:get_name()))
 
end

init()

return player