--天山折梅手
function IsXinZheMei()
	local i = 1
	for _ in _loop_() do
		if i > 5 then break end
		if udg_zhemei[i] == 0 and GetUnitAbilityLevel(udg_hero[i], 1093677634) >= 1 then
			udg_zhemei[i] = 1
			SaveInteger(YDHT, StringHash("折梅"), StringHash("折梅"), i)
			return true
		end
		i = i + 1
	end
	return false
end
function XinZheMeiShou_1()
	local t = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	if GetUnitAbilityLevel(u, 1093677634) >= 1 then
		UnitAddAbilityBJ(1093677656, u)
		SetPlayerAbilityAvailableBJ(false, 1093677656, GetOwningPlayer(u))
		udg_zhemeieff = AddSpecialEffectTargetUnitBJ("overhead", u, "Abilities\\Weapons\\Bolt\\BoltImpact.mdl")
	else
		FlushChildHashtable(YDHT, GetHandleId(t))
		PauseTimer(t)
		DestroyTimer(t)
	end
	t = nil
	u = nil
end
function XinZheMeiShou()
	local t = CreateTimer()
	local u = udg_hero[LoadInteger(YDHT, StringHash("折梅"), StringHash("折梅"))]
	SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	TimerStart(t, 1.0, false, XinZheMeiShou_1)
	t = nil
	u = nil
end
function XinZheMeiShou_Condition()
	return GetUnitAbilityLevel(GetAttacker(), 1093677655) >= 1 and IsUnitType(GetAttacker(), UNIT_TYPE_HERO) ~= nil and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker())) -- INLINED!!
end
function ZheMei_Condition()
	--call BJDebugMsg("pos2")
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetAttacker())) and IsUnitAliveBJ(GetFilterUnit())
end
function ZheMei_Action()
	local uc = GetEnumUnit()
	local u = GetAttacker()
	local loc = GetUnitLoc(uc)
	local shxishu = 1.0
	local shanghai = 0.0
	shxishu = RMinBJ(1.0 + I2R(GetHeroInt(u, true)) / 600.0, 15.0)
	if GetUnitAbilityLevel(u, 1093677635) ~= 0 then
		shxishu = shxishu + 0.5
	end
	if GetUnitAbilityLevel(u, 1093677640) ~= 0 then
		shxishu = shxishu + 0.6
	end
	if GetUnitAbilityLevel(u, 1093682230) ~= 0 then
		shxishu = shxishu + 0.7
	end
	--call BJDebugMsg("pos3")
	DestroyEffect(AddSpecialEffectLocBJ(loc, "Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl"))
	RemoveLocation(loc)
	shanghai = ShangHaiGongShi(u, uc, 9, 18, shxishu, 1093677634)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
	loc = nil
end
function XinZheMeiShou_Action()
	local t = CreateTimer()
	local u = GetAttacker()
	local uc = GetTriggerUnit()
	local loc = GetUnitLoc(u)
	local shxishu = 1.0
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local j = RMaxBJ(7.0 - I2R(GetHeroAgi(u, true)) / 400.0, 0.5)
	local range = 500.0 + 50.0 * GetUnitAbilityLevel(u, 1093677634) + I2R(GetHeroStr(u, true)) / 10.0
	UnitRemoveAbility(u, 1093677656)
	DestroyEffect(udg_zhemeieff)
	udg_zhemeieff = nil
	SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	TimerStart(t, j, false, XinZheMeiShou_1)
	ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(range, loc, Condition(ZheMei_Condition)), ZheMei_Action)
	WuGongShengChong(u, 1093677634, 450.0)
	if GetUnitAbilityLevel(u, 1093677640) >= 1 and GetRandomInt(1, 4) == 1 then
		WanBuff(u, uc, 2)
	end
	if GetUnitAbilityLevel(u, 1093678926) >= 1 and GetRandomInt(1, 4) == 1 then
		WanBuff(u, uc, 11)
	end
	RemoveLocation(loc)
end
--月影舞步
function IsYueYing()
	return GetSpellAbilityId() == 1093677635
