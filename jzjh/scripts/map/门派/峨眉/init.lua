----------峨眉开始--------//
--四象掌
function IsSiXiang()
	local r = 0.0
	if GetUnitAbilityLevel(GetAttacker(), 1093681972) >= 1 then
		r = fuyuan[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))] * 4
	else
		r = fuyuan[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))]
	end
	return GetRandomReal(0.0, 100.0) < 15 + r / 5 and (GetUnitAbilityLevel(GetAttacker(), 1093681975) >= 1 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker())))
end
function SiXiang_Condition()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetAttacker())) == true and IsUnitAliveBJ(GetFilterUnit())
end
function SiXiang2()
	local p = GetOwningPlayer(udg_sixiangdanwei)
	local i = 1 + GetPlayerId(p)
	local shanghai = 0.0
	local shxishu = 1.0
	if GetUnitAbilityLevel(udg_sixiangdanwei, 1093678926) >= 1 then
		shxishu = shxishu + 0.8
	end
	shanghai = ShangHaiGongShi(udg_sixiangdanwei, GetEnumUnit(), 12, 20, shxishu, 1093681975)
	WuGongShangHai(udg_sixiangdanwei, GetEnumUnit(), shanghai)
	if GetUnitAbilityLevel(udg_sixiangdanwei, 1093681974) >= 1 and GetRandomReal(1.0, 100.0) <= 27 then
		general_buff(udg_sixiangdanwei, GetEnumUnit(), 11)
	end
	p = nil
end
function SiXiangZhang()
	local u = GetAttacker()
	local p = GetOwningPlayer(u)
	local i = 0
	local imax = 0
	local loc = GetUnitLoc(u)
	local loc2 = GetUnitLoc(GetTriggerUnit())
	local loc3 = _array_()
	if GetUnitAbilityLevel(u, 1093678935) >= 1 then
		imax = 8
	else
		imax = 5
	end
	i = 1
	for _ in _loop_() do
		if i > imax then break end
		loc3[i] = PolarProjectionBJ(loc, 100.0 * I2R(i), 0)
		loc3[i + imax] = PolarProjectionBJ(loc, 100.0 * I2R(i), 90.0)
		loc3[i + 2 * imax] = PolarProjectionBJ(loc, 100.0 * I2R(i), 180.0)
		loc3[i + 3 * imax] = PolarProjectionBJ(loc, 100.0 * I2R(i), 270.0)
		i = i + 1
	end
	i = 1
	for _ in _loop_() do
		if i > imax then break end
		CreateNUnitsAtLocFacingLocBJ(1, 1747988546, p, loc3[i], loc)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112820806, 0.5)
		i = i + 1
	end
	i = 1
	for _ in _loop_() do
		if i > imax then break end
		CreateNUnitsAtLocFacingLocBJ(1, 1747988546, p, loc3[i + imax], loc)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112820806, 0.5)
		i = i + 1
	end
	i = 1
	for _ in _loop_() do
		if i > imax then break end
		CreateNUnitsAtLocFacingLocBJ(1, 1747988546, p, loc3[i + 2 * imax], loc)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112820806, 0.5)
		i = i + 1
	end
	i = 1
	for _ in _loop_() do
		if i > imax then break end
		CreateNUnitsAtLocFacingLocBJ(1, 1747988546, p, loc3[i + 3 * imax], loc)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112820806, 0.5)
		i = i + 1
	end
	WuGongShengChong(u, 1093681975, 900.0)
	udg_sixiangdanwei = GetAttacker()
	GroupEnumUnitsInRangeOfLoc(udg_shanghaidanweizu, loc, imax * 100.0, Condition(SiXiang_Condition))
	-- call ForGroupBJ(GetUnitsInRangeOfLocMatching(imax*100.00,loc2,Condition(function SiXiang_Condition)),function SiXiang)
	ForGroupBJ(udg_shanghaidanweizu, SiXiang2)
	GroupClear(udg_shanghaidanweizu)
	RemoveLocation(loc)
	RemoveLocation(loc2)
	i = 1
	for _ in _loop_() do
		if i >= 4 * imax then break end
		RemoveLocation(loc3[i])
		loc3[i] = nil
		i = i + 1
	end
	u = nil
	p = nil
	loc = nil
	loc2 = nil
