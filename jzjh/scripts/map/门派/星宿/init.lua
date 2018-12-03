----------星宿开始--------//
--星宿逍遥掌
function p3()
	return GetUnitAbilityLevel(GetAttacker(), 1093681744) >= 1 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function q3()
	local id = GetHandleId(GetTriggeringTrigger())
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227))) and IsUnitAliveBJ(GetFilterUnit())
end
function r3()
	local u = GetAttacker()
	local uc = GetEnumUnit()
	local loc = GetUnitLoc(uc)
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local shxishu = 1.0
	local shanghai = 0.0
	DestroyEffect(AddSpecialEffectLocBJ(loc, "Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl"))
	if GetUnitAbilityLevel(u, 1093681748) ~= 0 and GetRandomReal(0.0, 100.0) <= 8.0 then
		CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc, bj_UNIT_FACING)
		ShowUnitHide(bj_lastCreatedUnit)
		UnitAddAbility(bj_lastCreatedUnit, 1093678900)
		IssueTargetOrderById(bj_lastCreatedUnit, 852527, uc)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 3.0)
	end
	if GetUnitAbilityLevel(u, 1093681750) ~= 0 then
		shxishu = shxishu + 0.5
	end
	if GetUnitAbilityLevel(u, 1093678930) ~= 0 then
		shxishu = shxishu + 0.6
	end
	if UnitHaveItem(u, 1227899213) then
		shxishu = shxishu * 1.8
	end
	shanghai = ShangHaiGongShi(u, uc, 20.3, 20.3, shxishu, 1093681744)
	WuGongShangHai(u, uc, shanghai)
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
end
function s3()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	YDWELocalVariableInitiliation()
	SaveUnitHandle(YDHT, id * cx, 1505665227, GetAttacker())
	SaveLocationHandle(YDHT, id * cx, -1925439584, GetUnitLoc(GetTriggerUnit()))
	SaveLocationHandle(YDHT, id * cx, -860413970, GetUnitLoc(GetAttacker()))
	SaveInteger(YDHT, id * cx, -708948899, 1093681744)
	if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678928) ~= 0 then
		SaveReal(YDHT, id * cx, 596788346, 35.0)
	else
		SaveReal(YDHT, id * cx, 596788346, 23.0)
	end
	SaveReal(YDHT, id * cx, 1097940387, 450.0)
	SaveReal(YDHT, id * cx, -753873030, 1 + I2R(GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), LoadInteger(YDHT, id * cx, -708948899))) / 2.0 + I2R(danpo[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)))]) * 0.05)
	SaveReal(YDHT, id * cx, 426308609, 0.9 + udg_shanghaijiacheng[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)))])
	SaveReal(YDHT, id * cx, -753873030, LoadReal(YDHT, id * cx, -753873030) * LoadReal(YDHT, id * cx, 426308609))
	if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), LoadInteger(YDHT, id * cx, -708948899)) == 9 then
		SaveReal(YDHT, id * cx, -753873030, LoadReal(YDHT, id * cx, -753873030) * 10.0)
	end
	if GetRandomReal(0.0, 100.0) <= LoadReal(YDHT, id * cx, 596788346) then
		ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(LoadReal(YDHT, id * cx, 1097940387), LoadLocationHandle(YDHT, id * cx, -1925439584), Condition(q3)), r3)
		WuGongShengChong(GetAttacker(), 1093681744, 1000.0)
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -1925439584))
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -860413970))
	YDWELocalVariableEnd()
	FlushChildHashtable(YDHT, id * cx)
end
--三阴蜈蚣爪
function u3()
	return GetSpellAbilityId() == 1093681745
