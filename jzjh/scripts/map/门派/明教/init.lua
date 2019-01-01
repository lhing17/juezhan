--鹰爪功 3级技
function IsYingZhao()
	return IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker())) and GetUnitAbilityLevel(GetAttacker(), 1093677872) >= 1
end
function YingZhao_Condition()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetAttacker())) and IsUnitAliveBJ(GetFilterUnit())
end
function YingZhaoShangHai()
	local t = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local uc = LoadUnitHandle(YDHT, GetHandleId(t), 1)
	local shanghai = LoadReal(YDHT, GetHandleId(t), 2)
	WuGongShangHai(u, uc, shanghai)
	if GetUnitAbilityLevel(u, 1093677367) >= 1 and GetRandomInt(1, 5) == 1 then
		general_buff(u, uc, 7)
	end
	PauseTimer(t)
	DestroyTimer(t)
	t = nil
	u = nil
	uc = nil
end
function YingZhao_Action()
	local u = GetAttacker()
	local uc = GetEnumUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local loc = GetUnitLoc(u)
	local t = CreateTimer()
	local dist = SquareRoot((GetUnitX(u) - GetUnitX(uc)) * (GetUnitX(u) - GetUnitX(uc)) + (GetUnitY(u) - GetUnitY(uc)) * (GetUnitY(u) - GetUnitY(uc)))
	shxishu = 1.8 + 0.2 * dist * GetRandomReal(20.0, 50.0) / I2R(LoadInteger(YDHT, GetHandleId(u), StringHash("鹰爪"))) / I2R(LoadInteger(YDHT, GetHandleId(u), StringHash("鹰爪")))
	if GetUnitAbilityLevel(u, 1093677876) >= 1 or GetUnitAbilityLevel(u, 1093677877) >= 1 then
		shxishu = shxishu * 2
	end
	if GetUnitAbilityLevel(u, 1093678935) >= 1 then
		shxishu = shxishu * 2
	end
	shanghai = ShangHaiGongShi(u, uc, 0.3, 0.4, shxishu, 1093677872)
	CreateNUnitsAtLoc(1, 1697657140, GetOwningPlayer(u), loc, bj_UNIT_FACING)
	SetUnitVertexColorBJ(bj_lastCreatedUnit, 100, 100, 100, 100)
	UnitAddAbility(bj_lastCreatedUnit, 1097625443)
	--call ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, 1093677873)
	IssueTargetOrderById(bj_lastCreatedUnit, 852480, uc)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 1.0)
	SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	SaveUnitHandle(YDHT, GetHandleId(t), 1, uc)
	SaveReal(YDHT, GetHandleId(t), 2, shanghai)
	TimerStart(t, 0.3, false, YingZhaoShangHai)
	RemoveLocation(loc)
	loc = nil
	u = nil
	uc = nil
	t = nil
end
function YingZhaoGong()
	local u = GetAttacker()
	local g = CreateGroup()
	local loc = GetUnitLoc(u)
	if GetRandomReal(1, 100) < 25 + fuyuan[1 + GetPlayerId(GetOwningPlayer(u))] // 3 + GetUnitAbilityLevel(u, 1093678668) * 8 then
		WuGongShengChong(u, 1093677872, 1000)
		GroupEnumUnitsInRangeOfLoc(g, loc, 420 + 80 * GetUnitAbilityLevel(u, 1093677872), Condition(YingZhao_Condition))
		SaveInteger(YDHT, GetHandleId(u), StringHash("鹰爪"), CountUnitsInGroup(g))
		ForGroupBJ(g, YingZhao_Action)
	end
	RemoveLocation(loc)
	DestroyGroup(g)
	loc = nil
	g = nil
	u = nil
end
function IsYingZhaoZhuDong()
	return GetSpellAbilityId() == 1093677872
