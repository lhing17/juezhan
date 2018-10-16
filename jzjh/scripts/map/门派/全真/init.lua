--全真剑法 3级技
function IsQuanZhen()
	return IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker())) and GetUnitAbilityLevel(GetAttacker(), 1093681990) >= 1
end
function QuanZhen_Condition()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetAttacker())) and IsUnitAliveBJ(GetFilterUnit())
end
function QuanZhen_Action()
	local u = GetAttacker()
	local uc = GetEnumUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local loc = GetUnitLoc(u)
	local loc2 = GetUnitLoc(uc)
	shxishu = 1 + jingmai[i] // 20
	shanghai = ShangHaiGongShi(u, uc, 12.0, 21.0, shxishu, 1093681990)
	WuGongShangHai(u, uc, shanghai)
	DestroyEffect(AddSpecialEffectTarget("Units\\NightElf\\Wisp\\WispExplode.mdl", uc, "overhead"))
	if GetUnitAbilityLevel(u, 1093678931) >= 1 and GetRandomReal(1.0, 100) <= 20 then
		CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc2, bj_UNIT_FACING)
		UnitAddAbility(bj_lastCreatedUnit, 1093678412)
		IssueTargetOrderById(bj_lastCreatedUnit, 852095, uc)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
		ShowUnitHide(bj_lastCreatedUnit)
		CreateTextTagLocBJ("封穴", loc2, 0, 12.0, 65.0, 55.0, 42.0, 0)
		Nw(3.0, bj_lastCreatedTextTag)
		SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, 90)
	end
	if GetUnitAbilityLevel(u, 1093678934) >= 1 then
		SetWidgetLife(u, GetUnitState(u, UNIT_STATE_LIFE) + GetUnitAbilityLevel(u, 1093681990) * yishu[i] * 20)
	end
	RemoveLocation(loc)
	RemoveLocation(loc2)
	loc2 = nil
	loc = nil
	u = nil
	uc = nil
end
function QuanZhenJian()
	local uc = GetTriggerUnit()
	local u = GetAttacker()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = GetUnitLoc(u)
	local g = CreateGroup()
	local chance = fuyuan[i]
	if GetUnitAbilityLevel(u, 1093678935) >= 1 then
		chance = chance * 4
	end
	if GetRandomReal(0, 100) <= 20 + chance / 5 then
		WuGongShengChong(u, 1093681990, 1100.0)
		if danpo[i] >= 15 then
			GroupEnumUnitsInRangeOfLoc(g, loc, danpo[i] * 20, Condition(QuanZhen_Condition))
		else
			GroupAddUnit(g, uc)
		end
		ForGroupBJ(g, QuanZhen_Action)
		GroupClear(g)
		DestroyGroup(g)
		RemoveLocation(loc)
	end
	g = nil
	loc = nil
	p = nil
	u = nil
	uc = nil
end
--昊天掌 15级技
function IsXianTianYiYang()
	return GetSpellAbilityId() == 1093681997 and (IsUnitEnemy(GetSpellTargetUnit(), GetOwningPlayer(GetTriggerUnit())) or GetSpellTargetUnit() == GetTriggerUnit())
