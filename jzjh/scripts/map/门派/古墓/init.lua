----------古墓开始--------//
--美女拳
function EE()
	return GetUnitAbilityLevel(GetAttacker(), 1093679429) >= 1 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function FE()
	local u = GetAttacker()
	local uc = GetTriggerUnit()
	local loc = GetUnitLoc(uc)
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local shxishu = 1.0
	local shanghai = 0.0
	if u == udg_hero[i] then
		if GetUnitAbilityLevel(u, 1093678933) ~= 0 then
			if GetRandomReal(0.0, 100.0) >= 45.0 then
			else
				if GetUnitAbilityLevel(u, 1093678931) ~= 0 then
					shxishu = shxishu + 0.6
				end
				if GetUnitAbilityLevel(u, 1093678926) ~= 0 then
					shxishu = shxishu + 0.8
				end
				if UnitHaveItem(u, 1227897155) then
					shxishu = shxishu * 4
				end
				DestroyEffect(AddSpecialEffectLocBJ(loc, "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl"))
				if GetUnitAbilityLevel(u, 1093678925) ~= 0 and GetRandomReal(0.0, 100.0) <= 10.0 and UnitHasBuffBJ(uc, 1110454328) == false then
					WanBuff(u, uc, 11)
				end
				shanghai = ShangHaiGongShi(u, uc, 28.0, 28.0, shxishu, 1093679429)
				WuGongShangHai(u, uc, shanghai)
				WuGongShengChong(GetAttacker(), 1093679429, 650)
			end
		else
			if GetRandomReal(0.0, 100.0) >= 30.0 then
			else
				if GetUnitAbilityLevel(u, 1093678931) ~= 0 then
					shxishu = shxishu + 0.6
				end
				if GetUnitAbilityLevel(u, 1093678926) ~= 0 then
					shxishu = shxishu + 0.8
				end
				if UnitHaveItem(u, 1227897155) then
					shxishu = shxishu * 4
				end
				DestroyEffect(AddSpecialEffectLocBJ(loc, "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl"))
				if GetUnitAbilityLevel(u, 1093678925) ~= 0 and GetRandomReal(0.0, 100.0) <= 10.0 and UnitHasBuffBJ(uc, 1110454328) == false then
					WanBuff(u, uc, 11)
				end
				shanghai = ShangHaiGongShi(u, uc, 28.0, 28.0, shxishu, 1093679429)
				WuGongShangHai(u, uc, shanghai)
				WuGongShengChong(GetAttacker(), 1093679429, 1000)
			end
		end
	else
		if GetUnitAbilityLevel(u, 1093678931) ~= 0 then
			shxishu = shxishu + 0.6
		end
		if GetUnitAbilityLevel(u, 1093678926) ~= 0 then
			shxishu = shxishu + 0.8
		end
		if UnitHaveItem(u, 1227897155) then
			shxishu = shxishu * 4
		end
		DestroyEffect(AddSpecialEffectLocBJ(loc, "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl"))
		if GetUnitAbilityLevel(u, 1093678925) ~= 0 and GetRandomReal(0.0, 100.0) <= 10.0 and UnitHasBuffBJ(uc, 1110454328) == false then
			WanBuff(u, uc, 11)
		end
		shanghai = ShangHaiGongShi(udg_hero[i], uc, 15, 15, shxishu, 1093679429)
		WuGongShangHai(udg_hero[i], uc, shanghai)
	end
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
end
--玉蜂针
function HE()
	return GetSpellAbilityId() == 1093679434
end
function IE()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())) and IsUnitAliveBJ(GetFilterUnit()) and GetFilterUnit() ~= GetSpellTargetUnit()
end
function lE()
	local u = GetTriggerUnit()
	local loc = GetUnitLoc(u)
	CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc, bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, 1093679436)
	IssueTargetOrderById(bj_lastCreatedUnit, 852527, GetEnumUnit())
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
	RemoveLocation(loc)
	u = nil
	loc = nil
