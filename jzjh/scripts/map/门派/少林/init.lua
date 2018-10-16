require 'map.门派.少林.韦陀棍法'
--达摩剑法
function qc()
	return GetEventDamage() == 0.15
end
function rc()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetEventDamageSource())) and IsUnitAliveBJ(GetFilterUnit())
end
function sc()
	local u = GetEventDamageSource()
	local uc = GetEnumUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1395666992) ~= 0 then
		shxishu = shxishu + 0.4
	end
	if GetUnitAbilityLevel(u, 1093678897) ~= 0 then
		shxishu = shxishu + 0.8
	end
	if GetUnitAbilityLevel(u, 1093678931) ~= 0 then
		shxishu = shxishu + 0.7
	end
	if UnitHaveItem(u, 1227899212) then
		shxishu = shxishu * 8
	end
	shanghai = ShangHaiGongShi(u, uc, 70.0, 60.0, shxishu, 1093677104)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
function ucFunc()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local uc = GetTriggerUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	local loc2 = GetUnitLoc(uc)
	if GetUnitAbilityLevel(u, 1395666992) ~= 0 then
		shxishu = shxishu + 0.4
	end
	if GetUnitAbilityLevel(u, 1093678897) ~= 0 then
		shxishu = shxishu + 0.8
	end
	if GetUnitAbilityLevel(u, 1093678931) ~= 0 then
		shxishu = shxishu + 0.7
	end
	if UnitHaveItem(u, 1227899212) then
		shxishu = shxishu * 8
	end
	shanghai = ShangHaiGongShi(u, uc, 10, 30, shxishu, 1093677104)
	WuGongShangHai(u, uc, shanghai)
	if GetUnitAbilityLevel(u, 1093678932) ~= 0 then
		DestroyEffect(AddSpecialEffectLocBJ(loc2, "war3mapImported\\ShadowBurn.mdx"))
		ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(100, loc2, Condition(rc)), sc)
	end
	RemoveLocation(loc2)
	u = nil
	uc = nil
	loc2 = nil
end
function wc()
	return GetSpellAbilityId() == 1093677104 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function xc()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local loc = GetUnitLoc(u)
	local loc2 = pu(loc, 256, GetUnitPropWindowBJ(u) + 90.0)
	local id = 1093677104
	if GetUnitAbilityLevel(u, 1093678415) ~= 0 then
		CreateNUnitsAtLoc(1, 1697656880, p, loc, bj_UNIT_FACING)
		UnitAddAbility(bj_lastCreatedUnit, 1093678408)
		IssueTargetOrderById(bj_lastCreatedUnit, 852066, u)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
		ShowUnitHide(bj_lastCreatedUnit)
	end
	if GetUnitAbilityLevel(u, 1093682254) ~= 0 then
		CreateNUnitsAtLoc(1, 1697656881, p, loc, bj_UNIT_FACING)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 12.0)
	end
	if GetUnitAbilityLevel(u, 1093678933) ~= 0 and GetUnitAbilityLevel(u, 1093678918) ~= 0 then
		CreateNUnitsAtLoc(1, 1697656880, p, loc, bj_UNIT_FACING)
		ShowUnitHide(bj_lastCreatedUnit)
		UnitAddAbility(bj_lastCreatedUnit, 1093678410)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 852593, loc2)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 6.0)
	end
	WuGongShengChong(u, 1093677104, 150.0)
	RemoveLocation(loc)
	RemoveLocation(loc2)
	u = nil
	p = nil
	loc = nil
	loc2 = nil