end
function YingZhaoZhuDong_Condition()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())) and IsUnitAliveBJ(GetFilterUnit()) and GetUnitAbilityLevel(GetFilterUnit(), 1098282348) < 1 and GetUnitTypeId(GetFilterUnit()) ~= 1311780920
end
function YingZhaoZhuDong_Action()
	local u = GetTriggerUnit()
	local uc = GetEnumUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local loc = GetUnitLoc(u)
	local t = CreateTimer()
	local dist = SquareRoot((GetUnitX(u) - GetUnitX(uc)) * (GetUnitX(u) - GetUnitX(uc)) + (GetUnitY(u) - GetUnitY(uc)) * (GetUnitY(u) - GetUnitY(uc)))
	shxishu = 1.8 + 0.2 * dist * GetRandomReal(20.0, 50.0) / I2R(LoadInteger(YDHT, GetHandleId(u), StringHash("鹰爪主动"))) / I2R(1 + LoadInteger(YDHT, GetHandleId(u), StringHash("鹰爪主动")))
	if GetUnitAbilityLevel(u, 1093677876) >= 1 or GetUnitAbilityLevel(u, 1093677877) >= 1 then
		shxishu = shxishu * 2
	end
	if GetUnitAbilityLevel(u, 1093678935) >= 1 then
		shxishu = shxishu * 2
	end
	shanghai = ShangHaiGongShi(u, uc, 0.7, 0.9, shxishu, 1093677872)
	CreateNUnitsAtLoc(1, 1697657140, GetOwningPlayer(u), loc, bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, 1093677873)
	IssueTargetOrderById(bj_lastCreatedUnit, 852480, uc)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 1.0)
	SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	SaveUnitHandle(YDHT, GetHandleId(t), 1, uc)
	SaveReal(YDHT, GetHandleId(t), 2, shanghai)
	TimerStart(t, 0.3, false, YingZhaoShangHai)
	RemoveLocation(loc)
	loc = nil
	u = nil
	uc = nil
	t = nil
end
function YingZhaoGongZhuDong()
	local u = GetTriggerUnit()
	local g = CreateGroup()
	local loc = GetUnitLoc(u)
	WuGongShengChong(u, 1093677872, 1000)
	GroupEnumUnitsInRangeOfLoc(g, loc, 420 + 80 * GetUnitAbilityLevel(u, 1093677872), Condition(YingZhaoZhuDong_Condition))
	SaveInteger(YDHT, GetHandleId(u), StringHash("鹰爪主动"), CountUnitsInGroup(g))
	ForGroupBJ(g, YingZhaoZhuDong_Action)
	RemoveLocation(loc)
	DestroyGroup(g)
	loc = nil
	g = nil
	u = nil
end
--蝠翼纵 8级技
function IsFuYi()
	return GetSpellAbilityId() == 1093677874
end
function FuYiZong_1()
	local t = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local oldSpeed = LoadReal(YDHT, GetHandleId(t), 1)
	local oldSpeed2 = s__ModSpeed_getSpeed(u) - LoadReal(YDHT, GetHandleId(t), 2) -- INLINED!!
	h__SetUnitMoveSpeed(u, RMaxBJ(RMinBJ(oldSpeed, oldSpeed2), 350.0))
	UnitRemoveAbility(u, 1093677652)
	UnitRemoveAbility(u, 1093682242)
	PauseTimer(t)
	DestroyTimer(t)
	FlushChildHashtable(YDHT, GetHandleId(t))
	u = nil
	t = nil
end
function FuYiZong_2_Condition()
	return IsUnitAliveBJ(GetFilterUnit()) and IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0)))
end
function FuYiZong_2_Action()
	local u = LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0)
	local uc = GetEnumUnit()
	if GetRandomInt(1, 50) == 1 then
		general_buff(u, uc, 12)
	end
	u = nil
	uc = nil
end
function FuYiZong_2()
	local t = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local g = nil
	local loc = GetUnitLoc(u)
	local j = LoadInteger(YDHT, GetHandleId(t), 1)
	local jmax = 100
	if j <= jmax then
		g = CreateGroup()
		GroupEnumUnitsInRangeOfLoc(g, loc, 300, Condition(FuYiZong_2_Condition))
		ForGroupBJ(g, FuYiZong_2_Action)
		DestroyGroup(g)
		SaveInteger(YDHT, GetHandleId(t), 1, j + 1)
	else
		PauseTimer(t)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, GetHandleId(t))
	end
	RemoveLocation(loc)
	t = nil
	u = nil
	loc = nil
	g = nil
