----------武当开始--------//
--柔云掌
function IsRouYun()
	return GetUnitAbilityLevel(GetAttacker(), 1093678148) >= 1 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker())) and GetRandomReal(0.0, 100.0) <= 15.0
end
function RouYunZhang()
	local u = GetAttacker()
	local loc = GetUnitLoc(GetTriggerUnit())
	WuGongShengChong(u, 1093678148, 500.0)
	CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc, bj_UNIT_FACING)
	UnitAddAbility(bj_lastCreatedUnit, 1093679184)
	ShowUnitHide(bj_lastCreatedUnit)
	IssuePointOrderByIdLoc(bj_lastCreatedUnit, 852488, loc)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
	RemoveLocation(loc)
	u = nil
	loc = nil
end
function Xc()
	return GetEventDamage() == 0.41
end
function Yc()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local uc = GetTriggerUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	local loc = GetUnitLoc(uc)
	if GetUnitAbilityLevel(u, 1093679185) ~= 0 then
		shxishu = shxishu + 0.5
	end
	if GetUnitAbilityLevel(u, 1093678897) ~= 0 then
		shxishu = shxishu + 0.7
	end
	if GetUnitAbilityLevel(u, 1093678664) ~= 0 then
		shxishu = shxishu + 0.7
	end
	shanghai = ShangHaiGongShi(u, uc, 14, 30, shxishu, 1093678148)
	WuGongShangHai(u, uc, shanghai)
	if GetUnitAbilityLevel(u, 1093678930) ~= 0 and GetUnitAbilityLevel(u, 1093678932) ~= 0 and UnitHasBuffBJ(uc, 1110454328) == false then
		CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc, bj_UNIT_FACING)
		UnitAddAbility(bj_lastCreatedUnit, 1093678412)
		ShowUnitHide(bj_lastCreatedUnit)
		IssueTargetOrderById(bj_lastCreatedUnit, 852095, uc)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
	end
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
end
--绕指柔剑法
function dD()
	return GetEventDamage() == 0.42
end
function eD()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local uc = GetTriggerUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	local loc = GetUnitLoc(uc)
	if GetUnitAbilityLevel(u, 1093679185) ~= 0 then
		shxishu = shxishu + 0.5
	end
	if GetUnitAbilityLevel(u, 1093678933) ~= 0 then
		shxishu = shxishu + 0.6
	end
	if GetUnitAbilityLevel(u, 1093678666) ~= 0 then
		shxishu = shxishu + 0.7
	end
	shanghai = ShangHaiGongShi(u, uc, 60, 120, shxishu, 1093679187)
	WuGongShangHai(u, uc, shanghai)
	if GetUnitAbilityLevel(u, 1093678935) ~= 0 and GetRandomInt(1, 100) <= 30 and UnitHasBuffBJ(uc, 1111844210) == false then
		general_buff(u, uc, 8)
	end
	if GetUnitAbilityLevel(u, 1093678669) ~= 0 and GetRandomInt(1, 100) <= 30 and UnitHasBuffBJ(uc, 1110454323) == false then
		general_buff(u, uc, 3)
	end
	RemoveLocation(loc)
	WuGongShengChong(u, 1093679187, 500.0)
	u = nil
	uc = nil
	loc = nil
end
--太极拳
function gD()
	return GetSpellAbilityId() == 1093679186
end
function hD()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())) and IsUnitAliveBJ(GetFilterUnit())
end
function iD()
	local u = GetTriggerUnit()
	local uc = GetEnumUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	local loc = GetUnitLoc(uc)
	if GetUnitAbilityLevel(u, 1093679190) ~= 0 then
		shxishu = shxishu + 0.6
	end
	if GetUnitAbilityLevel(u, 1093682254) ~= 0 then
		shxishu = shxishu + 0.8
	end
	if GetUnitAbilityLevel(u, 1093678929) ~= 0 then
		shxishu = shxishu + 0.8
	end
	shanghai = ShangHaiGongShi(u, uc, 150.0, 150.0, shxishu, 1093679186)
	WuGongShangHai(u, uc, shanghai)
	if GetUnitAbilityLevel(u, 1093678668) ~= 0 and GetRandomInt(1, 100) <= 50 and UnitHasBuffBJ(uc, 1110454322) == false then
		general_buff(u, uc, 1)
	end
	if GetUnitAbilityLevel(u, 1093678925) ~= 0 and GetRandomInt(1, 100) <= 50 and UnitHasBuffBJ(uc, 1112896364) == false then
		general_buff(u, uc, 5)
	end
	RemoveLocation(loc)
	loc = nil
	u = nil
	uc = nil
