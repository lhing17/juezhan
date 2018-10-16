--家传剑法
function IsJiaChuanMaJia()
	return IsUnitAliveBJ(GetFilterUnit()) and IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, 10001, 10001)))
end
function JiaChuanMaJia_1()
	local u = LoadUnitHandle(YDHT, 10001, 10001)
	local uc = GetEnumUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local loc = GetUnitLoc(uc)
	if GetUnitAbilityLevel(u, 1093677650) >= 1 then
		shxishu = shxishu + 1.0
	end
	if GetRandomInt(1, 4) == 1 then
		DestroyEffect(AddSpecialEffectLocBJ(loc, "Abilities\\Spells\\Other\\Charm\\CharmTarget.mdl"))
	end
	shanghai = ShangHaiGongShi(u, uc, 12.0, 18.0, shxishu, 1093677643)
	WuGongShangHai(u, uc, shanghai)
	if GetUnitAbilityLevel(u, 1093677654) >= 1 and GetRandomInt(1, 100) <= 15 + fuyuan[i] // 5 then
		WanBuff(u, uc, 6)
	end
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
end
function JiaChuanMaJia()
	local t = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local j = LoadInteger(YDHT, GetHandleId(t), 1)
	local range = 550.0
	local loc = GetUnitLoc(u)
	local jmax = 17
	if GetUnitAbilityLevel(u, 1093678897) >= 1 then
		range = range + 350.0
	end
	if GetUnitAbilityLevel(u, 1093678666) >= 1 then
		jmax = 25
	end
	if j < jmax then
		SaveInteger(YDHT, GetHandleId(t), 1, j + 1)
		SaveUnitHandle(YDHT, 10001, 10001, u)
		ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(range, loc, Condition(IsJiaChuanMaJia)), JiaChuanMaJia_1)
	else
		PauseTimer(t)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, GetHandleId(t))
	end
	RemoveLocation(loc)
	t = nil
	u = nil
	loc = nil
end
function IsJiaChuan()
	return GetSpellAbilityId() == 1093677643
end
function JiaChuanJian()
	local u = GetTriggerUnit()
	local loc = GetUnitLoc(u)
	local t = CreateTimer()
	WuGongShengChong(GetTriggerUnit(), 1093677643, 140)
	CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc, bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, 1093677644)
	if GetUnitAbilityLevel(u, 1093678897) >= 1 then
		SetUnitAbilityLevel(bj_lastCreatedUnit, 1093677644, 2)
	end
	if GetUnitAbilityLevel(u, 1093678666) >= 1 then
		SetUnitAbilityLevel(bj_lastCreatedUnit, 1093677644, 3)
	end
	if GetUnitAbilityLevel(u, 1093678666) >= 1 and GetUnitAbilityLevel(u, 1093678897) >= 1 then
		SetUnitAbilityLevel(bj_lastCreatedUnit, 1093677644, 4)
	end
	IssueTargetOrderById(bj_lastCreatedUnit, 852110, u)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
	SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	TimerStart(t, 1, true, JiaChuanMaJia)
	if GetUnitAbilityLevel(u, 1093678932) >= 1 then
		UnitAddAbility(u, 1093677636)
		YDWEPolledWaitNull(4.0)
		UnitRemoveAbility(u, 1093677636)
	end
	RemoveLocation(loc)
	u = nil
	loc = nil
	t = nil