end
function v3()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, 1505665227, GetTriggerUnit())
	SaveUnitHandle(YDHT, id * cx, -784714656, GetSpellTargetUnit())
	SaveLocationHandle(YDHT, id * cx, 1585647951, GetUnitLoc(LoadUnitHandle(YDHT, id * cx, 1505665227)))
	SaveLocationHandle(YDHT, id * cx, -1925439584, GetUnitLoc(LoadUnitHandle(YDHT, id * cx, -784714656)))
	SaveInteger(YDHT, id * cx, -708948899, 1093681745)
	SaveLocationHandle(YDHT, id * cx, -1925439584, GetUnitLoc(GetTriggerUnit()))
	SaveLocationHandle(YDHT, id * cx, -860413970, pu(LoadLocationHandle(YDHT, id * cx, -1925439584), 120.0, GetRandomReal(0, 360)))
	CreateNUnitsAtLoc(1, 1969451827, GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, -860413970), bj_UNIT_FACING)
	if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678672) ~= 0 then
		UnitAddAbility(bj_lastCreatedUnit, 1095656040)
	end
	if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678927) ~= 0 then
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 70.0)
	else
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 45.0)
	end
	zw(bj_lastCreatedUnit, GetTriggerUnit(), 1.0, 250.0, 1000.0, 1500.0, 75)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -1925439584))
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -860413970))
	SaveLocationHandle(YDHT, id * cx, -1925439584, GetUnitLoc(GetTriggerUnit()))
	SaveLocationHandle(YDHT, id * cx, -860413970, pu(LoadLocationHandle(YDHT, id * cx, -1925439584), 120.0, GetRandomReal(0, 360)))
	CreateNUnitsAtLoc(1, 1969451827, GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, -860413970), bj_UNIT_FACING)
	if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678672) ~= 0 then
		UnitAddAbility(bj_lastCreatedUnit, 1095656040)
	end
	if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678927) ~= 0 then
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 70.0)
	else
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 45.0)
	end
	zw(bj_lastCreatedUnit, GetTriggerUnit(), 1.0, 250.0, 1000.0, 1500.0, 75)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -1925439584))
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -860413970))
	SaveLocationHandle(YDHT, id * cx, -1925439584, GetUnitLoc(GetTriggerUnit()))
	SaveLocationHandle(YDHT, id * cx, -860413970, pu(LoadLocationHandle(YDHT, id * cx, -1925439584), 120.0, GetRandomReal(0, 360)))
	CreateNUnitsAtLoc(1, 1969451827, GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, -860413970), bj_UNIT_FACING)
	if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678672) ~= 0 then
		UnitAddAbility(bj_lastCreatedUnit, 1095656040)
	end
	if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678927) ~= 0 then
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 70.0)
	else
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 45.0)
	end
	zw(bj_lastCreatedUnit, GetTriggerUnit(), 1.0, 250.0, 1000.0, 1500.0, 75)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -1925439584))
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -860413970))
	if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678933) ~= 0 then
		SaveLocationHandle(YDHT, id * cx, -1925439584, GetUnitLoc(GetTriggerUnit()))
		SaveLocationHandle(YDHT, id * cx, -860413970, pu(LoadLocationHandle(YDHT, id * cx, -1925439584), 120.0, GetRandomReal(0, 360)))
		CreateNUnitsAtLoc(1, 1969451827, GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, -860413970), bj_UNIT_FACING)
		if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678672) ~= 0 then
			UnitAddAbility(bj_lastCreatedUnit, 1095656040)
		end
		if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678927) ~= 0 then
			UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 70.0)
		else
			UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 45.0)
		end
		zw(bj_lastCreatedUnit, GetTriggerUnit(), 1.0, 250.0, 1000.0, 1500.0, 75)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, -1925439584))
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, -860413970))
		SaveLocationHandle(YDHT, id * cx, -1925439584, GetUnitLoc(GetTriggerUnit()))
		SaveLocationHandle(YDHT, id * cx, -860413970, pu(LoadLocationHandle(YDHT, id * cx, -1925439584), 120.0, GetRandomReal(0, 360)))
		CreateNUnitsAtLoc(1, 1969451827, GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, -860413970), bj_UNIT_FACING)
		if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678672) ~= 0 then
			UnitAddAbility(bj_lastCreatedUnit, 1095656040)
		end
		if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678927) ~= 0 then
			UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 70.0)
		else
			UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 45.0)
		end
		zw(bj_lastCreatedUnit, GetTriggerUnit(), 1.0, 250.0, 1000.0, 1500.0, 75)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, -1925439584))
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, -860413970))
	end
	WuGongShengChong(GetTriggerUnit(), 1093681745, 100.0)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -1925439584))
	FlushChildHashtable(YDHT, id * cx)
