--------------绝世武功开始------------
--降龙十八掌
function WF()
	return GetSpellAbilityId() == 1093678917 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function XF()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, 1505665227, GetTriggerUnit())
	SaveInteger(YDHT, id * cx, -708948899, 1093678917)
	GroupAddUnit(j9, LoadUnitHandle(YDHT, id * cx, 1505665227))
	WuGongShengChong(GetTriggerUnit(), 1093678917, 100.0)
	YDWEWaitForLocalVariable(29.0)
	GroupRemoveUnit(j9, LoadUnitHandle(YDHT, id * cx, 1505665227))
	YDWELocalVariableEnd()
	FlushChildHashtable(YDHT, id * cx)
end
function ZF()
	return CountUnitsInGroup(j9) > 0
end
function dG()
	local id = GetHandleId(GetTriggeringTrigger())
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227))) and IsUnitAliveBJ(GetFilterUnit())
end
function eG()
	local u = LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), -320330265), 1505665227)
	local uc = GetEnumUnit()
	local loc = GetUnitLoc(uc)
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local shxishu = jueXueXiShu(i)
	local shanghai = 0.0
	DestroyEffect(AddSpecialEffectLocBJ(loc, "Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl"))
	shanghai = ShangHaiGongShi(u, uc, 60.0, 60.0, shxishu, 1093678917)
	WuGongShangHai(u, uc, shanghai)
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
end
function fG()
	local id = GetHandleId(GetTriggeringTrigger())
	if IsUnitDeadBJ(GetEnumUnit()) then
	else
		SaveUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227, GetEnumUnit())
		SaveLocationHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -1925439584, GetUnitLoc(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227)))
		SaveInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -708948899, 1093678917)
		SaveReal(YDHT, id * LoadInteger(YDHT, id, -320330265), -753873030, 3.0 + I2R(juexuelingwu[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227)))]) + I2R(GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227), LoadInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -708948899))) / 2.0 + I2R(gengu[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227)))]) * 0.06)
		SaveReal(YDHT, id * LoadInteger(YDHT, id, -320330265), 426308609, 10.0 + udg_shanghaijiacheng[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227)))])
		SaveReal(YDHT, id * LoadInteger(YDHT, id, -320330265), -753873030, LoadReal(YDHT, id * LoadInteger(YDHT, id, -320330265), -753873030) * (LoadReal(YDHT, id * LoadInteger(YDHT, id, -320330265), 426308609) * 2.5))
		if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227), LoadInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -708948899)) == 9 then
			SaveReal(YDHT, id * LoadInteger(YDHT, id, -320330265), -753873030, LoadReal(YDHT, id * LoadInteger(YDHT, id, -320330265), -753873030) * 10.0)
		end
		ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(700.0, LoadLocationHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -1925439584), Condition(dG)), eG)
		RemoveLocation(LoadLocationHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -1925439584))
		RemoveLocation(LoadLocationHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -860413970))
		YDWELocalVariableEnd()
	end
end
function gG()
	ForGroupBJ(j9, fG)
end
--独孤九剑
function IsDuGuJiuJian()
	return GetSpellAbilityId() == 1093678918 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function DuGuJiuJian()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	GroupAddUnit(k9, u)
	m9 = 0.0
	n9 = 0.0
	o9[0] = GetUnitLoc(u)
	p9 = 1
	for _ in _loop_() do
		if p9 > 20 then break end
		m9 = m9 + 18.0
		o9[1] = pu(o9[0], 300.0, I2R(p9) * 28.0)
		CreateNUnitsAtLoc(1, 1747988531, p, o9[1], bj_UNIT_FACING)
		q9[p9] = bj_lastCreatedUnit
		RemoveLocation(o9[1])
		SetUnitAnimation(q9[p9], "birth")
		SetUnitFlyHeight(q9[p9], m9, 100.0)
		p9 = p9 + 1
	end
	RemoveLocation(o9[0])
	WuGongShengChong(GetTriggerUnit(), 1093678918, 120.0)
	YDWEPolledWaitNull(10.0)
	GroupRemoveUnit(k9, u)
	u = nil
	p = nil
end
function mG()
	return CountUnitsInGroup(k9) > 0
end
function nG()
	local id = GetHandleId(GetTriggeringTrigger())
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227))) and IsUnitAliveBJ(GetFilterUnit())
end
function oG()
	local u = LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), -320330265), 1505665227)
	local uc = GetEnumUnit()
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local shxishu = jueXueXiShu(i)
	local shanghai = 0.0
	shanghai = ShangHaiGongShi(u, uc, 9.0, 9.0, shxishu, 1093678918)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
function pG()
	local id = GetHandleId(GetTriggeringTrigger())
	if IsUnitDeadBJ(GetEnumUnit()) then
	else
		SaveUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227, GetEnumUnit())
		SaveLocationHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -1925439584, GetUnitLoc(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227)))
		n9 = n9 + 12.0
		p9 = 1
		for _ in _loop_() do
			if p9 > 48 then break end
			o9[2] = pu(LoadLocationHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -1925439584), 300.0, I2R(p9) * 16.0 + n9)
			SetUnitPositionLoc(q9[p9], o9[2])
			RemoveLocation(o9[2])
			p9 = p9 + 1
		end
		SaveInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -708948899, 1093678918)
		SaveReal(YDHT, id * LoadInteger(YDHT, id, -320330265), -753873030, 1.0 + I2R(juexuelingwu[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227)))]) + I2R(GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227), LoadInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -708948899))) / 2.0 + I2R(wuxing[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227)))]) * 0.06)
		SaveReal(YDHT, id * LoadInteger(YDHT, id, -320330265), 426308609, 0.2 + udg_shanghaijiacheng[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227)))])
		SaveReal(YDHT, id * LoadInteger(YDHT, id, -320330265), -753873030, LoadReal(YDHT, id * LoadInteger(YDHT, id, -320330265), -753873030) * LoadReal(YDHT, id * LoadInteger(YDHT, id, -320330265), 426308609))
		if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227), LoadInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -708948899)) == 9 then
			SaveReal(YDHT, id * LoadInteger(YDHT, id, -320330265), -753873030, LoadReal(YDHT, id * LoadInteger(YDHT, id, -320330265), -753873030) * 10.0)
		end
		ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(450.0, LoadLocationHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -1925439584), Condition(nG)), oG)
		RemoveLocation(LoadLocationHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -1925439584))
		YDWELocalVariableEnd()
	end
end
function qG()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	YDWELocalVariableInitiliation()
	ForGroupBJ(k9, pG)
	FlushChildHashtable(YDHT, id * cx)
end
--黯然销魂掌
function sG()
	return GetSpellAbilityId() == 1093678919 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function tG()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, 1505665227, GetTriggerUnit())
	SaveInteger(YDHT, id * cx, -708948899, 1093678919)
	WuGongShengChong(GetTriggerUnit(), 1093678919, 90.0)
	YDWELocalVariableEnd()
	FlushChildHashtable(YDHT, id * cx)
end
function vG()
	return GetEventDamage() == 4.21
end
function wG()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local u = udg_hero[i]
	local uc = GetTriggerUnit()
	local shxishu = jueXueXiShu(i)
	local shanghai = 0.0
	local loc = GetUnitLoc(uc)
	shanghai = ShangHaiGongShi(u, uc, 33.0, 33.0, shxishu, 1093678919)
	WuGongShangHai(u, uc, shanghai)
	if GetRandomInt(1, 50) >= 20 and UnitHasBuffBJ(uc, 1110454328) == false then
		WanBuff(u, uc, 11)
	end
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
end
--反两仪刀法
function yG()
	return GetSpellAbilityId() == 1093678920 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function zG()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, 1505665227, GetTriggerUnit())
	SaveLocationHandle(YDHT, id * cx, 1585647951, GetUnitLoc(LoadUnitHandle(YDHT, id * cx, 1505665227)))
	SaveInteger(YDHT, id * cx, -708948899, 1093678920)
	CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)), LoadLocationHandle(YDHT, id * cx, 1585647951), bj_UNIT_FACING)
	UnitAddAbility(bj_lastCreatedUnit, 1093681495)
	IssueTargetOrderById(bj_lastCreatedUnit, 852066, LoadUnitHandle(YDHT, id * cx, 1505665227))
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
	ShowUnitHide(bj_lastCreatedUnit)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	WuGongShengChong(GetTriggerUnit(), 1093678920, 90.0)
	YDWELocalVariableEnd()
	FlushChildHashtable(YDHT, id * cx)
end
function aG()
	return GetEventDamage() == 4.13
