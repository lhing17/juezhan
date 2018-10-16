--===========================================================================
--天柱云气
function IsTianZhu()
	return (GetUnitAbilityLevel(GetAttacker(), 1093678157) >= 1 or GetUnitAbilityLevel(GetTriggerUnit(), 1093678157) >= 1) and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function TianZhu_Condition()
	if GetUnitAbilityLevel(GetAttacker(), 1093678157) >= 1 then
		return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetAttacker())) == true and IsUnitAliveBJ(GetFilterUnit())
	else
		return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())) == true and IsUnitAliveBJ(GetFilterUnit())
	end
end
function TianZhu_Action()
	local u = nil
	local l__ut = GetEnumUnit()
	local p = nil
	local i = 1
	local shanghai = 0.0
	local shxishu = 1.0
	if GetUnitAbilityLevel(GetAttacker(), 1093678157) >= 1 then
		u = GetAttacker()
	else
		u = GetTriggerUnit()
	end
	p = GetOwningPlayer(u)
	i = 1 + GetPlayerId(p)
	if GetUnitAbilityLevel(u, 1093678897) >= 1 then
		shxishu = shxishu + 0.8
	end
	if GetUnitAbilityLevel(u, 1093678666) >= 1 then
		shxishu = shxishu + 0.9
	end
	if UnitHaveItem(u, 1227895116) or UnitHaveItem(u, 1227894851) or UnitHaveItem(u, 1227894850) or UnitHaveItem(u, 1227897145) or UnitHaveItem(u, 1227897153) or UnitHaveItem(u, 1227897155) then
		shxishu = shxishu * 2
	end
	shanghai = ShangHaiGongShi(u, l__ut, 25, 6, shxishu, 1093678157)
	WuGongShangHai(u, l__ut, shanghai)
	if GetUnitAbilityLevel(u, 1093678918) >= 1 then
		WanBuff(u, l__ut, 2)
	end
	p = nil
	u = nil
	l__ut = nil
end
function TianZhuYunQi()
	local u = nil
	local p = nil
	local angle = 0.0
	local loc = nil
	local loc2 = nil
	local loc3 = nil
	local g = CreateGroup()
	local i = 1
	local j = 1
	if GetUnitAbilityLevel(GetAttacker(), 1093678157) >= 1 then
		u = GetAttacker()
	else
		u = GetTriggerUnit()
	end
	angle = GetUnitFacing(u)
	p = GetOwningPlayer(u)
	i = 1 + GetPlayerId(p)
	loc = GetUnitLoc(u)
	loc2 = PolarProjectionBJ(loc, GetRandomReal(100, 300), angle)
	loc3 = PolarProjectionBJ(loc, GetRandomReal(100, 300), 180 + angle)
	if GetRandomReal(0.0, 200.0) <= 15 + fuyuan[i] // 5 then
		WuGongShengChong(u, 1093678157, 900.0)
		DestroyEffect(AddSpecialEffectLocBJ(loc2, "war3mapImported\\aquaspike.mdl"))
		GroupEnumUnitsInRangeOfLoc(g, loc2, 500, Condition(TianZhu_Condition))
		if GetUnitAbilityLevel(u, 1093678933) >= 1 then
			DestroyEffect(AddSpecialEffectLocBJ(loc3, "war3mapImported\\aquaspike.mdl"))
			GroupEnumUnitsInRangeOfLoc(g, loc3, 500, Condition(TianZhu_Condition))
		end
		ForGroupBJ(g, TianZhu_Action)
	--call PolledWait(0.15)
	--set j = 1
	--loop
	--	exitwhen j > 4
	--	set loc3[j] = PolarProjectionBJ(loc2, 300, angle - 90 + 90 * j)
	--	call DestroyEffect(AddSpecialEffectLocBJ(loc3[j], "war3mapImported\\aquaspike.mdl" ))
	--	call RemoveLocation(loc3[j])
	--	set loc3[j] = null
	--	call PolledWait(0.15)
	--	set j = j + 1
	--endloop
	end
	GroupClear(g)
	RemoveLocation(loc)
	RemoveLocation(loc2)
	RemoveLocation(loc3)
	g = nil
	u = nil
	p = nil
	loc = nil
	loc2 = nil
	loc3 = nil