end
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
			WanBuff(u, uc, 12)
		else
			WanBuff(u, uc, 11)
		end
	end
	-- 悟性超过20时50%概率斩杀低于20%血的怪物
	if wuxing[1 + GetPlayerId(GetOwningPlayer(u))] >= 20 and GetUnitLifePercent(uc) <= 20 and GetRandomInt(1, 100) < 50 then
		SetUnitLifeBJ(uc, 1.0)
		WuGongShangHai(u, uc, 1000 * shanghai)
		FontFloat("斩杀", loc2, 60.0, 16.0, 65.0, 55.0, 42.0, 0, 3.0)
	end
	if GetUnitAbilityLevel(u, 1093678930) ~= 0 and GetUnitAbilityLevel(u, 1093678928) ~= 0 and UnitHasBuffBJ(uc, 1113813619) == false then
		WanBuff(u, uc, 10)
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
--金钟罩
function Cc()
	return GetSpellAbilityId() == 1093678415 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function cc()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	DestroyEffect(E7[i])
	UnitRemoveAbility(u, 1110454320)
	D7[i] = 5000.0 * I2R(yishu[i]) * I2R(GetUnitAbilityLevel(u, 1093678415))
	ce[i] = 70 * GetUnitAbilityLevel(u, 1093678415)
	YDWEGeneralBounsSystemUnitSetBonus(u, 2, 0, 70 * GetUnitAbilityLevel(u, 1093678415))
	if gengu[i] >= 20 then
		D7[i] = D7[i] * 2.0
	end
	AddSpecialEffectTargetUnitBJ("chest", u, "war3mapImported\\DefensiveBarrierBig.mdx")
	DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|cff00ccff金钟罩效果总值：" .. (I2S(R2I(D7[i])) or ""))
	E7[i] = bj_lastCreatedEffect
	WuGongShengChong(u, 1093678415, 100.0)
	u = nil
	p = nil
end
function Ec()
	return UnitHasBuffBJ(GetTriggerUnit(), 1110454320)
end
function Fc()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())) and IsUnitAliveBJ(GetFilterUnit())
end
function Gc()
	local u = GetTriggerUnit()
	local uc = GetEnumUnit()
	local loc = GetUnitLoc(uc)
	local shxishu = 1.0
	local shanghai = 0.0
	if UnitHaveItem(u, 1227899212) then
		shxishu = shxishu * 8
	end
	AddSpecialEffectLocBJ(loc, "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
	DestroyEffect(bj_lastCreatedEffect)
	RemoveLocation(loc)
	shanghai = ShangHaiGongShi(u, uc, 400, 400, shxishu, 1093678415)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
	loc = nil
end
function Hc()
	local u = GetTriggerUnit()
	local uc = GetEventDamageSource()
	local shxishu = 1.0
	local shanghai = 0.0
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = GetUnitLoc(u)
	local loc2 = GetUnitLoc(uc)
	if UnitHaveItem(u, 1227899212) then
		shxishu = shxishu * 8
	end
	if GetEventDamage() <= D7[i] then
		D7[i] = D7[i] - GetEventDamage()
		SetWidgetLife(u, GetUnitStateSwap(UNIT_STATE_LIFE, GetTriggerUnit()) + GetEventDamage())
		--+化功大法
		if GetUnitAbilityLevel(u, 1093678928) ~= 0 then
			AddSpecialEffectLocBJ(loc2, "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl")
			DestroyEffect(bj_lastCreatedEffect)
			RemoveLocation(loc2)
			shanghai = ShangHaiGongShi(u, uc, 20.0, 20.0, shxishu, 1093678415)
			WuGongShangHai(u, uc, shanghai)
		end
	else
		DestroyEffect(E7[i])
		YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 2, 1, ce[i])
		--+易筋经
		if GetUnitAbilityLevel(u, 1093679428) ~= 0 then
			ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(600.0, loc, Condition(Fc)), Gc)
		end
		--+小无相
		if GetUnitAbilityLevel(u, 1093679155) ~= 0 and GetRandomReal(0, 100.0) >= 70.0 then
			D7[i] = 2500.0 * I2R(yishu[i]) * I2R(GetUnitAbilityLevel(u, 1093678415))
			ce[i] = 70 * GetUnitAbilityLevel(u, 1093678415)
			YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 2, 0, 70 * GetUnitAbilityLevel(u, 1093678415))
			if gengu[1 + GetPlayerId(GetOwningPlayer(u))] >= 20 then
				D7[i] = D7[i] * 2.0
			end
			AddSpecialEffectTargetUnitBJ("chest", GetTriggerUnit(), "war3mapImported\\DefensiveBarrierBig.mdx")
			DisplayTextToPlayer(p, 0, 0, "|cff00ccff小无相重启金钟罩，效果总值：" .. (I2S(R2I(D7[i])) or ""))
			E7[i] = bj_lastCreatedEffect
		else
			UnitRemoveAbility(GetTriggerUnit(), 1110454320)
		end
	end
	RemoveLocation(loc)
	u = nil
	uc = nil
	p = nil
	loc = nil
	loc2 = nil
