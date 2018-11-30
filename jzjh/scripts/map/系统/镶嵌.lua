local jewel = { 1227896146, 1227896145, 1227896141, 1227896143, 1227896144, 1227896142 }

---------镶嵌宝石系统开始-------//

function XiangQian(u, it, it2, id, i)
    local p = GetOwningPlayer(u)
    local ii1 = ModuloInteger(GetItemUserData(it) // 1000, 10)
    local ii2 = ModuloInteger(GetItemUserData(it) // 100, 10)
    local ii3 = ModuloInteger(GetItemUserData(it) // 10, 10)
    if GetItemTypeId(it2) == id then
        if ii1 == 0 then
            AdjustPlayerStateBJ(20000, p, PLAYER_STATE_RESOURCE_GOLD)
            DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00你的第一格物品无法镶嵌宝石")
        else
            SetItemPositionLoc(it, v7[9])
            if ii2 == 0 then
                SetItemUserData(it, GetItemUserData(it) + 100 * i - 1000)
            else
                if ii3 == 0 then
                    SetItemUserData(it, GetItemUserData(it) + 10 * i - 1000)
                else
                    SetItemUserData(it, GetItemUserData(it) + 1 * i - 1000)
                end
            end
            UnitAddItem(u, it)
        end
    end
    p = nil
end
function mA()
    local u = GetTriggerUnit()
    local it = UnitItemInSlotBJ(u, 1)
    XiangQian(u, it, GetManipulatedItem(), 1227896141, 1)
    XiangQian(u, it, GetManipulatedItem(), 1227896144, 2)
    XiangQian(u, it, GetManipulatedItem(), 1227896143, 3)
    XiangQian(u, it, GetManipulatedItem(), 1227896145, 4)
    XiangQian(u, it, GetManipulatedItem(), 1227896146, 5)
    XiangQian(u, it, GetManipulatedItem(), 1227896142, 6)
    u = nil
    it = nil

end
--镶嵌宝石系统
t = CreateTrigger()
TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
TriggerAddCondition(t, Condition(kA))
TriggerAddAction(t, mA)
---------镶嵌宝石系统结束-------//

local function init()
    et.game:event '单位-捡起物品'(function(self, u, it)

        --- @type player
        local p = u:get_owner()
        local h = p.hero
        if is_in(it:get_id(), jewel) then
            if not h.part_times['锻造师'] then
                p:send_message("|cFFFFCC00你不是锻造师，不可以镶嵌宝石")
                p:add_gold(20000)
                return
            end

        end
    end)
end
init()