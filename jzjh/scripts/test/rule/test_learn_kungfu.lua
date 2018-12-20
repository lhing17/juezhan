---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/12/12 15:29
---

require 'test.test-main'
local trigger_util = require 'jass.util.trigger_util'
local item = require 'jass.type.item'
local test_util = require 'test.util.test_util'
local button = require 'jass.type.button'

--- @type hero
local h
--- @type unit
local hu
--- @type player
local p
--- @type j_item
local it
--- @type j_item
local kungfu_it

local function setup()
    h = test_util.player1_select_hero()
    hu = h:get_unit()
    p = h:get_owner()
    it = item.create(1227895856, 0, 0)
    hu:add_item(1227895642)
    hu:add_ability(1093678411, 2)
    trigger_util.trig_player_unit_event(p.handle, jass.EVENT_PLAYER_UNIT_PICKUP_ITEM, h.handle, { manipulated_item = item.create(1227894833, 0, 0) })

    h['福缘'] = h['福缘'] + 7
    h['悟性'] = h['悟性'] + 11
    h['医术'] = h['医术'] + 12
    kungfu_it = item.create(base.string2id('I03J'), 0, 0)
end

local function test_learn_kungfu()
    --- 测试学习门派内功
    trigger_util.trig_player_unit_event(p.handle, jass.EVENT_PLAYER_UNIT_PICKUP_ITEM, h.handle, { manipulated_item = it })
    for i, v in pairs(button.all_buttons) do
        print(i, v)
    end
    trigger_util.trig_dialog_button_event(p.handle, button.all_buttons[4294972864])
    --- 测试学习江湖武学
    trigger_util.trig_player_unit_event(p.handle, jass.EVENT_PLAYER_UNIT_USE_ITEM, h.handle, { manipulated_item = kungfu_it })

    --- 测试已经学习江湖武学
    trigger_util.trig_player_unit_event(p.handle, jass.EVENT_PLAYER_UNIT_USE_ITEM, h.handle, { manipulated_item = kungfu_it })

end

local function teardown()

end

local function test()
    setup()
    test_learn_kungfu()
    teardown()
end

test()