end
--降魔功
function lc()
	return GetUnitAbilityLevel(GetKillingUnit(), 1395666992) ~= 0
end
function Jc()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))
	if jingmai[i] >= 25 then
		F7[i] = F7[i] + 1
		if F7[i] >= 10 then
			F7[i] = F7[i] - 10
			ModifyHeroStat(1, GetKillingUnit(), 0, 1)
		end
	end
end
function Lc()
	return GetUnitAbilityLevel(GetTriggerUnit(), 1395666992) ~= 0
end
function Mc()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = GetUnitLoc(u)
	if GetUnitAbilityLevel(GetTriggerUnit(), 1093678936) ~= 0 then
		G7[i] = G7[i] + 1
		if G7[i] >= 10 then
			G7[i] = G7[i] - 10
			H7 = 1
			for _ in _loop_() do
				if H7 > 18 then break end
				CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(GetTriggerUnit()), loc, bj_UNIT_FACING)
				UnitAddAbility(bj_lastCreatedUnit, 1093678416)
				IssuePointOrderByIdLoc(bj_lastCreatedUnit, 852218, pu(loc, 256, 20.0 * I2R(H7)))
				ShowUnitHide(bj_lastCreatedUnit)
				UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
				RemoveLocation(pu(loc, 256, 20.0 * I2R(H7)))
				H7 = H7 + 1
			end
			RemoveLocation(loc)
		end
	end
	if GetRandomReal(1, 100) <= 15 + fuyuan[i] // 5 then
		WuGongShengChong(GetTriggerUnit(), 1395666992, 6000.0)
	end
	u = nil
	p = nil
	loc = nil
end
function Oc()
	return GetUnitAbilityLevel(GetAttacker(), 1395666992) ~= 0
end
function Pc()
	local u = GetAttacker()
	local l__ut = GetTriggerUnit()
	local loc = nil
	if GetRandomInt(1, 100) <= 2 and GetUnitAbilityLevel(u, 1093678931) ~= 0 and GetUnitAbilityLevel(u, 1093682254) ~= 0 then
		loc = GetUnitLoc(l__ut)
		CreateNUnitsAtLoc(1, 1852862002, GetOwningPlayer(u), loc, bj_UNIT_FACING)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 180.0)
		RemoveLocation(loc)
	end
	if GetUnitAbilityLevel(u, 1395666994) ~= 0 then
		if GetUnitState(l__ut, UNIT_STATE_LIFE) <= 0.01 * GetUnitState(l__ut, UNIT_STATE_MAX_LIFE) then
			SetWidgetLife(l__ut, 1.0)
		else
			SetWidgetLife(l__ut, GetUnitState(l__ut, UNIT_STATE_LIFE) - 0.01 * GetUnitState(l__ut, UNIT_STATE_MAX_LIFE))
		end
	end
	u = nil
	l__ut = nil
	loc = nil
end
function Rc()
	return GetEventDamage() == 0.18
end
function Sc()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local uc = GetTriggerUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	if UnitHaveItem(u, 1227899212) then
		shxishu = shxishu * 8
	end
	shanghai = ShangHaiGongShi(u, uc, 50, 50, shxishu, 1395666992)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
----------少林结束--------//
function ShaoLin_Trigger()
	local t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsWeiTuo))
	TriggerAddAction(t, WeiTuoGun)

	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(qc))
	TriggerAddAction(t, ucFunc)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(wc))
	TriggerAddAction(t, xc)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(zc))
	TriggerAddAction(t, Bc)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(Cc))
	TriggerAddAction(t, cc)

	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(Ec))
	TriggerAddAction(t, Hc)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(lc))
	TriggerAddAction(t, Jc)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(Lc))
	TriggerAddAction(t, Mc)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(Oc))
	TriggerAddAction(t, Pc)

	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(Rc))
	TriggerAddAction(t, Sc)
end

ShaoLin_Trigger() --少林武功触发