end
function jD()
	local u = GetTriggerUnit()
	local loc = GetUnitLoc(u)
	bj_forLoopAIndex = 1
	bj_forLoopAIndexEnd = 60
	for _ in _loop_() do
		if bj_forLoopAIndex > bj_forLoopAIndexEnd then break end
		DestroyEffect(AddSpecialEffectLocBJ(pu(loc, 400.0, I2R(bj_forLoopAIndex) * 6.0), "Abilities\\Spells\\Other\\Doom\\DoomTarget.mdl"))
		bj_forLoopAIndex = bj_forLoopAIndex + 1
	end
	bj_forLoopAIndex = 1
	bj_forLoopAIndexEnd = 20
	for _ in _loop_() do
		if bj_forLoopAIndex > bj_forLoopAIndexEnd then break end
		DestroyEffect(AddSpecialEffectLocBJ(pu(pu(loc, 200.0, 0), 40.0, I2R(bj_forLoopAIndex) * 18.0), "Abilities\\Spells\\Other\\Doom\\DoomTarget.mdl"))
		DestroyEffect(AddSpecialEffectLocBJ(pu(pu(loc, 200.0, 180.0), 40.0, I2R(bj_forLoopAIndex) * 18.0), "Abilities\\Spells\\Other\\Doom\\DoomTarget.mdl"))
		bj_forLoopAIndex = bj_forLoopAIndex + 1
	end
	bj_forLoopBIndex = 1
	bj_forLoopBIndexEnd = 30
	for _ in _loop_() do
		if bj_forLoopBIndex > bj_forLoopBIndexEnd then break end
		DestroyEffect(AddSpecialEffectLocBJ(pu(pu(loc, 200.0, 0.0), 200.0, I2R(bj_forLoopBIndex) * 6.0), "Abilities\\Spells\\Other\\Doom\\DoomTarget.mdl"))
		DestroyEffect(AddSpecialEffectLocBJ(pu(pu(loc, 200.0, 180.0), 200.0, I2R(bj_forLoopBIndex) * 6.0 + 180.0), "Abilities\\Spells\\Other\\Doom\\DoomTarget.mdl"))
		bj_forLoopBIndex = bj_forLoopBIndex + 1
	end
	ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(500.0, loc, Condition(hD)), iD)
	WuGongShengChong(u, 1093679186, 250.0)
	RemoveLocation(loc)
	u = nil
	loc = nil
end
--纯阳无级功
function mD()
	return GetSpellAbilityId() == 1093679185
end
function nD()
	local t = GetExpiredTimer()
	local p = GetHandleId(t)
	local u = LoadUnitHandle(YDHT, p, 0)
	local loc = GetUnitLoc(u)
	if LoadReal(YDHT, p, 1) >= 2000.0 then
		FlushChildHashtable(YDHT, p)
		DestroyTimer(t)
	else
		SaveReal(YDHT, p, 1, LoadReal(YDHT, p, 1) + 10.0)
		CreateNUnitsAtLoc(1, 1697656917, GetOwningPlayer(u), loc, bj_UNIT_FACING)
		IssueImmediateOrderById(bj_lastCreatedUnit, 852177)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 5.0)
		RemoveLocation(loc)
	end
	t = nil
	u = nil
	loc = nil
end
function IsChunYangHuo()
	return GetEventDamage() == 5.17 and (GetUnitAbilityLevel(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))], 1093679185) >= 1 or GetUnitAbilityLevel(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))], 1093677877) >= 1)