end
--===========================================================================
--鹤翔紫盖
function IsHeXiangZiGai()
	return GetSpellAbilityId() == 1093678158 and IsUnitEnemy(GetSpellTargetUnit(), GetOwningPlayer(GetTriggerUnit()))
end
function HeXiangJianFa()
	local u = GetTriggerUnit()
	local uc = GetSpellTargetUnit()
	local l__ut = nil
	local uttt = nil
	local loc = GetUnitLoc(uc)
	local loc2 = GetUnitLoc(u)
	local g = CreateGroup()
	local shanghai = 0.0
	local shxishu = 1.0
	local id = 0
	if GetUnitAbilityLevel(u, 1093682254) >= 1 then
		if GetUnitTypeId(u) == 1328558132 then
			id = 1747988533
		elseif GetUnitTypeId(u) == 1328558129 then
			id = 1747988535
		elseif GetUnitTypeId(u) == 1328558130 then
			id = 1747988536
		elseif GetUnitTypeId(u) == 1328558131 then
			id = 1747988537
		elseif GetUnitTypeId(u) == 1328558128 then
			id = 1747988534
		elseif GetUnitTypeId(u) == 1328558643 or GetUnitTypeId(u) == 1328558664 or GetUnitTypeId(u) == 1328558665 then
			id = 1747988553
		elseif GetUnitTypeId(u) == 1328558666 then
			id = 1747988555
		end
		CreateNUnitsAtLoc(1, id, GetOwningPlayer(u), loc2, bj_UNIT_FACING)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
		uttt = bj_lastCreatedUnit
	else
		uttt = u
	end
	WuGongShengChong(u, 1093678158, 200)
	SetUnitTimeScale(uttt, 0.3)
	YDWETimerDestroyEffect(2, AddSpecialEffectTarget("Abilities\\Spells\\Items\\StaffOfSanctuary\\Staff_Sanctuary_Target.mdl", uttt, "chest"))
	YDWEJumpTimer(uttt, AngleBetweenPoints(loc2, loc), 2 * DistanceBetweenPoints(loc2, loc), 2, 0.01, 400.0)
	YDWEPolledWaitNull(1.0)
	CreateNUnitsAtLoc(1, 1697657153, GetOwningPlayer(u), loc, bj_UNIT_FACING)
	l__ut = bj_lastCreatedUnit
	UnitAddAbility(l__ut, 1093678159)
	UnitApplyTimedLife(l__ut, 1112045413, 2.0)
	ShowUnitHide(l__ut)
	IssueTargetOrderById(l__ut, 852119, uc)
	if GetUnitAbilityLevel(u, 1093678666) >= 1 then
		shxishu = shxishu + 0.9
	end
	if GetUnitAbilityLevel(u, 1093678897) >= 1 then
		shxishu = shxishu + 0.9
	end
	if GetUnitAbilityLevel(u, 1093678922) >= 1 then
		shxishu = shxishu + 1.5
	end
	if UnitHaveItem(u, 1227895116) or UnitHaveItem(u, 1227894851) or UnitHaveItem(u, 1227894850) or UnitHaveItem(u, 1227897145) or UnitHaveItem(u, 1227897153) or UnitHaveItem(u, 1227897155) then
		shxishu = shxishu * 2
	end
	if GetUnitAbilityLevel(u, 1093678930) >= 1 then
		WanBuff(u, uc, 12)
	end
	shanghai = ShangHaiGongShi(u, uc, 300, 100, shxishu, 1093678158)
	WuGongShangHai(u, uc, shanghai)
	RemoveLocation(loc)
	RemoveLocation(loc2)
	YDWEPolledWaitNull(1.0)
	SetUnitTimeScale(uttt, 1.0)
	u = nil
	uc = nil
	loc = nil
	loc2 = nil
	l__ut = nil
	uttt = nil
	g = nil