end
function BG()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local u = udg_hero[i]
	local uc = GetTriggerUnit()
	local shxishu = jueXueXiShu(i)
	local shanghai = 0.0
	shanghai = ShangHaiGongShi(u, uc, 50.0, 50.0, shxishu, 1093678920)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
--野球拳
function CG()
	return GetSpellAbilityId() == 1093678921 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function cG()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, 1505665227, GetTriggerUnit())
	SaveInteger(YDHT, id * cx, -708948899, 1093678921)
	CreateNUnitsAtLoc(1, 1697656904, GetOwningPlayer(GetTriggerUnit()), pu(GetUnitLoc(GetTriggerUnit()), 325.0, 0), bj_UNIT_FACING)
	Yv(bj_lastCreatedUnit, GetTriggerUnit(), 6.0, 0.0, 0, 20.0, 0.03)
	Gw(20.0, bj_lastCreatedUnit)
	CreateNUnitsAtLoc(1, 1697656904, GetOwningPlayer(GetTriggerUnit()), pu(GetUnitLoc(GetTriggerUnit()), 325.0, 120.0), bj_UNIT_FACING)
	Yv(bj_lastCreatedUnit, GetTriggerUnit(), 6.0, 0.0, 0, 20.0, 0.03)
	Gw(20.0, bj_lastCreatedUnit)
	CreateNUnitsAtLoc(1, 1697656904, GetOwningPlayer(GetTriggerUnit()), pu(GetUnitLoc(GetTriggerUnit()), 325.0, 240.0), bj_UNIT_FACING)
	Yv(bj_lastCreatedUnit, GetTriggerUnit(), 6.0, 0.0, 0, 20.0, 0.03)
	Gw(20.0, bj_lastCreatedUnit)
	WuGongShengChong(GetTriggerUnit(), 1093678921, 90.0)
	GroupAddUnit(r9, LoadUnitHandle(YDHT, id * cx, 1505665227))
	YDWEWaitForLocalVariable(19.0)
	GroupRemoveUnit(r9, LoadUnitHandle(YDHT, id * cx, 1505665227))
	YDWELocalVariableEnd()
	FlushChildHashtable(YDHT, id * cx)
end
function EG()
	return CountUnitsInGroup(r9) > 0
end
function FG()
	local id = GetHandleId(GetTriggeringTrigger())
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227))) and IsUnitAliveBJ(GetFilterUnit())
end
function GG()
	local u = LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), -320330265), 1505665227)
	local uc = GetEnumUnit()
	local loc = GetUnitLoc(uc)
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local shxishu = jueXueXiShu(i)
	local shanghai = 0.0
	DestroyEffect(AddSpecialEffectLocBJ(loc, "war3mapImported\\CrimsonWake.mdx"))
	shanghai = ShangHaiGongShi(u, uc, 30, 30, shxishu, 1093678921)
	WuGongShangHai(u, uc, shanghai)
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
end
function HG()
	local id = GetHandleId(GetTriggeringTrigger())
	SaveUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227, udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEnumUnit()))])
	SaveLocationHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -1925439584, GetUnitLoc(GetEnumUnit()))
	SaveInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -708948899, 1093678921)
	ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(650.0, LoadLocationHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -1925439584), Condition(FG)), GG)
	RemoveLocation(LoadLocationHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -1925439584))
end
function IG()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	YDWELocalVariableInitiliation()
	ForGroupBJ(r9, HG)
	FlushChildHashtable(YDHT, id * cx)
end
--辟邪剑法
function JG()
	return GetSpellAbilityId() == 1093678922 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function KG()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	t9[LoadInteger(YDHT, id * cx, -1587459251)] = GetSpellTargetLoc()
	SaveUnitHandle(YDHT, id * cx, 1505665227, GetTriggerUnit())
	SaveInteger(YDHT, id * cx, -708948899, 1093678922)
	WuGongShengChong(GetTriggerUnit(), 1093678922, 80.0)
	GroupAddUnit(s9, LoadUnitHandle(YDHT, id * cx, 1505665227))
	YDWEWaitForLocalVariable(20.0)
	GroupRemoveUnit(s9, LoadUnitHandle(YDHT, id * cx, 1505665227))
	RemoveLocation(t9[LoadInteger(YDHT, id * cx, -1587459251)])
	YDWELocalVariableEnd()
	FlushChildHashtable(YDHT, id * cx)
end
function MG()
	return CountUnitsInGroup(s9) > 0
end
function NG()
	local id = GetHandleId(GetTriggeringTrigger())
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227))) and IsUnitAliveBJ(GetFilterUnit())
end
function OG()
	local u = LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDHT, GetHandleId(GetTriggeringTrigger()), -320330265), 1505665227)
	local uc = GetEnumUnit()
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local shxishu = jueXueXiShu(i)
	local shanghai = 0.0
	shanghai = ShangHaiGongShi(u, uc, 43, 43, shxishu, 1093678922)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
function PG()
	local id = GetHandleId(GetTriggeringTrigger())
	if IsUnitDeadBJ(GetEnumUnit()) then
	else
		SaveUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227, udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEnumUnit()))])
		SaveLocationHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -1925439584, t9[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227)))])
		SaveInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -708948899, 1093678922)
		SaveReal(YDHT, id * LoadInteger(YDHT, id, -320330265), -753873030, 1.7 + I2R(juexuelingwu[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227)))]) + I2R(GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227), LoadInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -708948899))) / 2.0 + I2R(jingmai[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227)))]) * 0.05)
		SaveReal(YDHT, id * LoadInteger(YDHT, id, -320330265), 426308609, 8.5 + udg_shanghaijiacheng[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227)))])
		SaveReal(YDHT, id * LoadInteger(YDHT, id, -320330265), -753873030, LoadReal(YDHT, id * LoadInteger(YDHT, id, -320330265), -753873030) * LoadReal(YDHT, id * LoadInteger(YDHT, id, -320330265), 426308609))
		if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227), LoadInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -708948899)) == 9 then
			SaveReal(YDHT, id * LoadInteger(YDHT, id, -320330265), -753873030, LoadReal(YDHT, id * LoadInteger(YDHT, id, -320330265), -753873030) * 10.0)
		end
		ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(600.0, LoadLocationHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -1925439584), Condition(NG)), OG)
		YDWELocalVariableEnd()
	end
end
function QG()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	YDWELocalVariableInitiliation()
	ForGroupBJ(s9, PG)
	FlushChildHashtable(YDHT, id * cx)
end
--胡家刀法
function SG()
	return GetSpellAbilityId() == 1093679158
end
function TG()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227))) and IsUnitAliveBJ(GetFilterUnit())
end
function UG()
	local u = LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227)
	local uc = GetEnumUnit()
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local shxishu = jueXueXiShu(i)
	local shanghai = 0.0
	shanghai = ShangHaiGongShi(u, uc, 20, 20, shxishu, 1093679158)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
function VG()
	if LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1302744471) >= 500.0 then
		FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
		DestroyTimer(GetExpiredTimer())
	else
		SaveReal(YDHT, GetHandleId(GetExpiredTimer()), -1302744471, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1302744471) + 10.0)
		SaveLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951, pu(GetUnitLoc(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227)), GetRandomReal(100.0, 350.0), GetRandomReal(0, 360.0)))
		CreateNUnitsAtLoc(1, 1697656908, GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227)), LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951), bj_UNIT_FACING)
		Gw(2.0, bj_lastCreatedUnit)
		ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(350.0, LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951), Condition(TG)), UG)
	end
end
function WG()
	local ky
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, 1505665227, GetTriggerUnit())
	SaveInteger(YDHT, id * cx, -708948899, 1093679158)
	SaveReal(YDHT, id * cx, -753873030, 2.0 + I2R(juexuelingwu[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)))]) + I2R(GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), LoadInteger(YDHT, id * cx, -708948899))) / 2.0 + I2R(gengu[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)))]) * 0.07)
	SaveReal(YDHT, id * cx, 426308609, 8.3 + udg_shanghaijiacheng[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)))])
	SaveReal(YDHT, id * cx, -753873030, LoadReal(YDHT, id * cx, -753873030) * LoadReal(YDHT, id * cx, 426308609))
	SaveReal(YDHT, id * cx, -753873030, LoadReal(YDHT, id * cx, -753873030) * 1.8)
	if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), LoadInteger(YDHT, id * cx, -708948899)) == 9 then
		SaveReal(YDHT, id * cx, -753873030, LoadReal(YDHT, id * cx, -753873030) * 10.0)
	end
	SaveLocationHandle(YDHT, id * cx, -1925439584, GetUnitLoc(LoadUnitHandle(YDHT, id * cx, 1505665227)))
	WuGongShengChong(GetTriggerUnit(), 1093679158, 100.0)
	H7 = 1
	for _ in _loop_() do
		if H7 > 18 then break end
		SaveLocationHandle(YDHT, id * cx, -860413970, pu(LoadLocationHandle(YDHT, id * cx, -1925439584), 256, 20.0 * I2R(H7)))
		CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, -1925439584), bj_UNIT_FACING)
		ShowUnitHide(bj_lastCreatedUnit)
		UnitAddAbility(bj_lastCreatedUnit, 1093679159)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 852218, LoadLocationHandle(YDHT, id * cx, -860413970))
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, -860413970))
		H7 = H7 + 1
	end
	ky = CreateTimer()
	SaveUnitHandle(YDHT, GetHandleId(ky), 1505665227, LoadUnitHandle(YDHT, id * cx, 1505665227))
	SaveReal(YDHT, GetHandleId(ky), -753873030, LoadReal(YDHT, id * cx, -753873030))
	TimerStart(ky, 0.3, true, VG)
	FlushChildHashtable(YDHT, id * cx)
	ky = nil
