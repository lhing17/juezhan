--------------江湖武功开始------------




--四门刀法
function bF()
	return GetSpellAbilityId() == 1093678669 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function CF()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, 1505665227, GetTriggerUnit())
	SaveInteger(YDHT, id * cx, -708948899, 1093678669)
	SaveLocationHandle(YDHT, id * cx, -1925439584, GetUnitLoc(GetTriggerUnit()))
	if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678920) ~= 0 then
		H7 = 1
		for _ in _loop_() do
			if H7 > 4 then break end
			SaveLocationHandle(YDHT, id * cx, -860413970, pu(LoadLocationHandle(YDHT, id * cx, -1925439584), 300.0, 90.0 * I2R(H7)))
			CreateNUnitsAtLoc(1, 1697656883, GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, -860413970), bj_UNIT_FACING)
			IssueImmediateOrderById(bj_lastCreatedUnit, 852128)
			Gw(20.0, bj_lastCreatedUnit)
			CreateNUnitsAtLoc(1, 1697656884, GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, -860413970), bj_UNIT_FACING)
			Gw(20.0, bj_lastCreatedUnit)
			RemoveLocation(LoadLocationHandle(YDHT, id * cx, -860413970))
			H7 = H7 + 1
		end
		if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093679158) ~= 0 and GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678936) ~= 0 then
			H7 = 1
			for _ in _loop_() do
				if H7 > 8 then break end
				SaveLocationHandle(YDHT, id * cx, -860413970, pu(LoadLocationHandle(YDHT, id * cx, -1925439584), 650.0, 45.0 * I2R(H7)))
				CreateNUnitsAtLoc(1, 1697656883, GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, -860413970), bj_UNIT_FACING)
				IssueImmediateOrderById(bj_lastCreatedUnit, 852128)
				Gw(20.0, bj_lastCreatedUnit)
				CreateNUnitsAtLoc(1, 1697656884, GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, -860413970), bj_UNIT_FACING)
				Gw(20.0, bj_lastCreatedUnit)
				RemoveLocation(LoadLocationHandle(YDHT, id * cx, -860413970))
				H7 = H7 + 1
			end
		end
		if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678935) ~= 0 then
			CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, -1925439584), bj_UNIT_FACING)
			UnitAddAbility(bj_lastCreatedUnit, 1093678670)
			Gw(20.0, bj_lastCreatedUnit)
			ShowUnit(bj_lastCreatedUnit, false)
		end
	else
		H7 = 1
		for _ in _loop_() do
			if H7 > 4 then break end
			SaveLocationHandle(YDHT, id * cx, -860413970, pu(LoadLocationHandle(YDHT, id * cx, -1925439584), 300.0, 90.0 * I2R(H7)))
			CreateNUnitsAtLoc(1, 1697656883, GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, -860413970), bj_UNIT_FACING)
			IssueImmediateOrderById(bj_lastCreatedUnit, 852128)
			Gw(10.0, bj_lastCreatedUnit)
			CreateNUnitsAtLoc(1, 1697656884, GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, -860413970), bj_UNIT_FACING)
			Gw(10.0, bj_lastCreatedUnit)
			RemoveLocation(LoadLocationHandle(YDHT, id * cx, -860413970))
			H7 = H7 + 1
		end
		if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093679158) ~= 0 and GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678936) ~= 0 then
			H7 = 1
			for _ in _loop_() do
				if H7 > 8 then break end
				SaveLocationHandle(YDHT, id * cx, -860413970, pu(LoadLocationHandle(YDHT, id * cx, -1925439584), 650.0, 45.0 * I2R(H7)))
				CreateNUnitsAtLoc(1, 1697656883, GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, -860413970), bj_UNIT_FACING)
				IssueImmediateOrderById(bj_lastCreatedUnit, 852128)
				Gw(10.0, bj_lastCreatedUnit)
				CreateNUnitsAtLoc(1, 1697656884, GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, -860413970), bj_UNIT_FACING)
				Gw(10.0, bj_lastCreatedUnit)
				RemoveLocation(LoadLocationHandle(YDHT, id * cx, -860413970))
				H7 = H7 + 1
			end
		end
		if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), 1093678935) ~= 0 then
			CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, -1925439584), bj_UNIT_FACING)
			UnitAddAbility(bj_lastCreatedUnit, 1093678670)
			Gw(10.0, bj_lastCreatedUnit)
			ShowUnit(bj_lastCreatedUnit, false)
		end
	end
	WuGongShengChong(GetTriggerUnit(), 1093678669, 250.0)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -1925439584))
	YDWELocalVariableEnd()
	FlushChildHashtable(YDHT, id * cx)
