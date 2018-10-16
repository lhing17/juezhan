--万花剑法 3级技
function IsWanHua()
	return GetSpellAbilityId() == 1093677617
end
function WanHuaJian()
	local u = GetTriggerUnit()
	local loc = GetUnitLoc(u)
	local loc2 = _array_()
	local i = 0
	WuGongShengChong(GetTriggerUnit(), 1093677617, 350)
	i = 1
	for _ in _loop_() do
		if i > 6 then break end
		loc2[i] = pu(loc, 200, 60 * i)
		CreateNUnitsAtLoc(1, 1747988551, GetOwningPlayer(GetTriggerUnit()), loc2[i], bj_UNIT_FACING)
		ShowUnitHide(bj_lastCreatedUnit)
		UnitAddAbility(bj_lastCreatedUnit, 1093677618)
		if GetUnitAbilityLevel(u, 1093677619) >= 1 then
			IncUnitAbilityLevel(bj_lastCreatedUnit, 1093677618)
		end
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 852488, loc2[i])
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 10.0)
		RemoveLocation(loc2[i])
		loc2[i] = nil
		i = i + 1
	end
	RemoveLocation(loc)
	u = nil
	loc = nil
end
function IsWanHuaMaJia()
	return GetUnitTypeId(GetEventDamageSource()) == 1747988551 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetEventDamageSource()))
end
function WanHuaMaJia()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local uc = GetTriggerUnit()
	local shxishu = 1
	local shanghai = 0.0
	local loc2 = GetUnitLoc(uc)
	if GetUnitAbilityLevel(u, 1093677620) >= 1 then
		shxishu = shxishu + 0.8
	end
	if GetUnitAbilityLevel(u, 1093678922) >= 1 then
		shxishu = shxishu + 1.2
	end
	if GetUnitAbilityLevel(u, 1093679428) >= 1 then
		shxishu = shxishu + 2
	end
	if GetUnitAbilityLevel(u, 1093678932) >= 1 and UnitHasBuffBJ(uc, 1112040046) == false and GetRandomInt(1, 100) <= 30 then
		CreateNUnitsAtLoc(1, 1697656920, GetOwningPlayer(u), loc2, bj_UNIT_FACING)
		UnitAddAbility(bj_lastCreatedUnit, 1093677621)
		IssueTargetOrderById(bj_lastCreatedUnit, 852486, uc)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
		ShowUnitHide(bj_lastCreatedUnit)
		CreateTextTagLocBJ("放逐", loc2, 0, 12.0, 65.0, 55.0, 42.0, 0)
		Nw(1.0, bj_lastCreatedTextTag)
		SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, 90)
	end
	shanghai = ShangHaiGongShi(u, uc, 2.0, 2.0, shxishu, 1093677617)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
--拂尘功 8级技
function IsFuChen()
	return GetSpellAbilityId() == 1093677402
end
function FuChenGong()
	local loc = GetSpellTargetLoc()
	local u = nil
	WuGongShengChong(GetTriggerUnit(), 1093677402, 250)
	CreateNUnitsAtLoc(1, 1747988550, GetOwningPlayer(GetTriggerUnit()), loc, bj_UNIT_FACING)
	u = bj_lastCreatedUnit
	ShowUnitHide(u)
	UnitAddAbility(u, 1093677616)
	if GetUnitAbilityLevel(GetTriggerUnit(), 1093678932) >= 1 then
		IncUnitAbilityLevel(u, 1093677616)
	end
	if GetUnitAbilityLevel(GetTriggerUnit(), 1093677620) >= 1 then
		IncUnitAbilityLevel(u, 1093677616)
	end
	IssuePointOrderByIdLoc(u, 852089, loc)
	UnitApplyTimedLife(u, 1112045413, 10.0)
	RemoveLocation(loc)
	u = nil
	loc = nil
end
function IsFuChenMaJia()
	return GetUnitTypeId(GetEventDamageSource()) == 1747988550 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetEventDamageSource()))
end
function FuChenMaJia()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local uc = GetTriggerUnit()
	local shxishu = 1
	local shanghai = 0.0
	local r1 = GetRandomReal(1.0, 12.0) * 6.0
	if GetUnitAbilityLevel(u, 1093678922) >= 1 then
		shxishu = shxishu + 1
	end
	if GetUnitAbilityLevel(u, 1093677619) >= 1 then
		shxishu = shxishu + 0.8
	end
	if GetUnitAbilityLevel(u, 1093678918) >= 1 then
		shxishu = shxishu + 1.1
	end
	shanghai = ShangHaiGongShi(u, uc, r1, r1, shxishu, 1093677402)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