end
function x3()
	return GetUnitTypeId(GetAttacker()) == 1969451827
end
function y3()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))]
	local uc = GetTriggerUnit()
	local loc2 = GetUnitLoc(uc)
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local shxishu = 1.0
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1093678913) ~= 0 and GetRandomReal(0.0, 100.0) <= 30.0 and UnitHasBuffBJ(uc, 1110454344) == false then
		general_buff(u, uc, 5)
	end
	if GetUnitAbilityLevel(u, 1093678926) ~= 0 and GetUnitAbilityLevel(u, 1093679161) ~= 0 and GetRandomReal(0.0, 100.0) <= 20.0 then
		DestroyEffect(AddSpecialEffectLocBJ(loc2, "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"))
		if GetUnitAbilityLevel(u, 1093681750) ~= 0 then
			shxishu = shxishu + 0.5
		end
		if UnitHaveItem(u, 1227899213) then
			shxishu = shxishu * 1.8
		end
		shanghai = ShangHaiGongShi(u, uc, 16.0, 16.0, shxishu, 1093681745)
		SetUnitLifePercentBJ(uc, GetUnitLifePercent(uc) * 0.7)
		WuGongShangHai(u, uc, shanghai)
		KillUnit(GetAttacker())
	else
		if GetRandomReal(0.0, 100.0) <= 35.0 then
			if GetUnitAbilityLevel(u, 1093681750) ~= 0 then
				shxishu = shxishu + 0.5
			end
			if UnitHaveItem(u, 1227899213) then
				shxishu = shxishu * 1.8
			end
			shanghai = ShangHaiGongShi(u, uc, 20.0, 20.0, shxishu, 1093681745)
			WuGongShangHai(u, uc, shanghai)
		end
	end
	RemoveLocation(loc2)
	u = nil
	uc = nil
	loc2 = nil
end
--神木王鼎+三阴
function IsShenDingSanYin()
	return GetItemTypeId(GetManipulatedItem()) == 1227899213 and GetUnitAbilityLevel(GetTriggerUnit(), 1093681745) >= 1 and isproducing[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == false
end
function ShenDingSanYin_1()
	local t = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = GetUnitLoc(u)
	local loc2 = pu(loc, 120, GetRandomReal(0, 360))
	isproducing[i] = false
	if UnitHaveItem(u, 1227899213) then
		CreateNUnitsAtLoc(1, 1969451827, p, loc2, bj_UNIT_FACING)
		if GetUnitAbilityLevel(u, 1093678672) ~= 0 then
			UnitAddAbility(bj_lastCreatedUnit, 1095656040)
		end
		if GetUnitAbilityLevel(u, 1093678927) ~= 0 then
			UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 70.0)
		else
			UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 45.0)
		end
		zw(bj_lastCreatedUnit, u, 1.0, 250.0, 1000.0, 1500.0, 75)
	end
	RemoveLocation(loc)
	RemoveLocation(loc2)
