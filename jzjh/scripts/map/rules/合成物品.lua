---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/11/15 20:58
---

--锻造大师补属性
function DZDSBuShuXing(u)
    local ii7 = 0
    local ii8 = 0
    local ii9 = 0
    local it = nil
    local j = 1
    local i = 1 + GetPlayerId(GetOwningPlayer(u))
    for _ in _loop_() do
        if j >= 7 then
            break
        end
        it = UnitItemInSlotBJ(u, j)
        ii7 = ModuloInteger(GetItemUserData(it) // 100, 10)
        ii8 = ModuloInteger(GetItemUserData(it) // 10, 10)
        ii9 = ModuloInteger(GetItemUserData(it) // 1, 10)
        --call BJDebugMsg("第"+I2S(j)+"格子物品的数值为"+I2S(ii7*100+ii8*10+ii9))
        if ii7 == 1 then
            gengu[i] = gengu[i] + 2
        elseif ii7 == 2 then
            wuxing[i] = wuxing[i] + 2
        elseif ii7 == 3 then
            jingmai[i] = jingmai[i] + 2
        elseif ii7 == 4 then
            fuyuan[i] = fuyuan[i] + 2
        elseif ii7 == 5 then
            danpo[i] = danpo[i] + 2
        elseif ii7 == 6 then
            yishu[i] = yishu[i] + 2
        end
        if ii8 == 1 then
            gengu[i] = gengu[i] + 2
        elseif ii8 == 2 then
            wuxing[i] = wuxing[i] + 2
        elseif ii8 == 3 then
            jingmai[i] = jingmai[i] + 2
        elseif ii8 == 4 then
            fuyuan[i] = fuyuan[i] + 2
        elseif ii8 == 5 then
            danpo[i] = danpo[i] + 2
        elseif ii8 == 6 then
            yishu[i] = yishu[i] + 2
        end
        if ii9 == 1 then
            gengu[i] = gengu[i] + 2
        elseif ii9 == 2 then
            wuxing[i] = wuxing[i] + 2
        elseif ii9 == 3 then
            jingmai[i] = jingmai[i] + 2
        elseif ii9 == 4 then
            fuyuan[i] = fuyuan[i] + 2
        elseif ii9 == 5 then
            danpo[i] = danpo[i] + 2
        elseif ii9 == 6 then
            yishu[i] = yishu[i] + 2
        end
        j = j + 1
    end
    it = nil
end

--合成物品
function HeCheng_Conditions()
    --call BJDebugMsg(I2S(GetUnitTypeId(GetTriggerUnit())))
    return Ce[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == 2 or GetItemTypeId(GetManipulatedItem()) == 1227897145 or GetItemTypeId(GetManipulatedItem()) == 1227897153 or GetItemTypeId(GetManipulatedItem()) == 1227897154 or GetItemTypeId(GetManipulatedItem()) == 1227897156
end
function HeCheng_Actions()
    --二合一
    --if GetItemTypeId(GetManipulatedItem()) == 'I09C' or GetItemTypeId(GetManipulatedItem()) == 'I09P' then
    --   	call YDWENewItemsFormula( 'I09C', 1, 'I09P', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'I00B' )
    --endif
    --if GetItemTypeId(GetManipulatedItem()) == 'I098' or GetItemTypeId(GetManipulatedItem()) == 'I09P' then
    --   	call YDWENewItemsFormula( 'I098', 1, 'I09P', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'I00D' )
    --endif
    if GetItemTypeId(GetManipulatedItem()) == 1227894850 or GetItemTypeId(GetManipulatedItem()) == 1227894852 then
        YDWENewItemsFormula(1227894850, 1, 1227894852, 1, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1227894852)
    end
    if GetItemTypeId(GetManipulatedItem()) == 1227895379 or GetItemTypeId(GetManipulatedItem()) == 1227897168 then
        YDWENewItemsFormula(1227895379, 1, 1227897168, 1, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1227895373)
    end
    if GetItemTypeId(GetManipulatedItem()) == 1227895373 or GetItemTypeId(GetManipulatedItem()) == 1227897168 then
        YDWENewItemsFormula(1227895373, 1, 1227897168, 1, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1227895377)
    end
    if GetItemTypeId(GetManipulatedItem()) == 1227895377 or GetItemTypeId(GetManipulatedItem()) == 1227897168 then
        YDWENewItemsFormula(1227895377, 1, 1227897168, 1, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1227895378)
    end
    if GetItemTypeId(GetManipulatedItem()) == 1227895378 or GetItemTypeId(GetManipulatedItem()) == 1227897168 then
        YDWENewItemsFormula(1227895378, 1, 1227897168, 1, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1227895376)
    end
    if GetItemTypeId(GetManipulatedItem()) == 1227897145 or GetItemTypeId(GetManipulatedItem()) == 1227897153 then
        YDWENewItemsFormula(1227897145, 1, 1227897153, 1, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1227897155)
    end
    --三合一
    if GetItemTypeId(GetManipulatedItem()) == 1227896115 or GetItemTypeId(GetManipulatedItem()) == 1227896120 or GetItemTypeId(GetManipulatedItem()) == 1227896129 then
        YDWENewItemsFormula(1227896115, 1, 1227896120, 1, 1227896129, 1, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1227896131)
    end
    --四合一
    --五合一
    --六合一
    if GetItemTypeId(GetManipulatedItem()) == 1227895376 or GetItemTypeId(GetManipulatedItem()) == 1227897168 then
        YDWENewItemsFormula(1227895376, 1, 1227897168, 1, 1227897168, 1, 1227897168, 1, 1227897168, 1, 1227897168, 1, 1227896918)
    end
    --call BJDebugMsg(GetItemName(GetLastCombinedItem())+"A")
    --if GetItemType(GetLastCombinedItem())==ITEM_TYPE_ARTIFACT then
    --    call SaveInteger(YDHT,GetHandleId(GetLastCombinedItem()),0,WeaponNaiJiu(GetLastCombinedItem()))
    --   endif
end
--为合成的武器增加耐久度
function WuPinHeCheng()
    local it = bj_lastCombinedItem -- INLINED!!
    local i = 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
    if Ce[i] == 2 and LoadBoolean(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), GetItemTypeId(it)) == false and udg_dzds[i] <= 5 then
        udg_dzds[i] = udg_dzds[i] + 1
        DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|CFF66FF00恭喜您锻造成功第" .. (I2S(udg_dzds[i]) or "") .. "件装备，锻造成功5件装备可以获得锻造大师哦")
        SaveBoolean(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), GetItemTypeId(it), true)
    end
    if Ce[i] == 2 and udg_dzds[i] >= 5 and udg_dzdsbool[i] == false then
        udg_dzdsbool[i] = true
        DZDSBuShuXing(udg_hero[i])
        if udg_zhangmen[i] == true then
        else
            SaveStr(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), GetHandleId(GetOwningPlayer(GetTriggerUnit())), "〓锻造大师〓" .. (LoadStr(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), GetHandleId(GetOwningPlayer(GetTriggerUnit()))) or ""))
        end
        DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜" .. (GetPlayerName(GetOwningPlayer(GetTriggerUnit())) or "") .. "获得锻造大师")
        SetPlayerName(GetOwningPlayer(GetTriggerUnit()), "〓锻造大师〓" .. (GetPlayerName(GetOwningPlayer(GetTriggerUnit())) or ""))
    end
    --call BJDebugMsg(GetItemName(it))
    if GetItemType(it) == ITEM_TYPE_ARTIFACT then
        SaveInteger(YDHT, GetHandleId(it), 0, WeaponNaiJiu(it))
    end
    it = nil
end
local function init()
    -- 合成物品
    local t = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    TriggerAddCondition(t, Condition(HeCheng_Conditions))
    TriggerAddAction(t, HeCheng_Actions)

    -- 为合成的物品补属性
    t = CreateTrigger()
    YDWESyStemItemCombineRegistTrigger(t)
    TriggerAddAction(t, WuPinHeCheng)
end
init()