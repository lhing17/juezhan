-- 养武系统

--- @param growable item 养武
local function update_growable(growable)
    local level = growable.data.level or 1
    growable:set_title("镇妖+" .. level)
    local progress = growable.data.progress or 0
    if not growable.data.progress then
        growable.data.progress = 0
    end
    if not growable.data.level then
        growable.data.level = 1
    end
    local total = 500 * level
    local tips = {
        "|cff33ff00〓神器〓|r",
        "|cff00ffff类别:成长型装备|r",
        "|cffcc9999等级:|r",
        "|cff33ff00☆☆☆★★|n攻击+{attack}",
        "招式伤害+{trick_damage}",
        "杀怪回复+{kill_regen}",
        "攻击速度+{attack_speed}%",
        "暴击伤害+{critical_damage}%",
        "装备后通过杀怪可获得升级|r",
        "|cffdc143c人物死亡后武器会消失！！！！！|r",
        "升级进度：{progress}/{total}"
    }
    local tip = table.concat(tips, '\n')
    tip = tip:gsub("{attack}", 1000 * level):gsub("{trick_damage}", 150 * level)
             :gsub("{kill_regen}", 300 * level):gsub("{attack_speed}", 10 + 10 * level)
             :gsub("{critical_damage}", 15 * level):gsub("{progress}", progress)
             :gsub("{total}", total)
    growable:set_tip(tip)
end

local function init()
    --- 镇妖升级
    --- @param killer unit
    --- @param killed unit
    et.game:event '单位-杀死单位' (function(self, killer, killed)
        if not killer:is_hero() then
            return
        end
        local flag = false
        local it
        for i = 1, 6 do
            if killer:get_item_in_slot(i):get_type() == 'growable' then
                flag = true
                it = killer:get_item_in_slot(i)
                break
            end
        end
        if flag then
            it.data.progress = (id.data.progress or 0) + 1
            if it.data.progress >= 500 * (id.data.level or 1) then
                killer:get_owner():send_message( "|cFF33FF00恭喜养武等级获得提升")
                id.data.level = (id.data.level or 1) + 1
                it.data.progress = 0
            end
        end
    end)

    ---@param u unit
    ---@param it item
    et.game:event '单位-捡起物品'(function(self, u, it)
        --- 是英雄且是镇妖+1
        if u:is_hero() and it:get_id() == 1227895379 then
            for i = 1, 6 do
                local m = u:get_item_in_slot(i)
                if m:get_id() == 1227895379 then
                    u:remove_item(m)
                    local id = 'IT' .. u:get_owner().id .. (i - 1)
                    local grow = u:add_item(id)
                    grow:set_type('growable')
                    grow:disable_drop()
                    --- 禁止掉落
                    u:get_owner().hero:set_growable(grow)
                    update_growable(grow)
                end
            end
        end
    end)
end
init()