end
function DF()
	return GetEventDamage() == 0.27
end
function EF()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local u = udg_hero[i]
	local uc = GetTriggerUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1093678928) ~= 0 then
		shxishu = shxishu + 0.6
	end
	if GetUnitAbilityLevel(u, 1093679158) ~= 0 and GetUnitAbilityLevel(u, 1093678936) ~= 0 then
		shxishu = shxishu + 1.5
	end
	if GetUnitAbilityLevel(u, 1093678928) ~= 0 and GetUnitAbilityLevel(u, 1093679158) ~= 0 and GetUnitAbilityLevel(u, 1093678936) ~= 0 and GetUnitAbilityLevel(u, 1093678935) ~= 0 and GetUnitAbilityLevel(u, 1093678920) ~= 0 then
		shxishu = shxishu * 5 * 2
	end
	shanghai = ShangHaiGongShi(u, uc, 7.2, 7.2, shxishu, 1093678669)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
--一阳指
function GF()
	return GetSpellAbilityId() == 1093678672 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function HF()
	local loc = GetUnitLoc(GetTriggerUnit())
	local loc2 = nil
	local i = 1
	if GetUnitAbilityLevel(GetTriggerUnit(), 1093679152) ~= 0 and GetRandomInt(1, 100) <= 40 then
		SetUnitManaBJ(GetTriggerUnit(), GetUnitState(GetTriggerUnit(), UNIT_STATE_MANA) + 80.0)
	end
	WuGongShengChong(GetTriggerUnit(), 1093678672, 250.0)
	if GetUnitAbilityLevel(GetTriggerUnit(), 1093679428) ~= 0 and GetUnitAbilityLevel(GetTriggerUnit(), 1093679157) ~= 0 then
		for _ in _loop_() do
			if i >= 6 then break end
			loc2 = pu(loc, 200.0, 60.0 * i)
			CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(GetTriggerUnit()), loc, bj_UNIT_FACING)
			ShowUnitHide(bj_lastCreatedUnit)
			UnitAddAbility(bj_lastCreatedUnit, 1093678672)
			IssuePointOrderByIdLoc(bj_lastCreatedUnit, 852125, loc2)
			UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
			RemoveLocation(loc2)
			i = i + 1
		end
	end
	RemoveLocation(loc)
	loc = nil
	loc2 = nil
end
--一阳指伤害
function lF()
	return GetEventDamage() == 0.29 and IsUnitAliveBJ(GetTriggerUnit())
end
function JF()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local u = udg_hero[i]
	local uc = GetTriggerUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	local loc = GetUnitLoc(uc)
	local loc2 = nil
	if GetUnitAbilityLevel(u, 1093678927) ~= 0 then
		shxishu = shxishu + 0.6
	end
	if GetUnitAbilityLevel(u, 1093682254) ~= 0 then
		shxishu = shxishu + 0.7
	end
	if GetUnitAbilityLevel(u, 1093678927) ~= 0 and GetUnitAbilityLevel(u, 1093682254) ~= 0 and GetUnitAbilityLevel(u, 1093678933) ~= 0 and GetUnitAbilityLevel(u, 1093679428) ~= 0 and GetUnitAbilityLevel(u, 1093679157) ~= 0 and GetUnitAbilityLevel(u, 1093679152) ~= 0 then
		shxishu = shxishu * 6 * 2
	end
	shanghai = ShangHaiGongShi(u, uc, 40.0, 40.0, shxishu, 1093678672)
	WuGongShangHai(u, uc, shanghai)
	if GetUnitAbilityLevel(u, 1093678933) ~= 0 and IsUnitType(u, UNIT_TYPE_HERO) ~= nil and IsUnitMonster(uc) == false then -- INLINED!!
		if GetUnitState(uc, UNIT_STATE_LIFE) <= 0.05 * (1.0 * GetUnitState(uc, UNIT_STATE_MAX_LIFE)) then
			WuDi(uc)
			SetWidgetLife(uc, 1.0)
		else
			SetWidgetLife(uc, GetUnitState(uc, UNIT_STATE_LIFE) - 0.05 * (1.0 * GetUnitState(uc, UNIT_STATE_MAX_LIFE)))
		end
	end
	if gengu[1 + GetPlayerId(GetOwningPlayer(u))] >= 30 and IsUnitType(GetEventDamageSource(), UNIT_TYPE_HERO) ~= nil then -- INLINED!!
		general_buff(u, uc, 12)
	end
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
	loc2 = nil
