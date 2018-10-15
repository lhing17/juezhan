--寒冰真气
function IsHanBingZhenQi()
	return GetSpellAbilityId() == 1093677900
end
function HanBingZhenQi()
	local u = GetTriggerUnit()
	local l__ut = GetSpellTargetUnit()
	local p = GetOwningPlayer(u)
	local loc = GetUnitLoc(l__ut)
	CreateNUnitsAtLoc(1, 1697656880, p, loc, bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, 1093677880)
	if GetUnitAbilityLevel(u, 1093678932) ~= 0 or GetUnitAbilityLevel(u, 1093678929) ~= 0 then
		SetUnitAbilityLevel(bj_lastCreatedUnit, 1093677880, 3)
	end
	if GetUnitAbilityLevel(u, 1093682254) ~= 0 or GetUnitAbilityLevel(u, 1093678927) ~= 0 then
		IncUnitAbilityLevel(bj_lastCreatedUnit, 1093677880)
	end
	IssueTargetOrderById(bj_lastCreatedUnit, 852225, l__ut)
end
--百步神拳
--无相劫指
function IsWuXiangJieZhi()
	return GetSpellAbilityId() == 1093677904
end
function WuXiangTimeOut()
	local t = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	UnitRemoveAbility(u, 1093677901)
	PauseTimer(t)
	DestroyTimer(t)
	FlushChildHashtable(YDHT, GetHandleId(t))
	u = nil
	t = nil
end
function WuXiangJieZhi()
	local u = GetTriggerUnit()
	local t = CreateTimer()
	UnitAddAbility(u, 1093677901)
	SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	TimerStart(t, 3600, false, WuXiangTimeOut)
	u = nil
	t = nil
end
function IsWuXiangShangHai()
	return GetEventDamage() == 1.58
end
function WuXiangShangHai()
	local l__ut = GetEventDamageSource()
	local uc = GetTriggerUnit()
	local i = 1 + GetPlayerId(GetOwningPlayer(l__ut))
	local u = udg_hero[i]
	local shxishu = 1.0
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1093678664) >= 1 then
		shxishu = shxishu + 0.8
	end
	if GetUnitAbilityLevel(u, 1093678927) >= 1 then
		shxishu = shxishu + 0.6
	end
	if UnitHasBuffBJ(uc, 1114010223) then
		shxishu = shxishu * 3
	end
	shxishu = shxishu * (1.0 + I2R(danpo[i]) / 20 + I2R(juexuelingwu[i]))
	shanghai = ShangHaiGongShi(u, uc, 14.0, 19.0, shxishu, 1093677904)
	WuGongShangHai(u, uc, shanghai)
	if GetUnitAbilityLevel(u, 1093678672) >= 1 and GetRandomInt(1, 100) <= 8 then
		WanBuff(u, uc, 11)
	end
	u = nil
	uc = nil
end
--神行百变
function IsShenXingBaiBian()
	return GetSpellAbilityId() == 1093677902
end
function ShenXingBaiBian_2()
	local t = GetTriggeringTrigger()
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local r = LoadReal(YDHT, GetHandleId(t), 1)
	if EVENT_UNIT_SPELL_EFFECT == GetTriggerEventId() == true then
		udg_shenxingpoyin[1 + GetPlayerId(GetOwningPlayer(u))] = 0.0
		DestroyTrigger(t)
	else
		if udg_shenxingpoyin[1 + GetPlayerId(GetOwningPlayer(u))] <= 0.0 then
			DestroyTrigger(t)
		else
			udg_shenxingpoyin[1 + GetPlayerId(GetOwningPlayer(u))] = udg_shenxingpoyin[1 + GetPlayerId(GetOwningPlayer(u))] - 0.01
		end
	end
end
function ShenXingBaiBian_1()
	local tm = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(tm), 0)
	local t = CreateTrigger()
	udg_shenxingpoyin[1 + GetPlayerId(GetOwningPlayer(u))] = 19.5
	SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	TriggerRegisterUnitEvent(t, u, EVENT_UNIT_SPELL_EFFECT)
	TriggerRegisterTimerEventPeriodic(t, 0.01)
	TriggerAddCondition(t, Condition(ShenXingBaiBian_2))
	DestroyTimer(tm)
	t = nil
	tm = nil
	u = nil