end
function YG()
	return GetEventDamage() == 4.22
end
function ZG()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local u = udg_hero[i]
	local uc = GetTriggerUnit()
	local shxishu = jueXueXiShu(i)
	local shanghai = 0.0
	shanghai = ShangHaiGongShi(u, uc, 16.6, 16.6, shxishu, 1093679158)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
--西毒杖法
function e6()
	return GetSpellAbilityId() == 1093679161 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function f6()
	local u = GetTriggerUnit()
	local loc = GetUnitLoc(u)
	CreateNUnitsAtLoc(1, 1697656909, GetOwningPlayer(u), loc, bj_UNIT_FACING)
	UnitAddAbility(bj_lastCreatedUnit, 1093679160)
	IssueImmediateOrderById(bj_lastCreatedUnit, 852183)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 31.0)
	RemoveLocation(loc)
	WuGongShengChong(GetTriggerUnit(), 1093679161, 100.0)
	u = nil
	loc = nil
end
function h6()
	return GetEventDamage() == 4.35
end
function i6()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local u = udg_hero[i]
	local uc = GetTriggerUnit()
	local shxishu = jueXueXiShu(i)
	local shanghai = 0.0
	if UnitHaveItem(u, 1227897154) then
		shxishu = shxishu * 8
	end
	shanghai = ShangHaiGongShi(u, uc, 45.0, 45.0, shxishu, 1093679161)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
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
--打狗棒法
function O6()
	return GetSpellAbilityId() == 1093678924
end
function P6()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(C9)) and IsUnitAliveBJ(GetFilterUnit())
end
function Q6()
	local u = C9
	local uc = GetEnumUnit()
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local shxishu = jueXueXiShu(i)
	local shanghai = 0.0
	if UnitHaveItem(u, 1227897143) then
		shxishu = shxishu * 8
	end
	shanghai = ShangHaiGongShi(u, uc, 35.0, 35.0, shxishu, 1093678924)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
function R6()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	DisableTrigger(GetTriggeringTrigger())
	C9 = GetTriggerUnit()
	c9 = GetUnitLoc(GetTriggerUnit())
	SaveUnitHandle(YDHT, id * cx, 1505665227, GetTriggerUnit())
	SaveInteger(YDHT, id * cx, -708948899, 1093678924)
	SaveReal(YDHT, id * cx, -753873030, 1.8 + I2R(juexuelingwu[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)))]) + I2R(GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), LoadInteger(YDHT, id * cx, -708948899))) / 2.0 + I2R(gengu[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)))]) * 0.06)
	SaveReal(YDHT, id * cx, 426308609, 9.0 + udg_shanghaijiacheng[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)))])
	SaveReal(YDHT, id * cx, -753873030, LoadReal(YDHT, id * cx, -753873030) * LoadReal(YDHT, id * cx, 426308609))
	SaveReal(YDHT, id * cx, -753873030, LoadReal(YDHT, id * cx, -753873030) * 1.5)
	if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), LoadInteger(YDHT, id * cx, -708948899)) == 9 then
		SaveReal(YDHT, id * cx, -753873030, LoadReal(YDHT, id * cx, -753873030) * 10.0)
	end
	WuGongShengChong(GetTriggerUnit(), 1093678924, 70.0)
	TriggerSleepAction(0.2)
	SaveInteger(YDHT, id, -320330265, cx)
	PauseUnit(C9, true)
	CreateNUnitsAtLoc(1, 1747988532, GetOwningPlayer(C9), c9, bj_UNIT_FACING)
	D9 = bj_lastCreatedUnit
	SetUnitPositionLocFacingLocBJ(C9, pu(c9, 800.0, 135.0), c9)
	SetUnitAnimation(C9, "ATTACK")
	SetUnitPositionLocFacingLocBJ(D9, GetUnitLoc(C9), GetUnitLoc(C9))
	TriggerSleepAction(0.15)
	SaveInteger(YDHT, id, -320330265, cx)
	SetUnitPositionLocFacingLocBJ(C9, pu(c9, 800.0, 45.0), c9)
	SetUnitAnimation(C9, "ATTACK")
	SetUnitPositionLocFacingLocBJ(D9, GetUnitLoc(C9), GetUnitLoc(C9))
	TriggerSleepAction(0.15)
	SaveInteger(YDHT, id, -320330265, cx)
	SetUnitPositionLocFacingLocBJ(C9, pu(c9, 600.0, 225.0), c9)
	SetUnitAnimation(C9, "ATTACK")
	SetUnitPositionLocFacingLocBJ(D9, GetUnitLoc(C9), GetUnitLoc(C9))
	TriggerSleepAction(0.15)
	SaveInteger(YDHT, id, -320330265, cx)
	SetUnitPositionLocFacingLocBJ(C9, pu(c9, 900.0, 90.0), c9)
	SetUnitAnimation(C9, "ATTACK")
	SetUnitPositionLocFacingLocBJ(D9, GetUnitLoc(C9), GetUnitLoc(C9))
	TriggerSleepAction(0.15)
	SaveInteger(YDHT, id, -320330265, cx)
	SetUnitPositionLocFacingLocBJ(C9, pu(c9, 600.0, 315.0), c9)
	SetUnitAnimation(C9, "ATTACK")
	SetUnitPositionLocFacingLocBJ(D9, GetUnitLoc(C9), GetUnitLoc(C9))
	TriggerSleepAction(0.15)
	SaveInteger(YDHT, id, -320330265, cx)
	SetUnitPositionLocFacingLocBJ(GetTriggerUnit(), pu(c9, 800.0, 135.0), c9)
	SetUnitAnimation(C9, "ATTACK")
	SetUnitPositionLocFacingLocBJ(D9, GetUnitLoc(C9), GetUnitLoc(C9))
	TriggerSleepAction(0.15)
	SaveInteger(YDHT, id, -320330265, cx)
	AddLightningLoc("FORK", pu(c9, 800.0, 135.0), pu(c9, 800.0, 45.0))
	E9[1] = bj_lastCreatedLightning
	AddLightningLoc("FORK", pu(c9, 800.0, 45.0), pu(c9, 600.0, 225.0))
	E9[2] = bj_lastCreatedLightning
	AddLightningLoc("FORK", pu(c9, 600.0, 225.0), pu(c9, 900.0, 90.0))
	E9[3] = bj_lastCreatedLightning
	AddLightningLoc("FORK", pu(c9, 900.0, 90.0), pu(c9, 600.0, 315.0))
	E9[4] = bj_lastCreatedLightning
	AddLightningLoc("FORK", pu(c9, 600.0, 315.0), pu(c9, 800.0, 135.0))
	E9[5] = bj_lastCreatedLightning
	SetUnitPositionLocFacingLocBJ(C9, c9, c9)
	RemoveUnit(D9)
	F9 = 1
	for _ in _loop_() do
		if F9 > 12 then break end
		AddSpecialEffectLocBJ(pu(c9, 100.0, 30.0 * I2R(F9)), "Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl")
		DestroyEffect(bj_lastCreatedEffect)
		AddSpecialEffectLocBJ(pu(c9, 300.0, 30.0 * I2R(F9)), "Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl")
		DestroyEffect(bj_lastCreatedEffect)
		AddSpecialEffectLocBJ(pu(c9, 500.0, 30.0 * I2R(F9)), "Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl")
		DestroyEffect(bj_lastCreatedEffect)
		F9 = F9 + 1
	end
	ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(600.0, c9, Condition(P6)), Q6)
	TriggerSleepAction(1.0)
	SaveInteger(YDHT, id, -320330265, cx)
	DestroyLightning(E9[1])
	DestroyLightning(E9[2])
	DestroyLightning(E9[3])
	DestroyLightning(E9[4])
	DestroyLightning(E9[5])
	PauseUnit(C9, false)
	ResetUnitAnimation(C9)
	EnableTrigger(jn)
	TriggerSleepAction(6.0)
	SaveInteger(YDHT, id, -320330265, cx)
	DisableTrigger(jn)
	RemoveLocation(c9)
	EnableTrigger(in_)
	FlushChildHashtable(YDHT, id * cx)