end
function ZheMei_Condition2()
	--call BJDebugMsg("pos2")
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())) and IsUnitAliveBJ(GetFilterUnit())
end
function ZheMei_Action2()
	local uc = GetEnumUnit()
	local u = GetTriggerUnit()
	local loc = GetUnitLoc(uc)
	local shxishu = 1.0
	local shanghai = 0.0
	shxishu = RMinBJ(1.0 + I2R(GetHeroInt(u, true)) / 600.0, 15.0)
	if GetUnitAbilityLevel(u, 1093677635) ~= 0 then
		shxishu = shxishu + 0.5
	end
	if GetUnitAbilityLevel(u, 1093677640) ~= 0 then
		shxishu = shxishu + 0.6
	end
	if GetUnitAbilityLevel(u, 1093682230) ~= 0 then
		shxishu = shxishu + 0.7
	end
	--call BJDebugMsg("pos3")
	DestroyEffect(AddSpecialEffectLocBJ(loc, "Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl"))
	RemoveLocation(loc)
	shanghai = ShangHaiGongShi(u, uc, 9, 18, shxishu, 1093677634)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
	loc = nil
end
function YueYingBu()
	local u = GetTriggerUnit()
	local r = 5.0
	local level = 1
	local loc = GetUnitLoc(u)
	local loc2 = GetSpellTargetLoc()
	if GetUnitAbilityLevel(u, 1093678931) >= 1 then
		r = r + 3.0
	end
	if GetUnitAbilityLevel(u, 1093677639) >= 1 then
		r = r + 3.0
	end
	WuGongShengChong(u, 1093677635, 100.0)
	SaveInteger(YDHT, GetHandleId(u), 1093677635 * 100, LoadInteger(YDHT, GetHandleId(u), 1093677635 * 100) + 1)
	--call BJDebugMsg("目前特效剩余值为"+I2S(LoadInteger(YDHT, GetHandleId(u), 'A02C'*100)))
	UnitAddAbility(u, 1093677110)
	if GetUnitAbilityLevel(u, 1093678929) >= 1 then
		UnitAddAbilityBJ(1093677652, u)
		SetPlayerAbilityAvailableBJ(false, 1093677652, GetOwningPlayer(u))
	--call UnitAddAbility(u, 'ACes')
	end
	if GetUnitAbilityLevel(u, 1093678927) >= 1 then
		UnitAddAbility(u, 1093677636)
	end
	ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(300, loc, Condition(ZheMei_Condition2)), ZheMei_Action2)
	ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(300, loc2, Condition(ZheMei_Condition2)), ZheMei_Action2)
	YDWEPolledWaitNull(1.0)
	if GetUnitAbilityLevel(u, 1093678933) >= 1 and GetRandomInt(1, 2) == 1 then
		level = GetUnitAbilityLevel(u, 1093677635)
		UnitRemoveAbility(u, 1093677635)
		UnitAddAbility(u, 1093677635)
		SetUnitAbilityLevel(u, 1093677635, level)
	end
	--call BJDebugMsg("pos4")
	YDWEPolledWaitNull(r - 1)
	SaveInteger(YDHT, GetHandleId(u), 1093677635 * 100, LoadInteger(YDHT, GetHandleId(u), 1093677635 * 100) - 1)
	--call BJDebugMsg("目前特效剩余值为"+I2S(LoadInteger(YDHT, GetHandleId(u), 'A02C'*100)))
	if LoadInteger(YDHT, GetHandleId(u), 1093677635 * 100) == 0 then
		UnitRemoveAbility(u, 1093677110)
		if GetUnitAbilityLevel(u, 1093678929) >= 1 then
			UnitRemoveAbility(u, 1093677652)
		end
		if GetUnitAbilityLevel(u, 1093678927) >= 1 then
			UnitRemoveAbility(u, 1093677636)
		end
	end
end
function IsYueYingBeiDong()
	return GetUnitAbilityLevel(GetAttacker(), 1093677635) >= 1 and GetUnitAbilityLevel(GetAttacker(), 1093677640) >= 1 and GetRandomInt(1, 100) <= 15 and GetUnitAbilityLevel(GetAttacker(), 1093677637) == 0
