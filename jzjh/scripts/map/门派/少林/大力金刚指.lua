---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/12/17 14:04
---

--大力金刚指
function zc()
    return GetSpellAbilityId() == 1093678411 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function Ac()
    return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())) and IsUnitAliveBJ(GetFilterUnit())
end
function ac()
    local u = GetTriggerUnit()
    local uc = GetEnumUnit()
    local loc = GetUnitLoc(u)
    local loc2 = GetUnitLoc(uc)
    local shxishu = 1.0
    local shanghai = 0.0
    if GetUnitAbilityLevel(u, 1093678664) ~= 0 then
        shxishu = shxishu + 0.8
    end
    if GetUnitAbilityLevel(u, 1093682254) ~= 0 then
        shxishu = shxishu + 0.6
    end
    if GetUnitAbilityLevel(u, 1093678930) ~= 0 and GetUnitAbilityLevel(u, 1093678928) ~= 0 then
        shxishu = shxishu + 1.0
    end
    if UnitHaveItem(u, 1227899212) then
        shxishu = shxishu * 8
    end
    if GetUnitAbilityLevel(u, 1093678931) ~= 0 then
        shanghai = ShangHaiGongShi(u, uc, 200, 200, shxishu * udg_baojishanghai[1 + GetPlayerId(GetOwningPlayer(u))], 1093678411)
        WuGongShangHai(u, uc, shanghai)
    else
        shanghai = ShangHaiGongShi(u, uc, 200, 200, shxishu, 1093678411)
        WuGongShangHai(u, uc, shanghai)
    end
    if gengu[1 + GetPlayerId(GetOwningPlayer(u))] >= 20 and UnitHasBuffBJ(uc, 1110454328) == false then
        if GetUnitAbilityLevel(u, 1093678672) ~= 0 then
            general_buff(u, uc, 12)
        else
            general_buff(u, uc, 11)
        end
    end
    -- 悟性超过20时50%概率斩杀低于20%血的怪物
    if wuxing[1 + GetPlayerId(GetOwningPlayer(u))] >= 20 and GetUnitLifePercent(uc) <= 20 and GetRandomInt(1, 100) < 50 then
        SetUnitLifeBJ(uc, 1.0)
        WuGongShangHai(u, uc, 1000 * shanghai)
        FontFloat("斩杀", loc2, 60.0, 16.0, 65.0, 55.0, 42.0, 0, 3.0)
    end
    if GetUnitAbilityLevel(u, 1093678930) ~= 0 and GetUnitAbilityLevel(u, 1093678928) ~= 0 and UnitHasBuffBJ(uc, 1113813619) == false then
        general_buff(u, uc, 10)
    end
    RemoveLocation(loc)
    RemoveLocation(loc2)
    u = nil
    uc = nil
    loc = nil
    loc2 = nil
end
function Bc()
    local u = GetTriggerUnit()
    local uc = GetSpellTargetUnit()
    local x = GetUnitX(uc)
    local y = GetUnitY(uc)
    local g = CreateGroup()
    WuGongShengChong(u, 1093678411, 160.0)
    if GetUnitAbilityLevel(u, 1093678932) ~= 0 and GetUnitAbilityLevel(u, 1093678927) ~= 0 then
        GroupEnumUnitsInRange(g, x, y, 500, Condition(Ac))
    else
        GroupAddUnit(g, uc)
    end
    ForGroupBJ(g, ac)
    GroupClear(g)
    DestroyGroup(g)
    u = nil
    uc = nil
    g = nil
end

t = CreateTrigger()
TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
TriggerAddCondition(t, Condition(zc))
TriggerAddAction(t, Bc)