end
--===========================================================================
--石廪书声
function IsShiLin()
	return GetUnitAbilityLevel(GetAttacker(), 1093678160) >= 1 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function ShiLinShuSheng()
	local u = GetAttacker()
	local uc = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local id = 1865429579
	local loc1 = GetUnitLoc(u)
	local loc2 = GetUnitLoc(uc)
	local angle = AngleBetweenPoints(loc1, loc2)
	if GetRandomReal(0.0, 100.0) <= 15 + fuyuan[i] // 5 then
		CreateNUnitsAtLocFacingLocBJ(1, id, p, PolarProjectionBJ(loc1, 300, 180 + angle), loc2)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 5.0 + 5.0 * GetUnitAbilityLevel(u, 1395666994))
		if GetUnitAbilityLevel(u, 1093678666) >= 1 then
			UnitAddAbility(bj_lastCreatedUnit, 1093677901)
		end
		if GetUnitAbilityLevel(u, 1093678922) >= 1 then
			UnitAddAbility(bj_lastCreatedUnit, 1093677903)
		end
		WuGongShengChong(u, 1093678160, 600.0)
		RemoveLocation(loc1)
		RemoveLocation(loc2)
	end
	loc1 = nil
	loc2 = nil
	p = nil
	u = nil
	uc = nil
end
function IsShiLinShu()
	return GetUnitTypeId(GetEventDamageSource()) == 1865429579
end
function ShiLinShu()
	local p = GetOwningPlayer(GetEventDamageSource())
	local i = 1 + GetPlayerId(p)
	local u = udg_hero[i]
	local uc = GetTriggerUnit()
	local shanghai = 0.0
	local shxishu = 1.0
	if GetUnitAbilityLevel(u, 1093678897) >= 1 then
		shxishu = shxishu + 0.7
	end
	if GetUnitAbilityLevel(u, 1093678918) >= 1 then
		shxishu = shxishu + 1.6
	end
	if UnitHaveItem(u, 1227895116) or UnitHaveItem(u, 1227894851) or UnitHaveItem(u, 1227894850) or UnitHaveItem(u, 1227897145) or UnitHaveItem(u, 1227897153) or UnitHaveItem(u, 1227897155) then
		shxishu = shxishu * 2
	end
	shanghai = ShangHaiGongShi(u, uc, 50.0, 28.0, shxishu, 1093678160)
	WuGongShangHai(u, uc, shanghai)
	uc = nil
	u = nil
	p = nil
end
--===========================================================================
--雁回祝融
function IsYanHui()
	return GetUnitAbilityLevel(GetAttacker(), 1093678162) >= 1 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function YanHuiZhuRong()
	local u = GetAttacker()
	local uc = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local id = 1747988556
	local loc1 = GetUnitLoc(u)
	local loc2 = GetUnitLoc(uc)
	if GetRandomReal(0.0, 100.0) <= 15 + fuyuan[i] // 5 then
		CreateNUnitsAtLocFacingLocBJ(1, id, p, loc1, loc2)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 6.0 + 6.0 * GetUnitAbilityLevel(u, 1093679155))
		WuGongShengChong(u, 1093678162, 600.0)
		RemoveLocation(loc1)
		RemoveLocation(loc2)
	end
	loc1 = nil
	loc2 = nil
	p = nil
	u = nil
	uc = nil
end
function IsYanHuiJian()
	return GetUnitTypeId(GetEventDamageSource()) == 1747988556