end
--唐诗剑法
function LF()
	return GetEventDamage() == 0.31
end
function MF()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local u = udg_hero[i]
	local uc = GetTriggerUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	local loc = GetUnitLoc(uc)
	if GetUnitAbilityLevel(u, 1093678666) ~= 0 then
		shxishu = shxishu + 0.6
	end
	if GetUnitAbilityLevel(u, 1093678918) ~= 0 then
		shxishu = shxishu + 0.8
	end
	if GetUnitAbilityLevel(u, 1093678936) ~= 0 then
		shxishu = shxishu + 1.0
	end
	if GetUnitAbilityLevel(u, 1093678666) ~= 0 and GetUnitAbilityLevel(u, 1093678918) ~= 0 and GetUnitAbilityLevel(u, 1093678936) ~= 0 and GetUnitAbilityLevel(u, 1093678669) ~= 0 and GetUnitAbilityLevel(u, 1093678935) ~= 0 and GetUnitAbilityLevel(u, 1093679156) ~= 0 and GetUnitAbilityLevel(u, 1093678930) ~= 0 then
		shxishu = shxishu * 7 * 2
	end
	shanghai = ShangHaiGongShi(u, uc, 75, 75, shxishu, 1093678897)
	WuGongShangHai(u, uc, shanghai)
	if GetUnitAbilityLevel(u, 1093678669) ~= 0 and GetRandomInt(1, 10) < 5 and UnitHasBuffBJ(uc, 1110454323) == false then
		general_buff(u, uc, 3)
	end
	if GetUnitAbilityLevel(u, 1093678935) ~= 0 and GetRandomInt(1, 10) < 5 and UnitHasBuffBJ(uc, 1113813609) == false then
		general_buff(u, uc, 4)
	end
	if GetUnitAbilityLevel(u, 1093679156) ~= 0 and GetRandomInt(1, 10) < 5 and UnitHasBuffBJ(uc, 1110454324) == false then
		general_buff(u, uc, 7)
	end
	if GetUnitAbilityLevel(u, 1093678930) ~= 0 then
		SetWidgetLife(u, GetUnitState(u, UNIT_STATE_LIFE) + shanghai * 0.02)
	end
	WuGongShengChong(GetEventDamageSource(), 1093678897, 950.0)
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
end
--七伤拳
function OF()
	return GetUnitAbilityLevel(GetAttacker(), 1093678925) >= 1 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function PF()
	local id = GetHandleId(GetTriggeringTrigger())
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227))) and IsUnitAliveBJ(GetFilterUnit())
end
function QF()
	local u = GetAttacker()
	local uc = GetEnumUnit()
	local loc = GetUnitLoc(uc)
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local shxishu = 1.0
	local shanghai = 0.0
	DestroyEffect(AddSpecialEffectLocBJ(loc, "war3mapImported\\PhoenixAttack.mdx"))
	if GetUnitAbilityLevel(u, 1093678928) ~= 0 and GetUnitAbilityLevel(u, 1093678919) ~= 0 and GetUnitAbilityLevel(u, 1093679156) ~= 0 and GetUnitAbilityLevel(u, 1093678936) ~= 0 and GetUnitAbilityLevel(u, 1093678933) ~= 0 and GetUnitAbilityLevel(u, 1395666994) ~= 0 and GetUnitAbilityLevel(u, 1093678672) ~= 0 then
		shxishu = shxishu * 7 * 2
	end
	shanghai = ShangHaiGongShi(u, uc, 12.0, 16.0, shxishu, 1093678925)
	WuGongShangHai(u, uc, shanghai)
	if GetUnitAbilityLevel(u, 1093678928) ~= 0 and GetRandomReal(0.0, 100.0) <= 5.0 and UnitHasBuffBJ(uc, 1110454322) == false then
		general_buff(u, uc, 1)
	end
	if GetUnitAbilityLevel(u, 1093678919) ~= 0 and GetRandomReal(0.0, 100.0) <= 10.0 and UnitHasBuffBJ(uc, 1111844210) == false then
		general_buff(u, uc, 8)
	end
	if GetUnitAbilityLevel(u, 1093679156) ~= 0 and GetRandomReal(0.0, 100.0) <= 10.0 and UnitHasBuffBJ(uc, 1111847784) == false then
		general_buff(u, uc, 13)
	end
	if GetUnitAbilityLevel(u, 1093678936) ~= 0 and GetRandomReal(0.0, 100.0) <= 10.0 and UnitHasBuffBJ(uc, 1110454323) == false then
		general_buff(u, uc, 3)
	end
	if GetUnitAbilityLevel(u, 1093678933) ~= 0 and GetRandomReal(0.0, 100.0) <= 10.0 and UnitHasBuffBJ(uc, 1113813609) == false then
		general_buff(u, uc, 4)
	end
	if GetUnitAbilityLevel(u, 1395666994) ~= 0 and GetRandomReal(0.0, 100.0) <= 10.0 and UnitHasBuffBJ(uc, 1110454326) == false then
		general_buff(u, uc, 6)
	end
	if GetUnitAbilityLevel(u, 1093678672) ~= 0 and GetRandomReal(0.0, 100.0) <= 10.0 and UnitHasBuffBJ(uc, 1110454328) == false then
		general_buff(u, uc, 11)
	end
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
end
function RF()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	YDWELocalVariableInitiliation()
	SaveUnitHandle(YDHT, id * cx, 1505665227, GetAttacker())
	SaveLocationHandle(YDHT, id * cx, -1925439584, GetUnitLoc(GetTriggerUnit()))
	SaveLocationHandle(YDHT, id * cx, -860413970, GetUnitLoc(GetAttacker()))
	SaveInteger(YDHT, id * cx, -708948899, 1093678925)
	SaveReal(YDHT, id * cx, 596788346, 25.0)
	SaveReal(YDHT, id * cx, 1097940387, 500.0)
	SaveReal(YDHT, id * cx, -753873030, 3.0 + I2R(GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), LoadInteger(YDHT, id * cx, -708948899))) / 2.0 + I2R(danpo[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)))]) * 0.06)
	SaveReal(YDHT, id * cx, 426308609, 1.5 + udg_shanghaijiacheng[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)))])
	SaveReal(YDHT, id * cx, -753873030, LoadReal(YDHT, id * cx, -753873030) * LoadReal(YDHT, id * cx, 426308609))
	if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), LoadInteger(YDHT, id * cx, -708948899)) == 9 then
		SaveReal(YDHT, id * cx, -753873030, LoadReal(YDHT, id * cx, -753873030) * 10.0)
	end
	if GetRandomReal(0.0, 100.0) <= LoadReal(YDHT, id * cx, 596788346) then
		ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(LoadReal(YDHT, id * cx, 1097940387), LoadLocationHandle(YDHT, id * cx, -1925439584), Condition(PF)), QF)
		WuGongShengChong(GetAttacker(), 1093678925, 2000.0)
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -1925439584))
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -860413970))
	YDWELocalVariableEnd()
	FlushChildHashtable(YDHT, id * cx)