end
function ShenDingSanYin()
	local u = GetTriggerUnit()
	local t = CreateTimer()
	SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	isproducing[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = true
	TimerStart(t, 15, true, ShenDingSanYin_1)
	u = nil
	t = nil
end
--天山杖法
function A3()
	return GetEventDamage() == 0.51
end
function a3()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local uc = GetTriggerUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	local loc = GetUnitLoc(uc)
	if GetUnitAbilityLevel(u, 1093682254) ~= 0 then
		shxishu = shxishu + 0.6
	end
	if GetUnitAbilityLevel(u, 1093678931) ~= 0 then
		shxishu = shxishu + 0.7
	end
	if GetUnitAbilityLevel(u, 1093679156) ~= 0 then
		shxishu = shxishu + 0.8
	end
	if UnitHaveItem(u, 1227899213) then
		shxishu = shxishu * 1.8
	end
	DestroyEffect(AddSpecialEffectLocBJ(loc, "Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl"))
	shanghai = ShangHaiGongShi(u, uc, 100, 100, shxishu, 1093681747)
	WuGongShangHai(u, uc, shanghai)
	if GetUnitAbilityLevel(u, 1093678928) ~= 0 and GetRandomReal(0.0, 100.0) <= 10.0 and UnitHasBuffBJ(uc, 1111844210) == false then
		general_buff(u, uc, 8)
	end
	if GetUnitAbilityLevel(u, 1093678932) ~= 0 and GetRandomReal(0.0, 100.0) <= 10.0 and UnitHasBuffBJ(uc, 1110454344) == false then
		general_buff(u, uc, 5)
	end
	RemoveLocation(loc)
	WuGongShengChong(u, 1093681747, 300.0)
	u = nil
	uc = nil
	loc = nil
end
--万毒噬骨术
function b3()
	return GetEventDamage() == 0.52
end
function C3()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local uc = GetTriggerUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	local loc = GetUnitLoc(uc)
	if GetUnitAbilityLevel(u, 1093678925) ~= 0 then
		shxishu = shxishu + 0.6
	end
	if GetUnitAbilityLevel(u, 1093678930) ~= 0 then
		shxishu = shxishu + 0.7
	end
	if UnitHaveItem(u, 1227899213) then
		shxishu = shxishu * 1.8
	end
	if GetUnitAbilityLevel(u, 1093678928) ~= 0 and GetUnitAbilityLevel(u, 1093678668) ~= 0 and UnitHasBuffBJ(uc, 1110454324) == false and GetRandomReal(0.0, 100.0) <= 3.0 then
		general_buff(u, uc, 7)
	end
	WuGongShengChong(u, 1093681748, 3500.0)
	YDWEPolledWaitNull(0.1)
	shanghai = ShangHaiGongShi(u, uc, 10.8, 10.8, shxishu, 1093681748)
	WuGongShangHai(u, uc, shanghai)
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
end
function D3()
	return GetUnitAbilityLevel(GetKillingUnit(), 1093681748) ~= 0
end
function E3()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, 1505665227, udg_hero[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))])
	SaveUnitHandle(YDHT, id * cx, 292070382, GetTriggerUnit())
	SaveInteger(YDHT, id * cx, -708948899, 1093681748)
	if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1395666994) ~= 0 and GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678913) ~= 0 and GetRandomReal(0.0, 100.0) <= 3.0 then
		SaveLocationHandle(YDHT, id * cx, -1925439584, GetUnitLoc(LoadUnitHandle(YDHT, id * cx, 292070382)))
		CreateNUnitsAtLoc(1, 1969451827, GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)), LoadLocationHandle(YDHT, id * cx, -1925439584), bj_UNIT_FACING)
		if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678672) ~= 0 then
			UnitAddAbility(bj_lastCreatedUnit, 1095656040)
		end
		if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678927) ~= 0 then
			UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 70.0)
		else
			UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 45.0)
		end
		zw(bj_lastCreatedUnit, LoadUnitHandle(YDHT, id * cx, 1505665227), 1.0, 250.0, 1000.0, 1500.0, 75)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, -1925439584))
	end
	FlushChildHashtable(YDHT, id * cx)
end
--星宿心法
function G3()
	return GetSpellAbilityId() == 1093681750
end
function H3()
	if LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1302744471) >= 500.0 then
		FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
		DestroyTimer(GetExpiredTimer())
	else
		SaveReal(YDHT, GetHandleId(GetExpiredTimer()), -1302744471, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1302744471) + 47.0)
		if UnitHasBuffBJ(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227), 1112504171) and GetUnitAbilityLevel(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227), 1093678935) ~= 0 and GetRandomInt(1, 10) <= 5 then
			SaveLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951, GetUnitLoc(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227)))
			if GetUnitTypeId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227)) == 1328558132 then
				SaveInteger(YDHT, GetHandleId(GetExpiredTimer()), -705806693, 1747988533)
			elseif GetUnitTypeId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227)) == 1328558129 then
				SaveInteger(YDHT, GetHandleId(GetExpiredTimer()), -705806693, 1747988535)
			elseif GetUnitTypeId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227)) == 1328558130 then
				SaveInteger(YDHT, GetHandleId(GetExpiredTimer()), -705806693, 1747988536)
			elseif GetUnitTypeId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227)) == 1328558131 then
				SaveInteger(YDHT, GetHandleId(GetExpiredTimer()), -705806693, 1747988537)
			elseif GetUnitTypeId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227)) == 1328558128 then
				SaveInteger(YDHT, GetHandleId(GetExpiredTimer()), -705806693, 1747988534)
			elseif GetUnitTypeId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227)) == 1328558643 or GetUnitTypeId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227)) == 1328558664 or GetUnitTypeId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227)) == 1328558665 then
				SaveInteger(YDHT, GetHandleId(GetExpiredTimer()), -705806693, 1747988553)
			elseif GetUnitTypeId(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227)) == 1328558666 then
				SaveInteger(YDHT, GetHandleId(GetExpiredTimer()), -705806693, 1747988555)
			end
			CreateNUnitsAtLoc(1, LoadInteger(YDHT, GetHandleId(GetExpiredTimer()), -705806693), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227)), LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951), bj_UNIT_FACING)
			GroupAddUnit(Fe, bj_lastCreatedUnit)
			UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 5.0)
			RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951))
		end
	end