end
function YanHuiJianFa()
	local p = GetOwningPlayer(GetEventDamageSource())
	local i = 1 + GetPlayerId(p)
	local u = udg_hero[i]
	local uc = GetTriggerUnit()
	local shanghai = 0.0
	local shxishu = 1.0
	local loc = GetUnitLoc(uc)
	if GetUnitAbilityLevel(u, 1093678666) >= 1 then
		shxishu = shxishu + 0.6
	end
	if UnitHaveItem(u, 1227895116) or UnitHaveItem(u, 1227894851) or UnitHaveItem(u, 1227894850) or UnitHaveItem(u, 1227897145) or UnitHaveItem(u, 1227897153) or UnitHaveItem(u, 1227897155) then
		shxishu = shxishu * 2
	end
	shanghai = ShangHaiGongShi(u, uc, 200.0, 80.0, shxishu, 1093678162)
	WuGongShangHai(u, uc, shanghai)
	if GetUnitAbilityLevel(u, 1093678928) >= 1 then
		WanBuff(u, uc, 7)
	end
	if GetRandomReal(0.0, 100.0) <= 15 + fuyuan[i] // 5 + GetUnitAbilityLevel(u, 1093678933) * 21 then
		CreateNUnitsAtLoc(1, 1697656880, p, loc, bj_UNIT_FACING)
		ShowUnitHide(bj_lastCreatedUnit)
		UnitAddAbility(bj_lastCreatedUnit, 1093678161)
		if GetUnitAbilityLevel(u, 1093678922) >= 1 then
			IncUnitAbilityLevel(bj_lastCreatedUnit, 1093678161)
		end
		IssueTargetOrderById(bj_lastCreatedUnit, 852171, uc)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
	end
	RemoveLocation(loc)
	uc = nil
	u = nil
	p = nil
	loc = nil
end
function IsYanHuiDamage()
	return GetEventDamage() == 6.28 and GetUnitAbilityLevel(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))], 1093678162) >= 1
end
function YanHuiDamage()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local uc = GetTriggerUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1093678666) >= 1 then
		shxishu = shxishu + 0.6
	end
	if UnitHaveItem(u, 1227895116) or UnitHaveItem(u, 1227894851) or UnitHaveItem(u, 1227894850) or UnitHaveItem(u, 1227897145) or UnitHaveItem(u, 1227897153) or UnitHaveItem(u, 1227897155) then
		shxishu = shxishu * 2
	end
	shanghai = ShangHaiGongShi(u, uc, 250, 160, shxishu, 1093678162)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
--===========================================================================
--泉鸣芙蓉
function QuanMing_Conditions()
	return GetSpellAbilityId() == 1093677622