end
--九阴白骨爪
function TF()
	return GetEventDamage() == 0.35
end
function UF()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local u = udg_hero[i]
	local uc = GetTriggerUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1093678930) ~= 0 then
		shxishu = shxishu + 0.5
	end
	if GetUnitAbilityLevel(u, 1093678664) ~= 0 then
		shxishu = shxishu + 0.6
	end
	if GetUnitAbilityLevel(u, 1093679161) ~= 0 then
		shxishu = shxishu + 0.7
	end
	if GetUnitAbilityLevel(u, 1093678931) ~= 0 then
		shxishu = shxishu + 0.8
	end
	if GetUnitAbilityLevel(u, 1093679154) ~= 0 then
		shxishu = shxishu + 0.6
	end
	if udg_whichzhangmen[1 + GetPlayerId(GetOwningPlayer(u))] == 11 then
		shxishu = shxishu * 20
	end
	if GetUnitAbilityLevel(u, 1093678930) ~= 0 and GetUnitAbilityLevel(u, 1093678664) ~= 0 and GetUnitAbilityLevel(u, 1093679161) ~= 0 and GetUnitAbilityLevel(u, 1093678931) ~= 0 and GetUnitAbilityLevel(u, 1093679154) ~= 0 then
		shxishu = shxishu * 5 * 2
	end
	shanghai = ShangHaiGongShi(u, uc, 36, 36, shxishu, 1093678926)
	WuGongShangHai(u, uc, shanghai)
	WuGongShengChong(GetEventDamageSource(), 1093678926, 3000.0)
	u = nil
	uc = nil
