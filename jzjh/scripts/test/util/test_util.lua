---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/11/14 13:39
---

local trigger_util = require 'jass.util.trigger_util'
local item = require 'jass.type.item'
local timer = require 'jass.type.timer'
local test_util = {}

function test_util.player1_select_hero()
    trigger_util.trig_player_unit_event(et.player(1).handle, jass.EVENT_PLAYER_UNIT_SELECTED, LAN_XIN.handle)
    trigger_util.trig_player_unit_event(et.player(1).handle, jass.EVENT_PLAYER_UNIT_SELECTED, LAN_XIN.handle)
    return et.player(1).hero
end

function test_util.create_item(id)
    return item.create(id, 0, 0)
end

function test_util.update_timer(tm, dt)
    if not tm then
        timer.update(dt)
    else
        tm:update(dt)
    end


end

return test_util