end
--佛光普照
function IsFoGuang()
	return GetSpellAbilityId() == 1093681972 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function FoGuang_Condition()
	local u = LoadUnitHandle(YDHT, StringHash("佛光"), StringHash("普照"))
	local uc = GetFilterUnit()
	local shanghai = GetWidgetLife(uc) * 0.03 * GetUnitAbilityLevel(u, 1093681972)
	local t = CreateTimer()
	local r = 2.0
	if GetUnitAbilityLevel(u, 1093678672) >= 1 then
		r = 4.0
	end
	if GetUnitAbilityLevel(u, 1093678926) >= 1 then
		shanghai = shanghai * 2
	end
	SetWidgetLife(u, GetWidgetLife(u) + shanghai)
	if IsUnitEnemy(uc, GetOwningPlayer(u)) == true and IsUnitAliveBJ(uc) and IsUnitMonster(uc) == false then
		if ModuloInteger(GetUnitPointValue(uc), 100) == 0 then
			SetWidgetLife(uc, GetWidgetLife(uc) - shanghai)
		else
			SetWidgetLife(uc, GetWidgetLife(uc) - shanghai / 6)
		end
		SetUnitDizzy(uc, r, "Abilities\\Spells\\Human\\Thunderclap\\ThunderclapTarget.mdl")
	else
		if IsUnitType(uc, UNIT_TYPE_HERO) ~= nil then -- INLINED!!
			SetWidgetLife(uc, GetWidgetLife(uc) + shanghai)
		end
	end
	u = nil
	uc = nil
	t = nil
	return false
end
function FoGuangHuiXie()
	local tm = GetExpiredTimer()
	local i = LoadInteger(YDHT, GetHandleId(tm), 1) + 1
	local u = LoadUnitHandle(YDHT, GetHandleId(tm), 0)
	SaveInteger(YDHT, GetHandleId(tm), 1, i)
	SetWidgetLife(u, GetWidgetLife(u) + 0.02 * GetUnitState(u, UNIT_STATE_MAX_LIFE))
	--call BJDebugMsg("触发一次")
	if i >= 60 then
		FlushChildHashtable(YDHT, GetHandleId(tm))
		PauseTimer(tm)
		DestroyTimer(tm)
	end
	u = nil
	tm = nil
end
function FoGuangZhang()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local g = CreateGroup()
	local r = 700.0
	local x = GetUnitX(u)
	local y = GetUnitY(u)
	local tm = CreateTimer()
	WuGongShengChong(u, 1093681972, 200.0)
	if GetUnitAbilityLevel(u, 1093682254) >= 1 then
		r = 1500.0
	end
	if GetUnitAbilityLevel(u, 1093678931) >= 1 then
		SaveUnitHandle(YDHT, GetHandleId(tm), 0, u)
		SaveInteger(YDHT, GetHandleId(tm), 1, 0)
		TimerStart(tm, 0.25, true, FoGuangHuiXie)
	end
	SaveUnitHandle(YDHT, StringHash("佛光"), StringHash("普照"), u)
	GroupEnumUnitsInRange(g, x, y, r, Condition(FoGuang_Condition))
	DestroyGroup(g)
	u = nil
	p = nil
	g = nil
	tm = nil
end
--金顶绵掌
function IsJinDing()
	return GetRandomReal(0.0, 100.0) < 15 + fuyuan[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))] // 5 and (GetUnitAbilityLevel(GetAttacker(), 1093681970) >= 1 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker())))
end
function JinDingZhang()
	local u = GetAttacker()
	local l__ut = GetTriggerUnit()
	local shanghai = 0.0
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local shxishu = 1.0
	if GetUnitAbilityLevel(u, 1093681974) >= 1 then
		shxishu = shxishu + 0.5
	end
	if GetUnitAbilityLevel(u, 1093678931) >= 1 then
		shxishu = shxishu + 0.7
	end
	shanghai = ShangHaiGongShi(u, l__ut, 130, 106, shxishu, 1093681970)
	AddSpecialEffectTargetUnitBJ("overhead", GetTriggerUnit(), "Abilities\\Spells\\Other\\Transmute\\GoldBottleMissile.mdl")
	DestroyEffect(GetLastCreatedEffectBJ())
	WuGongShangHai(u, l__ut, shanghai)
	if jingmai[i] >= 20 then
		YDWEJumpTimer(l__ut, 0, 0.0, 1, 0.01, GetRandomReal(200, 500))
	end
	WuGongShengChong(u, 1093681970, 1000.0)
	u = nil
	l__ut = nil
	p = nil
end
--灭绝剑法
function IsMieJue()
	return GetSpellAbilityId() == 1093681973