end
function T6()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(C9)) and IsUnitAliveBJ(GetFilterUnit())
end
function U6()
	local u = C9
	local uc = GetEnumUnit()
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local shxishu = jueXueXiShu(i)
	local shanghai = 0.0
	shanghai = ShangHaiGongShi(u, uc, 18.0, 18.0, shxishu, 1093678924)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
function V6()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, 1505665227, C9)
	SaveInteger(YDHT, id * cx, -708948899, 1093678924)
	SaveLocationHandle(YDHT, id * cx, 1585647951, pu(GetUnitLoc(LoadUnitHandle(YDHT, id * cx, 1505665227)), GetRandomReal(100.0, 350.0), GetRandomReal(0, 360.0)))
	CreateNUnitsAtLoc(1, 1697656905, GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)), LoadLocationHandle(YDHT, id * cx, 1585647951), bj_UNIT_FACING)
	Gw(2.0, bj_lastCreatedUnit)
	SaveReal(YDHT, id * cx, -753873030, 1.8 + I2R(juexuelingwu[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)))]) + I2R(GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), LoadInteger(YDHT, id * cx, -708948899))) / 2.0 + I2R(gengu[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)))]) * 0.06)
	SaveReal(YDHT, id * cx, 426308609, 9.0 * udg_shanghaijiacheng[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)))])
	SaveReal(YDHT, id * cx, -753873030, LoadReal(YDHT, id * cx, -753873030) * LoadReal(YDHT, id * cx, 426308609))
	SaveReal(YDHT, id * cx, -753873030, LoadReal(YDHT, id * cx, -753873030) * 1.5)
	if GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), LoadInteger(YDHT, id * cx, -708948899)) == 9 then
		SaveReal(YDHT, id * cx, -753873030, LoadReal(YDHT, id * cx, -753873030) * 10.0)
	end
	ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(400.0, LoadLocationHandle(YDHT, id * cx, 1585647951), Condition(T6)), U6)
	FlushChildHashtable(YDHT, id * cx)
end
--残章：辟邪剑法之流星赶月
function X6()
	return GetUnitAbilityLevel(GetAttacker(), 1093678922) >= 1 and GetRandomReal(0.0, 100.0) <= 5.0 and Kd[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))] >= 1 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function Y6()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227))) and IsUnitAliveBJ(GetFilterUnit())
end
function Z6()
	local u = LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227)
	local uc = GetEnumUnit()
	local loc = GetUnitLoc(uc)
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local shxishu = jueXueXiShu(i)
	local shanghai = 0.0
	DestroyEffect(AddSpecialEffectLocBJ(loc, "Abilities\\Spells\\Items\\TomeOfRetraining\\TomeOfRetrainingCaster.mdl"))
	shanghai = ShangHaiGongShi(u, uc, 18.0, 18.0, shxishu, 1093678922)
	WuGongShangHai(u, uc, shanghai)
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
end
function dH()
	if LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1302744471) >= 400.0 then
		FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
		DestroyTimer(GetExpiredTimer())
	else
		SaveReal(YDHT, GetHandleId(GetExpiredTimer()), -1302744471, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1302744471) + 11.0)
		SaveLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951, GetUnitLoc(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), -784714656)))
		ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(200.0, LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951), Condition(Y6)), Z6)
		RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951))
	end
end
function eH()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227))) and IsUnitAliveBJ(GetFilterUnit())
end
function fH()
	local u = LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227)
	local uc = GetEnumUnit()
	local loc = GetUnitLoc(uc)
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local shxishu = jueXueXiShu(i)
	local shanghai = 0.0
	DestroyEffect(AddSpecialEffectLocBJ(loc, "Abilities\\Spells\\Items\\TomeOfRetraining\\TomeOfRetrainingCaster.mdl"))
	shanghai = ShangHaiGongShi(u, uc, 18.0, 18.0, shxishu, 1093678922)
	WuGongShangHai(u, uc, shanghai)
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
end
function gH()
	if LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1302744471) >= 400.0 then
		FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
		DestroyTimer(GetExpiredTimer())
	else
		SaveReal(YDHT, GetHandleId(GetExpiredTimer()), -1302744471, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1302744471) + 11.0)
		SaveLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951, GetUnitLoc(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), -784714656)))
		ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(200.0, LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951), Condition(eH)), fH)
		RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), -860413970))
	end
end
function hH()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227))) and IsUnitAliveBJ(GetFilterUnit())
end
function iH()
	local u = LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227)
	local uc = GetEnumUnit()
	local loc = GetUnitLoc(uc)
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local shxishu = jueXueXiShu(i)
	local shanghai = 0.0
	DestroyEffect(AddSpecialEffectLocBJ(loc, "Abilities\\Spells\\Items\\TomeOfRetraining\\TomeOfRetrainingCaster.mdl"))
	shanghai = ShangHaiGongShi(u, uc, 18.0, 18.0, shxishu, 1093678922)
	WuGongShangHai(u, uc, shanghai)
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
end
function jH()
	if LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1302744471) >= 400.0 then
		FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
		DestroyTimer(GetExpiredTimer())
	else
		SaveReal(YDHT, GetHandleId(GetExpiredTimer()), -1302744471, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1302744471) + 11.0)
		SaveLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951, GetUnitLoc(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), -784714656)))
		ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(200.0, LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951), Condition(hH)), iH)
		RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), -860413970))
	end
end
function kH()
	local ky
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	YDWELocalVariableInitiliation()
	SaveUnitHandle(YDHT, id * cx, 1505665227, GetAttacker())
	SaveInteger(YDHT, id * cx, -708948899, 1093678922)
	SaveReal(YDHT, id * cx, -753873030, 1.6 + I2R(juexuelingwu[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)))]) + I2R(GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), LoadInteger(YDHT, id * cx, -708948899))) / 2.0 + I2R(gengu[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)))]) * 0.07)
	SaveReal(YDHT, id * cx, 426308609, 8.3 + udg_shanghaijiacheng[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)))])
	SaveReal(YDHT, id * cx, -753873030, LoadReal(YDHT, id * cx, -753873030) * (LoadReal(YDHT, id * cx, 426308609) * 3.0))
	SaveLocationHandle(YDHT, id * cx, -1763945863, GetUnitLoc(GetAttacker()))
	CreateTextTagLocBJ("辟邪剑法之流星赶月", LoadLocationHandle(YDHT, id * cx, -1763945863), 0, 14.0, 90.0, 21.0, 15.0, 0.0)
	SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, GetRandomReal(80.0, 100.0))
	Nw(4.0, bj_lastCreatedTextTag)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -1763945863))
	SaveLocationHandle(YDHT, id * cx, -1925439584, GetUnitLoc(GetTriggerUnit()))
	CreateNUnitsAtLoc(1, 1697656910, GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)), LoadLocationHandle(YDHT, id * cx, -1925439584), bj_UNIT_FACING)
	SaveUnitHandle(YDHT, id * cx, -784714656, bj_lastCreatedUnit)
	zw(bj_lastCreatedUnit, GetAttacker(), 0.5, 600.0, 1500.0, 2000.0, 100)
	Gw(20.0, bj_lastCreatedUnit)
	ky = CreateTimer()
	SaveUnitHandle(YDHT, GetHandleId(ky), 1505665227, LoadUnitHandle(YDHT, id * cx, 1505665227))
	SaveUnitHandle(YDHT, GetHandleId(ky), -784714656, LoadUnitHandle(YDHT, id * cx, -784714656))
	SaveReal(YDHT, GetHandleId(ky), -753873030, LoadReal(YDHT, id * cx, -753873030))
	TimerStart(ky, 0.5, true, dH)
	YDWEPolledWaitNull(1.0)
	SaveInteger(YDHT, id, -320330265, cx)
	CreateNUnitsAtLoc(1, 1697656910, GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)), LoadLocationHandle(YDHT, id * cx, -1925439584), bj_UNIT_FACING)
	SaveUnitHandle(YDHT, id * cx, -784714656, bj_lastCreatedUnit)
	zw(bj_lastCreatedUnit, GetAttacker(), 0.5, 600.0, 1500.0, 2000.0, 100)
	Gw(25.0, bj_lastCreatedUnit)
	ky = CreateTimer()
	SaveUnitHandle(YDHT, GetHandleId(ky), 1505665227, LoadUnitHandle(YDHT, id * cx, 1505665227))
	SaveUnitHandle(YDHT, GetHandleId(ky), -784714656, LoadUnitHandle(YDHT, id * cx, -784714656))
	SaveReal(YDHT, GetHandleId(ky), -753873030, LoadReal(YDHT, id * cx, -753873030))
	TimerStart(ky, 0.5, true, gH)
	YDWEPolledWaitNull(1.0)
	SaveInteger(YDHT, id, -320330265, cx)
	CreateNUnitsAtLoc(1, 1697656910, GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)), LoadLocationHandle(YDHT, id * cx, -1925439584), bj_UNIT_FACING)
	SaveUnitHandle(YDHT, id * cx, -784714656, bj_lastCreatedUnit)
	zw(bj_lastCreatedUnit, GetAttacker(), 0.5, 600.0, 1500.0, 2000.0, 100)
	Gw(25.0, bj_lastCreatedUnit)
	ky = CreateTimer()
	SaveUnitHandle(YDHT, GetHandleId(ky), 1505665227, LoadUnitHandle(YDHT, id * cx, 1505665227))
	SaveUnitHandle(YDHT, GetHandleId(ky), -784714656, LoadUnitHandle(YDHT, id * cx, -784714656))
	SaveReal(YDHT, GetHandleId(ky), -753873030, LoadReal(YDHT, id * cx, -753873030))
	TimerStart(ky, 0.5, true, jH)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -1925439584))
	YDWELocalVariableEnd()
	FlushChildHashtable(YDHT, id * cx)
	ky = nil