end
function I3()
	local ky
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, 1505665227, GetTriggerUnit())
	SaveLocationHandle(YDHT, id * cx, 1585647951, GetUnitLoc(LoadUnitHandle(YDHT, id * cx, 1505665227)))
	CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)), LoadLocationHandle(YDHT, id * cx, 1585647951), bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, 1093681751)
	IssueTargetOrderById(bj_lastCreatedUnit, 852069, LoadUnitHandle(YDHT, id * cx, 1505665227))
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
	SaveInteger(YDHT, id * cx, -708948899, 1093681750)
	if GetUnitTypeId(LoadUnitHandle(YDHT, id * cx, 1505665227)) == 1328558132 then
		SaveInteger(YDHT, id * cx, -705806693, 1747988533)
	elseif GetUnitTypeId(LoadUnitHandle(YDHT, id * cx, 1505665227)) == 1328558129 then
		SaveInteger(YDHT, id * cx, -705806693, 1747988535)
	elseif GetUnitTypeId(LoadUnitHandle(YDHT, id * cx, 1505665227)) == 1328558130 then
		SaveInteger(YDHT, id * cx, -705806693, 1747988536)
	elseif GetUnitTypeId(LoadUnitHandle(YDHT, id * cx, 1505665227)) == 1328558131 then
		SaveInteger(YDHT, id * cx, -705806693, 1747988537)
	elseif GetUnitTypeId(LoadUnitHandle(YDHT, id * cx, 1505665227)) == 1328558128 then
		SaveInteger(YDHT, id * cx, -705806693, 1747988534)
	elseif GetUnitTypeId(LoadUnitHandle(YDHT, id * cx, 1505665227)) == 1328558643 or GetUnitTypeId(LoadUnitHandle(YDHT, id * cx, 1505665227)) == 1328558664 or GetUnitTypeId(LoadUnitHandle(YDHT, id * cx, 1505665227)) == 1328558665 then
		SaveInteger(YDHT, id * cx, -705806693, 1747988553)
	elseif GetUnitTypeId(LoadUnitHandle(YDHT, id * cx, 1505665227)) == 1328558666 then
		SaveInteger(YDHT, id * cx, -705806693, 1747988555)
	end
	CreateNUnitsAtLoc(1, LoadInteger(YDHT, id * cx, -705806693), GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), bj_UNIT_FACING)
	GroupAddUnit(Fe, bj_lastCreatedUnit)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 5.0)
	WuGongShengChong(GetTriggerUnit(), 1093681750, 100.0)
	ky = CreateTimer()
	SaveUnitHandle(YDHT, GetHandleId(ky), 1505665227, LoadUnitHandle(YDHT, id * cx, 1505665227))
	TimerStart(ky, 1.0, true, H3)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	FlushChildHashtable(YDHT, id * cx)
	ky = nil
end
function J3()
	return IsUnitInGroup(GetTriggerUnit(), Fe)