end
function MieJue_Condition()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(udg_miejuedanwei)) and IsUnitAliveBJ(GetFilterUnit())
end
function MieJue_Action()
	local p = GetOwningPlayer(udg_miejuedanwei)
	local i = 1 + GetPlayerId(p)
	local shanghai = 0.0
	local shxishu = 1.0
	if GetUnitAbilityLevel(udg_miejuedanwei, 1093678925) >= 1 then
		shxishu = shxishu + 0.8
	end
	if GetUnitAbilityLevel(udg_miejuedanwei, 1093678897) >= 1 then
		shxishu = shxishu + 0.7
	end
	shanghai = ShangHaiGongShi(udg_miejuedanwei, GetEnumUnit(), 5.5, 5.5, shxishu, 1093681973)
	WuGongShangHai(udg_miejuedanwei, GetEnumUnit(), shanghai)
	p = nil
end
function On_Timer()
	local t = GetExpiredTimer()
	local p = GetHandleId(t)
	local x = LoadReal(YDHT, p, 1) + LoadReal(YDHT, p, 3)
	local y = LoadReal(YDHT, p, 2) + LoadReal(YDHT, p, 4)
	local j = LoadInteger(YDHT, p, 0) + 1
	local i = 0
	local u = nil
	local jmax = 30
	local a = 0.0
	local loc = nil
	SaveReal(YDHT, p, 1, x)
	SaveReal(YDHT, p, 2, y)
	SaveInteger(YDHT, p, 0, j)
	if GetUnitAbilityLevel(udg_miejuedanwei, 1093678935) >= 1 then
		jmax = jmax * 2
	end
	--call DisplayTextToPlayer(Player(0),0,0,"x="+R2S(x)+", y="+R2S(y))
	for _ in _loop_() do
		if i >= 12 then break end
		u = LoadUnitHandle(YDHT, p, 5 + i)
		loc = GetUnitLoc(u)
		a = (j * 12.0 + i * 30.0) * bj_DEGTORAD
		SetUnitX(u, CheckX(x + 150.0 * Cos(a)))
		SetUnitY(u, CheckY(y + 150.0 * Sin(a)))
		GroupEnumUnitsInRangeOfLoc(udg_shanghaidanweizu, loc, 100, Condition(MieJue_Condition))
		ForGroupBJ(udg_shanghaidanweizu, MieJue_Action)
		GroupClear(udg_shanghaidanweizu)
		RemoveLocation(loc)
		if GetUnitAbilityLevel(udg_miejuedanwei, 1093679161) >= 1 then
			u = LoadUnitHandle(YDHT, p, 17 + i)
			loc = GetUnitLoc(u)
			SetUnitX(u, CheckX(GetUnitX(udg_miejuedanwei) + 150.0 * Cos(a)))
			SetUnitY(u, CheckY(GetUnitY(udg_miejuedanwei) + 150.0 * Sin(a)))
			GroupEnumUnitsInRangeOfLoc(udg_shanghaidanweizu, loc, 100, Condition(MieJue_Condition))
			ForGroupBJ(udg_shanghaidanweizu, MieJue_Action)
			GroupClear(udg_shanghaidanweizu)
			RemoveLocation(loc)
		end
		i = i + 1
	end
	if j >= jmax then
		i = 0
		for _ in _loop_() do
			if i >= 12 then break end
			KillUnit(LoadUnitHandle(YDHT, p, 5 + i))
			if GetUnitAbilityLevel(udg_miejuedanwei, 1093679161) >= 1 then
				KillUnit(LoadUnitHandle(YDHT, p, 17 + i))
			end
			i = i + 1
		end
		PauseTimer(t)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, p)
	end
	t = nil
	loc = nil
	u = nil