end
--残章：打狗棒法之恶狗拦路
function nH()
	return GetUnitAbilityLevel(GetAttacker(), 1093678924) >= 1 and GetRandomReal(0.0, 100.0) <= 6.0 and Qd[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))] >= 1 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function oH()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, -1763945863, GetUnitLoc(GetAttacker()))
	CreateTextTagLocBJ("打狗棒法之恶狗拦路", LoadLocationHandle(YDHT, id * cx, -1763945863), 0, 14.0, 90.0, 21.0, 15.0, 0.0)
	SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, GetRandomReal(80.0, 100.0))
	Nw(4.0, bj_lastCreatedTextTag)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -1763945863))
	SaveLocationHandle(YDHT, id * cx, -1925439584, GetUnitLoc(GetTriggerUnit()))
	SaveLocationHandle(YDHT, id * cx, -860413970, pu(LoadLocationHandle(YDHT, id * cx, -1925439584), 256, GetUnitPropWindowBJ(GetTriggerUnit()) + 90.0))
	CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(GetAttacker()), LoadLocationHandle(YDHT, id * cx, -1925439584), bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, 1093678938)
	IssuePointOrderByIdLoc(bj_lastCreatedUnit, 852593, LoadLocationHandle(YDHT, id * cx, -860413970))
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 12.0)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -1925439584))
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -860413970))
	FlushChildHashtable(YDHT, id * cx)
end
function qH()
	return GetEventDamage() == 4.51
end
function rH()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local u = udg_hero[i]
	local uc = GetTriggerUnit()
	local shxishu = jueXueXiShu(i)
	local shanghai = 0.0
	shanghai = ShangHaiGongShi(u, uc, 35.0, 35.0, shxishu, 1093678924)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
--残章：降龙第一式、第二式
function tH()
	return GetUnitAbilityLevel(GetAttacker(), 1093678917) >= 1 and GetRandomReal(0.0, 100.0) <= 8.0 and Nd[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))] >= 1 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function uH()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227))) and IsUnitAliveBJ(GetFilterUnit())
end
function vH()
	local u = LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227)
	local uc = GetEnumUnit()
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local shxishu = jueXueXiShu(i)
	local shanghai = 0.0
	shanghai = ShangHaiGongShi(u, uc, 70.0, 70.0, shxishu, 1093678917)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
function wH()
	local t = GetExpiredTimer()
	local p = GetHandleId(t)
	local loc = GetUnitLoc(LoadUnitHandle(YDHT, p, 1505665227))
	if LoadReal(YDHT, p, -1302744471) >= 600.0 then
		FlushChildHashtable(YDHT, p)
		PauseTimer(t)
		DestroyTimer(t)
	else
		SaveReal(YDHT, p, -1302744471, LoadReal(YDHT, p, -1302744471) + 10.0)
		SaveLocationHandle(YDHT, p, 1347575036, GetUnitLoc(LoadUnitHandle(YDHT, p, 1505665227)))
		SaveLocationHandle(YDHT, p, -553893888, pu(loc, GetRandomReal(50.0, 600.0), GetRandomReal(0, 360.0)))
		AddSpecialEffectLocBJ(LoadLocationHandle(YDHT, p, -553893888), "war3mapImported\\FireStomp.mdx")
		DestroyEffect(bj_lastCreatedEffect)
		ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(300.0, LoadLocationHandle(YDHT, p, -553893888), Condition(uH)), vH)
		RemoveLocation(LoadLocationHandle(YDHT, p, 1347575036))
		RemoveLocation(LoadLocationHandle(YDHT, p, -553893888))
	end
	RemoveLocation(loc)
	loc = nil
	t = nil
end
function XLES_Condition()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0))) and IsUnitAliveBJ(GetFilterUnit())
end
function XLES_Action()
	local u = LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0)
	local uc = GetEnumUnit()
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local shxishu = jueXueXiShu(i)
	local shanghai = 0.0
	shanghai = ShangHaiGongShi(u, uc, 80.0, 80.0, shxishu, 1093678917)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
function XiangLongErShi()
	local t = GetExpiredTimer()
	local p = GetHandleId(t)
	local u = LoadUnitHandle(YDHT, p, 0)
	local loc = GetUnitLoc(u)
	local loc2 = pu(loc, GetRandomReal(50.0, 600.0), GetRandomReal(0, 360.0))
	if LoadReal(YDHT, p, 1) >= 600.0 then
		FlushChildHashtable(YDHT, p)
		PauseTimer(t)
		DestroyTimer(t)
	else
		SaveReal(YDHT, p, 1, LoadReal(YDHT, p, 1) + 10.0)
		DestroyEffect(AddSpecialEffectLocBJ(loc2, "war3mapImported\\ChaosExplosion.mdl"))
		ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(300.0, loc2, Condition(XLES_Condition)), XLES_Action)
	end
	RemoveLocation(loc)
	RemoveLocation(loc2)
	t = nil
	u = nil
	loc = nil
	loc2 = nil
end
function xH()
	local t = nil
	local u = GetAttacker()
	local uc = GetTriggerUnit()
	local loc = GetUnitLoc(u)
	local loc2 = GetUnitLoc(uc)
	if Nd[1 + GetPlayerId(GetOwningPlayer(u))] == 2 and GetRandomInt(1, 3) == 1 then
		t = CreateTimer()
		CreateTextTagLocBJ("降龙十八掌之亢龙有悔", loc, 0, 14.0, 21.0, 15.0, 90.0, 0.0)
		SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, GetRandomReal(80.0, 100.0))
		Nw(4.0, bj_lastCreatedTextTag)
		SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
		TimerStart(t, 0.3, true, XiangLongErShi)
	else
		t = CreateTimer()
		CreateTextTagLocBJ("降龙十八掌之神龙摆尾", loc, 0, 14.0, 90.0, 21.0, 15.0, 0.0)
		SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, GetRandomReal(80.0, 100.0))
		Nw(4.0, bj_lastCreatedTextTag)
		SaveUnitHandle(YDHT, GetHandleId(t), 1505665227, u)
		TimerStart(t, 0.3, true, wH)
	end
	RemoveLocation(loc)
	RemoveLocation(loc2)
	t = nil
	u = nil
	uc = nil
	loc = nil
	loc2 = nil
end
--残章：胡家刀法之八方藏刀式
function zH()
	return GetUnitAbilityLevel(GetAttacker(), 1093679158) >= 1 and GetRandomReal(0.0, 100.0) <= 8.0 and Od[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))] >= 1 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function IsKongJun()
	return IsUnitType(GetFilterUnit(), UNIT_TYPE_FLYING)
end
function HuJiaKongJun()
	WuGongShangHai(GetAttacker(), GetEnumUnit(), 4.53)