end
--袖中指
function IsXiuZhong()
	return GetUnitAbilityLevel(GetAttacker(), 1093681987) >= 1 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function XiuZhongZhi()
	local u = GetAttacker()
	local uc = GetTriggerUnit()
	local loc = GetUnitLoc(uc)
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local shxishu = 1.0
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1093678897) >= 1 then
		shxishu = shxishu + 0.8
	end
	shanghai = ShangHaiGongShi(u, uc, 40.0, 60.0, shxishu, 1093681987)
	if GetRandomInt(1, 100) <= 15 + fuyuan[i] // 6 + GetUnitAbilityLevel(u, 1093681987) * 2 then
		if GetUnitAbilityLevel(u, 1093678672) >= 1 then
			WanBuff(u, uc, 12)
		else
			WanBuff(u, uc, 11)
		end
		WuGongShangHai(u, uc, shanghai)
		WuGongShengChong(u, 1093681987, 600)
		SetUnitAnimation(u, "attack, slam")
		DestroyEffect(AddSpecialEffectLocBJ(loc, "Abilities\\Spells\\Other\\Charm\\CharmTarget.mdl"))
		if GetUnitAbilityLevel(u, 1093677650) >= 1 then
			ModifyHeroStat(1, u, 0, 20 * GetUnitAbilityLevel(u, 1093681987))
			YDWEPolledWaitNull(15.0 + 2 * GetUnitAbilityLevel(u, 1093681987))
			ModifyHeroStat(1, u, 1, 20 * GetUnitAbilityLevel(u, 1093681987))
		end
	end
	RemoveLocation(loc)
	u = nil
	uc = nil
	p = nil
	loc = nil
end
--参合指
function IsCanHe()
	return GetSpellAbilityId() == 1093677645
end
function CanHeZhi()
	local u = GetTriggerUnit()
	local uc = GetSpellTargetUnit()
	local loc = GetUnitLoc(uc)
	WuGongShengChong(GetTriggerUnit(), 1093677645, 200)
	CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc, bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, 1093677647)
	if GetUnitAbilityLevel(u, 1093678664) >= 1 then
		IncUnitAbilityLevel(bj_lastCreatedUnit, 1093677647)
	end
	IssueTargetOrderById(bj_lastCreatedUnit, 852119, uc)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
end
function IsCanHeMaJia()
	return GetEventDamage() == 5.15
end
function CanHeMaJia()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local uc = GetTriggerUnit()
	local loc = GetUnitLoc(uc)
	local shxishu = 1.0
	local shanghai = 0.0
	shanghai = ShangHaiGongShi(u, uc, 90.0, 50.0, shxishu, 1093677645)
	WuGongShangHai(u, uc, shanghai)
	CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc, bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, 1093677648)
	if GetUnitAbilityLevel(u, 1093682254) >= 1 then
		IncUnitAbilityLevel(bj_lastCreatedUnit, 1093677648)
	end
	UnitAddAbility(bj_lastCreatedUnit, 1093677649)
	if GetUnitAbilityLevel(u, 1093678932) >= 1 then
		IncUnitAbilityLevel(bj_lastCreatedUnit, 1093677649)
	end
	IssueTargetOrderById(bj_lastCreatedUnit, 852189, uc)
	IssueTargetOrderById(bj_lastCreatedUnit, 852149, uc)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 4.0)
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
end
function IsCanHeBeiDong()
	return GetUnitAbilityLevel(GetAttacker(), 1093677654) >= 1 and GetUnitAbilityLevel(GetAttacker(), 1093677645) >= 1
end
function CanHeBeiDong()
	local u = GetAttacker()
	local uc = GetTriggerUnit()
	local loc = GetUnitLoc(uc)
	if GetRandomInt(1, 100) <= 10 then
		CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc, bj_UNIT_FACING)
		ShowUnitHide(bj_lastCreatedUnit)
		UnitAddAbility(bj_lastCreatedUnit, 1093677647)
		if GetUnitAbilityLevel(u, 1093678664) >= 1 then
			IncUnitAbilityLevel(bj_lastCreatedUnit, 1093677647)
		end
		IssueTargetOrderById(bj_lastCreatedUnit, 852119, uc)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
	end
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
end
--真·星移斗转
function IsXingYi()
	return GetSpellAbilityId() == 1093677650