end
function FuYiZong()
	local u = GetTriggerUnit()
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local time = 5.0 + I2R(GetUnitAbilityLevel(u, 1093677874))
	local oldSpeed = s__ModSpeed_getSpeed(u) -- INLINED!!
	local t = CreateTimer()
	local tm = nil
	WuGongShengChong(u, 1093677874, 100)
	h__SetUnitMoveSpeed(u, oldSpeed + 700 + jingmai[i] * 10)
	if GetUnitAbilityLevel(u, 1093678935) >= 1 then
		UnitAddAbilityBJ(1093677652, u)
		SetPlayerAbilityAvailableBJ(false, 1093677652, GetOwningPlayer(u))
	end
	if GetUnitAbilityLevel(u, 1093682254) >= 1 then
		UnitAddAbility(u, 1093682242)
		SetUnitAbilityLevel(u, 1093682242, GetUnitAbilityLevel(u, 1093677874) + 1)
	end
	SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	SaveReal(YDHT, GetHandleId(t), 1, oldSpeed)
	SaveReal(YDHT, GetHandleId(t), 2, 700 + jingmai[i] * 10)
	TimerStart(t, time, false, FuYiZong_1)
	if GetUnitAbilityLevel(u, 1093677367) >= 1 then
		tm = CreateTimer()
		SaveUnitHandle(YDHT, GetHandleId(tm), 0, u)
		TimerStart(tm, time / 100, true, FuYiZong_2)
	end
	u = nil
	t = nil
	tm = nil
--local location loc = GetUnitLoc(u)
--local integer i = 0
--local integer num = 0
--local location array loc2
--local location loc3 = pu(loc, 400 + 80 * GetUnitAbilityLevel(u, 'A030'), GetRandomReal(0., 360.))
--local group g = CreateGroup()
--local group g2 = CreateGroup()
--local unit uc = null
--local lightning array light
--call YDWEPolledWaitNull(.15)
--call GroupEnumUnitsInRangeOfLoc(g, loc, 420 + 80 * GetUnitAbilityLevel(u, 'A030'), Condition(function YingZhaoZhuDong_Condition))
--if g != null then
--	set num = CountUnitsInGroup(g)
--endif
--if num >= 1 then
--	set i = 1
--	loop
--		exitwhen i > (num + 1)/2
--		set uc = GroupPickRandomUnit(g)
--		call GroupAddUnit(g2, uc)
--		call GroupRemoveUnit(g, uc)
--		set loc2[i] = GetUnitLoc(uc)
--		call SetUnitPositionLocFacingLocBJ(u,loc2[i],loc2[i])
--		call SetUnitAnimation(u,"ATTACK")
--		call YDWEPolledWaitNull(.15)
--		if i > 1 then
--			set light[i] = AddLightningLoc("FORK",loc2[i-1],loc2[i])
--			call DestroyLightning(light[i-1])
--			set light[i-1] = null
--		else
--			set light[i] = AddLightningLoc("FORK",loc,loc2[i])
--		endif
--		set uc = null
--		set i = i + 1
--	endloop
--endif
--if light[i-1] != null then
--	call YDWEPolledWaitNull(.15)
--	call DestroyLightning(light[i-1])
--	set light[i-1] = null
--endif
--if g2 != null and CountUnitsInGroup(g2)>=1 then
--	call SetUnitPositionLocFacingLocBJ(u,loc3,loc3)
--	set light[1] = AddLightningLoc("FORK",loc2[i-1],loc3)
--	set num = CountUnitsInGroup(g2)
--endif
--set i = 1
--if num >= 1 then
--	set i = 1
--	loop
--		exitwhen i >= num
--		set uc = GroupPickRandomUnit(g2)
--		call GroupRemoveUnit(g2, uc)
--		call SetUnitPositionLocFacingLocBJ(uc,loc3,loc3)
--		call SetUnitAnimation(uc,"ATTACK")
--		if GetUnitAbilityLevel(u,'A0DE')>=1 then
--			call WanBuff(u, uc, 12)
--		else
--			call WanBuff(u, uc, 11)
--		endif
--		set uc = null
--		set i = i + 1
--	endloop
--endif
--if light[1] != null then
--	call YDWEPolledWaitNull(.15)
--	call DestroyLightning(light[1])
--endif
--if num > 1 then
--	call SetUnitPositionLocFacingLocBJ(u,loc,loc)
--	set light[1] = AddLightningLoc("FORK",loc3,loc)
--	call YDWEPolledWaitNull(.15)
--	call DestroyLightning(light[1])
--endif
--if GetUnitAbilityLevel(u, 'A07W')>=1 then
--	call UnitAddAbilityBJ( 'A02T', u )
--   	call SetPlayerAbilityAvailableBJ( false, 'A02T', GetOwningPlayer(u) )
--   	call YDWEPolledWaitNull(4.)
--   	call UnitRemoveAbility(u, 'A02T')
--endif
--call RemoveLocation(loc)
--call RemoveLocation(loc3)
--call DestroyGroup(g)
--call DestroyGroup(g2)
--set u = null
--set uc = null
--set loc = null
--set loc3 = null
--set g = null
--set g2 = null
--set light[1] = null
end
--狮子吼 15级技
function IsShiZi()
	return GetSpellAbilityId() == 1093678674