end
function AH()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	local u = GetAttacker()
	local g = CreateGroup()
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	YDWELocalVariableInitiliation()
	SaveLocationHandle(YDHT, id * cx, -1763945863, GetUnitLoc(GetAttacker()))
	CreateTextTagLocBJ("胡家刀法之八方藏刀式", LoadLocationHandle(YDHT, id * cx, -1763945863), 0, 14.0, 90.0, 21.0, 15.0, 0.0)
	SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, GetRandomReal(80.0, 100.0))
	Nw(4.0, bj_lastCreatedTextTag)
	H7 = 1
	for _ in _loop_() do
		if H7 > 8 then break end
		SaveLocationHandle(YDHT, id * cx, -860413970, pu(LoadLocationHandle(YDHT, id * cx, -1763945863), 256, 45.0 * I2R(H7)))
		CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(GetAttacker()), LoadLocationHandle(YDHT, id * cx, -1763945863), bj_UNIT_FACING)
		ShowUnitHide(bj_lastCreatedUnit)
		UnitAddAbility(bj_lastCreatedUnit, 1093679430)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 852555, LoadLocationHandle(YDHT, id * cx, -860413970))
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, -860413970))
		H7 = H7 + 1
	end
	GroupEnumUnitsInRangeOfLoc(g, LoadLocationHandle(YDHT, id * cx, -1763945863), 700, Condition(IsKongJun))
	ForGroupBJ(g, HuJiaKongJun)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -1763945863))
	YDWELocalVariableEnd()
	FlushChildHashtable(YDHT, id * cx)
	DestroyGroup(g)
	u = nil
	g = nil
end
--八方藏刀式伤害
function BH()
	return GetEventDamage() == 4.53
end
function bH()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local u = udg_hero[i]
	local uc = GetTriggerUnit()
	local shxishu = jueXueXiShu(i)
	local shanghai = 0.0
	local loc = GetUnitLoc(uc)
	DestroyEffect(AddSpecialEffectLocBJ(loc, "Abilities\\Spells\\Other\\Charm\\CharmTarget.mdl"))
	shanghai = ShangHaiGongShi(u, uc, 500.0, 500.0, shxishu, 1093679158)
	WuGongShangHai(u, uc, shanghai)
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
end
--残章：西毒棍法之蛇盘青竹
function cH()
	return GetUnitAbilityLevel(GetAttacker(), 1093679161) >= 1 and GetRandomReal(0.0, 100.0) <= 5.0 and Pd[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))] >= 1 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function DH()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	YDWELocalVariableInitiliation()
	SaveLocationHandle(YDHT, id * cx, -1763945863, GetUnitLoc(GetAttacker()))
	CreateTextTagLocBJ("西毒棍法之蛇盘青竹", LoadLocationHandle(YDHT, id * cx, -1763945863), 0, 14.0, 90.0, 21.0, 15.0, 0.0)
	SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, GetRandomReal(80.0, 100.0))
	Nw(4.0, bj_lastCreatedTextTag)
	H7 = 1
	for _ in _loop_() do
		if H7 > 12 then break end
		SaveLocationHandle(YDHT, id * cx, -860413970, pu(LoadLocationHandle(YDHT, id * cx, -1763945863), 350.0, 30.0 * I2R(H7)))
		CreateNUnitsAtLoc(1, 1869836340, GetOwningPlayer(GetAttacker()), LoadLocationHandle(YDHT, id * cx, -860413970), bj_UNIT_FACING)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, -860413970))
		H7 = H7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -1763945863))
	YDWELocalVariableEnd()
	FlushChildHashtable(YDHT, id * cx)
end
function FH()
	return GetEventDamage() == 4.54
end
function GH()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local u = udg_hero[i]
	local uc = GetTriggerUnit()
	local shxishu = jueXueXiShu(i)
	local shanghai = 0.0
	shanghai = ShangHaiGongShi(u, uc, 42.0, 42.0, shxishu, 1093679161)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
--残章：反两仪刀法之行气如虹
function IH()
	return GetUnitAbilityLevel(GetAttacker(), 1093678920) >= 1 and GetRandomReal(0.0, 100.0) <= 10.0 and Jd[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))] >= 1 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function lH()
	local id = GetHandleId(GetTriggeringTrigger())
	SetUnitFlyHeight(GetEnumUnit(), 600.0, 200.0)
	IssuePointOrderByIdLoc(GetEnumUnit(), 851986, LoadLocationHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -1763945863))
end
function JH()
	RemoveUnit(GetEnumUnit())
end
function KH()
	local id = GetHandleId(GetTriggeringTrigger())
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227))) and IsUnitAliveBJ(GetFilterUnit())
end
function LH()
	local u = GetAttacker()
	local uc = GetEnumUnit()
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local shxishu = jueXueXiShu(i)
	local shanghai = 0.0
	shanghai = ShangHaiGongShi(u, uc, 40.0, 40.0, shxishu, 1093678920)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
function MH()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	YDWELocalVariableInitiliation()
	SaveUnitHandle(YDHT, id * cx, 1505665227, GetAttacker())
	SaveInteger(YDHT, id * cx, -708948899, 1093678920)
	SaveLocationHandle(YDHT, id * cx, -1763945863, GetUnitLoc(GetAttacker()))
	CreateTextTagLocBJ("反两仪刀法之行气如虹", LoadLocationHandle(YDHT, id * cx, -1763945863), 0, 14.0, 90.0, 21.0, 15.0, 0.0)
	SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, GetRandomReal(80.0, 100.0))
	Nw(4.0, bj_lastCreatedTextTag)
	SaveGroupHandle(YDHT, id * cx, 824983937, CreateGroup())
	H7 = 1
	for _ in _loop_() do
		if H7 > 9 then break end
		SaveReal(YDHT, id * cx, -1663695754, LoadReal(YDHT, id * cx, -1663695754) + 45.0)
		SaveLocationHandle(YDHT, id * cx, -860413970, pu(LoadLocationHandle(YDHT, id * cx, -1763945863), 700.0, LoadReal(YDHT, id * cx, -1663695754)))
		CreateNUnitsAtLoc(1, 1747988528, GetOwningPlayer(GetAttacker()), LoadLocationHandle(YDHT, id * cx, -1763945863), bj_UNIT_FACING)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851986, LoadLocationHandle(YDHT, id * cx, -860413970))
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, -860413970))
		GroupAddUnit(LoadGroupHandle(YDHT, id * cx, 824983937), bj_lastCreatedUnit)
		H7 = H7 + 1
	end
	TriggerSleepAction(3.0)
	SaveInteger(YDHT, id, -320330265, cx)
	ForGroupBJ(LoadGroupHandle(YDHT, id * cx, 824983937), lH)
	TriggerSleepAction(3.0)
	SaveInteger(YDHT, id, -320330265, cx)
	ForGroupBJ(LoadGroupHandle(YDHT, id * cx, 824983937), JH)
	CreateNUnitsAtLoc(1, 1747988529, GetOwningPlayer(GetAttacker()), LoadLocationHandle(YDHT, id * cx, -1763945863), bj_UNIT_FACING)
	SaveUnitHandle(YDHT, id * cx, 427441757, bj_lastCreatedUnit)
	DestroyGroup(LoadGroupHandle(YDHT, id * cx, 824983937))
	TriggerSleepAction(0.5)
	SaveInteger(YDHT, id, -320330265, cx)
	AddSpecialEffectLocBJ(LoadLocationHandle(YDHT, id * cx, -1763945863), "war3mapImported\\LightningWrath.mdx")
	DestroyEffect(bj_lastCreatedEffect)
	TriggerSleepAction(0.3)
	SaveInteger(YDHT, id, -320330265, cx)
	RemoveUnit(LoadUnitHandle(YDHT, id * cx, 427441757))
	AddSpecialEffectLocBJ(LoadLocationHandle(YDHT, id * cx, -1763945863), "war3mapImported\\FrostNova.mdx")
	DestroyEffect(bj_lastCreatedEffect)
	SaveReal(YDHT, id * cx, -753873030, 2.5 + I2R(juexuelingwu[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)))]) + I2R(GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), LoadInteger(YDHT, id * cx, -708948899))) / 2.0 + I2R(jingmai[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)))]) * 0.05)
	SaveReal(YDHT, id * cx, 426308609, 8.0 + udg_shanghaijiacheng[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)))])
	SaveReal(YDHT, id * cx, -753873030, LoadReal(YDHT, id * cx, -753873030) * (LoadReal(YDHT, id * cx, 426308609) * 6.0))
	ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(800.0, LoadLocationHandle(YDHT, id * cx, -1763945863), Condition(KH)), LH)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -1763945863))
	YDWELocalVariableEnd()
	FlushChildHashtable(YDHT, id * cx)
end
function OH()
	return GetEventDamage() == 4.55