end
function ChunYangHuo()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local uc = GetTriggerUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	--call BJDebugMsg("伤害执行了1")
	if GetUnitAbilityLevel(u, 1093679185) >= 1 then
		shanghai = ShangHaiGongShi(u, uc, 65, 75, shxishu, 1093679185)
	--圣火令神功
	elseif GetUnitAbilityLevel(u, 1093677877) >= 1 then
		--call BJDebugMsg("伤害执行了2")
		shanghai = ShangHaiGongShi(u, uc, 15, 20, shxishu, 1093677877)
	end
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
function oD()
	local t = CreateTimer()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = GetPlayerId(p)
	local loc = nil
	SetUnitManaBJ(u, GetUnitState(u, UNIT_STATE_MANA) + I2R(100 * (yishu[i] // 10 + GetUnitAbilityLevel(u, 1093679185))))
	if GetUnitAbilityLevel(u, 1093678933) ~= 0 then
		loc = GetUnitLoc(u)
		CreateNUnitsAtLoc(1, 1697656880, p, loc, bj_UNIT_FACING)
		ShowUnitHide(bj_lastCreatedUnit)
		UnitAddAbility(bj_lastCreatedUnit, 1093679188)
		IssueTargetOrderById(bj_lastCreatedUnit, 852066, u)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
		RemoveLocation(loc)
	end
	if GetUnitAbilityLevel(u, 1093678935) ~= 0 then
		loc = GetUnitLoc(u)
		CreateNUnitsAtLoc(1, 1697656880, p, loc, bj_UNIT_FACING)
		ShowUnitHide(bj_lastCreatedUnit)
		UnitAddAbility(bj_lastCreatedUnit, 1093679189)
		IssueTargetOrderById(bj_lastCreatedUnit, 852101, u)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
		SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
		TimerStart(t, 0.05, true, nD)
		RemoveLocation(loc)
	end
	WuGongShengChong(u, 1093679185, 250.0)
	t = nil
	u = nil
	p = nil
	loc = nil
end
function qD()
	return GetUnitAbilityLevel(GetTriggerUnit(), 1093679185) ~= 0 and GetSpellAbilityId() ~= 1093678418 and GetSpellAbilityId() ~= 1093679190 and GetSpellAbilityId() ~= 1093679192 and GetSpellAbilityId() ~= 1095329889
end
function rD()
	local u = GetTriggerUnit()
	ModifyHeroStat(1, u, 0, 50)
	YDWEPolledWaitNull(60.0)
	ModifyHeroStat(1, u, 1, 50)
	u = nil
end
function tD()
	return (GetUnitAbilityLevel(GetAttacker(), 1093679185) ~= 0 and UnitHasBuffBJ(GetAttacker(), 1110454345) or GetUnitAbilityLevel(GetAttacker(), 1093679186) ~= 0 and GetUnitAbilityLevel(GetAttacker(), 1093679428) ~= 0) and GetRandomInt(1, 30) <= 5
end
function uD()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetAttacker())) and IsUnitAliveBJ(GetFilterUnit())
end
function vD()
	local u = GetAttacker()
	local uc = GetEnumUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1093679190) ~= 0 then
		shxishu = shxishu + 0.6
	end
	if GetUnitAbilityLevel(u, 1093682254) ~= 0 then
		shxishu = shxishu + 0.8
	end
	if GetUnitAbilityLevel(u, 1093678929) ~= 0 then
		shxishu = shxishu + 0.8
	end
	shanghai = ShangHaiGongShi(u, uc, 50, 50, shxishu, 1093679186)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
function wD()
	local u = GetAttacker()
	local loc = GetUnitLoc(u)
	local i = 1
	i = 1
	for _ in _loop_() do
		if i > 60 then break end
		AddSpecialEffectLocBJ(pu(loc, 400.0, I2R(i) * 6.0), "Abilities\\Spells\\Other\\Doom\\DoomTarget.mdl")
		DestroyEffect(bj_lastCreatedEffect)
		i = i + 1
	end
	i = 1
	for _ in _loop_() do
		if i > 20 then break end
		AddSpecialEffectLocBJ(pu(pu(loc, 200.0, 0), 40.0, I2R(i) * 18.0), "Abilities\\Spells\\Other\\Doom\\DoomTarget.mdl")
		DestroyEffect(bj_lastCreatedEffect)
		AddSpecialEffectLocBJ(pu(pu(loc, 200.0, 180.0), 40.0, I2R(i) * 18.0), "Abilities\\Spells\\Other\\Doom\\DoomTarget.mdl")
		DestroyEffect(bj_lastCreatedEffect)
		i = i + 1
	end
	i = 1
	for _ in _loop_() do
		if i > 30 then break end
		AddSpecialEffectLocBJ(pu(pu(loc, 200.0, 0.0), 200.0, I2R(i) * 6.0), "Abilities\\Spells\\Other\\Doom\\DoomTarget.mdl")
		DestroyEffect(bj_lastCreatedEffect)
		AddSpecialEffectLocBJ(pu(pu(loc, 200.0, 180.0), 200.0, I2R(i) * 6.0 + 180.0), "Abilities\\Spells\\Other\\Doom\\DoomTarget.mdl")
		DestroyEffect(bj_lastCreatedEffect)
		i = i + 1
	end
	ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(500.0, loc, Condition(uD)), vD)
	RemoveLocation(loc)
	u = nil
	loc = nil