end
function YueYingBuBeiDong()
	UnitAddAbility(GetAttacker(), 1093677637)
	YDWEPolledWaitNull(5.0)
	UnitRemoveAbility(GetAttacker(), 1093677637)
end
--如意刀法
function IsRuYi()
	return GetSpellAbilityId() == 1093677638
end
function RuYiDao()
	local u = GetTriggerUnit()
	local loc = GetUnitLoc(u)
	local loc2 = nil
	WuGongShengChong(GetTriggerUnit(), 1093677638, 200)
	CreateNUnitsAtLoc(1, 1747988552, GetOwningPlayer(u), loc, bj_UNIT_FACING)
	SetUnitVertexColorBJ(bj_lastCreatedUnit, 100, 100, 100, 100)
	UnitAddAbility(bj_lastCreatedUnit, 1097625443)
	UnitAddAbility(bj_lastCreatedUnit, 1093677642)
	if GetUnitAbilityLevel(u, 1093678920) >= 1 then
		IncUnitAbilityLevel(bj_lastCreatedUnit, 1093677642)
	end
	IssueImmediateOrderById(bj_lastCreatedUnit, 852128)
	IssueTargetOrderById(bj_lastCreatedUnit, 851986, u)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 7.0)
	if GetUnitAbilityLevel(u, 1093678933) >= 1 then
		loc2 = pu(loc, 256.0, GetRandomReal(0, 360.0))
		CreateNUnitsAtLoc(1, 1747988552, GetOwningPlayer(u), loc2, bj_UNIT_FACING)
		SetUnitVertexColorBJ(bj_lastCreatedUnit, 100, 100, 100, 100)
		UnitAddAbility(bj_lastCreatedUnit, 1097625443)
		UnitAddAbility(bj_lastCreatedUnit, 1093677642)
		if GetUnitAbilityLevel(u, 1093678920) >= 1 then
			IncUnitAbilityLevel(bj_lastCreatedUnit, 1093677642)
		end
		IssueImmediateOrderById(bj_lastCreatedUnit, 852128)
		IssueTargetOrderById(bj_lastCreatedUnit, 851986, u)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 7.0)
	end
	if GetUnitAbilityLevel(u, 1093682254) >= 1 then
		UnitAddAbility(u, 1093682001)
		SetPlayerAbilityAvailable(GetOwningPlayer(u), 1093682001, false)
	end
	YDWEPolledWaitNull(7.0)
	UnitRemoveAbility(u, 1093682001)
	RemoveLocation(loc)
	RemoveLocation(loc2)
	u = nil
	loc = nil
	loc2 = nil
end
function IsRuYiMaJia()
	return GetUnitTypeId(GetEventDamageSource()) == 1747988552 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetEventDamageSource()))
end
function RuYiMaJia()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local uc = GetTriggerUnit()
	local shxishu = 1
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1093677639) >= 1 then
		shxishu = shxishu + 0.8
	end
	shanghai = ShangHaiGongShi(u, uc, 48.0, 48.0, shxishu, 1093677638)
	WuGongShangHai(u, uc, shanghai)
	if UnitHasBuffBJ(u, 1110454361) and GetUnitAbilityLevel(u, 1093677368) >= 1 then
		WuGongShangHai(u, uc, shanghai * 30)
	end
	u = nil
	uc = nil
end
function IsRuYiBeiDong()
	return GetUnitAbilityLevel(GetAttacker(), 1093677638) >= 1 and GetUnitAbilityLevel(GetAttacker(), 1093678669) >= 1 and GetRandomInt(1, 100) <= 8