end
function ShiZiHou_Action()
	local u = GetTriggerUnit()
	local uc = GetEnumUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	local dist = SquareRoot((GetUnitX(u) - GetUnitX(uc)) * (GetUnitX(u) - GetUnitX(uc)) + (GetUnitY(u) - GetUnitY(uc)) * (GetUnitY(u) - GetUnitY(uc)))
	if GetUnitAbilityLevel(u, 1093678935) >= 1 then
		shxishu = shxishu + 1.0
	end
	if GetUnitAbilityLevel(u, 1093678925) >= 1 then
		shxishu = shxishu + 0.7
	end
	shanghai = ShangHaiGongShi(u, uc, 100.0, 200.0, shxishu, 1093678674)
	knock_back(uc, Atan2(GetUnitY(uc) - GetUnitY(u), GetUnitX(uc) - GetUnitX(u)), GetRandomReal(320.0, 720.0) + 80 * GetUnitAbilityLevel(u, 1093677872) - dist, 1.0, 0.05, "Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl", 0)
	WuGongShangHai(u, uc, shanghai)
	if GetUnitAbilityLevel(u, 1093682254) >= 1 and GetRandomInt(1, 3) == 2 then
		general_buff(u, uc, 9)
	end
	u = nil
	uc = nil
end
function ShiZiHou()
	local u = GetTriggerUnit()
	local loc = GetUnitLoc(u)
	local level = 0
	local g = CreateGroup()
	WuGongShengChong(u, 1093678674, 200)
	GroupEnumUnitsInRangeOfLoc(g, loc, 420 + 80 * GetUnitAbilityLevel(u, 1093677872), Condition(YingZhaoZhuDong_Condition))
	ForGroupBJ(g, ShiZiHou_Action)
	if (GetUnitAbilityLevel(u, 1093677876) > 0 or GetUnitAbilityLevel(u, 1093677877) >= 1) and GetRandomReal(0, 100) >= 30 then
		level = GetUnitAbilityLevel(u, 1093678674)
		UnitRemoveAbility(u, 1093678674)
		UnitAddAbility(u, 1093678674)
		SetUnitAbilityLevel(u, 1093678674, level)
	end
end
--圣火令神功 25级技1
function IsShengHuo()
	return GetSpellAbilityId() == 1093677876
end
--改进转圈函数
function ZhuanQuan_1()
	local t = GetExpiredTimer()
	local uc = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 1)
	local angle = LoadReal(YDHT, GetHandleId(t), 2)
	local dist = LoadReal(YDHT, GetHandleId(t), 3)
	local angle0 = LoadReal(YDHT, GetHandleId(t), 4)
	local dist0 = LoadReal(YDHT, GetHandleId(t), 5)
	local loc = GetUnitLoc(u)
	local x = 0.0
	local y = 0.0
	--call BJDebugMsg("转圈1执行了，angle0="+R2S(angle0))
	if IsUnitAliveBJ(u) == false then
		KillUnit(uc)
		RemoveUnit(uc)
		PauseTimer(t)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, GetHandleId(t))
	end
	if dist >= 0 and GetUnitState(uc, UNIT_STATE_LIFE) > 0 and GetUnitState(u, UNIT_STATE_LIFE) > 0 and (uc == shenghuoling_1 and ling1zhuan or uc == shenghuoling_2 and ling2zhuan or uc == shenghuoling_3 and ling3zhuan) then
		x = GetUnitX(u) + (dist + dist0) * Cos(angle + angle0)
		y = GetUnitY(u) + (dist + dist0) * Sin(angle + angle0)
		SaveReal(YDHT, GetHandleId(t), 4, angle + angle0)
		SaveReal(YDHT, GetHandleId(t), 5, dist + dist0)
		SetUnitX(uc, check_x(x))
		SetUnitY(uc, check_y(y))
		SetUnitFacing(uc, Atan2(GetUnitY(uc) - GetUnitY(u), GetUnitX(uc) - GetUnitX(u)))
	else
		PauseTimer(t)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, GetHandleId(t))
	end
	RemoveLocation(loc)
	t = nil
	u = nil
	uc = nil
	loc = nil