end
function MieJueJian()
	local t = CreateTimer()
	local p = GetHandleId(t)
	local u = GetTriggerUnit()
	local x = GetUnitX(u)
	local y = GetUnitY(u)
	local i = 0
	local a
	a = Atan2(GetSpellTargetY() - y, GetSpellTargetX() - x)
	SaveInteger(YDHT, p, 0, 0)
	SaveReal(YDHT, p, 1, x)
	SaveReal(YDHT, p, 2, y)
	SaveReal(YDHT, p, 3, 30.0 * Cos(a))
	SaveReal(YDHT, p, 4, 30.0 * Sin(a))
	for _ in _loop_() do
		if i >= 12 then break end
		a = 30.0 * i * bj_DEGTORAD
		SaveUnitHandle(YDHT, p, 5 + i, CreateUnit(GetOwningPlayer(u), 1747988547, x + 150.0 * Cos(a), y + 150.0 * Sin(a), GetUnitFacing(u)))
		if GetUnitAbilityLevel(u, 1093679161) >= 1 then
			SaveUnitHandle(YDHT, p, 17 + i, CreateUnit(GetOwningPlayer(u), 1747988547, x + 150.0 * Cos(a), y + 150.0 * Sin(a), 0.0))
		end
		-- 在hashtable中你需要自己规划好整数路径的分配
		-- 比如在这里, 5,6,...15,16 用于存储12个马甲
		i = i + 1
	end
	udg_miejuedanwei = u
	WuGongShengChong(u, 1093681973, 250.0)
	TimerStart(t, 0.03, true, On_Timer)
	u = nil
	t = nil
end
--峨眉九阳功
function IsEMeiJiuYang()
	return GetSpellAbilityId() == 1093681974 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function EMeiJiuYang_Condition()
	return IsUnitAliveBJ(GetFilterUnit())
end
function EMeiJiuYang_Action2()
	local t = GetExpiredTimer()
	local p = GetHandleId(t)
	local j = LoadInteger(YDHT, p, 2)
	local u = LoadUnitHandle(YDHT, p, 0)
	local uc = LoadUnitHandle(YDHT, p, 1)
	local shanghai = 0.0
	local shxishu = 1.0
	local l__ut = nil
	local loc = GetUnitLoc(u)
	shanghai = ShangHaiGongShi(u, uc, 45.0, 45.0, shxishu, 1093681974)
	if uc ~= nil and IsUnitEnemy(uc, GetOwningPlayer(u)) == true and IsUnitAliveBJ(uc) then
		WuGongShangHai(u, uc, shanghai)
		CreateNUnitsAtLoc(1, 1747988547, GetOwningPlayer(u), loc, bj_UNIT_FACING)
		l__ut = bj_lastCreatedUnit
		ShowUnitHide(l__ut)
		UnitAddAbility(l__ut, 1094935410)
		IssueTargetOrderById(l__ut, 852189, uc)
		UnitApplyTimedLife(l__ut, 1112045413, 3.0)
	else
		SetUnitState(uc, UNIT_STATE_MANA, GetUnitState(uc, UNIT_STATE_MANA) + 20)
	end
	SaveInteger(YDHT, p, 2, j + 1)
	if j >= 10 then
		PauseTimer(t)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, p)
	end
	RemoveLocation(loc)
	loc = nil
	t = nil
	u = nil
	uc = nil
	l__ut = nil
end
function EMeiJiuYang_Action()
	local u = GetTriggerUnit()
	local uc = GetEnumUnit()
	local t = CreateTimer()
	local p = GetHandleId(t)
	SaveUnitHandle(YDHT, p, 0, u)
	SaveUnitHandle(YDHT, p, 1, uc)
	SaveInteger(YDHT, p, 2, 1)
	TimerStart(t, 1.0, true, EMeiJiuYang_Action2)
	u = nil
	t = nil
	uc = nil
end
function EMeiJiuYang()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local g = CreateGroup()
	local r = 500.0
	local x = GetUnitX(u)
	local y = GetUnitY(u)
	WuGongShengChong(u, 1093681974, 200.0)
	if GetUnitAbilityLevel(u, 1093682254) >= 1 then
		r = r + 300.0
	end
	if GetUnitAbilityLevel(u, 1093679155) >= 1 then
		YDWEGeneralBounsSystemUnitSetBonus(u, 1, 0, 20)
	end
	GroupEnumUnitsInRange(g, x, y, r, Condition(EMeiJiuYang_Condition))
	ForGroupBJ(g, EMeiJiuYang_Action)
	GroupClear(g)
	DestroyGroup(g)
	u = nil
	p = nil
	g = nil
end
----------峨眉结束--------//
function EMei_Trigger()

	local t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsSiXiang))
	TriggerAddAction(t, SiXiangZhang)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsFoGuang))
	TriggerAddAction(t, FoGuangZhang)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsEMeiJiuYang))
	TriggerAddAction(t, EMeiJiuYang)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsJinDing))
	TriggerAddAction(t, JinDingZhang)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsMieJue))
	TriggerAddAction(t, MieJueJian)

	t = nil
end

EMei_Trigger() --峨眉武功触发