end
function yD()
	return GetUnitAbilityLevel(GetAttacker(), 1093678897) ~= 0 and GetUnitAbilityLevel(GetAttacker(), 1093679185) ~= 0 and GetRandomInt(1, 30) <= 3
end
function zD()
	general_buff(GetAttacker(), GetTriggerUnit(), 6)
end
function aD()
	return GetUnitAbilityLevel(GetTriggerUnit(), 1093682254) ~= 0 and GetUnitAbilityLevel(GetTriggerUnit(), 1093679185) ~= 0 and GetRandomInt(1, 20) <= 2
end
function BD()
	general_buff(GetTriggerUnit(), GetAttacker(), 1)
end
--混沌一气
function CD()
	return GetUnitAbilityLevel(GetTriggerUnit(), 1093679190) ~= 0
end
function cD()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if GetUnitAbilityLevel(u, 1093678928) ~= 0 then
		Cd[i] = Cd[i] + 1
		if Cd[i] >= 300 then
			Cd[i] = 0
			YDWEGeneralBounsSystemUnitSetBonus(u, 1, 0, 20)
			DisplayTextToPlayer(p, 0, 0, "魔法上限+20")
		end
	end
	WuGongShengChong(u, 1093679190, 4000)
	u = nil
	p = nil
end
function ED()
	return GetUnitAbilityLevel(GetAttacker(), 1093679190) ~= 0 and GetUnitAbilityLevel(GetAttacker(), 1093678930) ~= 0 and GetUnitAbilityLevel(GetAttacker(), 1093678935) ~= 0 and GetRandomInt(1, 100) <= 10
end
function FD()
	general_buff(GetAttacker(), GetTriggerUnit(), 2)
end
function HD()
	return GetUnitAbilityLevel(GetTriggerUnit(), 1093679190) ~= 0 and GetSpellAbilityId() ~= 1093678418 and GetSpellAbilityId() ~= 1093679190 and GetSpellAbilityId() ~= 1093679192 and GetSpellAbilityId() ~= 1095329889
end
function ID()
	YDWEPolledWaitNull(0.2)
	SetUnitManaBJ(GetTriggerUnit(), GetUnitState(GetTriggerUnit(), UNIT_STATE_MANA) + 100.0)
end
function JD()
	return GetUnitAbilityLevel(GetTriggerUnit(), 1093679190) ~= 0 and GetUnitAbilityLevel(GetTriggerUnit(), 1093679155) ~= 0 and GetUnitAbilityLevel(GetTriggerUnit(), 1093682254) ~= 0 and GetSpellAbilityId() ~= 1093678418 and GetSpellAbilityId() ~= 1093679190 and GetSpellAbilityId() ~= 1093679192 and GetSpellAbilityId() ~= 1095329889 and GetRandomInt(1, 10) <= 3
end
function KD()
	local u = GetTriggerUnit()
	local loc = GetUnitLoc(u)
	UnitResetCooldown(u)
	AddSpecialEffectLocBJ(loc, "Abilities\\Spells\\Human\\Avatar\\AvatarCaster.mdl")
	DestroyEffect(bj_lastCreatedEffect)
	RemoveLocation(loc)
	u = nil
	loc = nil
end
function MD()
	return GetUnitAbilityLevel(GetTriggerUnit(), 1093679190) ~= 0 and GetUnitAbilityLevel(GetTriggerUnit(), 1093678929) ~= 0
end
function ND()
	UnitDamageTarget(GetTriggerUnit(), GetEventDamageSource(), GetEventDamage() * 10.0, true, false, ATTACK_TYPE_MELEE, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
end
----------武当结束--------//
function WuDang_Trigger()
	local t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsRouYun))
	TriggerAddAction(t, RouYunZhang)

	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(Xc))
	TriggerAddAction(t, Yc)

	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(dD))
	TriggerAddAction(t, eD)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(gD))
	TriggerAddAction(t, jD)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(mD))
	TriggerAddAction(t, oD)

	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(IsChunYangHuo))
	TriggerAddAction(t, ChunYangHuo)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(qD))
	TriggerAddAction(t, rD)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(tD))
	TriggerAddAction(t, wD)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(yD))
	TriggerAddAction(t, zD)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(aD))
	TriggerAddAction(t, BD)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(CD))
	TriggerAddAction(t, cD)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(ED))
	TriggerAddAction(t, FD)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(HD))
	TriggerAddAction(t, ID)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(JD))
	TriggerAddAction(t, KD)

	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(MD))
	TriggerAddAction(t, ND)
end

WuDang_Trigger() --武当武功触发