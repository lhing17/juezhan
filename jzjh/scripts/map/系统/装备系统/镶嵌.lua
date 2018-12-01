local jewel = {
    [1227896146] = '胆魄',
    [1227896145] = '福缘',
    [1227896141] = '根骨',
    [1227896143] = '经脉',
    [1227896144] = '悟性',
    [1227896142] = '医术' }

local function init()
    et.game:event '单位-捡起物品'(function(self, u, it)
        --- @type player
        local p = u:get_owner()
        local h = p.hero
        if is_in(it:get_id(), table.keys(jewel)) then
            if not h.part_times['锻造师'] then
                p:send_message("|cFFFFCC00你不是锻造师，不可以镶嵌宝石")
                p:add_gold(20000)
                return
            end
            if it:get_remained_hole() <= 0 then
                p:send_message("|cFFFFCC00你的第一格物品无法镶嵌宝石")
                p:add_gold(20000)
                return
            end
            it:embed(jewel[it:get_id()])
        end
    end)

    -- 装备打孔
    et.game:event '单位-使用物品'(function(self, u, it)
        --- @type player
        local p = u:get_owner()
        if u:get_owner():is_player() and it.get_id() == 1227896398 then
            --- @type item
            local item = u:get_item_in_slot(1)
            if not item:is_equipment() then
                p:send_message("|cffff0000第一格物品不是装备")
            elseif item:get_hole() >= game.config.max_hole then
                p:send_message("|cffff0000第一格物品不能再打孔了")
            else
                p:send_message()
                item:add_hole("|cff00ffff打孔成功！")
            end
        end
    end)
end
init()