--北岳剑诀 15级技
function IsTianShan()
	return GetUnitAbilityLevel(GetTriggerUnit(), 1093681988) >= 1 and GetSpellAbilityId() ~= 1093678418 and GetSpellAbilityId() ~= 1095329889
end
function TianShan_Condition()
	return IsUnitAliveBJ(GetFilterUnit()) and IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit()))
end
function TianShanZhang()
	local u = GetTriggerUnit()
	local uc = nil
	local loc = GetUnitLoc(u)
	local loc2 = nil
	local g = CreateGroup()
	local r = 1.0
	if GetUnitAbilityLevel(u, 1093678918) >= 1 then
		r = 2.0
	end
	WuGongShengChong(u, 1093681988, 500)
	GroupEnumUnitsInRangeOfLoc(g, loc, 700, Condition(TianShan_Condition))
	uc = GroupPickRandomUnit(g)
	if uc ~= nil then
		SetWidgetLife(uc, GetWidgetLife(uc) * (0.94 - 0.015 * GetUnitAbilityLevel(u, 1093681988) * r))
		DestroyEffect(AddSpecialEffectTargetUnitBJ("overhead", uc, "Abilities\\Spells\\Other\\Monsoon\\MonsoonBoltTarget.mdl"))
		loc2 = GetUnitLoc(uc)
		if GetUnitAbilityLevel(u, 1093678932) >= 1 then
			CreateNUnitsAtLoc(1, 1697656920, GetOwningPlayer(u), loc2, bj_UNIT_FACING)
			UnitAddAbility(bj_lastCreatedUnit, 1093682229)
			IssueTargetOrderById(bj_lastCreatedUnit, 852095, uc)
			UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
			ShowUnitHide(bj_lastCreatedUnit)
			CreateTextTagLocBJ("封穴", loc2, 0, 12.0, 65.0, 55.0, 42.0, 0)
			Nw(1.0, bj_lastCreatedTextTag)
			SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, 90)
		end
		if GetUnitAbilityLevel(u, 1093677620) ~= 0 then
			CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc2, bj_UNIT_FACING)
			ShowUnitHide(bj_lastCreatedUnit)
			UnitAddAbility(bj_lastCreatedUnit, 1093678901)
			IssueTargetOrderById(bj_lastCreatedUnit, 852527, uc)
			UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
			CreateTextTagLocBJ("流血", loc2, 60.0, 12.0, 65.0, 55.0, 42.0, 0)
			Nw(3.0, bj_lastCreatedTextTag)
			SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, 90)
		end
		if GetUnitAbilityLevel(u, 1093677619) ~= 0 then
			WanBuff(u, uc, 9)
		end
		RemoveLocation(loc2)
	end
	if GetUnitAbilityLevel(u, 1093679428) >= 1 then
		uc = GroupPickRandomUnit(g)
		if uc ~= nil then
			SetWidgetLife(uc, GetWidgetLife(uc) * (0.94 - 0.015 * GetUnitAbilityLevel(u, 1093681988) * r))
			DestroyEffect(AddSpecialEffectTargetUnitBJ("overhead", uc, "Abilities\\Spells\\Other\\Monsoon\\MonsoonBoltTarget.mdl"))
		end
	end
	RemoveLocation(loc)
	DestroyGroup(g)
	u = nil
	uc = nil
	loc = nil
	loc2 = nil
	g = nil
end
--慈悲心法 25级技
function IsCiBei()
	return GetUnitTypeId(GetTriggerUnit()) == 1869117284
end
function CiBei_Condition()
	return IsUnitAliveBJ(GetFilterUnit()) and IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit()))