end
function ZhuanQuan(uc, u, angle, dist)
	local x1 = GetUnitX(uc)
	local y1 = GetUnitY(uc)
	local x2 = GetUnitX(u)
	local y2 = GetUnitY(u)
	local t = CreateTimer()
	SaveUnitHandle(YDHT, GetHandleId(t), 0, uc)
	SaveUnitHandle(YDHT, GetHandleId(t), 1, u)
	SaveReal(YDHT, GetHandleId(t), 2, angle * (3.14159 / 180.0))
	SaveReal(YDHT, GetHandleId(t), 3, dist)
	SaveReal(YDHT, GetHandleId(t), 4, Atan2(y2 - y1, x2 - x1))
	SaveReal(YDHT, GetHandleId(t), 5, SquareRoot((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1)))
	TimerStart(t, 0.01, true, ZhuanQuan_1)
	--call BJDebugMsg("转圈执行了")
	t = nil
end
function ShengHuoLing()
	local u = GetTriggerUnit()
	local loc = GetUnitLoc(u)
	WuGongShengChong(u, 1093677876, 100)
	SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 1093677876 * 5, GetUnitAbilityLevel(u, 1093677876))
	UnitRemoveAbility(u, 1093677876)
	UnitAddAbility(u, 1093677877)
	SetUnitAbilityLevel(u, 1093677877, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 1093677876 * 5))
	CreateNUnitsAtLoc(1, 1697657139, GetOwningPlayer(u), pu(loc, 325.0, 0), 90)
	shenghuoling_1 = bj_lastCreatedUnit
	IssueImmediateOrderById(bj_lastCreatedUnit, 852177)
	ZhuanQuan(shenghuoling_1, u, 1.0, 0.0)
	ling1zhuan = true
	CreateNUnitsAtLoc(1, 1697657139, GetOwningPlayer(u), pu(loc, 325.0, 120.0), 210)
	shenghuoling_2 = bj_lastCreatedUnit
	IssueImmediateOrderById(bj_lastCreatedUnit, 852177)
	ZhuanQuan(shenghuoling_2, u, 1.0, 0.0)
	ling2zhuan = true
	CreateNUnitsAtLoc(1, 1697657139, GetOwningPlayer(u), pu(loc, 325.0, 240.0), 330)
	shenghuoling_3 = bj_lastCreatedUnit
	IssueImmediateOrderById(bj_lastCreatedUnit, 852177)
	ZhuanQuan(shenghuoling_3, u, 1.0, 0.0)
	ling3zhuan = true
end
function IsRengShengHuo()
	return GetSpellAbilityId() == 1093677877
end
function RengShengHuoLing_Action()
	local t = GetExpiredTimer()
	local p = GetHandleId(t)
	local u = LoadUnitHandle(YDHT, p, 0)
	local uc = LoadUnitHandle(YDHT, p, 1)
	local l__ut = LoadUnitHandle(YDHT, p, 2)
	local loc = LoadLocationHandle(YDHT, p, 3)
	local myX = GetLocationX(loc)
	local myY = GetLocationY(loc)
	local hisX = GetUnitX(uc)
	local hisY = GetUnitY(uc)
	local loc2 = nil
	local dist = 0.0
	local angle = 0.0
	local i = LoadInteger(YDHT, p, 4)
	local perc = 0.04
	local imax = 25
	local shxishu = 1.0
	local shanghai = 0
	shanghai = ShangHaiGongShi(u, uc, 400, 300, shxishu, 1093677877)
	if i <= imax then
		hisX = GetUnitX(uc)
		hisY = GetUnitY(uc)
		angle = Atan2(hisY - myY, hisX - myX)
		dist = SquareRoot((hisX - myX) * (hisX - myX) + (hisY - myY) * (hisY - myY))
		loc2 = Location(myX + perc * i * dist * Cos(angle), myY + perc * i * dist * Sin(angle))
		SetUnitPositionLoc(l__ut, loc2)
		SaveInteger(YDHT, p, 4, i + 1)
	else
		WuGongShangHai(u, uc, shanghai)
		DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl", uc, "overhead"))
		PauseTimer(t)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, p)
		KillUnit(l__ut)
		RemoveUnit(l__ut)
		if GetUnitState(shenghuoling_1, UNIT_STATE_LIFE) < 1 and GetUnitState(shenghuoling_2, UNIT_STATE_LIFE) < 1 and GetUnitState(shenghuoling_3, UNIT_STATE_LIFE) < 1 then
			UnitRemoveAbility(u, 1093677877)
			UnitAddAbility(u, 1093677876)
			SetUnitAbilityLevel(u, 1093677876, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 1093677876 * 5))
		end
		RemoveLocation(loc)
	end
	RemoveLocation(loc2)
	t = nil
	u = nil
	uc = nil
	l__ut = nil
	loc = nil
	loc2 = nil