end
function KE()
	local u = GetTriggerUnit()
	local loc = GetUnitLoc(u)
	local loc2 = GetUnitLoc(GetEnumUnit())
	CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc, bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, 1093679436)
	IssueTargetOrderById(bj_lastCreatedUnit, 852527, GetEnumUnit())
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
	CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc2, bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, 1093679435)
	IssueTargetOrderById(bj_lastCreatedUnit, 852189, GetEnumUnit())
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
	RemoveLocation(loc)
	RemoveLocation(loc2)
	u = nil
	loc = nil
	loc2 = nil
end
function LE()
	local u = GetTriggerUnit()
	local l__ut = GetSpellTargetUnit()
	local loc = GetUnitLoc(l__ut)
	local range = 0.0
	if GetUnitAbilityLevel(u, 1093678931) ~= 0 then
		range = 500
	else
		range = 300
	end
	if GetUnitAbilityLevel(u, 1093678668) ~= 0 then
		ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(range, loc, Condition(IE)), KE)
	else
		ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(range, loc, Condition(IE)), lE)
	end
	WuGongShengChong(u, 1093679434, 100.0)
	RemoveLocation(loc)
	u = nil
	l__ut = nil
	loc = nil
end
function NE()
	return GetEventDamage() == 0.45
end
function OE()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local uc = GetTriggerUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1093678913) ~= 0 then
		shxishu = shxishu + 0.8
	end
	if GetUnitAbilityLevel(u, 1093678932) ~= 0 then
		shxishu = shxishu + 0.6
	end
	if GetUnitAbilityLevel(u, 1093678935) ~= 0 then
		shxishu = shxishu + 0.5
	end
	if UnitHaveItem(u, 1227899221) then
		shxishu = shxishu * 2
	end
	if UnitHaveItem(u, 1227897155) then
		shxishu = shxishu * 4
	end
	shanghai = ShangHaiGongShi(u, uc, 46.0, 46.0, shxishu, 1093679434)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
--天罗地网掌
function QE()
	return GetUnitAbilityLevel(GetAttacker(), 1093679437) >= 1 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function RE()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetAttacker())) and IsUnitAliveBJ(GetFilterUnit())
end
function SE()
	local u = GetAttacker()
	local uc = GetEnumUnit()
	local loc = GetUnitLoc(uc)
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local shxishu = 1.0
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1093678926) ~= 0 then
		shxishu = shxishu + 0.7
	end
	if UnitHaveItem(u, 1227897155) then
		shxishu = shxishu * 4
	end
	shanghai = ShangHaiGongShi(u, uc, 22.0, 46.0, shxishu, 1093679437)
	WuGongShangHai(u, uc, shanghai)
	if GetUnitAbilityLevel(u, 1093678672) ~= 0 and UnitHasBuffBJ(uc, 1110454328) == false and GetRandomReal(0.0, 100.0) <= 40.0 then
		WanBuff(u, uc, 11)
	end
	if GetUnitAbilityLevel(u, 1093678925) ~= 0 and UnitHasBuffBJ(uc, 1110454326) == false and GetRandomReal(0.0, 100.0) <= 40.0 then
		WanBuff(u, uc, 6)
	end
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
end
function TE()
	local u = GetAttacker()
	local l__ut = nil
	local loc = GetUnitLoc(u)
	local loc2 = nil
	local loc3 = nil
	local imax = 4
	local r = 0.0
	local r2 = 0.0
	local g = CreateGroup()
	if GetRandomInt(1, 100) <= 15 + fuyuan[1 + GetPlayerId(GetOwningPlayer(u))] // 5 then
		GroupEnumUnitsInRangeOfLoc(g, loc, 800, Condition(RE))
		if GetUnitAbilityLevel(u, 1093678929) ~= 0 then
			imax = 7
		end
		Xd = 1
		for _ in _loop_() do
			if Xd > imax then break end
			r = r + 100
			Yd = 1
			for _ in _loop_() do
				if Yd > 8 then break end
				r2 = r2 + 45
				loc2 = pu(loc, r, r2)
				CreateNUnitsAtLoc(1, 1697656911, GetOwningPlayer(u), loc2, bj_UNIT_FACING)
				Gw(1.5, bj_lastCreatedUnit)
				--天罗地网阵
				if GetUnitAbilityLevel(u, 1093677894) ~= 0 and GetRandomInt(1, 3) == 1 then
					l__ut = GroupPickRandomUnit(g)
					loc3 = GetUnitLoc(l__ut)
					SetWidgetLife(l__ut, GetWidgetLife(l__ut) * 0.8)
					DestroyEffect(AddSpecialEffectLocBJ(loc3, "war3mapImported\\blue quick.mdx"))
					CreateNUnitsAtLoc(1, 1865429573, GetOwningPlayer(u), loc2, bj_UNIT_FACING)
					UnitAddAbility(bj_lastCreatedUnit, 1093677892)
					ShowUnitHide(bj_lastCreatedUnit)
					IssueTargetOrderById(bj_lastCreatedUnit, 852106, l__ut)
					Gw(3, bj_lastCreatedUnit)
					RemoveLocation(loc3)
					loc3 = nil
				end
				ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(100.0, loc2, Condition(RE)), SE)
				RemoveLocation(loc2)
				Yd = Yd + 1
			end
			Xd = Xd + 1
		end
		WuGongShengChong(GetAttacker(), 1093679437, 1000.0)
	end
	RemoveLocation(loc)
	DestroyGroup(g)
	g = nil
	u = nil
	loc = nil
	loc2 = nil
	l__ut = nil