end
function RuYiBeiDong()
	local u = GetAttacker()
	local loc = GetUnitLoc(u)
	--call WuGongShengChong(GetTriggerUnit(),'A02F',1200)
	CreateNUnitsAtLoc(1, 1747988552, GetOwningPlayer(u), loc, bj_UNIT_FACING)
	SetUnitVertexColorBJ(bj_lastCreatedUnit, 100, 100, 100, 100)
	UnitAddAbility(bj_lastCreatedUnit, 1097625443)
	UnitAddAbility(bj_lastCreatedUnit, 1093677642)
	if GetUnitAbilityLevel(u, 1093678920) >= 1 then
		IncUnitAbilityLevel(bj_lastCreatedUnit, 1093677642)
	end
	IssueImmediateOrderById(bj_lastCreatedUnit, 852128)
	IssueTargetOrderById(bj_lastCreatedUnit, 851986, u)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 7.0)
	if GetUnitAbilityLevel(u, 1093682254) >= 1 then
		UnitAddAbility(u, 1093682001)
		SetPlayerAbilityAvailable(GetOwningPlayer(u), 1093682001, false)
	end
	YDWEPolledWaitNull(7.0)
	UnitRemoveAbility(u, 1093682001)
	RemoveLocation(loc)
	u = nil
	loc = nil
end
--八荒六合唯我独尊功
function IsBaHuang()
	return GetUnitAbilityLevel(GetAttacker(), 1093677639) >= 1
end
function BaHuangGong_1()
	local t = GetExpiredTimer()
	local j = LoadInteger(YDHT, GetHandleId(t), 0)
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 1)
	local jishu = LoadInteger(YDHT, GetHandleId(t), 2)
	local level = LoadInteger(YDHT, GetHandleId(t), 3)
	ModifyHeroStat(j, u, 1, jishu * level * 6)
	PauseTimer(t)
	DestroyTimer(t)
	t = nil
	u = nil
end
function BaHuangGong_2()
	local t = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 1)
	local jishu = LoadInteger(YDHT, GetHandleId(t), 2)
	local level = LoadInteger(YDHT, GetHandleId(t), 3)
	ModifyHeroStat(0, u, 1, jishu * level)
	ModifyHeroStat(1, u, 1, jishu * level)
	ModifyHeroStat(2, u, 1, jishu * level)
	PauseTimer(t)
	DestroyTimer(t)
	t = nil
	u = nil
end
function BaHuangGong_3()
	local t = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 1)
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local jishu = LoadInteger(YDHT, GetHandleId(t), 2)
	local level = LoadInteger(YDHT, GetHandleId(t), 3)
	juexuelingwu[i] = juexuelingwu[i] - level
	PauseTimer(t)
	DestroyTimer(t)
	t = nil
	u = nil
end
function BaHuangGong()
	local u = GetAttacker()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local jishu = 8
	local level = GetUnitAbilityLevel(u, 1093677639)
	local loc = GetUnitLoc(u)
	local j = GetRandomInt(0, 2)
	local t = nil
	if GetUnitAbilityLevel(u, 1093678935) >= 1 then
		jishu = 15
	end
	if GetRandomInt(1, 100) < 6 + fuyuan[i] // 3 + GetUnitAbilityLevel(u, 1093679157) * 3 then
		WuGongShengChong(u, 1093677639, 500 - 50 * GetUnitAbilityLevel(u, 1093679161))
		if GetUnitAbilityLevel(u, 1093682226) >= 1 then
			ModifyHeroStat(j, u, 0, jishu * level * 6)
			t = CreateTimer()
			SaveInteger(YDHT, GetHandleId(t), 0, j)
			SaveUnitHandle(YDHT, GetHandleId(t), 1, u)
			SaveInteger(YDHT, GetHandleId(t), 2, jishu)
			SaveInteger(YDHT, GetHandleId(t), 3, level)
			TimerStart(t, 12.0, false, BaHuangGong_1)
		else
			ModifyHeroStat(0, u, 0, jishu * level)
			ModifyHeroStat(1, u, 0, jishu * level)
			ModifyHeroStat(2, u, 0, jishu * level)
			t = CreateTimer()
			SaveUnitHandle(YDHT, GetHandleId(t), 1, u)
			SaveInteger(YDHT, GetHandleId(t), 2, jishu)
			SaveInteger(YDHT, GetHandleId(t), 3, level)
			TimerStart(t, 12.0, false, BaHuangGong_2)
		end
		DestroyEffect(AddSpecialEffectLocBJ(loc, "Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl"))
		if GetUnitAbilityLevel(u, 1093679155) >= 1 then
			juexuelingwu[i] = juexuelingwu[i] + level
			t = CreateTimer()
			SaveUnitHandle(YDHT, GetHandleId(t), 1, u)
			SaveInteger(YDHT, GetHandleId(t), 2, jishu)
			SaveInteger(YDHT, GetHandleId(t), 3, level)
			TimerStart(t, 12.0, false, BaHuangGong_3)
		end
	end
	RemoveLocation(loc)
	u = nil
	p = nil
	loc = nil
	t = nil