end
---------空明拳开始-------//
function IsKongMing()
	return GetUnitAbilityLevel(GetAttacker(), 1093677367) >= 1 and GetRandomReal(0.0, 100.0) <= 15.0 + I2R(fuyuan[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))]) / 5.0
end
function KongMing_Condition()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetAttacker())) and IsUnitAliveBJ(GetFilterUnit())
end
function KongMing_Action()
	local u = GetAttacker()
	local uc = GetEnumUnit()
	local hujia = GetUnitState(uc, ConvertUnitState(32))
	local shengming = GetUnitState(uc, UNIT_STATE_MAX_LIFE)
	local shxishu = 1.0 + shengming / 500000000 + hujia / 2000
	local shanghai = 0.0
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local loc = GetUnitLoc(uc)
	if GetUnitAbilityLevel(u, 1093678931) >= 1 then
		shxishu = shxishu + 0.6
	end
	if GetUnitAbilityLevel(u, 1093682225) >= 1 then
		shxishu = shxishu + 0.8
	end
	if GetUnitAbilityLevel(u, 1093678931) >= 1 and GetUnitAbilityLevel(u, 1093682225) >= 1 and GetUnitAbilityLevel(u, 1093678672) ~= 0 and GetUnitAbilityLevel(u, 1093678933) ~= 0 and GetUnitAbilityLevel(GetTriggerUnit(), 1093677368) ~= 0 then
		shxishu = shxishu * 5 * 2
	end
	shanghai = ShangHaiGongShi(u, uc, 10, 8, shxishu, 1093677367)
	WuGongShangHai(u, uc, shanghai)
	DestroyEffect(AddSpecialEffectTarget("Units\\NightElf\\Wisp\\WispExplode.mdl", uc, "overhead"))
	if GetUnitAbilityLevel(u, 1093678672) ~= 0 and GetRandomInt(1, 10) < 5 and UnitHasBuffBJ(uc, 1113813609) == false then
		general_buff(u, uc, 4)
	end
	RemoveLocation(loc)
	loc = nil
	u = nil
	uc = nil
end
function KongMingQuan()
	local u = GetAttacker()
	local uc = GetTriggerUnit()
	local loc = GetUnitLoc(uc)
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local g = CreateGroup()
	WuGongShengChong(u, 1093677367, 1200.0)
	if GetUnitAbilityLevel(u, 1093678933) ~= 0 then
		GroupEnumUnitsInRangeOfLoc(g, loc, 400, Condition(KongMing_Condition))
	else
		GroupAddUnit(g, uc)
	end
	ForGroupBJ(g, KongMing_Action)
	GroupClear(g)
	DestroyGroup(g)
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
	p = nil
	g = nil
end
function IsKongMingBeiDa()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetUnitAbilityLevel(GetTriggerUnit(), 1093677367) >= 1 and GetUnitAbilityLevel(GetTriggerUnit(), 1093677368) >= 1 -- INLINED!!
end
function KongMingBeiDa()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	if aidacishu[i] >= 100 then
		aidacishu[i] = 0
		unitadditembyidswapped(1920168051, GetTriggerUnit())
	else
		aidacishu[i] = aidacishu[i] + 1
	end