end
function PH()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local u = udg_hero[i]
	local uc = GetTriggerUnit()
	local shxishu = jueXueXiShu(i)
	local shanghai = 0.0
	shanghai = ShangHaiGongShi(u, uc, 20.0, 20.0, shxishu, 1093678920)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
--残章：黯然销魂掌之无中生有
function RH()
	return GetUnitAbilityLevel(GetAttacker(), 1093678919) >= 1 and GetRandomReal(0.0, 100.0) <= 6.0 and Md[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))] >= 1 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function SH()
	if LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1302744471) >= 2400.0 then
		FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
		DestroyTimer(GetExpiredTimer())
	else
		SaveReal(YDHT, GetHandleId(GetExpiredTimer()), -1302744471, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1302744471) + 20.0)
		SaveLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1347575036, GetUnitLoc(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227)))
		SaveLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), -860413970, pu(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1347575036), 256, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1302744471)))
		CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227)), LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1347575036), bj_UNIT_FACING)
		ShowUnitHide(bj_lastCreatedUnit)
		UnitAddAbility(bj_lastCreatedUnit, 1093677131)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 852218, LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), -860413970))
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
		RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1347575036))
		RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), -860413970))
	end
end
function TH()
	local ky
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	YDWELocalVariableInitiliation()
	SaveUnitHandle(YDHT, id * cx, 1505665227, GetAttacker())
	SaveInteger(YDHT, id * cx, -708948899, 1093678919)
	SaveLocationHandle(YDHT, id * cx, -1763945863, GetUnitLoc(GetAttacker()))
	CreateTextTagLocBJ("黯然销魂掌之无中生有", LoadLocationHandle(YDHT, id * cx, -1763945863), 0, 14.0, 90.0, 21.0, 15.0, 0.0)
	SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, GetRandomReal(80.0, 100.0))
	Nw(4.0, bj_lastCreatedTextTag)
	ky = CreateTimer()
	SaveUnitHandle(YDHT, GetHandleId(ky), 1505665227, LoadUnitHandle(YDHT, id * cx, 1505665227))
	TimerStart(ky, 0.1, true, SH)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -1763945863))
	YDWELocalVariableEnd()
	FlushChildHashtable(YDHT, id * cx)
	ky = nil
end
function VH()
	return GetEventDamage() == 4.56
end
function WH()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local u = udg_hero[i]
	local uc = GetTriggerUnit()
	local shxishu = jueXueXiShu(i)
	local shanghai = 0.0
	shanghai = ShangHaiGongShi(u, uc, 36.0, 36.0, shxishu, 1093678919)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
--残章：独孤九剑奥义之破剑式
function YH()
	return GetUnitAbilityLevel(GetAttacker(), 1093678918) >= 1 and GetRandomReal(0.0, 100.0) <= 10.0 and ld[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))] >= 1 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function ZH()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	YDWELocalVariableInitiliation()
	SaveUnitHandle(YDHT, id * cx, 1505665227, GetAttacker())
	SaveInteger(YDHT, id * cx, -708948899, 1093678918)
	SaveLocationHandle(YDHT, id * cx, -1763945863, GetUnitLoc(GetAttacker()))
	CreateTextTagLocBJ("独孤九剑奥义之破剑式", LoadLocationHandle(YDHT, id * cx, -1763945863), 0, 14.0, 90.0, 21.0, 15.0, 0.0)
	SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, GetRandomReal(80.0, 100.0))
	Nw(4.0, bj_lastCreatedTextTag)
	SaveLocationHandle(YDHT, id * cx, 1585647951, pu(LoadLocationHandle(YDHT, id * cx, -1763945863), 500.0, GetUnitFacing(GetAttacker()) + 180.0))
	CreateNUnitsAtLoc(1, 1747988530, GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)), LoadLocationHandle(YDHT, id * cx, 1585647951), GetUnitFacing(GetAttacker()))
	Gw(4.0, bj_lastCreatedUnit)
	IssuePointOrderByIdLoc(bj_lastCreatedUnit, 852652, LoadLocationHandle(YDHT, id * cx, -1763945863))
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -1763945863))
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	YDWELocalVariableEnd()
	FlushChildHashtable(YDHT, id * cx)
end
function eI()
	return GetEventDamage() == 4.57
end
function fI()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local u = udg_hero[i]
	local uc = GetTriggerUnit()
	local shxishu = jueXueXiShu(i)
	local shanghai = 0.0
	shanghai = ShangHaiGongShi(u, uc, 44.0, 44.0, shxishu, 1093678918)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
--残章：六脉神剑之少商剑
function hI()
	return GetUnitAbilityLevel(GetAttacker(), 1093679157) >= 1 and GetRandomReal(0.0, 100.0) <= 10.0 and Id[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))] >= 1 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function iI()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	YDWELocalVariableInitiliation()
	SaveUnitHandle(YDHT, id * cx, 1505665227, GetAttacker())
	SaveInteger(YDHT, id * cx, -708948899, 1093679157)
	SaveLocationHandle(YDHT, id * cx, -1763945863, GetUnitLoc(GetAttacker()))
	CreateTextTagLocBJ("六脉神剑之少商剑", LoadLocationHandle(YDHT, id * cx, -1763945863), 0, 14.0, 90.0, 21.0, 15.0, 0.0)
	SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, GetRandomReal(80.0, 100.0))
	Nw(4.0, bj_lastCreatedTextTag)
	CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)), LoadLocationHandle(YDHT, id * cx, -1763945863), GetUnitFacing(GetAttacker()))
	ShowUnitHide(bj_lastCreatedUnit)
	Gw(4.0, bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, 1093679439)
	IssueTargetOrderById(bj_lastCreatedUnit, 852119, GetTriggerUnit())
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -1763945863))
	YDWELocalVariableEnd()
	FlushChildHashtable(YDHT, id * cx)
end
function kI()
	return GetEventDamage() == 4.58
end
function mI()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local u = udg_hero[i]
	local uc = GetTriggerUnit()
	local shxishu = jueXueXiShu(i)
	local shanghai = 0.0
	shanghai = ShangHaiGongShi(u, uc, 300.0, 300.0, shxishu, 1093679157)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
--残章：野球拳第一式
function oI()
	return GetUnitAbilityLevel(GetAttacker(), 1093678921) >= 1 and GetRandomReal(0.0, 100.0) <= 10.0 and Ld[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))] >= 1 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function pI()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 1505665227))) and IsUnitAliveBJ(GetFilterUnit())
end
function qI()
	local t = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 1505665227)
	local uc = GetEnumUnit()
	local loc = GetUnitLoc(uc)
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local shxishu = jueXueXiShu(i)
	local shanghai = 0.0
	DestroyEffect(AddSpecialEffectLocBJ(loc, "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"))
	shanghai = ShangHaiGongShi(u, uc, 44.0, 44.0, shxishu, 1093678921)
	WuGongShangHai(u, uc, shanghai)
	RemoveLocation(loc)
	t = nil
	u = nil
	uc = nil
	loc = nil
end
function rI()
	if LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1302744471) >= 420.0 then
		FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
		DestroyTimer(GetExpiredTimer())
	else
		SaveReal(YDHT, GetHandleId(GetExpiredTimer()), -1302744471, LoadReal(YDHT, GetHandleId(GetExpiredTimer()), -1302744471) + 11.0)
		SaveLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951, GetUnitLoc(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), -784714656)))
		ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(250.0, LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951), Condition(pI)), qI)
		RemoveLocation(LoadLocationHandle(YDHT, GetHandleId(GetExpiredTimer()), 1585647951))
	end
