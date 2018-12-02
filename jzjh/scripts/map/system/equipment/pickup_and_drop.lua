--- 捡起和丢下装备
local function init()
    --- @param u unit
    --- @param it item
    et.game:event '单位-捡起物品'(function(self, u, it)
        local p = u:get_owner()
        local h = p.hero
        if not (table.is_empty(it:get_bonus_table())) then
            if u:is_hero() then
                p:send_message("|cff66cc33获得附加属性：|r")
            else
                p:send_message("|cff66cc33附加属性：|r")
            end
            local tab = it:get_bonus_table()
            if tab.attack and tab.attack > 0 then
                p:send_message("|cFFff66ff攻击+" .. tab.attack)
            end
            if tab.armor and tab.armor > 0 then
                p:send_message("|cFFff66ff防御+" .. tab.armor)
            end
            if tab.trick_damage and tab.trick_damage > 0 then
                p:send_message("|cFFff66ff招式伤害+" .. tab.trick_damage)
            end
            if tab.internal and tab.internal > 0 then
                p:send_message("|cFFff66ff内力+" .. tab.internal)
            end
            if tab.real_damage and tab.real_damage > 0 then
                p:send_message("|cFFff66ff真实伤害+" .. tab.real_damage)
            end
            if it:get_hole() > 0 then
                p:send_message("|cFFff66ff装备剩余凹槽：" .. it:get_hole())
            end
            p:send_message("|cFFff66ff镶嵌效果：")
            if tab.constitution and tab.constitution > 1 then
                p:send_message("|cFFff66ff根骨+" .. tab.constitution)
            end
            if tab.perception and tab.perception > 1 then
                p:send_message("|cFFff66ff悟性+" .. tab.perception)
            end
            if tab.courage and tab.courage > 1 then
                p:send_message("|cFFff66ff胆魄+" .. tab.courage)
            end
            if tab.luck and tab.luck > 1 then
                p:send_message("|cFFff66ff福缘+" .. tab.luck)
            end
            if tab.channel and tab.channel > 1 then
                p:send_message("|cFFff66ff经脉+" .. tab.channel)
            end
            if tab.healing_skill and tab.healing_skill > 1 then
                p:send_message("|cFFff66ff医术+" .. tab.healing_skill)
            end
        end
        --穿上装备
        if u:is_hero() and it:is_equipment() then
            h:add_bonus(et.lni.equipment[it:get_id()], 0)
        end
        if u:is_hero() and is_in(it:get_type(), { 'weapon', 'clothes' }) then
            local counter = { weapon = 0, clothes = 0 }
            local limit = { weapon = 1, clothes = 1 }
            if h.part_times['丫鬟'] then
                limit.weapon = h.part_times['丫鬟'].level + 1
                limit.clothes = h.part_times['丫鬟'].level + 1
            end
            for i = 1, 6 do
                local tp = u:get_item_in_slot(i):get_type()
                if is_in(tp, { 'weapon', 'clothes' }) then
                    counter[tp] = counter[tp] + 1
                end
                if counter[tp] > limit[tp] then
                    p:send_message("你最多只能携带" .. limit[tp] .. "件武器或衣服")
                    u:remove_item(u:get_item_in_slot(i))
                end
            end
        end
    end)

    --- @param u unit
    --- @param it item
    et.game:event '单位-扔下物品'(function(self, u, it)
        local p = u:get_owner()
        local h = p.hero
        if u:is_hero() and it:is_equipment() then
            h:add_bonus(et.lni.equipment[it:get_id()], 1)
        end
    end)
end
init()