end
function K3()
	local id = GetHandleId(GetTriggeringTrigger())
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227))) and IsUnitAliveBJ(GetFilterUnit())
end
function L3()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]
	local uc = GetEnumUnit()
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local shxishu = 1.0
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1093678928) ~= 0 then
		shxishu = shxishu + 0.7
	end
	if GetUnitAbilityLevel(u, 1093678932) ~= 0 then
		shxishu = shxishu + 0.8
	end
	if UnitHaveItem(u, 1227899213) then
		shxishu = shxishu * 1.8
	end
	shanghai = ShangHaiGongShi(u, uc, 60.0, 60.0, shxishu, 1093681750)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
function MM3()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	GroupRemoveUnit(Fe, GetTriggerUnit())
	SaveUnitHandle(YDHT, id * cx, 1505665227, udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	SaveLocationHandle(YDHT, id * cx, -1925439584, GetUnitLoc(LoadUnitHandle(YDHT, id * cx, -784714656)))
	SaveInteger(YDHT, id * cx, -708948899, 1093681750)
	SaveReal(YDHT, id * cx, -753873030, 0.8 + I2R(GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), LoadInteger(YDHT, id * cx, -708948899))) / 2.0 + 1.0)
	SaveReal(YDHT, id * cx, 426308609, 1.5 + udg_shanghaijiacheng[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)))])
	AddSpecialEffectLocBJ(LoadLocationHandle(YDHT, id * cx, -1925439584), "war3mapImported\\DivineRing.mdx")
	DestroyEffect(bj_lastCreatedEffect)
	ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(350.0, LoadLocationHandle(YDHT, id * cx, -1925439584), Condition(K3)), L3)
	if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093679155) ~= 0 and GetRandomInt(1, 100) <= 80 then
		if GetUnitTypeId(LoadUnitHandle(YDHT, id * cx, 1505665227)) == 1328558132 then
			SaveInteger(YDHT, id * cx, -705806693, 1747988533)
		elseif GetUnitTypeId(LoadUnitHandle(YDHT, id * cx, 1505665227)) == 1328558129 then
			SaveInteger(YDHT, id * cx, -705806693, 1747988535)
		elseif GetUnitTypeId(LoadUnitHandle(YDHT, id * cx, 1505665227)) == 1328558130 then
			SaveInteger(YDHT, id * cx, -705806693, 1747988536)
		elseif GetUnitTypeId(LoadUnitHandle(YDHT, id * cx, 1505665227)) == 1328558131 then
			SaveInteger(YDHT, id * cx, -705806693, 1747988537)
		elseif GetUnitTypeId(LoadUnitHandle(YDHT, id * cx, 1505665227)) == 1328558128 then
			SaveInteger(YDHT, id * cx, -705806693, 1747988534)
		elseif GetUnitTypeId(LoadUnitHandle(YDHT, id * cx, 1505665227)) == 1328558643 or GetUnitTypeId(LoadUnitHandle(YDHT, id * cx, 1505665227)) == 1328558664 or GetUnitTypeId(LoadUnitHandle(YDHT, id * cx, 1505665227)) == 1328558665 then
			SaveInteger(YDHT, id * cx, -705806693, 1747988553)
		elseif GetUnitTypeId(LoadUnitHandle(YDHT, id * cx, 1505665227)) == 1328558666 then
			SaveInteger(YDHT, id * cx, -705806693, 1747988555)
		end
		CreateNUnitsAtLoc(1, LoadInteger(YDHT, id * cx, -705806693), GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, -1925439584), bj_UNIT_FACING)
		GroupAddUnit(Fe, bj_lastCreatedUnit)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 5.0)
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -1925439584))
	FlushChildHashtable(YDHT, id * cx)
end
----------星宿结束--------//
function XingXiu_Trigger()
	local t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(p3))
	TriggerAddAction(t, s3)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(u3))
	TriggerAddAction(t, v3)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(x3))
	TriggerAddAction(t, y3)

	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(A3))
	TriggerAddAction(t, a3)

	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(b3))
	TriggerAddAction(t, C3)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(D3))
	TriggerAddAction(t, E3)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(G3))
	TriggerAddAction(t, I3)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(J3))
	TriggerAddAction(t, MM3)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(IsShenDingSanYin))
	TriggerAddAction(t, ShenDingSanYin)
	t = nil
end

XingXiu_Trigger() --星宿武功触发