end
function ShenXingBaiBian()
	local t = CreateTimer()
	local u = GetTriggerUnit()
	SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	TimerStart(t, 0.5, false, ShenXingBaiBian_1)
	t = nil
	u = nil
end
function IsShenXingShangHai()
	return IsUnitAlly(GetAttackedUnitBJ(), GetOwningPlayer(GetAttacker())) == false and IsUnitType(GetAttackedUnitBJ(), UNIT_TYPE_STRUCTURE) == false and udg_shenxingpoyin[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))] > 0.0
end
function ShenXingShaRen()
	local u = GetKillingUnit()
	local level = 0
	--call BJDebugMsg("到这了吗2？")
	if GetUnitAbilityLevel(u, 1093678668) ~= 0 then
		level = GetUnitAbilityLevel(u, 1093677902)
		UnitRemoveAbility(u, 1093677902)
		UnitAddAbility(u, 1093677902)
		SetUnitAbilityLevel(u, 1093677902, level)
	end
	u = nil
end
function ShenXingShangHai_1()
	local t = GetTriggeringTrigger()
	local t2 = nil
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local uc = LoadUnitHandle(YDHT, GetHandleId(t), 1)
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local shxishu = 1 + udg_lilianxishu[i]
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1093678932) >= 1 then
		shxishu = shxishu + 1.0
	end
	if GetUnitAbilityLevel(u, 1093678936) >= 1 then
		shxishu = shxishu + 1.6
	end
	t2 = CreateTrigger()
	TriggerRegisterUnitEvent(t2, uc, EVENT_UNIT_DEATH)
	TriggerAddAction(t2, ShenXingShaRen)
	if EVENT_UNIT_DAMAGED == GetTriggerEventId() == true then
		if u == GetEventDamageSource() then
			DisableTrigger(t)
			shanghai = ShangHaiGongShi(u, uc, 140.0, 190.0, shxishu, 1093677902)
			WuGongShangHai(u, uc, shanghai)
			EnableTrigger(t)
			udg_shenxingfuzhu[i] = u
			DestroyTrigger(t)
		end
	else
		udg_shenxingfuzhu[i] = u
		DestroyTrigger(t)
	end
	t = nil
	t2 = nil
	u = nil
	uc = nil
end
function ShenXingShangHai()
	local t = CreateTrigger()
	local u = GetAttacker()
	local uc = GetAttackedUnitBJ()
	udg_shenxingpoyin[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))] = 0.0
	UnitRemoveAbility(GetAttacker(), 1112504171)
	if udg_shenxingfuzhu[1 + GetPlayerId(GetOwningPlayer(u))] ~= GetAttackedUnitBJ() then
		SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
		SaveUnitHandle(YDHT, GetHandleId(t), 1, uc)
		TriggerRegisterUnitEvent(t, uc, EVENT_UNIT_DAMAGED)
		TriggerRegisterTimerEventSingle(t, 1.0)
		TriggerAddCondition(t, Condition(ShenXingShangHai_1))
	end
	t = nil
	u = nil
	uc = nil
end
function IsShenXingMianShang()
	return IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetEventDamageSource())) and GetUnitAbilityLevel(GetTriggerUnit(), 1093677902) >= 1
end
function ShenXingMianShang()
	local u = GetTriggerUnit()
	local uc = GetEventDamageSource()
	local loc = GetUnitLoc(u)
	if GetRandomInt(0, 100) < 15 * GetUnitAbilityLevel(u, 1093678929) then
		WuDi(u)
		CreateTextTagLocBJ("MISS", loc, 0, 14.0, GetRandomReal(0.0, 100), GetRandomReal(0.0, 100), GetRandomReal(0.0, 100), 0.0)
		Nw(3, bj_lastCreatedTextTag)
	end
	RemoveLocation(loc)
	loc = nil
	u = nil
	uc = nil