end
function XianTianYiYang_Condition()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())) and IsUnitAliveBJ(GetFilterUnit())
end
function XianTianYiYang_Action()
	local u = GetTriggerUnit()
	local uc = GetEnumUnit()
	local l__ut = nil
	local loc1 = GetUnitLoc(u)
	local loc2 = GetUnitLoc(uc)
	local shxishu = 1.0
	local shanghai = 0.0
	local level = 0
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	CreateNUnitsAtLoc(1, 1697656920, GetOwningPlayer(u), loc1, bj_UNIT_FACING)
	l__ut = bj_lastCreatedUnit
	UnitAddAbility(l__ut, 1093682250)
	IssueTargetOrderById(l__ut, 852119, uc)
	UnitApplyTimedLife(l__ut, 1112045413, 2.0)
	ShowUnitHide(l__ut)
	if GetUnitAbilityLevel(u, 1093682245) >= 1 then
		shxishu = shxishu * 2
	end
	if GetUnitAbilityLevel(u, 1093678933) >= 1 then
		shxishu = shxishu / 2
	end
	shanghai = ShangHaiGongShi(u, uc, 250, 700, shxishu, 1093681997)
	WuGongShangHai(u, uc, shanghai)
	if GetUnitAbilityLevel(u, 1093678672) >= 1 and GetRandomReal(1.0, 200) <= fuyuan[i] then
		--call SetUnitState(u,UNIT_STATE_MANA,GetUnitState(u,UNIT_STATE_MANA)+80)
		level = GetUnitAbilityLevel(u, 1093678672)
		--call UnitRemoveAbility(u,'A06P')
		--call UnitAddAbility(u,'A06P')
		--call SetUnitAbilityLevel(u,'A06P',level)
		IssuePointOrderByIdLoc(u, 852125, loc2)
		UnitRemoveAbility(u, 1093678672)
		UnitAddAbility(u, 1093678672)
		SetUnitAbilityLevel(u, 1093678672, level)
	end
	if fuyuan[i] >= 20 and jingmai[i] >= 20 and GetRandomReal(1.0, 200) <= fuyuan[i] then
		level = GetUnitAbilityLevel(u, 1093681997)
		UnitRemoveAbility(u, 1093681997)
		UnitAddAbility(u, 1093681997)
		SetUnitAbilityLevel(u, 1093681997, level)
	end
	if GetUnitAbilityLevel(u, 1093678934) >= 1 then
		CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc2, bj_UNIT_FACING)
		ShowUnitHide(bj_lastCreatedUnit)
		UnitAddAbility(bj_lastCreatedUnit, 1093678903)
		IssueTargetOrderById(bj_lastCreatedUnit, 852111, uc)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
		CreateTextTagLocBJ("内伤", loc2, 60.0, 12.0, 65.0, 55.0, 42.0, 0)
		Nw(3.0, bj_lastCreatedTextTag)
		SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, 90)
	end
	RemoveLocation(loc1)
	RemoveLocation(loc2)
	u = nil
	uc = nil
	l__ut = nil
	loc1 = nil
	loc2 = nil
end
function XianTianYiYang()
	local u = GetTriggerUnit()
	local uc = GetSpellTargetUnit()
	local loc = GetUnitLoc(uc)
	local g = CreateGroup()
	WuGongShengChong(u, 1093681997, 250)
	if u == uc then
		SetWidgetLife(u, 1.0)
		WuGongShangHai(u, u, 299999)
	end
	if GetUnitAbilityLevel(u, 1093678933) >= 1 then
		GroupEnumUnitsInRangeOfLoc(g, loc, 500, Condition(XianTianYiYang_Condition))
	else
		GroupAddUnit(g, uc)
	end
	ForGroupBJ(g, XianTianYiYang_Action)
	GroupClear(g)
	DestroyGroup(g)
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
	g = nil
end
--金雁功 8级技
function IsJinYanKai()
	return GetIssuedOrderId() == 852177 and GetUnitAbilityLevel(GetTriggerUnit(), 1093682241) >= 1
end
--没蓝自动关闭金雁功
function JinYanMeiLan()
	local t = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	if UnitHasBuffBJ(u, 1110454359) == false then
		UnitRemoveAbility(u, 1093682242)
		UnitRemoveAbility(u, 1093682243)
		UnitRemoveAbility(u, 1098084450)
		FlushChildHashtable(YDHT, GetHandleId(t))
		PauseTimer(t)
		DestroyTimer(t)
	end
	u = nil
	t = nil
end
--开启金雁功
function JinYanKai()
	local u = GetTriggerUnit()
	local level = GetUnitAbilityLevel(u, 1093682241)
	local t = CreateTimer()
	UnitAddAbility(u, 1093682242)
	UnitAddAbility(u, 1093682243)
	UnitAddAbilityBJ(1098084450, u)
	SetPlayerAbilityAvailableBJ(false, 1098084450, GetOwningPlayer(u))
	if GetUnitAbilityLevel(u, 1093678932) >= 1 then
		SetUnitAbilityLevel(u, 1093682242, level + 1)
	else
		SetUnitAbilityLevel(u, 1093682242, level)
	end
	if GetUnitAbilityLevel(u, 1093681992) >= 1 then
		SetUnitAbilityLevel(u, 1093682243, level + 1)
	else
		SetUnitAbilityLevel(u, 1093682243, level)
	end
	if GetUnitAbilityLevel(u, 1093682245) >= 1 then
		SetUnitAbilityLevel(u, 1093682244, level + 1)
	else
		SetUnitAbilityLevel(u, 1093682244, level)
	end
	--set fuyuan[1+GetPlayerId(GetOwningPlayer(u))]=fuyuan[1+GetPlayerId(GetOwningPlayer(u))]+10
	WuGongShengChong(u, 1093682241, 150.0)
	--call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,I2S(GetUnitAbilityLevel(u,'A0DD')))
	SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	TimerStart(t, 0.5, true, JinYanMeiLan)
	t = nil
	u = nil