end
--玉女心经
function VE()
	return GetUnitAbilityLevel(GetAttacker(), 1093679445) >= 1 and GetRandomReal(0, 1.0) <= 0.1 + 0.01 * I2R(GetUnitAbilityLevel(GetAttacker(), 1093679445)) and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function WE()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, 1505665227, udg_hero[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))])
	SaveInteger(YDHT, id * cx, -708948899, 1093679445)
	YDWESetLocalVariableLocation("jn1", GetUnitLoc(GetAttacker()))
	YDWESetLocalVariableLocation("jn2", pu(YDWEGetLocalVariableLocation("jn1"), GetRandomReal(200.0, 400.0), GetRandomReal(0, 360.0)))
	if GetUnitTypeId(GetAttacker()) == 1328558132 then
		SaveInteger(YDHT, id * cx, -705806693, 1747988533)
	elseif GetUnitTypeId(GetAttacker()) == 1328558129 then
		SaveInteger(YDHT, id * cx, -705806693, 1747988535)
	elseif GetUnitTypeId(GetAttacker()) == 1328558130 then
		SaveInteger(YDHT, id * cx, -705806693, 1747988536)
	elseif GetUnitTypeId(GetAttacker()) == 1328558131 then
		SaveInteger(YDHT, id * cx, -705806693, 1747988537)
	elseif GetUnitTypeId(GetAttacker()) == 1328558128 then
		SaveInteger(YDHT, id * cx, -705806693, 1747988534)
	elseif GetUnitTypeId(GetAttacker()) == 1328558643 or GetUnitTypeId(GetAttacker()) == 1328558664 or GetUnitTypeId(GetAttacker()) == 1328558665 then
		SaveInteger(YDHT, id * cx, -705806693, 1747988553)
	elseif GetUnitTypeId(GetAttacker()) == 1328558666 then
		SaveInteger(YDHT, id * cx, -705806693, 1747988555)
	end
	CreateNUnitsAtLoc(1, LoadInteger(YDHT, id * cx, -705806693), GetOwningPlayer(GetAttacker()), YDWEGetLocalVariableLocation("jn2"), bj_UNIT_FACING)
	SetUnitVertexColorBJ(bj_lastCreatedUnit, GetRandomReal(20.0, 80.0), GetRandomReal(20.0, 80.0), GetRandomReal(20.0, 80.0), GetRandomReal(20.0, 60.0))
	UnitAddAbility(bj_lastCreatedUnit, 1097625443)
	UnitAddAbility(bj_lastCreatedUnit, 1093679429)
	if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678935) ~= 0 then
		zw(bj_lastCreatedUnit, GetAttacker(), 1.0, 250.0, 1000.0, 1500.0, 75)
	end
	if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678666) ~= 0 then
		UnitAddAbility(bj_lastCreatedUnit, 1093679446)
	end
	if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678931) ~= 0 then
		Gw(20.0, bj_lastCreatedUnit)
	else
		Gw(10.0, bj_lastCreatedUnit)
	end
	RemoveLocation(YDWEGetLocalVariableLocation("jn1"))
	RemoveLocation(YDWEGetLocalVariableLocation("jn2"))
	if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678933) ~= 0 then
		YDWESetLocalVariableLocation("jn1", GetUnitLoc(GetAttacker()))
		YDWESetLocalVariableLocation("jn2", pu(YDWEGetLocalVariableLocation("jn1"), GetRandomReal(200.0, 400.0), GetRandomReal(0, 360.0)))
		CreateNUnitsAtLoc(1, GetUnitTypeId(GetAttacker()), GetOwningPlayer(GetAttacker()), YDWEGetLocalVariableLocation("jn2"), bj_UNIT_FACING)
		SetUnitVertexColorBJ(bj_lastCreatedUnit, GetRandomReal(20.0, 80.0), GetRandomReal(20.0, 80.0), GetRandomReal(20.0, 80.0), GetRandomReal(20.0, 60.0))
		UnitAddAbility(bj_lastCreatedUnit, 1097625443)
		UnitAddAbility(bj_lastCreatedUnit, 1093679429)
		if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678935) ~= 0 then
			zw(bj_lastCreatedUnit, LoadUnitHandle(YDHT, id * cx, 1505665227), 1.0, 250.0, 1000.0, 1500.0, 75)
		end
		if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678931) ~= 0 then
			Gw(20.0, bj_lastCreatedUnit)
		else
			Gw(10.0, bj_lastCreatedUnit)
		end
		if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678666) ~= 0 then
			UnitAddAbility(bj_lastCreatedUnit, 1093679446)
		end
		RemoveLocation(YDWEGetLocalVariableLocation("jn1"))
		RemoveLocation(YDWEGetLocalVariableLocation("jn2"))
	end
	WuGongShengChong(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))], 1093679445, 650.0)
	FlushChildHashtable(YDHT, id * cx)