end
--妙手空空
function IsMiaoShouKongKong()
	return IsUnitAlly(GetAttackedUnitBJ(), GetOwningPlayer(GetAttacker())) == false and IsUnitType(GetAttackedUnitBJ(), UNIT_TYPE_STRUCTURE) == false and GetUnitAbilityLevel(GetAttacker(), 1093677903) ~= 0
end
function MiaoShouKongKong_1()
	local t = GetTriggeringTrigger()
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local uc = LoadUnitHandle(YDHT, GetHandleId(t), 1)
	local shxishu = GetPlayerState(GetOwningPlayer(u), PLAYER_STATE_RESOURCE_GOLD)
	local shanghai = 0.0
	if EVENT_UNIT_DAMAGED == GetTriggerEventId() then
		AdjustPlayerStateBJ(5 * GetUnitLevel(uc), GetOwningPlayer(u), PLAYER_STATE_RESOURCE_GOLD)
		if GetUnitAbilityLevel(u, 1093677902) ~= 0 then
			AdjustPlayerStateBJ(5 * GetUnitLevel(uc), GetOwningPlayer(u), PLAYER_STATE_RESOURCE_GOLD)
		end
		if UnitHaveItem(udg_hero[1 + GetPlayerId(GetOwningPlayer(u))], 1227897178) then
			AdjustPlayerStateBJ(5 * GetUnitLevel(uc), GetOwningPlayer(u), PLAYER_STATE_RESOURCE_GOLD)
			shxishu = shxishu * 2
		end
		if GetUnitAbilityLevel(u, 1093677905) ~= 0 then
			DisableTrigger(t)
			shanghai = ShangHaiGongShi(u, uc, 0.001, 0.002, shxishu, 1093677903)
			WuGongShangHai(u, uc, shanghai)
			DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl", uc, "overhead"))
			EnableTrigger(t)
		end
		if GetUnitAbilityLevel(u, 1395666994) ~= 0 and GetRandomInt(1, 100) <= 15 then
			AdjustPlayerStateBJ(2, GetOwningPlayer(u), PLAYER_STATE_RESOURCE_LUMBER)
		end
		udg_miaoshoufuzhu[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))] = u
		DestroyTrigger(t)
	else
		udg_miaoshoufuzhu[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))] = u
		DestroyTrigger(t)
	end
	t = nil
	u = nil
	uc = nil
end
function MiaoShouKongKong()
	local t = CreateTrigger()
	local u = GetAttacker()
	if udg_miaoshoufuzhu[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))] ~= GetAttackedUnitBJ() then
		SaveUnitHandle(YDHT, GetHandleId(t), 0, udg_hero[1 + GetPlayerId(GetOwningPlayer(u))])
		SaveUnitHandle(YDHT, GetHandleId(t), 1, GetAttackedUnitBJ())
		TriggerRegisterUnitEvent(t, GetAttackedUnitBJ(), EVENT_UNIT_DAMAGED)
		TriggerRegisterTimerEventSingle(t, 1.0)
		TriggerAddCondition(t, Condition(MiaoShouKongKong_1))
	end
	t = nil
end
--龟息功
function IsGuiXiGong()
	return GetUnitAbilityLevel(GetTriggerUnit(), 1093681989) ~= 0 and GetEventDamage() >= GetWidgetLife(GetTriggerUnit())
