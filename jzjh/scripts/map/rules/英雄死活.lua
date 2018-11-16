---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2018/10/29 0029 20:40
---

--玩家英雄阵亡
function Ex()
    return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end

function PlayerDeath()
    local u = GetTriggerUnit()
    local p = GetOwningPlayer(u)
    local i = 1 + GetPlayerId(p)
    if ge[i] then
        StartTimerBJ(udg_revivetimer[i], false, 7.0)
    else
        StartTimerBJ(udg_revivetimer[i], false, 15.0)
    end
    TimerDialogDisplayForPlayerBJ(true, bj_lastCreatedTimerDialog, p)
    CreateTimerDialogBJ(bj_lastStartedTimer, "复活倒计时:")
    R7[i] = bj_lastCreatedTimerDialog
    he[i] = true
    N8[i] = 0
    GroupRemoveUnit(k9, u)
    GroupRemoveUnit(j9, u)
    GroupRemoveUnit(s9, u)
    GroupRemoveUnit(r9, u)
    if UnitHaveItem(u, 1227895379) or UnitHaveItem(u, 1227895373) or UnitHaveItem(u, 1227895377) or UnitHaveItem(u, 1227895378) or UnitHaveItem(u, 1227895376) then
        if Ce[i] ~= 3 then
            DisplayTextToPlayer(p, 0, 0, "|cFFff0000养武消失了")
        end
    end
    u = nil
    p = nil
end
--五个玩家复活
function PlayerReviveA()
    DestroyTimerDialog(R7[1])
    Q4 = GetRectCenter(He)
    ReviveHeroLoc(udg_hero[1], Q4, true)
    PanCameraToTimedLocForPlayer(GetOwningPlayer(udg_hero[1]), Q4, 0)
    RemoveLocation(Q4)
    he[1] = false
    if UnitHaveItem(udg_hero[1], 1227895379) or UnitHaveItem(udg_hero[1], 1227895373) or UnitHaveItem(udg_hero[1], 1227895377) or UnitHaveItem(udg_hero[1], 1227895378) or UnitHaveItem(udg_hero[1], 1227895376) then
        if Ce[1] ~= 3 then
            RemoveItem(FetchUnitItem(udg_hero[1], 1227895379))
            RemoveItem(FetchUnitItem(udg_hero[1], 1227895373))
            RemoveItem(FetchUnitItem(udg_hero[1], 1227895377))
            RemoveItem(FetchUnitItem(udg_hero[1], 1227895378))
            RemoveItem(FetchUnitItem(udg_hero[1], 1227895376))
        end
    end
    if GetUnitAbilityLevel(udg_hero[1], 1093677877) > 0 then
        UnitRemoveAbility(udg_hero[1], 1093677877)
        UnitAddAbility(udg_hero[1], 1093677876)
        SetUnitAbilityLevel(udg_hero[1], 1093677876, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(udg_hero[1])), 1093677876 * 5))
    end
    AddCharacterABuff(udg_hero[1], udg_xinggeA[1])
    AddCharacterBBuff(udg_hero[1], udg_xinggeB[1])
end
function PlayerReviveB()
    DestroyTimerDialog(R7[2])
    Q4 = GetRectCenter(He)
    ReviveHeroLoc(udg_hero[2], Q4, true)
    PanCameraToTimedLocForPlayer(GetOwningPlayer(udg_hero[2]), Q4, 0)
    RemoveLocation(Q4)
    he[2] = false
    if UnitHaveItem(udg_hero[2], 1227895379) or UnitHaveItem(udg_hero[2], 1227895373) or UnitHaveItem(udg_hero[2], 1227895377) or UnitHaveItem(udg_hero[2], 1227895378) or UnitHaveItem(udg_hero[2], 1227895376) then
        if Ce[2] ~= 3 then
            RemoveItem(FetchUnitItem(udg_hero[2], 1227895379))
            RemoveItem(FetchUnitItem(udg_hero[2], 1227895373))
            RemoveItem(FetchUnitItem(udg_hero[2], 1227895377))
            RemoveItem(FetchUnitItem(udg_hero[2], 1227895378))
            RemoveItem(FetchUnitItem(udg_hero[2], 1227895376))
        end
    end
    if GetUnitAbilityLevel(udg_hero[2], 1093677877) > 0 then
        UnitRemoveAbility(udg_hero[2], 1093677877)
        UnitAddAbility(udg_hero[2], 1093677876)
        SetUnitAbilityLevel(udg_hero[2], 1093677876, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(udg_hero[2])), 1093677876 * 5))
    end
    AddCharacterABuff(udg_hero[2], udg_xinggeA[2])
    AddCharacterBBuff(udg_hero[2], udg_xinggeB[2])
