---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/12/23 0023 21:34
---

--六脉神剑
function k6()
    return GetSpellAbilityId() == 1093679157
end
function m6()
    return IsUnitAliveBJ(GetFilterUnit()) and IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1)))
end
function o6()
    GroupRemoveUnit(LoadGroupHandle(YDHT, GetHandleId(GetExpiredTimer()), 6), GetEnumUnit())
end
function p6()
    local u = LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1)
    local uc = GetEnumUnit()
    local i = 1 + GetPlayerId(GetOwningPlayer(u))
    local shxishu = jueXueXiShu(i)
    local shanghai = 0.0
    local loc = GetUnitLoc(u)
    local loc2 = GetUnitLoc(uc)
    local loc3 = pu(loc2, GetRandomReal(5.0, 15.0), AngleBetweenPoints(loc, loc2))
    PauseUnit(uc, true)
    SetUnitPositionLoc(uc, loc3)
    Jw(1.0, AddSpecialEffectTarget("Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl", uc, "chest"))
    shanghai = ShangHaiGongShi(u, uc, 19.0, 19.0, shxishu, 1093679157)
    WuGongShangHai(u, uc, shanghai)
    PauseUnit(uc, false)
    RemoveLocation(loc)
    RemoveLocation(loc2)
    RemoveLocation(loc3)
    u = nil
    uc = nil
    loc = nil
    loc2 = nil
    loc3 = nil
end
function q6()
    local t = GetExpiredTimer()
    local u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
    local loc = GetUnitLoc(LoadUnitHandle(YDHT, GetHandleId(t), 1))
    local r = LoadReal(YDHT, GetHandleId(t), 4)
    if r >= 500.0 then
        KillUnit(u)
        RemoveLocation(loc)
        FlushChildHashtable(YDHT, GetHandleId(t))
        PauseTimer(t)
        DestroyTimer(t)
    else
        SaveReal(YDHT, GetHandleId(t), 4, r + 10.0)
        SetUnitPositionLoc(u, loc)
        SaveGroupHandle(YDHT, GetHandleId(t), 5, YDWEGetUnitsInRangeOfLocMatchingNull(r + 20.0, loc, Condition(m6)))
        SaveGroupHandle(YDHT, GetHandleId(t), 6, YDWEGetUnitsInRangeOfLocMatchingNull(r + 40.0, loc, Condition(m6)))
        SetUnitScalePercent(u, r + 10, r + 10, r + 10)
        ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(t), 5), o6)
        ForGroupBJ(LoadGroupHandle(YDHT, GetHandleId(t), 6), p6)
        DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(t), 5))
        DestroyGroup(LoadGroupHandle(YDHT, GetHandleId(t), 6))
        RemoveLocation(loc)
    end
    u = nil
    t = nil
    loc = nil
end
function MM6()
    local ky
    local i = 1
    local loc
    WuGongShengChong(GetTriggerUnit(), 1093679157, 100.0)
    for _ in _loop_() do
        if i > 6 then break end
        loc = GetUnitLoc(GetTriggerUnit())
        Jw(1.0, AddSpecialEffectLoc("war3mapImported\\DarkNova.mdx", loc))
        CreateNUnitsAtLoc(1, 1697656907, GetOwningPlayer(GetTriggerUnit()), loc, bj_UNIT_FACING)
        UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 1.0)
        SetUnitTimeScalePercent(bj_lastCreatedUnit, 200.0)
        ky = CreateTimer()
        SaveUnitHandle(YDHT, GetHandleId(ky), 0, bj_lastCreatedUnit)
        SaveUnitHandle(YDHT, GetHandleId(ky), 1, GetTriggerUnit())
        TimerStart(ky, 0.02, true, q6)
        TriggerSleepAction(1.5)
        RemoveLocation(loc)
        i = i + 1
    end
    ky = nil
    loc = nil
end

t = CreateTrigger()
TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
TriggerAddCondition(t, Condition(k6))
TriggerAddAction(t, MM6)