end
function XingYiDouZhuan_1()
	local t = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local uc = LoadUnitHandle(YDHT, GetHandleId(t), 1)
	local r = 5.0
	local percent = GetUnitLifePercent(uc)
	if GetUnitAbilityLevel(u, 1093678929) >= 1 then
		r = 10.0
	end
	if LoadBoolean(YDHT, GetHandleId(u), 10002) then
		if GetUnitLifePercent(u) <= percent - r then
			--call WuDi(uc)
			SetUnitLifePercentBJ(uc, percent - r)
		else
			if GetUnitLifePercent(u) <= percent then
				--call WuDi(uc)
				if percent > r / 2 then
					SetUnitLifePercentBJ(uc, RMinBJ(GetUnitLifePercent(u), percent - r / 2))
				else
					SetWidgetLife(uc, 1.0)
				end
			else
				--call WuDi(uc)
				if percent > 2.0 then
					SetUnitLifePercentBJ(uc, percent - 2.0)
				else
					SetWidgetLife(uc, 1.0)
				end
			end
		end
	else
		UnitRemoveAbility(u, 1093677652)
		PauseTimer(t)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, GetHandleId(t))
	end
	t = nil
	u = nil
	uc = nil
end
function XingYiDouZhuan()
	local t = CreateTimer()
	WuGongShengChong(GetTriggerUnit(), 1093677650, 120)
	SaveBoolean(YDHT, GetHandleId(GetTriggerUnit()), 10002, true)
	SaveUnitHandle(YDHT, GetHandleId(t), 0, GetTriggerUnit())
	SaveUnitHandle(YDHT, GetHandleId(t), 1, GetSpellTargetUnit())
	TimerStart(t, 0.3, true, XingYiDouZhuan_1)
	if GetUnitAbilityLevel(GetTriggerUnit(), 1093678929) >= 1 then
		UnitAddAbilityBJ(1093677652, GetTriggerUnit())
		SetPlayerAbilityAvailableBJ(false, 1093677652, GetOwningPlayer(GetTriggerUnit()))
	end
	t = nil
end
function IsXingYi_2()
	return GetSpellAbilityId() == 1093677650
end
function XingYiDouZhuan_2()
	--call BJDebugMsg("到这了")
	SaveBoolean(YDHT, GetHandleId(GetTriggerUnit()), 10002, false)
end
function IsXingYiBeiDong()
	return LoadBoolean(YDHT, GetHandleId(GetTriggerUnit()), 10002)
end
function XingYiBeiDong()
	local u = GetTriggerUnit()
	local uc = GetAttacker()
	local loc = GetUnitLoc(uc)
	local shxishu = 1.0
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1093678935) >= 1 then
		AddSpecialEffectLocBJ(loc, "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl")
		DestroyEffect(bj_lastCreatedEffect)
		shanghai = ShangHaiGongShi(u, uc, 50.0, 50.0, shxishu, 1093677650)
		WuGongShangHai(u, uc, shanghai)
	end
	if GetUnitAbilityLevel(u, 1093678897) >= 1 then
		WanBuff(u, uc, 1)
	end
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
end
--慕容家训
function IsJiaXun()
	return GetSpellAbilityId() == 1093677654
end
function JiaXun()
	WuGongShengChong(GetTriggerUnit(), 1093677654, 300)
end
function MuRongJia_Trigger()
	local t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsJiaChuan))
	TriggerAddAction(t, JiaChuanJian)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsXiuZhong))
	TriggerAddAction(t, XiuZhongZhi)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsCanHe))
	TriggerAddAction(t, CanHeZhi)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(IsCanHeMaJia))
	TriggerAddAction(t, CanHeMaJia)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsCanHeBeiDong))
	TriggerAddAction(t, CanHeBeiDong)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsXingYi))
	TriggerAddAction(t, XingYiDouZhuan)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_ENDCAST)
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_FINISH)
	TriggerAddCondition(t, Condition(IsXingYi_2))
	TriggerAddAction(t, XingYiDouZhuan_2)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsXingYiBeiDong))
	TriggerAddAction(t, XingYiBeiDong)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsJiaXun))
	TriggerAddAction(t, JiaXun)
	t = nil
end

MuRongJia_Trigger() --慕容世家武功触发