end
function PlayerReviveC()
    DestroyTimerDialog(R7[3])
    Q4 = GetRectCenter(He)
    ReviveHeroLoc(udg_hero[3], Q4, true)
    PanCameraToTimedLocForPlayer(GetOwningPlayer(udg_hero[3]), Q4, 0)
    RemoveLocation(Q4)
    he[3] = false
    if UnitHaveItem(udg_hero[3], 1227895379) or UnitHaveItem(udg_hero[3], 1227895373) or UnitHaveItem(udg_hero[3], 1227895377) or UnitHaveItem(udg_hero[3], 1227895378) or UnitHaveItem(udg_hero[3], 1227895376) then
        if Ce[3] ~= 3 then
            RemoveItem(FetchUnitItem(udg_hero[3], 1227895379))
            RemoveItem(FetchUnitItem(udg_hero[3], 1227895373))
            RemoveItem(FetchUnitItem(udg_hero[3], 1227895377))
            RemoveItem(FetchUnitItem(udg_hero[3], 1227895378))
            RemoveItem(FetchUnitItem(udg_hero[3], 1227895376))
        end
    end
    if GetUnitAbilityLevel(udg_hero[3], 1093677877) > 0 then
        UnitRemoveAbility(udg_hero[3], 1093677877)
        UnitAddAbility(udg_hero[3], 1093677876)
        SetUnitAbilityLevel(udg_hero[3], 1093677876, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(udg_hero[3])), 1093677876 * 5))
    end
    AddCharacterABuff(udg_hero[3], udg_xinggeA[3])
    AddCharacterBBuff(udg_hero[3], udg_xinggeB[3])
end
function PlayerReviveD()
    DestroyTimerDialog(R7[4])
    Q4 = GetRectCenter(He)
    ReviveHeroLoc(udg_hero[4], Q4, true)
    PanCameraToTimedLocForPlayer(GetOwningPlayer(udg_hero[4]), Q4, 0)
    RemoveLocation(Q4)
    he[4] = false
    if UnitHaveItem(udg_hero[4], 1227895379) or UnitHaveItem(udg_hero[4], 1227895373) or UnitHaveItem(udg_hero[4], 1227895377) or UnitHaveItem(udg_hero[4], 1227895378) or UnitHaveItem(udg_hero[4], 1227895376) then
        if Ce[4] ~= 3 then
            RemoveItem(FetchUnitItem(udg_hero[4], 1227895379))
            RemoveItem(FetchUnitItem(udg_hero[4], 1227895373))
            RemoveItem(FetchUnitItem(udg_hero[4], 1227895377))
            RemoveItem(FetchUnitItem(udg_hero[4], 1227895378))
            RemoveItem(FetchUnitItem(udg_hero[4], 1227895376))
        end
    end
    if GetUnitAbilityLevel(udg_hero[4], 1093677877) > 0 then
        UnitRemoveAbility(udg_hero[4], 1093677877)
        UnitAddAbility(udg_hero[4], 1093677876)
        SetUnitAbilityLevel(udg_hero[4], 1093677876, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(udg_hero[4])), 1093677876 * 5))
    end
    AddCharacterABuff(udg_hero[4], udg_xinggeA[4])
    AddCharacterBBuff(udg_hero[4], udg_xinggeB[4])
end
function PlayerReviveE()
    DestroyTimerDialog(R7[5])
    Q4 = GetRectCenter(He)
    ReviveHeroLoc(udg_hero[5], Q4, true)
    PanCameraToTimedLocForPlayer(GetOwningPlayer(udg_hero[5]), Q4, 0)
    RemoveLocation(Q4)
    he[5] = false
    if UnitHaveItem(udg_hero[5], 1227895379) or UnitHaveItem(udg_hero[5], 1227895373) or UnitHaveItem(udg_hero[5], 1227895377) or UnitHaveItem(udg_hero[5], 1227895378) or UnitHaveItem(udg_hero[5], 1227895376) then
        if Ce[5] ~= 3 then
            RemoveItem(FetchUnitItem(udg_hero[5], 1227895379))
            RemoveItem(FetchUnitItem(udg_hero[5], 1227895373))
            RemoveItem(FetchUnitItem(udg_hero[5], 1227895377))
            RemoveItem(FetchUnitItem(udg_hero[5], 1227895378))
            RemoveItem(FetchUnitItem(udg_hero[5], 1227895376))
        end
    end
    if GetUnitAbilityLevel(udg_hero[5], 1093677877) > 0 then
        UnitRemoveAbility(udg_hero[5], 1093677877)
        UnitAddAbility(udg_hero[5], 1093677876)
        SetUnitAbilityLevel(udg_hero[5], 1093677876, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(udg_hero[5])), 1093677876 * 5))
    end
    AddCharacterABuff(udg_hero[5], udg_xinggeA[5])
    AddCharacterBBuff(udg_hero[5], udg_xinggeB[5])
end

local function init()
    -- 玩家英雄阵亡
    Th = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(Th, EVENT_PLAYER_UNIT_DEATH)
    TriggerAddCondition(Th, Condition(Ex))
    TriggerAddAction(Th, PlayerDeath)
    -- 玩家英雄复活
    Uh = CreateTrigger()
    TriggerRegisterTimerExpireEvent(Uh, udg_revivetimer[1])
    TriggerAddAction(Uh, PlayerReviveA)
    Vh = CreateTrigger()
    TriggerRegisterTimerExpireEvent(Vh, udg_revivetimer[2])
    TriggerAddAction(Vh, PlayerReviveB)
    Wh = CreateTrigger()
    TriggerRegisterTimerExpireEvent(Wh, udg_revivetimer[3])
    TriggerAddAction(Wh, PlayerReviveC)
    Xh = CreateTrigger()
    TriggerRegisterTimerExpireEvent(Xh, udg_revivetimer[4])
    TriggerAddAction(Xh, PlayerReviveD)
    Yh = CreateTrigger()
    TriggerRegisterTimerExpireEvent(Yh, udg_revivetimer[5])
    TriggerAddAction(Yh, PlayerReviveE)
end

init()