end
--function GuiXiGong_1 takes nothing returns nothing
--	local timer t = GetExpiredTimer()
--	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
--	local integer j = LoadInteger(YDHT, GetHandleId(t), 1)
--	if j <=10 then
--endfunction
function GuiXiXianTian_Condition()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())) and IsUnitAliveBJ(GetFilterUnit())
end
function GuiXiXianTian_Action()
	local uc = GetEnumUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	local loc = GetUnitLoc(uc)
	shanghai = ShangHaiGongShi(GetTriggerUnit(), uc, 800, 320, shxishu, 1093681992)
	WuGongShangHai(GetTriggerUnit(), uc, shanghai)
	if GetUnitAbilityLevel(GetTriggerUnit(), 1093678934) >= 1 then
		shxishu = shxishu + 1.0
	end
	if GetUnitAbilityLevel(GetTriggerUnit(), 1093678672) >= 1 then
		CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(GetTriggerUnit()), loc, bj_UNIT_FACING)
		UnitAddAbility(bj_lastCreatedUnit, 1093678412)
		IssueTargetOrderById(bj_lastCreatedUnit, 852095, uc)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
		ShowUnitHide(bj_lastCreatedUnit)
		CreateTextTagLocBJ("封穴", loc, 0, 12.0, 65.0, 55.0, 42.0, 0)
		Nw(3.0, bj_lastCreatedTextTag)
		SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, 90)
	end
	if GetUnitAbilityLevel(GetTriggerUnit(), 1093678927) >= 1 then
		CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(GetTriggerUnit()), loc, bj_UNIT_FACING)
		ShowUnitHide(bj_lastCreatedUnit)
		UnitAddAbility(bj_lastCreatedUnit, 1093682246)
		IssueTargetOrderById(bj_lastCreatedUnit, 852066, GetTriggerUnit())
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 3.0)
	end
	RemoveLocation(loc)
	loc = nil
	uc = nil