end
function CiBei_Action()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]
	local uc = GetEnumUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	local loc = GetUnitLoc(u)
	local loc2 = GetUnitLoc(uc)
	if GetUnitAbilityLevel(u, 1093679152) >= 1 then
		shxishu = shxishu + 2
	end
	if GetUnitAbilityLevel(u, 1093679428) >= 1 then
		shxishu = shxishu + 2
	end
	shanghai = ShangHaiGongShi(u, uc, 100.0, 50.0, shxishu, 1093677619)
	WuGongShangHai(u, uc, shanghai)
	DestroyEffect(AddSpecialEffectTargetUnitBJ("overhead", uc, "Abilities\\Spells\\Other\\Monsoon\\MonsoonBoltTarget.mdl"))
	if GetUnitAbilityLevel(u, 1093678932) >= 1 and GetRandomInt(1, 100) <= 30 then
		CreateNUnitsAtLoc(1, 1697656920, GetOwningPlayer(u), loc2, bj_UNIT_FACING)
		UnitAddAbility(bj_lastCreatedUnit, 1093682229)
		IssueTargetOrderById(bj_lastCreatedUnit, 852095, uc)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
		ShowUnitHide(bj_lastCreatedUnit)
		CreateTextTagLocBJ("封穴", loc2, 0, 12.0, 65.0, 55.0, 42.0, 0)
		Nw(1.0, bj_lastCreatedTextTag)
		SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, 90)
	end
	if GetUnitAbilityLevel(u, 1093678931) >= 1 then
		CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc, bj_UNIT_FACING)
		ShowUnitHide(bj_lastCreatedUnit)
		UnitAddAbility(bj_lastCreatedUnit, 1093682246)
		IssueTargetOrderById(bj_lastCreatedUnit, 852066, u)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 3.0)
	end
	if GetUnitAbilityLevel(u, 1093678918) >= 1 and GetRandomInt(1, 100) <= 30 then
		CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc, bj_UNIT_FACING)
		ShowUnitHide(bj_lastCreatedUnit)
		UnitAddAbility(bj_lastCreatedUnit, 1093677369)
		IssueTargetOrderById(bj_lastCreatedUnit, 852149, uc)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
		CreateTextTagLocBJ("破防", loc, 60.0, 12.0, 65.0, 55.0, 42.0, 0)
		Nw(3.0, bj_lastCreatedTextTag)
		SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, 90)
	end
	RemoveLocation(loc2)
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc2 = nil
	loc = nil
end
function CiBeiXinFa()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]
	local loc = GetUnitLoc(GetTriggerUnit())
	local g = CreateGroup()
	WuGongShengChong(u, 1093677619, 100)
	GroupEnumUnitsInRangeOfLoc(g, loc, 600, Condition(CiBei_Condition))
	ForGroupBJ(g, CiBei_Action)
	DestroyGroup(g)
	RemoveLocation(loc)
	u = nil
	g = nil
	loc = nil
end
--菩萨印 25级技
function IsPuSa()
	return GetUnitAbilityLevel(GetAttacker(), 1093677620) >= 1
end
function PuSaYin()
	local u = GetAttacker()
	local uc = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local shxishu = 1.0
	local shanghai = 0.0
	local level = 0
	if GetUnitAbilityLevel(u, 1093678932) >= 1 then
		shxishu = shxishu + 0.8
	end
	if GetUnitAbilityLevel(u, 1093678928) >= 1 then
		shxishu = shxishu + 0.7
	end
	if GetRandomInt(1, 100) < 15 + fuyuan[i] // 5 then
		shanghai = ShangHaiGongShi(u, uc, 80.0, 40.0, shxishu, 1093677620)
		WuGongShangHai(u, uc, shanghai)
		WuGongShengChong(u, 1093677620, 700)
		if GetUnitAbilityLevel(u, 1093679428) >= 1 and GetRandomInt(1, 100) <= 20 then
			level = GetUnitAbilityLevel(u, 1093677620)
			UnitRemoveAbility(u, 1093677620)
			UnitAddAbility(u, 1093677620)
			SetUnitAbilityLevel(u, 1093677620, level)
		end
	end
	u = nil
	uc = nil
	p = nil
end
function HengShan_Trigger()
	local t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsFuChen))
	TriggerAddAction(t, FuChenGong)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(IsFuChenMaJia))
	TriggerAddAction(t, FuChenMaJia)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsWanHua))
	TriggerAddAction(t, WanHuaJian)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(IsWanHuaMaJia))
	TriggerAddAction(t, WanHuaMaJia)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsTianShan))
	TriggerAddAction(t, TianShanZhang)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(IsCiBei))
	TriggerAddAction(t, CiBeiXinFa)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsPuSa))
	TriggerAddAction(t, PuSaYin)
	t = nil
end
--===========================================================================

HengShan_Trigger() --恒山武功触发