end
function RengShengHuoLing()
	local u = GetTriggerUnit()
	local uc = GetSpellTargetUnit()
	local loc = nil
	local t = CreateTimer()
	local p = GetHandleId(t)
	local l__ut = nil
	if GetUnitState(shenghuoling_1, UNIT_STATE_LIFE) > 0 then
		l__ut = shenghuoling_1
		ling1zhuan = false
	elseif GetUnitState(shenghuoling_2, UNIT_STATE_LIFE) > 0 then
		l__ut = shenghuoling_2
		ling2zhuan = false
	else
		l__ut = shenghuoling_3
		ling3zhuan = false
	end
	loc = GetUnitLoc(l__ut)
	SaveUnitHandle(YDHT, p, 0, u)
	SaveUnitHandle(YDHT, p, 1, uc)
	SaveUnitHandle(YDHT, p, 2, l__ut)
	SaveLocationHandle(YDHT, p, 3, loc)
	SaveInteger(YDHT, p, 4, 0)
	TimerStart(t, 0.03, true, RengShengHuoLing_Action)
	u = nil
	uc = nil
	l__ut = nil
	loc = nil
end
--乾坤大挪移 25级技2
function IsQianKunTan()
	return IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetEventDamageSource())) and GetUnitAbilityLevel(GetTriggerUnit(), 1093678935) >= 2
end
function QianKunTan_Condition()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())) and IsUnitAliveBJ(GetFilterUnit()) and GetUnitAbilityLevel(GetFilterUnit(), 1098282348) < 1
end
function QianKunTan()
	local u = GetTriggerUnit()
	local uc = GetEventDamageSource()
	local l__ut = nil
	local g = CreateGroup()
	local loc = GetUnitLoc(u)
	local shanghai = GetEventDamage()
	if GetRandomInt(0, 100) < 10 + 5 * GetUnitAbilityLevel(u, 1093678935) then
		WuDi(u)
		GroupEnumUnitsInRangeOfLoc(g, loc, 1000, Condition(QianKunTan_Condition))
		if g ~= nil then
			l__ut = GroupPickRandomUnit(g)
			WuGongShangHai(u, l__ut, shanghai * 50 * GetUnitAbilityLevel(u, 1093678935))
			DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl", l__ut, "overhead"))
		end
		WuGongShengChong(u, 1093678935, 8000)
	end
	RemoveLocation(loc)
	DestroyGroup(g)
	u = nil
	uc = nil
	l__ut = nil
	loc = nil
	g = nil
end
--事件
function VIPMingJiao_Trigger()
	local t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsYingZhao))
	TriggerAddAction(t, YingZhaoGong)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsYingZhaoZhuDong))
	TriggerAddAction(t, YingZhaoGongZhuDong)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsFuYi))
	TriggerAddAction(t, FuYiZong)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsShiZi))
	TriggerAddAction(t, ShiZiHou)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsShengHuo))
	TriggerAddAction(t, ShengHuoLing)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsRengShengHuo))
	TriggerAddAction(t, RengShengHuoLing)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(IsQianKunTan))
	TriggerAddAction(t, QianKunTan)
	t = nil
end

VIPMingJiao_Trigger() --明教武功触发