end
function GuiXiGong()
	local u = GetTriggerUnit()
	local g = CreateGroup()
	local loc = GetUnitLoc(u)
	local range = 800.0
	--local timer t = null
	if GetUnitState(u, UNIT_STATE_LIFE) >= 0.99 * GetUnitState(u, UNIT_STATE_MAX_LIFE) or GetRandomReal(1, 100) <= 40 or GetRandomReal(1, 100) <= 40 and GetUnitAbilityLevel(u, 1093682254) ~= 0 then
		WuDi(u)
		SetWidgetLife(u, 1.0)
		if GetUnitAbilityLevel(u, 1093681992) ~= 0 then
			if GetUnitAbilityLevel(u, 1093678935) >= 0 then
				range = range + 700
			end
			GroupEnumUnitsInRangeOfLoc(g, loc, range, Condition(GuiXiXianTian_Condition))
			ForGroupBJ(g, GuiXiXianTian_Action)
		end
		if GetUnitAbilityLevel(u, 1093679152) ~= 0 then
			guixihuixie[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = 20.0
			YDWEPolledWaitNull(2.0)
			guixihuixie[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = 0.0
		end
	end
	GroupClear(g)
	RemoveLocation(loc)
	loc = nil
	g = nil
	u = nil
--set t = null
end
function GuiXiJiaFang()
	local i = 1
	i = 1
	for _ in _loop_() do
		if i >= 6 then break end
		if GetUnitAbilityLevel(udg_hero[i], 1093681989) ~= 0 then
			if GetUnitMoveSpeed(udg_hero[i]) <= 200 then
				UnitAddAbility(udg_hero[i], 1093677907)
				UnitAddAbility(udg_hero[i], 1093677906)
			elseif GetUnitMoveSpeed(udg_hero[i]) <= 300 then
				UnitRemoveAbility(udg_hero[i], 1093677907)
				UnitAddAbility(udg_hero[i], 1093677906)
			else
				UnitRemoveAbility(udg_hero[i], 1093677906)
				UnitRemoveAbility(udg_hero[i], 1093677907)
			end
		end
		i = i + 1
	end
	return false
end
--须弥山掌
function IsXuMiKai()
	return GetIssuedOrderId() == 852055 and GetUnitAbilityLevel(GetTriggerUnit(), 1093677908) >= 1
end
--开启须弥山掌
function XuMiKai()
	local u = GetTriggerUnit()
	local level = GetUnitAbilityLevel(u, 1093677908)
	UnitAddAbility(u, 1093682242)
	if GetUnitAbilityLevel(u, 1093679428) >= 1 then
		SetUnitAbilityLevel(u, 1093682242, level + 1)
	else
		SetUnitAbilityLevel(u, 1093682242, level)
	end
	u = nil
end
--关闭须弥山掌
function IsXuMiGuan()
	return GetIssuedOrderId() == 852056 and GetUnitAbilityLevel(GetTriggerUnit(), 1093677908) >= 1
end
function XuMiGuan()
	local u = GetTriggerUnit()
	UnitRemoveAbility(u, 1093682242)
	u = nil
end
--夫妻刀法
function IsYuanYangDaoFa()
	return GetSpellAbilityId() == 1093678166
end
function YuanYangDaoFa()
	local u = GetTriggerUnit()
	local l__ut = GetSpellTargetUnit()
	local loc = GetUnitLoc(u)
	local loc2 = GetUnitLoc(l__ut)
	local time = 0.5
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local j = 1
	local lasttime = 5.0
	YDWEJumpTimer(u, AngleBetweenPoints(loc, loc2), DistanceBetweenPoints(loc, loc2), time, 0.01, 0.0)
	YDWEPolledWaitNull(time)
	UnitAddAbility(u, 1093678163)
	SetPlayerAbilityAvailableBJ(false, 1093678163, GetOwningPlayer(u))
	if IsUnitAlly(l__ut, GetOwningPlayer(u)) then
		UnitAddAbility(l__ut, 1093678163)
		SetPlayerAbilityAvailableBJ(false, 1093678163, GetOwningPlayer(l__ut))
	end
	for _ in _loop_() do
		if j > 6 then break end
		if udg_hero[i] == bd[j] then
			if ModuloInteger(j, 2) == 0 then
				if bd[j - 1] ~= nil and bd[j - 1] == l__ut then
					SetUnitAbilityLevel(u, 1093678164, 3)
					SetUnitAbilityLevel(u, 1093678165, 3)
					if IsUnitAlly(l__ut, GetOwningPlayer(u)) then
						SetUnitAbilityLevel(l__ut, 1093678164, 3)
						SetUnitAbilityLevel(l__ut, 1093678165, 3)
					end
				end
			else
				if bd[j + 1] ~= nil and bd[j + 1] == l__ut then
					SetUnitAbilityLevel(u, 1093678164, 3)
					SetUnitAbilityLevel(u, 1093678165, 3)
					if IsUnitAlly(l__ut, GetOwningPlayer(u)) then
						SetUnitAbilityLevel(l__ut, 1093678164, 3)
						SetUnitAbilityLevel(l__ut, 1093678165, 3)
					end
				end
			end
		end
		j = j + 1
	end
	if GetUnitAbilityLevel(u, 1093679428) >= 1 then
		lasttime = 10.0
	end
	YDWEPolledWaitNull(lasttime)
	UnitRemoveAbility(u, 1093678163)
	if GetUnitAbilityLevel(u, 1093678163) >= 1 then
		UnitRemoveAbility(l__ut, 1093678163)
	end
	RemoveLocation(loc)
	RemoveLocation(loc2)
	u = nil
	l__ut = nil
	loc = nil
	loc2 = nil
end
--寿木长生功
function isShouMu()
	return GetSpellAbilityId() == 1093678657
end
function shouMu()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local loc = GetUnitLoc(u)
	--马甲施放防御最大化
	CreateNUnitsAtLoc(1, 1697656880, p, loc, bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, 1093678678)
	IssueTargetOrderById(bj_lastCreatedUnit, 852066, u)
	--马甲施放残废
	CreateNUnitsAtLoc(1, 1697656880, p, loc, bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, 1093678677)
	IssueTargetOrderById(bj_lastCreatedUnit, 852189, u)
end
--黄沙万里鞭法
function isHuangSha()
	return GetSpellAbilityId() == 1093678658
end
function huangSha()
	local u = GetTriggerUnit()
	local loc = GetUnitLoc(u)
	local i = 0
	local loc1 = nil
	CreateNUnitsAtLoc(1, 1697657156, GetOwningPlayer(u), loc, bj_UNIT_FACING)
	IssueImmediateOrderById(bj_lastCreatedUnit, 852177)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 10.0)
	i = 0
	for _ in _loop_() do
		if i >= 8 then break end
		loc1 = PolarProjectionBJ(loc, 200, 45 * i)
		CreateNUnitsAtLoc(1, 1697657156, GetOwningPlayer(u), loc1, bj_UNIT_FACING)
		IssueImmediateOrderById(bj_lastCreatedUnit, 852177)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 10.0)
		RemoveLocation(loc1)
		i = i + 1
	end
	i = 0
	for _ in _loop_() do
		if i >= 18 then break end
		loc1 = PolarProjectionBJ(loc, 350, 20 * i)
		CreateNUnitsAtLoc(1, 1697657156, GetOwningPlayer(u), loc1, bj_UNIT_FACING)
		IssueImmediateOrderById(bj_lastCreatedUnit, 852177)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 10.0)
		RemoveLocation(loc1)
		i = i + 1
	end
	RemoveLocation(loc)
	u = nil
	loc = nil
	loc1 = nil
