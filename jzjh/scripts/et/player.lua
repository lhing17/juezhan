local jass = require 'jass.common'
local dbg = require 'jass.debug'
require 'war3.api'

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
    -- return nil
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
        jass.PintMinimapEx(x, y, time or 1, red or 0, green or 255, blue or 0, not not flag)
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

--设置镜头位置
function mt:setCamera(where, time)
    if player.self == self then
        local x, y
        if where then
            x, y = where:get_point():get()
        else
            x, y = jass.GetCameraTargetPositionX(), jass.GetCameraTargetPositionY()
        end
        if time then
            jass.PanCameraToTimed(x, y, time)
        else
            jass.SetCameraPosition(x, y)
        end
    end
end

function mt:get_tech(tech_id)
    if type(tech_id) == 'string' then
        tech_id = base.string2id(tech_id)
    end
    return jass.GetPlayerTechCount(self.handle, tech_id, true)
end

function mt:set_tech(tech_id, level)
    if type(tech_id) == 'string' then
        tech_id = base.string2id(tech_id)
    end
    jass.SetPlayerTechResearched(self.handle, tech_id, level)
end

function mt:add_tech(tech_id, level)
    if type(tech_id) == 'string' then
        tech_id = base.string2id(tech_id)
    end
    level = level or 1
    self:set_tech(tech_id, self:get_tech(tech_id) + level)
end


--设置镜头属性
--	镜头属性
--	数值
--	[持续时间]
function mt:setCameraField(key, value, time)
    if self == player.localplayer then
        jass.SetCameraField(jass[key], value, time or 0)
    end
end

function mt:get_gold()
    return jass.GetPlayerState(self.handle, jass.PLAYER_STATE_RESOURCE_GOLD)
end

function mt:set_gold(gold)
    jass.SetPlayerState(self.handle, jass.PLAYER_STATE_RESOURCE_GOLD, gold)
end

function mt:add_gold(gold)
    self:set_gold(self:get_gold() + gold)
end


function mt:get_lumber()
    return jass.GetPlayerState(self.handle, jass.PLAYER_STATE_RESOURCE_LUMBER)
end

function mt:set_lumber(lumber)
    jass.SetPlayerState(self.handle, jass.PLAYER_STATE_RESOURCE_LUMBER, lumber)
end

function mt:add_lumber(lumber)
    self:set_lumber(self:get_lumber() + lumber)
end
--获取镜头属性
--	镜头属性
function mt:getCameraField(key)
    return math.deg(jass.GetCameraField(jass[key]))
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
    dbg.handle_ref(jPlayer)
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
    -- player.localplayer = et.player(1)
    player.localplayer = et.player(jass.GetLocalPlayer())
    log.debug(('本地玩家[%s][%s]'):format(player.localplayer:get(), player.localplayer:get_name()))

    --注册常用事件
    player.regist_jass_triggers()


    for k, v in pairs(player) do
        print(k, v)
    end
    -- 选择单位事件
    require 'war3.select'
end

init()
require 'et.force'

return player