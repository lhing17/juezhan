--===================================================
--决战江湖1.6之掌门传奇
--===================================================
--少林：如来神掌
function RuLaiShenZhang_Conditions()
	return GetUnitAbilityLevel(GetAttacker(), 1093678156) >= 1
end
function RuLaiShenZhang_Actions()
	local p = _array_()
	local r
	local r1
	local r2
	local a
	local b
	local i = 0
	local u = GetAttacker()
	local l__ut = nil
	local uuu = _array_()
	local ppl = GetOwningPlayer(u)
	local id = 0
	local dist = RMinBJ(GetCameraField(CAMERA_FIELD_TARGET_DISTANCE), 2500)
	if GetUnitTypeId(GetAttacker()) == 1328558132 then
		id = 1747988533
	elseif GetUnitTypeId(GetAttacker()) == 1328558129 then
		id = 1747988535
	elseif GetUnitTypeId(GetAttacker()) == 1328558130 then
		id = 1747988536
	elseif GetUnitTypeId(GetAttacker()) == 1328558131 then
		id = 1747988537
	elseif GetUnitTypeId(GetAttacker()) == 1328558128 then
		id = 1747988534
	elseif GetUnitTypeId(GetAttacker()) == 1328558643 or GetUnitTypeId(GetAttacker()) == 1328558664 or GetUnitTypeId(GetAttacker()) == 1328558665 then
		id = 1747988553
	elseif GetUnitTypeId(GetAttacker()) == 1328558666 then
		id = 1747988555
	end
	p[0] = GetUnitLoc(u)
	CreateNUnitsAtLoc(1, id, ppl, p[0], GetUnitFacing(u))
	l__ut = bj_lastCreatedUnit
	p[17] = PolarProjectionBJ(p[0], 300, GetUnitFacing(u))
	r = GetUnitFacing(u) + 270
	p[0] = p[17]
	p[1] = PolarProjectionBJ(p[0], 241.96, -47.89 + r)
	p[2] = PolarProjectionBJ(p[0], 258.87, -66.01 + r)
	p[3] = PolarProjectionBJ(p[0], 263.73, -82.54 + r)
	p[4] = PolarProjectionBJ(p[0], 238.72, -111.24 + r)
	p[5] = PolarProjectionBJ(p[0], 219.18, -139.53 + r)
	p[6] = PolarProjectionBJ(p[0], 220.88, -170.75 + r)
	p[7] = PolarProjectionBJ(p[0], 237.01, 159.5 + r)
	p[8] = PolarProjectionBJ(p[0], 432.59, 159.71 + r)
	p[9] = PolarProjectionBJ(p[0], 257.35, 133.15 + r)
	p[10] = PolarProjectionBJ(p[0], 639.01, 117.27 + r)
	p[11] = PolarProjectionBJ(p[0], 238.57, 104.94 + r)
	p[12] = PolarProjectionBJ(p[0], 775.44, 102.34 + r)
	p[13] = PolarProjectionBJ(p[0], 208.18, 67.62 + r)
	p[14] = PolarProjectionBJ(p[0], 687.95, 87.44 + r)
	p[15] = PolarProjectionBJ(p[0], 208.61, -29.12 + r)
	p[16] = PolarProjectionBJ(p[0], 521.16, 65.24 + r)
	UnitAddAbilityBJ(1097625443, l__ut)
	SetCameraFieldForPlayer(ppl, CAMERA_FIELD_TARGET_DISTANCE, 4000.0, 2.0)
	SetUnitFlyHeight(l__ut, 2000.0, 400.0)
	IssuePointOrderLoc(l__ut, "move", p[0])
	YDWEPolledWaitNull(2.0)
	SetUnitFlyHeight(l__ut, 0.0, 800.0)
	a = 1
	b = 6
	for _ in _loop_() do
		if a > b then break end
		p[18] = PolarProjectionBJ(p[0], 110.0, 60.0 * I2R(a))
		CreateNUnitsAtLoc(1, 1697657145, ppl, p[18], 0)
		IssueImmediateOrderById(bj_lastCreatedUnit, 852177)
		a = a + 1
		uuu[i] = bj_lastCreatedUnit
		i = i + 1
		RemoveLocation(p[18])
	end
	a = 0
	b = 16
	for _ in _loop_() do
		if a > b then break end
		CreateNUnitsAtLoc(1, 1697657145, ppl, p[a], 0)
		IssueImmediateOrderById(bj_lastCreatedUnit, 852177)
		uuu[i] = bj_lastCreatedUnit
		i = i + 1
		a = a + 1
	end
	a = 1
	b = 3
	for _ in _loop_() do
		if a > b then break end
		r1 = DistanceBetweenPoints(p[9], p[10]) * (I2R(a) / 4.0)
		r2 = AngleBetweenPoints(p[9], p[10])
		p[18] = PolarProjectionBJ(p[9], r1, r2)
		CreateNUnitsAtLoc(1, 1697657145, ppl, p[18], 0)
		IssueImmediateOrderById(bj_lastCreatedUnit, 852177)
		uuu[i] = bj_lastCreatedUnit
		i = i + 1
		r1 = DistanceBetweenPoints(p[13], p[14]) * (I2R(a) / 4.0)
		r2 = AngleBetweenPoints(p[13], p[14])
		p[18] = PolarProjectionBJ(p[13], r1, r2)
		CreateNUnitsAtLoc(1, 1697657145, ppl, p[18], 0)
		IssueImmediateOrderById(bj_lastCreatedUnit, 852177)
		uuu[i] = bj_lastCreatedUnit
		i = i + 1
		a = a + 1
	end
	a = 1
	b = 4
	for _ in _loop_() do
		if a > b then break end
		r1 = DistanceBetweenPoints(p[11], p[12]) * (I2R(a) / 5.0)
		r2 = AngleBetweenPoints(p[11], p[12])
		p[18] = PolarProjectionBJ(p[11], r1, r2)
		CreateNUnitsAtLoc(1, 1697657145, ppl, p[18], 0)
		IssueImmediateOrderById(bj_lastCreatedUnit, 852177)
		uuu[i] = bj_lastCreatedUnit
		i = i + 1
		a = a + 1
	end
	a = 1
	b = 5
	for _ in _loop_() do
		if a > b then break end
		r1 = DistanceBetweenPoints(p[15], p[16]) * (I2R(a) / 6.0)
		r2 = AngleBetweenPoints(p[15], p[16])
		p[18] = PolarProjectionBJ(p[15], r1, r2)
		CreateNUnitsAtLoc(1, 1697657145, ppl, p[18], 0)
		IssueImmediateOrderById(bj_lastCreatedUnit, 852177)
		uuu[i] = bj_lastCreatedUnit
		i = i + 1
		a = a + 1
	end
	r1 = DistanceBetweenPoints(p[7], p[8]) / 2.0
	r2 = AngleBetweenPoints(p[7], p[8])
	p[18] = PolarProjectionBJ(p[7], r1, r2)
	CreateNUnitsAtLoc(1, 1697657145, ppl, p[18], 0)
	IssueImmediateOrderById(bj_lastCreatedUnit, 852177)
	uuu[i] = bj_lastCreatedUnit
	CameraSetEQNoiseForPlayer(ppl, 10.0)
	SetCameraFieldForPlayer(GetOwningPlayer(u), CAMERA_FIELD_TARGET_DISTANCE, dist, 5.0)
	CinematicFilterGenericBJ(5.0, BLEND_MODE_BLEND, "ReplaceableTextures\\CameraMasks\\DreamFilter_Mask.blp", 0.0, 0.0, 0.0, 0.0, 100.0, 100.0, 100.0, 100.0)
	a = 0
	b = i
	for _ in _loop_() do
		if a > b then break end
		SetUnitTimeScale(uuu[a], 0.8)
		a = a + 1
	end
	YDWEPolledWaitNull(2.2)
	a = 0
	b = i
	for _ in _loop_() do
		if a > b then break end
		SetUnitTimeScale(uuu[a], 0.02)
		a = a + 1
	end
	UnitRemoveAbilityBJ(1097625443, l__ut)
	ShowUnitHide(l__ut)
	ShowUnitShow(l__ut)
	RemoveUnit(l__ut)
	YDWEPolledWaitNull(4.0)
	CameraClearNoiseForPlayer(ppl)
	a = 0
	b = 18
	for _ in _loop_() do
		if a > b then break end
		RemoveLocation(p[a])
		p[a] = nil
		a = a + 1
	end
	a = 0
	b = i
	for _ in _loop_() do
		if a > b then break end
		uuu[a] = nil
		a = a + 1
	end
	u = nil
	a = 0
	b = 0
	i = 0
	r = 0.0
	r1 = 0.0
	r2 = 0.0
	ppl = nil
end
function IsRuLaiShenZhang()
	return GetEventDamage() == 5.17 and GetUnitAbilityLevel(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))], 1093678156) >= 1
end
function RuLaiShenZhang()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local uc = GetTriggerUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	shanghai = ShangHaiGongShi(u, uc, 65, 75, shxishu, 1093678156)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
--===========================================================================
function InitTrig_ZhangMenSkill()
	local t = CreateTrigger()
	--少林：如来神掌
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(RuLaiShenZhang_Conditions))
	TriggerAddAction(t, RuLaiShenZhang_Actions)
	t = CreateTrigger()
	Ov(t)
	TriggerAddCondition(t, Condition(IsRuLaiShenZhang))
	TriggerAddAction(t, RuLaiShenZhang)
	--武当：太极剑
	t = nil
end