end
--关闭金雁功
function IsJinYanGuan()
	return GetIssuedOrderId() == 852178 and GetUnitAbilityLevel(GetTriggerUnit(), 1093682241) >= 1
end
function JinYanGuan()
	local u = GetTriggerUnit()
	UnitRemoveAbility(u, 1093682242)
	UnitRemoveAbility(u, 1093682243)
	UnitRemoveAbility(u, 1098084450)
	--set fuyuan[1+GetPlayerId(GetOwningPlayer(u))]=fuyuan[1+GetPlayerId(GetOwningPlayer(u))]-10
	u = nil
end
--金雁功被动
function IsJinYan()
	return IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker())) and UnitHasBuffBJ(GetAttacker(), 1110454359)
end
function JinYanFanWei()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetAttacker())) and IsUnitAliveBJ(GetFilterUnit())
end
function JinYanGong()
	local u = GetAttacker()
	local l__ut = GetTriggerUnit()
	local g = CreateGroup()
	local loc = GetUnitLoc(u)
	local uc = nil
	local loc2 = GetUnitLoc(l__ut)
	local level = 0
	GroupEnumUnitsInRangeOfLoc(g, loc, 1000, Condition(JinYanFanWei))
	uc = GroupPickRandomUnit(g)
	if GetRandomReal(1.0, 100) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(u))] then
		if GetUnitAbilityLevel(u, 1093678932) >= 1 then
			CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc2, bj_UNIT_FACING)
			ShowUnitHide(bj_lastCreatedUnit)
			UnitAddAbility(bj_lastCreatedUnit, 1093678903)
			IssueTargetOrderById(bj_lastCreatedUnit, 852111, l__ut)
			UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
			CreateTextTagLocBJ("内伤", loc2, 60.0, 12.0, 65.0, 55.0, 42.0, 0)
			Nw(3.0, bj_lastCreatedTextTag)
			SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, 90)
		end
		if GetUnitAbilityLevel(u, 1093681992) >= 1 then
			CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc2, bj_UNIT_FACING)
			UnitAddAbility(bj_lastCreatedUnit, 1093678900)
			IssueTargetOrderById(bj_lastCreatedUnit, 852527, l__ut)
			UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
			ShowUnitHide(bj_lastCreatedUnit)
			CreateTextTagLocBJ("中毒", loc2, 0, 12.0, 65.0, 55.0, 42.0, 0)
			Nw(3.0, bj_lastCreatedTextTag)
			SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, 90)
		end
		if GetUnitAbilityLevel(u, 1093682245) >= 1 then
			CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc2, bj_UNIT_FACING)
			ShowUnitHide(bj_lastCreatedUnit)
			UnitAddAbility(bj_lastCreatedUnit, 1093681498)
			IssueTargetOrderById(bj_lastCreatedUnit, 852075, l__ut)
			UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
			CreateTextTagLocBJ("昏迷", loc2, 60.0, 12.0, 65.0, 55.0, 42.0, 0)
			Nw(3.0, bj_lastCreatedTextTag)
			SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, 90)
		end
		if uc ~= nil and GetUnitAbilityLevel(u, 1093681997) >= 1 and GetRandomInt(1, 10) == 1 then
			SetUnitState(u, UNIT_STATE_MANA, GetUnitState(u, UNIT_STATE_MANA) + 70)
			level = GetUnitAbilityLevel(u, 1093681997)
			UnitRemoveAbility(u, 1093681997)
			UnitAddAbility(u, 1093681997)
			SetUnitAbilityLevel(u, 1093681997, level)
		end
	end
	GroupClear(g)
	DestroyGroup(g)
	RemoveLocation(loc)
	u = nil
	uc = nil
	g = nil
	loc = nil
