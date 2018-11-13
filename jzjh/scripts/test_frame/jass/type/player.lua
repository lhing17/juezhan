---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/11/1 11:31
---

local common_util = require 'jass.util.common_util'
local mapcontrol = require 'jass.type.mapcontrol'
local playerslotstate = require 'jass.type.playerslotstate'

local player = {}
player.all_players = {}

setmetatable(player, player)
local MAX_PLAYER_NUM = 16

local mt = {}
player.__index = mt

-- 是否为观察者
mt.observer = false
mt.id = 0
mt.type = 'player'
mt.name = '玩家1'

function mt:is_ally(p)
    return common_util.is_in_table(p, self.allies)
end

function mt:is_enemy(p)
    return not is_ally(p)
end

function mt:is_in_force(f)
    return common_util.is_in_table(p, f.players)
end

function mt:is_observer()
    return self.observer
end

function mt:get_id()
    return self.id
end

function mt:get_unit_count()
    local counter = 0
    for k, v in pairs(self.units) do
        counter = counter + 1
    end
    return counter
end

function mt:get_name()
    return self.name
end

function mt:get_controller()
    return self.map_control
end

function mt:get_slot_state()
    return self.slot_state
end

function mt:get_state(state)
    if not self[state] then
        return 0
    end
    return self[state]
end

function mt:set_alliance(p, alliance_type)
    if type(self.allies) == 'table' then
        --FIXME 是否需要分类别
        table.insert(self.allies, p)
    end
end

function mt:set_state(state, value)
    self[state] = value
end

function mt:set_name(name)
    self.name = name
end

function mt:is_tech_researched(techid)
    if not self.techs[techid] then
        return false
    end
    return self.techs[techid].level > 0
end

function mt:set_tech_max_allowed(techid, max)
    if not self.techs[techid] then
        self.techs[techid] = {}
    end
    self.techs[techid].max_allowed = max
end

function mt:get_tech_max_allowed(techid)
    if not self.techs[techid] then
        return 100
    end
    return self.techs[techid].max_allowed
end

function mt:set_ability_available(id, flag)
    self.ability_availability[id] = flag
end



function player:__call(i)
    return player[i]
end

function player:__tostring()
    return self.handle_id ..':'.. self.name
end

function player.get_local()
    if player.native then
        return player.native
    else
        return player[1]
    end
end

function player.init()
    for i = 1, MAX_PLAYER_NUM do
        local p = {}
        p.handle_id = common_util.generate_handle_id()
        p.id = i - 1
        p.units = {}
        setmetatable(p, player)
        player.all_players[p.handle_id] = p
        player[i] = p
        p.allies = {}
        p.techs = {}
        p.ability_availability = {}
        p.name = '玩家' .. i
        p.map_control = mapcontrol[1]
        p.slot_state = playerslotstate[2]
    end
    player.native = player[1]
end

return player