end
function sI()
	local ky
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, 1505665227, GetAttacker())
	SaveInteger(YDHT, id * cx, -708948899, 1093678921)
	SaveLocationHandle(YDHT, id * cx, -1763945863, GetUnitLoc(GetAttacker()))
	CreateTextTagLocBJ("野球拳之翻肘裂捶", LoadLocationHandle(YDHT, id * cx, -1763945863), 0, 14.0, 90.0, 21.0, 15.0, 0.0)
	SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, GetRandomReal(80.0, 100.0))
	Nw(4.0, bj_lastCreatedTextTag)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -1763945863))
	SaveLocationHandle(YDHT, id * cx, -1925439584, GetUnitLoc(GetTriggerUnit()))
	CreateNUnitsAtLoc(1, 1697656912, GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)), LoadLocationHandle(YDHT, id * cx, -1925439584), bj_UNIT_FACING)
	zw(bj_lastCreatedUnit, GetAttacker(), 0.5, 600.0, 1500.0, 2000.0, 100)
	Gw(20.0, bj_lastCreatedUnit)
	SaveUnitHandle(YDHT, id * cx, -784714656, bj_lastCreatedUnit)
	CreateNUnitsAtLoc(1, 1697656913, GetOwningPlayer(GetAttacker()), pu(GetUnitLoc(LoadUnitHandle(YDHT, id * cx, -784714656)), 250.0, 0), bj_UNIT_FACING)
	Yv(bj_lastCreatedUnit, LoadUnitHandle(YDHT, id * cx, -784714656), 6.0, 0.0, 0, 20.0, 0.03)
	Gw(20.0, bj_lastCreatedUnit)
	CreateNUnitsAtLoc(1, 1697656913, GetOwningPlayer(GetAttacker()), pu(GetUnitLoc(LoadUnitHandle(YDHT, id * cx, -784714656)), 250.0, 90.0), bj_UNIT_FACING)
	Yv(bj_lastCreatedUnit, LoadUnitHandle(YDHT, id * cx, -784714656), 6.0, 0.0, 0, 20.0, 0.03)
	Gw(20.0, bj_lastCreatedUnit)
	CreateNUnitsAtLoc(1, 1697656913, GetOwningPlayer(GetAttacker()), pu(GetUnitLoc(LoadUnitHandle(YDHT, id * cx, -784714656)), 250.0, 180.0), bj_UNIT_FACING)
	Yv(bj_lastCreatedUnit, LoadUnitHandle(YDHT, id * cx, -784714656), 6.0, 0.0, 0, 20.0, 0.03)
	Gw(20.0, bj_lastCreatedUnit)
	CreateNUnitsAtLoc(1, 1697656913, GetOwningPlayer(GetAttacker()), pu(GetUnitLoc(LoadUnitHandle(YDHT, id * cx, -784714656)), 250.0, 270.0), bj_UNIT_FACING)
	Yv(bj_lastCreatedUnit, LoadUnitHandle(YDHT, id * cx, -784714656), 6.0, 0.0, 0, 20.0, 0.03)
	Gw(20.0, bj_lastCreatedUnit)
	SaveReal(YDHT, id * cx, -753873030, 3.0 + I2R(juexuelingwu[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)))]) + I2R(GetUnitAbilityLevel(LoadUnitHandle(YDHT, id * cx, 1505665227), LoadInteger(YDHT, id * cx, -708948899))) / 2.0 + I2R(danpo[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)))]) * 0.07)
	SaveReal(YDHT, id * cx, 426308609, 11.0 + udg_shanghaijiacheng[1 + GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)))])
	SaveReal(YDHT, id * cx, -753873030, LoadReal(YDHT, id * cx, -753873030) * (LoadReal(YDHT, id * cx, 426308609) * 3.0))
	ky = CreateTimer()
	SaveUnitHandle(YDHT, GetHandleId(ky), 1505665227, LoadUnitHandle(YDHT, id * cx, 1505665227))
	SaveUnitHandle(YDHT, GetHandleId(ky), -784714656, LoadUnitHandle(YDHT, id * cx, -784714656))
	SaveReal(YDHT, GetHandleId(ky), -753873030, LoadReal(YDHT, id * cx, -753873030))
	TimerStart(ky, 0.5, true, rI)
	FlushChildHashtable(YDHT, id * cx)
	ky = nil
end
--九阳真经残卷
function isJiuYangCanJuanAct()
	return GetUnitAbilityLevel(GetAttacker(), 1093682254) >= 1 and GetRandomReal(0.0, 100.0) <= 10.0 and JYd[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))] >= 1 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function isJiuYangEnemy()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetAttacker())) and IsUnitAliveBJ(GetFilterUnit())
end
function jiuYangCanJuanAction()
	local u = GetAttacker()
	local uc = GetEnumUnit()
	local loc = GetUnitLoc(uc)
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local shxishu = jueXueXiShu(i) + 5 * GetUnitAbilityLevel(u, 1093678675)
	local shanghai = 0.0
	DestroyEffect(AddSpecialEffectLocBJ(loc, "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"))
	shanghai = ShangHaiGongShi(u, uc, 132.0, 132.0, shxishu, 1093682254)
	WuGongShangHai(u, uc, shanghai)
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
end
function jiuYangCanJuanAct()
	local u = GetAttacker()
	local loc = GetUnitLoc(u)
	local i = 0
	local j = 0
	local loc1 = nil
	local loc2 = nil
	local g = nil
	CreateTextTagLocBJ("九阳真经残卷", loc, 0, 14.0, 90.0, 21.0, 15.0, 0.0)
	SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, GetRandomReal(80.0, 100.0))
	Nw(4.0, bj_lastCreatedTextTag)
	j = 0
	for _ in _loop_() do
		if j >= 5 then break end
		loc2 = PolarProjectionBJ(loc, GetRandomReal(300, 1000), GetRandomReal(0, 360))
		DestroyEffect(AddSpecialEffectLoc("Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl", loc2))
		i = 0
		for _ in _loop_() do
			if i >= 8 then break end
			loc1 = PolarProjectionBJ(loc2, 400, 45 * i)
			DestroyEffect(AddSpecialEffectLoc("Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl", loc1))
			RemoveLocation(loc1)
			i = i + 1
		end
		g = CreateGroup()
		GroupEnumUnitsInRangeOfLoc(g, loc2, 575, Condition(isJiuYangEnemy))
		ForGroupBJ(g, jiuYangCanJuanAction)
		DestroyGroup(g)
		RemoveLocation(loc2)
		YDWEPolledWaitNull(0.8)
		j = j + 1
	end
	RemoveLocation(loc)
	g = nil
	u = nil
	loc = nil
	loc1 = nil
	loc2 = nil
end
--------------绝世武功结束------------
function JueShiWuGong_Trigger()
	local t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(WF))
	TriggerAddAction(t, XF)
	t = CreateTrigger()
	TriggerRegisterTimerEventPeriodic(t, 1.0)
	TriggerAddCondition(t, Condition(ZF))
	TriggerAddAction(t, gG)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsDuGuJiuJian))
	TriggerAddAction(t, DuGuJiuJian)
	t = CreateTrigger()
	TriggerRegisterTimerEventPeriodic(t, 0.03)
	TriggerAddCondition(t, Condition(mG))
	TriggerAddAction(t, qG)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(sG))
	TriggerAddAction(t, tG)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(vG))
	TriggerAddAction(t, wG)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(yG))
	TriggerAddAction(t, zG)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(aG))
	TriggerAddAction(t, BG)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(CG))
	TriggerAddAction(t, cG)
	t = CreateTrigger()
	TriggerRegisterTimerEventPeriodic(t, 0.3)
	TriggerAddCondition(t, Condition(EG))
	TriggerAddAction(t, IG)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(JG))
	TriggerAddAction(t, KG)
	t = CreateTrigger()
	TriggerRegisterTimerEventPeriodic(t, 1.0)
	TriggerAddCondition(t, Condition(MG))
	TriggerAddAction(t, QG)
	--胡家刀法
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(SG))
	TriggerAddAction(t, WG)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(YG))
	TriggerAddAction(t, ZG)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(e6))
	TriggerAddAction(t, f6)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(h6))
	TriggerAddAction(t, i6)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(k6))
	TriggerAddAction(t, MM6)
	in_ = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(in_, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(in_, Condition(O6))
	TriggerAddAction(in_, R6)
	jn = CreateTrigger()
	DisableTrigger(jn)
	TriggerRegisterTimerEventPeriodic(jn, 0.3)
	TriggerAddAction(jn, V6)

	--残章开始
	--辟邪剑法之流星赶月
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(X6))
	TriggerAddAction(t, kH)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(nH))
	TriggerAddAction(t, oH)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(qH))
	TriggerAddAction(t, rH)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(tH))
	TriggerAddAction(t, xH)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(zH))
	TriggerAddAction(t, AH)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(BH))
	TriggerAddAction(t, bH)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(cH))
	TriggerAddAction(t, DH)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(FH))
	TriggerAddAction(t, GH)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IH))
	TriggerAddAction(t, MH)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(OH))
	TriggerAddAction(t, PH)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(RH))
	TriggerAddAction(t, TH)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(VH))
	TriggerAddAction(t, WH)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(YH))
	TriggerAddAction(t, ZH)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(eI))
	TriggerAddAction(t, fI)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(hI))
	TriggerAddAction(t, iI)
	an = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(an)
	TriggerAddCondition(an, Condition(kI))
	TriggerAddAction(an, mI)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(oI))
	TriggerAddAction(t, sI)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(isJiuYangCanJuanAct))
	TriggerAddAction(t, jiuYangCanJuanAct)
	t = nil
end



JueShiWuGong_Trigger() --绝世武功触发