end
--先天功
function IsXianTian()
	return GetUnitAbilityLevel(GetTriggerUnit(), 1093681992) >= 1 and GetEventDamage() >= GetUnitState(GetTriggerUnit(), UNIT_STATE_LIFE)
end
function XianTian_Condition()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(udg_xiantiandanwei)) and IsUnitAliveBJ(GetFilterUnit())
end
function XianTian_Action()
	local uc = GetEnumUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	local loc = GetUnitLoc(uc)
	shanghai = ShangHaiGongShi(udg_xiantiandanwei, uc, 2000, 800, shxishu, 1093681992)
	WuGongShangHai(udg_xiantiandanwei, uc, shanghai)
	if GetUnitAbilityLevel(udg_xiantiandanwei, 1093678934) >= 1 then
		shxishu = shxishu + 1.0
	end
	if GetUnitAbilityLevel(udg_xiantiandanwei, 1093678672) >= 1 then
		CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(udg_xiantiandanwei), loc, bj_UNIT_FACING)
		UnitAddAbility(bj_lastCreatedUnit, 1093678412)
		IssueTargetOrderById(bj_lastCreatedUnit, 852095, uc)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
		ShowUnitHide(bj_lastCreatedUnit)
		CreateTextTagLocBJ("封穴", loc, 0, 12.0, 65.0, 55.0, 42.0, 0)
		Nw(3.0, bj_lastCreatedTextTag)
		SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, 90)
	end
	if GetUnitAbilityLevel(udg_xiantiandanwei, 1093678927) >= 1 then
		CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(udg_xiantiandanwei), loc, bj_UNIT_FACING)
		ShowUnitHide(bj_lastCreatedUnit)
		UnitAddAbility(bj_lastCreatedUnit, 1093682246)
		IssueTargetOrderById(bj_lastCreatedUnit, 852066, udg_xiantiandanwei)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 3.0)
	end
	RemoveLocation(loc)
	loc = nil
	uc = nil
end
function XianTian2()
	local t = GetExpiredTimer()
	local p = GetHandleId(t)
	local u = LoadUnitHandle(YDHT, p, 0)
	local g = CreateGroup()
	local loc = GetUnitLoc(u)
	local range = 800
	udg_xiantiandanwei = u
	if GetUnitAbilityLevel(u, 1093678935) >= 0 then
		range = range + 700
	end
	GroupEnumUnitsInRangeOfLoc(g, loc, range, Condition(XianTian_Condition))
	ForGroupBJ(g, XianTian_Action)
	GroupClear(g)
	DestroyGroup(g)
	PauseTimer(t)
	DestroyTimer(t)
	RemoveLocation(loc)
	u = nil
	t = nil
	g = nil
	loc = nil
end
--捕捉重生事件
function XianTian1()
	local t = GetExpiredTimer()
	local tm = nil
	local p = GetHandleId(t)
	local u = LoadUnitHandle(YDHT, p, 0)
	if GetPlayerState(GetOwningPlayer(u), PLAYER_STATE_RESOURCE_FOOD_USED) == LoadInteger(YDHT, p, 1) then
		--call DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "捕捉成功" )
		WuGongShengChong(u, 1093681992, 40.0)
		tm = CreateTimer()
		SaveUnitHandle(YDHT, GetHandleId(tm), 0, u)
		SaveInteger(YDHT, GetHandleId(tm), 1, LoadInteger(YDHT, p, 1))
		PauseTimer(t)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, p)
		TimerStart(tm, 3.01, false, XianTian2)
	else
	end
	t = nil
	tm = nil
	u = nil
end
function XianTianGong()
	local t = CreateTimer()
	local p = GetHandleId(t)
	local u = GetTriggerUnit()
	SaveUnitHandle(YDHT, p, 0, u)
	SaveInteger(YDHT, p, 1, GetPlayerState(GetOwningPlayer(u), PLAYER_STATE_RESOURCE_FOOD_USED))
	TimerStart(t, 0.0, false, XianTian1)
	t = nil
	u = nil
end
--三花聚顶
function IsSanHua()
	return GetSpellAbilityId() == 1093682245
end
function SanHua_Condition()
	return GetUnitTypeId(GetEventDamageSource()) == 1697656921