end
--天山六阳掌
function IsLiuYang()
	return GetSpellAbilityId() == 1093677640
end
function LiuYangZhang()
	local u = GetTriggerUnit()
	local loc = GetUnitLoc(u)
	WuGongShengChong(GetTriggerUnit(), 1093677640, 190)
	CreateNUnitsAtLoc(1, 1697657138, GetOwningPlayer(u), loc, bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, 1093677641)
	if GetUnitAbilityLevel(u, 1093682254) >= 1 then
		IncUnitAbilityLevel(bj_lastCreatedUnit, 1093677641)
	end
	IssuePointOrderByIdLoc(bj_lastCreatedUnit, 852238, loc)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 15.0)
	RemoveLocation(loc)
	u = nil
	loc = nil
end
function IsLiuYangMaJia()
	return GetUnitTypeId(GetEventDamageSource()) == 1697657138 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetEventDamageSource()))
end
function LiuYangMaJia()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local uc = GetTriggerUnit()
	local shxishu = 1
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1093678921) >= 1 then
		shxishu = shxishu + 1
	end
	shanghai = ShangHaiGongShi(u, uc, 84, 48, shxishu, 1093677640)
	WuGongShangHai(u, uc, shanghai)
	if GetUnitAbilityLevel(u, 1093678925) >= 1 then
		WanBuff(u, uc, 2)
	end
	if GetUnitAbilityLevel(u, 1093679154) >= 1 then
		WanBuff(u, uc, 6)
	end
	u = nil
	uc = nil
end
function IsLiuYangBeiDong()
	return GetUnitAbilityLevel(GetAttacker(), 1093677640) >= 1 and GetUnitAbilityLevel(GetAttacker(), 1093682232) >= 1 and GetUnitAbilityLevel(GetAttacker(), 1093678920) >= 1 and GetRandomInt(1, 100) <= 5
end
function LiuYangBeiDong()
	local u = GetAttacker()
	local loc = GetUnitLoc(u)
	CreateNUnitsAtLoc(1, 1697657138, GetOwningPlayer(u), loc, bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, 1093677641)
	if GetUnitAbilityLevel(u, 1093682254) >= 1 then
		IncUnitAbilityLevel(bj_lastCreatedUnit, 1093677641)
	end
	IssuePointOrderByIdLoc(bj_lastCreatedUnit, 852238, loc)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 15.0)
	RemoveLocation(loc)
	u = nil
	loc = nil
end
function LingJiuGong_Trigger()
	local t = CreateTrigger()
	TriggerRegisterTimerEventPeriodic(t, 1.0)
	TriggerAddCondition(t, Condition(IsXinZheMei))
	TriggerAddAction(t, XinZheMeiShou)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(XinZheMeiShou_Condition))
	TriggerAddAction(t, XinZheMeiShou_Action)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsYueYing))
	TriggerAddAction(t, YueYingBu)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsYueYingBeiDong))
	TriggerAddAction(t, YueYingBuBeiDong)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsBaHuang))
	TriggerAddAction(t, BaHuangGong)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsLiuYang))
	TriggerAddAction(t, LiuYangZhang)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(IsLiuYangMaJia))
	TriggerAddAction(t, LiuYangMaJia)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsLiuYangBeiDong))
	TriggerAddAction(t, LiuYangBeiDong)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsRuYi))
	TriggerAddAction(t, RuYiDao)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(IsRuYiMaJia))
	TriggerAddAction(t, RuYiMaJia)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsRuYiBeiDong))
	TriggerAddAction(t, RuYiBeiDong)
	t = nil
end