end
---------空明拳结束-------//
---------碧海潮生曲开始-------//
function IsBiHai()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetSpellAbilityId() == 1093677368 -- INLINED!!
end
function BiHai_Condition()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())) and IsUnitAliveBJ(GetFilterUnit())
end
function BiHai_Action()
	local u = GetTriggerUnit()
	local uc = GetEnumUnit()
	local loc = GetUnitLoc(uc)
	local i = GetRandomInt(1, 5)
	local j = 5
	local shxishu = 1.0
	local shanghai = 0.0
	local yinlv = _array_()
	yinlv[1] = "宫!"
	yinlv[2] = "商!"
	yinlv[3] = "角!"
	yinlv[4] = "徵!"
	yinlv[5] = "羽!"
	if GetUnitAbilityLevel(u, 1093678664) >= 1 then
		j = 3
	end
	if GetUnitAbilityLevel(u, 1093682227) >= 1 then
		j = GetRandomInt(2, 5)
	end
	if GetUnitAbilityLevel(u, 1093678926) >= 1 then
		shxishu = shxishu + 1
	end
	if GetUnitAbilityLevel(u, 1093678664) >= 1 and GetUnitAbilityLevel(u, 1093682227) >= 1 and GetUnitAbilityLevel(u, 1093678926) >= 1 and GetUnitAbilityLevel(u, 1093679156) >= 1 then
		shxishu = shxishu * 4 * 2
	end
	if UnitHaveItem(u, 1227897156) then
		shxishu = shxishu * 8
	end
	if GetUnitAbilityLevel(u, 1093679156) >= 1 and UnitHasBuffBJ(u, 1110454361) then
		i = 5
	end
	CreateTextTagLocBJ(yinlv[i], loc, 40.0, 14.0, 10.0, 60.0, 30.0, 0)
	Nw(1.5, bj_lastCreatedTextTag)
	SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, 90)
	if i == 1 then
		general_buff(u, uc, 1)
	elseif i == 2 then
		general_buff(u, uc, 9)
	elseif i == 3 then
		shanghai = ShangHaiGongShi(u, uc, 20, 30, shxishu, 1093677368)
		WuGongShangHai(u, uc, shanghai)
		DestroyEffect(AddSpecialEffectLocBJ(loc, "Abilities\\Spells\\Items\\AIil\\AIilTarget.mdl"))
	elseif i == 4 then
		general_buff(u, uc, 4)
	elseif i == 5 then
		if UnitHasBuffBJ(u, 1110454361) == false then
			bihai[1 + GetPlayerId(GetOwningPlayer(u))] = 1
			CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc, bj_UNIT_FACING)
			ShowUnitHide(bj_lastCreatedUnit)
			UnitAddAbility(bj_lastCreatedUnit, 1093677377)
			IssueTargetOrderById(bj_lastCreatedUnit, 852075, uc)
			UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
		else
			bihai[1 + GetPlayerId(GetOwningPlayer(u))] = bihai[1 + GetPlayerId(GetOwningPlayer(u))] + 1
			UnitRemoveBuffBJ(1110454361, u)
			CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc, bj_UNIT_FACING)
			ShowUnitHide(bj_lastCreatedUnit)
			UnitAddAbility(bj_lastCreatedUnit, 1093677377)
			IssueTargetOrderById(bj_lastCreatedUnit, 852075, uc)
			UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
		end
		if bihai[1 + GetPlayerId(GetOwningPlayer(u))] >= j then
			UnitRemoveBuffBJ(1110454361, u)
			DestroyEffect(AddSpecialEffectLocBJ(loc, "Abilities\\Spells\\Items\\AIil\\AIilTarget.mdl"))
			shanghai = ShangHaiGongShi(u, uc, 800, 1600, shxishu, 1093677368)
			WuGongShangHai(u, uc, shanghai)
		end
	end
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
end
function BiHaiChaoSheng()
	local g = CreateGroup()
	local u = GetTriggerUnit()
	local loc = GetUnitLoc(u)
	local sd = CreateSound("Sound\\Music\\mp3Music\\UndeadVictory.mp3", false, false, false, 10, 10, "DefaultEAXON")
	DestroyEffect(AddSpecialEffectLocBJ(loc, "Abilities\\Spells\\Human\\Brilliance\\Brilliance.mdl"))
	--call PlaySoundOnUnitBJ(sd,100,u)
	WuGongShengChong(u, 1093677368, 700.0)
	GroupEnumUnitsInRangeOfLoc(g, loc, 500, Condition(BiHai_Condition))
	ForGroupBJ(g, BiHai_Action)
	GroupClear(g)
	DestroyGroup(g)
	RemoveLocation(loc)
	u = nil
	g = nil
	loc = nil
end
---------碧海潮生曲结束-------//
--------------江湖武功结束------------
function JiangHuWuGong_Trigger()




	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(bF))
	TriggerAddAction(t, CF)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(DF))
	TriggerAddAction(t, EF)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(GF))
	TriggerAddAction(t, HF)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(lF))
	TriggerAddAction(t, JF)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(LF))
	TriggerAddAction(t, MF)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(OF))
	TriggerAddAction(t, RF)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(TF))
	TriggerAddAction(t, UF)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsKongMingBeiDa))
	TriggerAddAction(t, KongMingBeiDa)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsKongMing))
	TriggerAddAction(t, KongMingQuan)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsBiHai))
	TriggerAddAction(t, BiHaiChaoSheng)
	t = nil
end

JiangHuWuGong_Trigger() --江湖武功触发