end
function YE()
	return GetUnitAbilityLevel(GetAttacker(), 1093679446) >= 1 and GetRandomReal(0, 1.0) <= 0.13 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function ZE()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, 1505665227, udg_hero[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))])
	SaveInteger(YDHT, id * cx, -708948899, 1093678666)
	SaveLocationHandle(YDHT, id * cx, -1925439584, GetUnitLoc(LoadUnitHandle(YDHT, id * cx, 1505665227)))
	SaveLocationHandle(YDHT, id * cx, 1585647951, GetUnitLoc(GetTriggerUnit()))
	SaveReal(YDHT, id * cx, -1613012308, AngleBetweenPoints(LoadLocationHandle(YDHT, id * cx, -1925439584), LoadLocationHandle(YDHT, id * cx, 1585647951)))
	SaveLocationHandle(YDHT, id * cx, -860413970, pu(LoadLocationHandle(YDHT, id * cx, -1925439584), 200.0, LoadReal(YDHT, id * cx, -1613012308) + 180.0))
	CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)), LoadLocationHandle(YDHT, id * cx, -860413970), bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, LoadInteger(YDHT, id * cx, -708948899))
	SetUnitAbilityLevel(bj_lastCreatedUnit, LoadInteger(YDHT, id * cx, -708948899), GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), LoadInteger(YDHT, id * cx, -708948899)))
	IssuePointOrderByIdLoc(bj_lastCreatedUnit, 852218, LoadLocationHandle(YDHT, id * cx, 1585647951))
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -1925439584))
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -860413970))
	FlushChildHashtable(YDHT, id * cx)