end
function isHuangShaSH()
	return GetEventDamage() == 6.09 and GetUnitAbilityLevel(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))], 1093678658) >= 1
end
function huangShaSH()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local uc = GetTriggerUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1093678657) >= 1 then
		shxishu = shxishu + 0.8
	end
	if GetUnitAbilityLevel(u, 1093682254) >= 1 then
		shxishu = shxishu + 0.6
	end
	shanghai = ShangHaiGongShi(u, uc, 130, 150, shxishu, 1093678658)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
--珍珑棋局
--function IsZhenLongQiJu takes nothing returns boolean
--	return GetSpellAbilityId()=='A03U'
--endfunction
--function ZhenLong_Condition takes nothing returns boolean
--	return IsUnitAlly(GetFilterUnit(),Player(0)) and IsUnitAliveBJ(GetFilterUnit()) and GetFilterUnit()!=udg_hero[1] and GetFilterUnit()!=udg_hero[2] and GetFilterUnit()!=udg_hero[3] and GetFilterUnit()!=udg_hero[4] and GetFilterUnit()!=udg_hero[5]
--endfunction
--function ZhenLongQiJu_2 takes nothing returns nothing
--	local unit u = GetTriggerUnit()
--	call WuDi(u)
--	call DestroyTrigger(GetTriggeringTrigger())
--	set u = null
--endfunction
--function ZhenLong_Action takes nothing returns nothing
--	local trigger t = CreateTrigger()
--	//call BJDebugMsg("到这了吗2")
--	call YDWETimerDestroyEffect(0.5, AddSpecialEffectTarget("Abilities\\Spells\\Orc\\Voodoo\\VoodooAuraTarget.mdl",GetEnumUnit(),"origin"))
--	call TriggerRegisterUnitEvent(t, GetEnumUnit(), EVENT_UNIT_DAMAGED)
--	call TriggerAddAction(t, function ZhenLongQiJu_2)
--	set t = null
--endfunction
--function ZhenLongQiJu_1 takes nothing returns nothing
--	local timer t = GetExpiredTimer()
--	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
--	local group g = CreateGroup()
--	local integer j = LoadInteger(YDHT, GetHandleId(t), 1)
--	local location loc = GetUnitLoc(u)
--	if j < 24 then
--		//call BJDebugMsg("到这了吗1")
--		call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(600., loc, Condition(function ZhenLong_Condition)),function ZhenLong_Action)
--		call SaveInteger(YDHT, GetHandleId(t), 1, j+1)
--	else
--		call PauseTimer(t)
--		call DestroyTimer(t)
--		call FlushChildHashtable(YDHT, GetHandleId(t))
--	endif
--	call DestroyGroup(g)
--	call RemoveLocation(loc)
--	set t = null
--	set u = null
--	set g = null
--	set loc = null
--endfunction
--function ZhenLongQiJu takes nothing returns nothing
--	local unit u = GetTriggerUnit()
--	local timer t = CreateTimer()
--	call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
--	call TimerStart(t, 0.5, true, function ZhenLongQiJu_1)
--	set u = null
--	set t = null
--endfunction
--药王神篇
--擒龙控鹤
--枯荣禅功
--function IsXuMiShanZhang takes nothing returns boolean
--	return UnitHasBuffBJ(GetTriggerUnit(),'B013')
--endfunction
--function XuMiShanZhang takes nothing returns nothing
--	local real percent = 25.
--	local real damage = GetEventDamage()
--	local location loc = GetUnitLoc(GetEventDamageSource())
--	local real r = GetRandomReal(1., 10.)
--	if GetUnitAbilityLevel(GetTriggerUnit(), 'A0D8')!=0 then
--		set percent = 50.
--	endif
--	if damage>GetWidgetLife(GetTriggerUnit()) then
--		call WuDi(GetTriggerUnit())
--		call SetWidgetLife(GetTriggerUnit(), GetWidgetLife(GetTriggerUnit())-(100-percent)/100*damage)
--	else
--		call SetWidgetLife(GetTriggerUnit(), GetWidgetLife(GetTriggerUnit())+percent/100*damage)
--	endif
--	if GetUnitAbilityLevel(GetTriggerUnit(), 'A0CE')!=0 then
--		if r*damage>GetWidgetLife(GetEventDamageSource()) then
--			call WuDi(GetEventDamageSource())
--			call SetWidgetLife(GetEventDamageSource(), 1.)
--		else
--			call SetWidgetLife(GetEventDamageSource(), GetWidgetLife(GetEventDamageSource())-r*damage)
--		endif
--		call AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl")
--	endif
--	call RemoveLocation(loc)
--	set loc = null
--endfunction
--事件
function QiWu_Trigger()
	local t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsHanBingZhenQi))
	TriggerAddAction(t, HanBingZhenQi)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(IsWuXiangShangHai))
	TriggerAddAction(t, WuXiangShangHai)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsWuXiangJieZhi))
	TriggerAddAction(t, WuXiangJieZhi)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsShenXingBaiBian))
	TriggerAddAction(t, ShenXingBaiBian)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsShenXingShangHai))
	TriggerAddAction(t, ShenXingShangHai)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(IsShenXingMianShang))
	TriggerAddAction(t, ShenXingMianShang)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsMiaoShouKongKong))
	TriggerAddAction(t, MiaoShouKongKong)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(IsGuiXiGong))
	TriggerAddAction(t, GuiXiGong)
	t = CreateTrigger()
	TriggerRegisterTimerEventPeriodic(t, 0.1)
	TriggerAddCondition(t, Condition(GuiXiJiaFang))
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ISSUED_ORDER)
	TriggerAddCondition(t, Condition(IsXuMiKai))
	TriggerAddAction(t, XuMiKai)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ISSUED_ORDER)
	TriggerAddCondition(t, Condition(IsXuMiGuan))
	TriggerAddAction(t, XuMiGuan)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsYuanYangDaoFa))
	TriggerAddAction(t, YuanYangDaoFa)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(isShouMu))
	TriggerAddAction(t, shouMu)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(isHuangSha))
	TriggerAddAction(t, huangSha)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(isHuangShaSH))
	TriggerAddAction(t, huangShaSH)
	--   set t=CreateTrigger()
	--call YDWESyStemAnyUnitDamagedRegistTrigger( t )
	--call TriggerAddCondition(t,Condition(function IsXuMiShanZhang))
	--   call TriggerAddAction(t,function XuMiShanZhang)
	--set t = CreateTrigger()
	--   call YDWESyStemAnyUnitDamagedRegistTrigger( t )
	--   call TriggerAddCondition(t, Condition(function IsTianGangShangHai))
	--   call TriggerAddAction(t, function TianGangShangHai)
	--   set t = CreateTrigger()
	--   call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	--call TriggerAddCondition(t,Condition(function IsZhenLongQiJu))
	--   call TriggerAddAction(t,function ZhenLongQiJu)
	--   set t = CreateTrigger()
	--   call YDWESyStemAnyUnitDamagedRegistTrigger( t )
	--   call TriggerAddCondition(t, Condition(function IsZhenWuShangHai))
	--   call TriggerAddAction(t, function ZhenWuShangHai)
	--   set t=CreateTrigger()
	--call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	--call TriggerAddCondition(t,Condition(function IsXueZhenFa))
	--call TriggerAddAction(t,function XueZhenFa)
	t = nil
end