end
function SanHua_Action()
	local p = GetOwningPlayer(GetEventDamageSource())
	local i = 1 + GetPlayerId(p)
	local u = udg_hero[i]
	local uc = GetTriggerUnit()
	local loc = GetUnitLoc(uc)
	local shxishu = 1.0
	local shanghai = 0
	if GetUnitAbilityLevel(u, 1093678930) >= 1 then
		shxishu = shxishu + 0.7
	end
	if GetUnitAbilityLevel(u, 1093678913) >= 1 then
		WanBuff(u, uc, 5)
	end
	shanghai = ShangHaiGongShi(u, uc, 250, 180, shxishu, 1093682245)
	if IsUnitEnemy(uc, GetOwningPlayer(u)) then
		WuGongShangHai(u, uc, shanghai)
	else
		SetWidgetLife(uc, GetUnitState(uc, UNIT_STATE_LIFE) + shanghai / 10)
		SetUnitState(uc, UNIT_STATE_MANA, GetUnitState(uc, UNIT_STATE_MANA) + 200)
	end
	RemoveLocation(loc)
	p = nil
	u = nil
	uc = nil
	loc = nil
end
function SanHua_1()
	return IsUnitAliveBJ(GetFilterUnit())
end
function SanHua()
	local u = GetTriggerUnit()
	local loc = GetUnitLoc(u)
	local loc2 = nil
	local g = nil
	local l__ut = nil
	local uc = GetSpellTargetUnit()
	local i = 0
	local imax = 10
	if GetUnitAbilityLevel(u, 1093678664) >= 1 then
		imax = imax + 3
	end
	if GetUnitAbilityLevel(u, 1093678934) >= 1 then
		imax = imax + 3
	end
	if GetUnitAbilityLevel(u, 1093682228) >= 1 then
		imax = imax + 50
	end
	WuGongShengChong(u, 1093682245, 150.0)
	CreateNUnitsAtLoc(1, 1697656921, GetOwningPlayer(u), loc, bj_UNIT_FACING)
	l__ut = bj_lastCreatedUnit
	UnitAddAbility(l__ut, 1093682247)
	UnitApplyTimedLife(l__ut, 1112045413, 2.0)
	ShowUnitHide(l__ut)
	IssueTargetOrderById(l__ut, 852119, uc)
	RemoveLocation(loc)
	for _ in _loop_() do
		if i > imax then break end
		loc2 = GetUnitLoc(uc)
		g = CreateGroup()
		GroupEnumUnitsInRangeOfLoc(g, loc2, 800, Condition(SanHua_1))
		if g ~= nil then
			CreateNUnitsAtLoc(1, 1697656921, GetOwningPlayer(u), loc2, bj_UNIT_FACING)
			l__ut = bj_lastCreatedUnit
			UnitAddAbility(l__ut, 1093682247)
			UnitApplyTimedLife(l__ut, 1112045413, 2.0)
			ShowUnitHide(l__ut)
			uc = GroupPickRandomUnit(g)
			IssueTargetOrderById(l__ut, 852119, uc)
			DestroyGroup(g)
			RemoveLocation(loc2)
			YDWEPolledWaitNull(0.15)
		else
			DestroyGroup(g)
			RemoveLocation(loc2)
			if true then break end
		end
		i = i + 1
	end
	u = nil
	loc = nil
	loc2 = nil
	uc = nil
	l__ut = nil
	g = nil
end
--事件
function QuanZhen_Trigger()
	local t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsQuanZhen))
	TriggerAddAction(t, QuanZhenJian)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsXianTianYiYang))
	TriggerAddAction(t, XianTianYiYang)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ISSUED_ORDER)
	TriggerAddCondition(t, Condition(IsJinYanKai))
	TriggerAddAction(t, JinYanKai)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ISSUED_ORDER)
	TriggerAddCondition(t, Condition(IsJinYanGuan))
	TriggerAddAction(t, JinYanGuan)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsJinYan))
	TriggerAddAction(t, JinYanGong)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(IsXianTian))
	TriggerAddAction(t, XianTianGong)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsSanHua))
	TriggerAddAction(t, SanHua)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(SanHua_Condition))
	TriggerAddAction(t, SanHua_Action)
	t = nil
end
QuanZhen_Trigger() --全真武功触发