end
--古墓清心诀
function e3()
	return GetSpellAbilityId() == 1093679444 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function f3()
	local t = GetExpiredTimer()
	local p = GetHandleId(t)
	local j = LoadReal(YDHT, p, 0)
	local i = LoadInteger(YDHT, p, 3)
	local imax = 15
	local u = LoadUnitHandle(YDHT, p, 1)
	local uc = LoadUnitHandle(YDHT, p, 2)
	if GetUnitAbilityLevel(udg_hero[1 + GetPlayerId(GetOwningPlayer(uc))], 1093678933) >= 1 then
		imax = 30
	end
	if i >= imax then
		FlushChildHashtable(YDHT, p)
		PauseTimer(t)
		DestroyTimer(t)
	else
		SaveInteger(YDHT, p, 3, i + 1)
		SetWidgetLife(uc, GetWidgetLife(uc) + GetUnitState(uc, UNIT_STATE_MAX_LIFE) * (j + I2R(yishu[1 + GetPlayerId(GetOwningPlayer(uc))])) / 200.0)
	end
	t = nil
	u = nil
	uc = nil
end
function g3()
	return IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())) and IsUnitAliveBJ(GetFilterUnit()) and IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function i3()
	local t
	local loc = GetUnitLoc(GetEnumUnit())
	CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(GetTriggerUnit()), loc, bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, 1093679444)
	IssueTargetOrderById(bj_lastCreatedUnit, 852160, GetEnumUnit())
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
	t = CreateTimer()
	if GetUnitAbilityLevel(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))], 1093678928) ~= 0 then
		SaveReal(YDHT, GetHandleId(t), 0, 40.0)
	else
		SaveReal(YDHT, GetHandleId(t), 0, 25.0)
	end
	SaveUnitHandle(YDHT, GetHandleId(t), 1, GetTriggerUnit())
	SaveUnitHandle(YDHT, GetHandleId(t), 2, GetEnumUnit())
	TimerStart(t, 1.0, true, f3)
	RemoveLocation(loc)
	t = nil
	loc = nil
end
function j3()
	local t
	local u = GetTriggerUnit()
	local uc = GetSpellTargetUnit()
	local loc = GetUnitLoc(u)
	local j = 0.0
	if GetUnitAbilityLevel(u, 1093678928) ~= 0 then
		j = 40
	else
		j = 25
	end
	if GetUnitAbilityLevel(u, 1093679155) ~= 0 then
		ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(500.0, loc, Condition(g3)), i3)
	else
		t = CreateTimer()
		SaveReal(YDHT, GetHandleId(t), 0, j)
		SaveUnitHandle(YDHT, GetHandleId(t), 1, u)
		SaveUnitHandle(YDHT, GetHandleId(t), 2, uc)
		TimerStart(t, 1.0, true, f3)
	end
	WuGongShengChong(GetTriggerUnit(), 1093679444, 100.0)
	RemoveLocation(loc)
	t = nil
	u = nil
	uc = nil
	loc = nil
end
function m3()
	return UnitHasBuffBJ(GetTriggerUnit(), 1110454340) and GetUnitAbilityLevel(GetTriggerUnit(), 1093678929) ~= 0
end
function nn3()
	UnitDamageTarget(GetTriggerUnit(), GetEventDamageSource(), GetEventDamage() * 10.0, true, false, ATTACK_TYPE_MELEE, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
end
----------古墓结束--------//
function GuMu_Trigger()
	local t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(EE))
	TriggerAddAction(t, FE)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(HE))
	TriggerAddAction(t, LE)

	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(NE))
	TriggerAddAction(t, OE)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(QE))
	TriggerAddAction(t, TE)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(VE))
	TriggerAddAction(t, WE)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(YE))
	TriggerAddAction(t, ZE)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(e3))
	TriggerAddAction(t, j3)

	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(m3))
	TriggerAddAction(t, nn3)
	t = nil
end

GuMu_Trigger() --古墓武功触发