end
function QuanMing_Actions()
	local u = GetTriggerUnit()
	local loc = GetSpellTargetLoc()
	local loc2 = nil
	local l__ut = nil
	local i = 0
	WuGongShengChong(u, 1093677622, 100)
	SaveUnitHandle(YDHT, StringHash("泉鸣"), 1, u)
	SaveLocationHandle(YDHT, StringHash("泉鸣"), 0, loc)
	TerrainDeformationCraterBJ(15.8, false, loc, 400.0, 400.0)
	CreateNUnitsAtLoc(1, 1697656922, GetOwningPlayer(u), loc, bj_UNIT_FACING)
	l__ut = bj_lastCreatedUnit
	i = 1
	for _ in _loop_() do
		if i > 16 then break end
		CreateNUnitsAtLocFacingLocBJ(1, 1697657137, GetOwningPlayer(GetTriggerUnit()), PolarProjectionBJ(loc, 350.0, 22.5 * i), loc)
		UnitApplyTimedLifeBJ(13.5, 1112820806, GetLastCreatedUnit())
		DestroyEffect(AddSpecialEffectLocBJ(PolarProjectionBJ(loc, 350.0, 22.5 * I2R(i)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl"))
		i = i + 1
	end
	i = 1
	for _ in _loop_() do
		if i > 30 then break end
		loc2 = GetRandomLocInRect(RectFromCenterSizeBJ(loc, 350.0, 350.0))
		CreateNUnitsAtLoc(1, 1697657136, GetOwningPlayer(u), loc2, bj_UNIT_FACING)
		UnitApplyTimedLifeBJ(15.0, 1112820806, GetLastCreatedUnit())
		RemoveLocation(loc2)
		i = i + 1
	end
	TriggerSleepAction(1.5)
	EnableTrigger(gg_trg_Number14_1)
	TriggerSleepAction(13.5)
	DisableTrigger(gg_trg_Number14_1)
	TriggerSleepAction(0.5)
	i = 1
	for _ in _loop_() do
		if i > 16 then break end
		DestroyEffect(AddSpecialEffectLocBJ(PolarProjectionBJ(loc, 350.0, 22.5 * I2R(i)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl"))
		i = i + 1
	end
	RemoveUnit(l__ut)
	RemoveLocation(loc)
	u = nil
	l__ut = nil
	loc = nil
	loc2 = nil
end
function Trig_Number14_1Func001001003()
	return UnitHasBuffBJ(GetFilterUnit(), 1113682796) == true
end
function Trig_Number14_1Func001A()
	local loc = LoadLocationHandle(YDHT, StringHash("泉鸣"), 0)
	local u = LoadUnitHandle(YDHT, StringHash("泉鸣"), 1)
	local shxishu = 1.0
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1093678666) >= 1 then
		shxishu = shxishu + 0.5
	end
	if GetUnitAbilityLevel(u, 1093678897) >= 1 then
		shxishu = shxishu + 0.5
	end
	if GetUnitAbilityLevel(u, 1093678918) >= 1 then
		shxishu = shxishu + 0.8
	end
	if GetUnitAbilityLevel(u, 1093678922) >= 1 then
		shxishu = shxishu + 0.8
	end
	if GetUnitAbilityLevel(u, 1093678666) >= 1 and GetUnitAbilityLevel(u, 1093678897) >= 1 and GetUnitAbilityLevel(u, 1093678918) >= 1 and GetUnitAbilityLevel(u, 1093678922) >= 1 then
		shxishu = shxishu + 4
	end
	if UnitHaveItem(u, 1227895116) or UnitHaveItem(u, 1227894851) or UnitHaveItem(u, 1227894850) or UnitHaveItem(u, 1227897145) or UnitHaveItem(u, 1227897153) or UnitHaveItem(u, 1227897155) then
		shxishu = shxishu * 2
	end
	shanghai = ShangHaiGongShi(u, GetEnumUnit(), 60, 95, shxishu, 1093677622)
	if IsUnitEnemy(GetEnumUnit(), GetOwningPlayer(u)) then
		SetUnitPositionLoc(GetEnumUnit(), loc)
		WuGongShangHai(u, GetEnumUnit(), shanghai)
	end
	loc = nil
--call FlushChildHashtable(YDHT,StringHash("泉鸣"))
end
function Trig_Number14_1Actions()
	local loc = LoadLocationHandle(YDHT, StringHash("泉鸣"), 0)
	local i = 0
	ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(470.0, loc, Condition(Trig_Number14_1Func001001003)), Trig_Number14_1Func001A)
	i = 1
	for _ in _loop_() do
		if i > 7 then break end
		DestroyEffect(AddSpecialEffectLocBJ(GetRandomLocInRect(RectFromCenterSizeBJ(loc, 350.0, 350.0)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl"))
		i = i + 1
	end
	loc = nil
end
--===========================================================================
function HengShan2_Trigger()
	local t = CreateTrigger()
	--天柱云气
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsTianZhu))
	TriggerAddAction(t, TianZhuYunQi)
	--鹤翔紫盖
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsHeXiangZiGai))
	TriggerAddAction(t, HeXiangJianFa)
	--石廪书声
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsShiLin))
	TriggerAddAction(t, ShiLinShuSheng)
	t = CreateTrigger()
	Ov(t)
	TriggerAddCondition(t, Condition(IsShiLinShu))
	TriggerAddAction(t, ShiLinShu)
	--雁回祝融
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsYanHui))
	TriggerAddAction(t, YanHuiZhuRong)
	t = CreateTrigger()
	Ov(t)
	TriggerAddCondition(t, Condition(IsYanHuiJian))
	TriggerAddAction(t, YanHuiJianFa)
	t = CreateTrigger()
	Ov(t)
	TriggerAddCondition(t, Condition(IsYanHuiDamage))
	TriggerAddAction(t, YanHuiDamage)
	--泉鸣芙蓉
	gg_trg_Number14_1 = CreateTrigger()
	DisableTrigger(gg_trg_Number14_1)
	TriggerRegisterTimerEventPeriodic(gg_trg_Number14_1, 1.0)
	TriggerAddAction(gg_trg_Number14_1, Trig_Number14_1Actions)
	gg_trg_Number14_0 = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(gg_trg_Number14_0, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(gg_trg_Number14_0, Condition(QuanMing_Conditions))
	TriggerAddAction(gg_trg_Number14_0, QuanMing_Actions)
end

HengShan2_Trigger() --衡山武功触发