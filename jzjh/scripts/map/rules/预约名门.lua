---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/11/16 12:52
---

local function init()
    -- 预约名门和取消预约
    et.game:event '单位-捡起物品'(function(self, u, item)
        local p = u:get_owner()
        if p:is_player() and is_in(item:get_id(), { 1227899471, 1227896659 }) then
            if item:get_id() == 1227896659 then
                game.variable.famous_num = 5
                force.send_message("|cff00ffff有玩家开始预约名门挑战，本波进攻怪物将会增加名门高手，大家要小心应付了！", 30)
            end
            if item:get_id() == 1227899471 then
                game.variable.famous_num = 0
                force.send_message("|cff00ffff有玩家取消了预约名门挑战，下波进攻怪物将不会增加名门高手，大家可以放轻松了！", 30)
            end
        end
    end)

end
init()