----------血刀开始--------//
--血斩千刀
function IsXueZhan()
	return GetSpellAbilityId() == 1093681998
end
function XueZhan_Condition()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(udg_xuezhandanwei)) and IsUnitAliveBJ(GetFilterUnit())
end
function XueZhan_Action()
	local u = udg_xuezhandanwei
	local uc = GetEnumUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	local loc = GetUnitLoc(uc)
	if GetUnitAbilityLevel(u, 1093678669) >= 1 then
		shxishu = shxishu + 0.9
	end
	if UnitHaveItem(u, 1227897144) then
		shxishu = shxishu * 4
	end
	shanghai = ShangHaiGongShi(u, uc, 100.0, 200.0, shxishu, 1093681998)
	SetUnitX(u, CheckX(GetLocationX(loc)))
	SetUnitY(u, CheckY(GetLocationY(loc)))
	SetUnitFacing(u, GetUnitFacing(uc) + 180)
	WuGongShangHai(u, uc, shanghai)
	--call DestroyEffect( AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl",uc, "origin") )
	DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl", uc, "overhead"))
	SetUnitTimeScale(u, 20)
	SetUnitAnimation(u, "attack")
	RemoveLocation(loc)
	loc = nil
	u = nil
	uc = nil
end
function XueZhanDao_2()
	local t = GetExpiredTimer()
	local l__w = GetHandleId(t)
	local g = CreateGroup()
	local u = udg_xuezhandanwei
	local j = LoadInteger(YDHT, l__w, 1)
	local loc = LoadLocationHandle(YDHT, l__w, 2)
	local jmax = 10 + GetUnitAbilityLevel(u, 1093681998)
	local r = 0.3
	local range = 600.0
	if GetUnitAbilityLevel(u, 1093678668) >= 1 then
		range = range + 400.0
	end
	if GetUnitAbilityLevel(u, 1093678935) >= 1 then
		jmax = jmax + 5
	end
	GroupEnumUnitsInRangeOfLoc(g, loc, range, Condition(XueZhan_Condition))
	if j < jmax then
		if g ~= nil then
			ForGroupBJ(YDWEGetRandomSubGroupNull(1, g), XueZhan_Action)
			SaveInteger(YDHT, l__w, 1, j + 1)
		--call GroupClear(g)
		--call GroupEnumUnitsInRangeOfLoc(g,GetSpellTargetLoc(),range,Condition(function XueZhan_Condition))
		else
			PauseTimer(t)
			DestroyTimer(t)
			FlushChildHashtable(YDHT, l__w)
			RemoveLocation(loc)
			SetUnitTimeScale(u, 1)
			ResetUnitAnimation(u)
		end
	else
		PauseTimer(t)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, l__w)
		RemoveLocation(loc)
		SetUnitTimeScale(u, 1)
		ResetUnitAnimation(u)
	end
	GroupClear(g)
	DestroyGroup(g)
	u = nil
	g = nil
	t = nil
	loc = nil
end
function XueZhanDao()
	local u = GetTriggerUnit()
	local t = CreateTimer()
	local l__w = GetHandleId(t)
	local r = 0.3
	udg_xuezhandanwei = u
	if GetUnitAbilityLevel(u, 1093678932) >= 1 then
		r = r - 0.2
	end
	WuGongShengChong(u, 1093681998, 120.0)
	SaveInteger(YDHT, l__w, 1, 0)
	SaveLocationHandle(YDHT, l__w, 2, GetSpellTargetLoc())
	TimerStart(t, r, true, XueZhanDao_2)
	u = nil
	t = nil
end
--血刀刀法
function IsXueDao()
	return IsUnitEnemy(GetAttacker(), GetOwningPlayer(GetTriggerUnit())) and GetUnitAbilityLevel(GetTriggerUnit(), 1093681993) >= 1
end
function XueDaoZhuan()
	local t = GetExpiredTimer()
	local l__w = GetHandleId(t)
	local l__ut = LoadUnitHandle(YDHT, l__w, 0)
	local j = LoadInteger(YDHT, l__w, 2)
	local face = LoadReal(YDHT, l__w, 1)
	local u = LoadUnitHandle(YDHT, l__w, 3)
	if j < 36 then
		SetUnitFacing(l__ut, face + 30.0)
		SetUnitX(l__ut, CheckX(GetUnitX(u) + 200 * Sin(Deg2Rad(face))))
		SetUnitY(l__ut, CheckY(GetUnitY(u) + 200 * Cos(Deg2Rad(face))))
		SaveReal(YDHT, l__w, 1, face + 30.0)
		SaveInteger(YDHT, l__w, 2, j + 1)
	else
		KillUnit(l__ut)
		PauseTimer(t)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, l__w)
	end
	t = nil
	l__ut = nil
	u = nil
end
function XueDao_Condition()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())) and IsUnitAliveBJ(GetFilterUnit())
end
function XueDao_Action()
	local shxishu = 1.0
	local shanghai = 0.0
	local u = GetTriggerUnit()
	local uc = GetEnumUnit()
	if GetUnitAbilityLevel(u, 1093678669) >= 1 then
		shxishu = shxishu + 0.7
	end
	if GetUnitAbilityLevel(u, 1093678672) >= 1 then
		shxishu = shxishu + 0.8
	end
	if GetUnitAbilityLevel(u, 1093679158) >= 1 then
		shxishu = shxishu + 1.5
	end
	if UnitHaveItem(u, 1227897144) then
		shxishu = shxishu * 4
	end
	shanghai = ShangHaiGongShi(u, uc, 18, 27, shxishu, 1093681993)
	--call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,R2S(shanghai))
	WuGongShangHai(u, uc, shanghai)
	DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\HeroBloodElfBlood.mdl", uc, "overhead"))
	u = nil
	uc = nil
end
function XueDaoDao()
	local u = GetTriggerUnit()
	local uc = GetAttacker()
	local l__ut = nil
	local t = CreateTimer()
	local p = GetOwningPlayer(u)
	local g = CreateGroup()
	local l__w = GetHandleId(t)
	local loc = GetUnitLoc(u)
	local r = 200.0 + I2R(jingmai[1 + GetPlayerId(p)]) * 15
	if GetUnitAbilityLevel(u, 1093678929) >= 1 then
		r = r + 200.0
	end
	if GetRandomReal(1.0, 300.0) <= 15 + fuyuan[1 + GetPlayerId(p)] // 5 then
		CreateNUnitsAtLoc(1, 1747988549, p, loc, bj_UNIT_FACING)
		l__ut = bj_lastCreatedUnit
		SaveUnitHandle(YDHT, l__w, 0, l__ut)
		SaveReal(YDHT, l__w, 1, GetUnitFacing(l__ut))
		SaveInteger(YDHT, l__w, 2, 0)
		SaveUnitHandle(YDHT, l__w, 3, u)
		TimerStart(t, 0.05, true, XueDaoZhuan)
		GroupEnumUnitsInRangeOfLoc(g, loc, r, Condition(XueDao_Condition))
		ForGroupBJ(g, XueDao_Action)
		WuGongShengChong(u, 1093681993, 900.0)
	end
	RemoveLocation(loc)
	GroupClear(g)
	DestroyGroup(g)
	u = nil
	uc = nil
	l__ut = nil
	loc = nil
	p = nil
	t = nil
end
--血魔刀法
function IsXueMo()
	return IsCertainWuGong(GetAttacker(), GetTriggerUnit(), 1093681994)
end
function XueMo_Action()
	local t = GetExpiredTimer()
	local p = GetHandleId(t)
	local u = LoadUnitHandle(YDHT, p, 0)
	local uc = LoadUnitHandle(YDHT, p, 1)
	local j = LoadInteger(YDHT, p, 2)
	local lastX = LoadReal(YDHT, p, 3)
	local lastY = LoadReal(YDHT, p, 4)
	local nowX = GetUnitX(uc)
	local nowY = GetUnitY(uc)
	local dist = SquareRoot((lastX - nowX) * (lastX - nowX) + (lastY - nowY) * (lastY - nowY))
	local shxishu = 1.0
	local shanghai = 0.0
	local jmax = 20
	if GetUnitAbilityLevel(u, 1093678669) >= 1 then
		shxishu = shxishu + 0.7
	end
	if GetUnitAbilityLevel(u, 1093679158) >= 1 then
		shxishu = shxishu + 1.5
	end
	if UnitHaveItem(u, 1227897144) then
		shxishu = shxishu * 4
	end
	if GetUnitAbilityLevel(u, 1093681995) >= 1 then
		jmax = jmax + 20
	end
	if GetUnitAbilityLevel(u, 1093678935) >= 1 then
		jmax = jmax + 20
	end
	if j < jmax then
		if dist > 2.0 then
			shxishu = 1.0 + dist / 5.0
		end
		shanghai = ShangHaiGongShi(u, uc, 3.5, 3.5, shxishu, 1093681994)
		if uc ~= nil and IsUnitAliveBJ(uc) then
			WuGongShangHai(u, uc, shanghai)
			DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\HeroBloodElfBlood.mdl", uc, "overhead"))
		end
		SaveInteger(YDHT, p, 2, j + 1)
		SaveReal(YDHT, p, 3, nowX)
		SaveReal(YDHT, p, 4, nowY)
	else
		PauseTimer(t)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, p)
	end
	t = nil
	u = nil
	uc = nil
end
function XueMoDao()
	local u = GetAttacker()
	local uc = GetTriggerUnit()
	local t = CreateTimer()
	local p = GetHandleId(t)
	local r = 1000.0
	if GetUnitAbilityLevel(u, 1093678927) >= 1 then
		r = 400.0
	end
	SaveUnitHandle(YDHT, p, 0, u)
	SaveUnitHandle(YDHT, p, 1, uc)
	SaveInteger(YDHT, p, 2, 0)
	SaveReal(YDHT, p, 3, GetUnitX(uc))
	SaveReal(YDHT, p, 4, GetUnitY(uc))
	WuGongShengChong(u, 1093681994, r)
	TimerStart(t, 0.25, true, XueMo_Action)
	u = nil
	uc = nil
	t = nil
end
--佛灭万劫功
function IsFoMie()
	return IsCertainWuGong(GetAttacker(), GetTriggerUnit(), 1093681995)
end
function FoMie_Condition()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(udg_fomiedanwei)) and IsUnitAliveBJ(GetFilterUnit()) and IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false and GetUnitTypeId(GetFilterUnit()) ~= 1311780920 and GetUnitTypeId(GetFilterUnit()) ~= 1311780921
end
function FoMie_Action()
	local u = udg_fomiedanwei
	local uc = GetEnumUnit()
	local myX = GetUnitX(u)
	local myY = GetUnitY(u)
	local hisX = GetUnitX(uc)
	local hisY = GetUnitY(uc)
	local dist = 0.0
	local loc = nil
	local angle = 0.0
	local i = 0
	local perc = 0.3
	local shxishu = 1.0
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1093678669) >= 1 then
		shxishu = shxishu + 0.7
	end
	if GetUnitAbilityLevel(u, 1093679158) >= 1 then
		shxishu = shxishu + 1.5
	end
	if UnitHaveItem(u, 1227897144) then
		shxishu = shxishu * 4
	end
	if dist > 20.0 then
		shxishu = 1.0 + 2000.0 / dist
	end
	if GetUnitAbilityLevel(u, 1093682227) >= 1 then
		shanghai = ShangHaiGongShi(u, uc, 1.2, 1.2, shxishu, 1093681994)
		if uc ~= nil and IsUnitAliveBJ(uc) then
			WuGongShangHai(u, uc, shanghai)
			DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\HeroBloodElfBlood.mdl", uc, "overhead"))
		end
	end
	if GetUnitAbilityLevel(u, 1093678935) >= 1 then
		perc = perc + 0.2
	end
	hisX = GetUnitX(uc)
	hisY = GetUnitY(uc)
	angle = Atan2(hisY - myY, hisX - myX)
	dist = SquareRoot((hisX - myX) * (hisX - myX) + (hisY - myY) * (hisY - myY))
	loc = Location(hisX - perc * dist * Cos(angle), hisY - perc * dist * Sin(angle))
	SetUnitPositionLoc(uc, loc)
	if dist < 300 then
		WanBuff(u, uc, 11)
	end
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
end
function FoMie_setfalse()
	local t = GetExpiredTimer()
	udg_shifoufomie = false
	--call BJDebugMsg("等待之后")
	PauseTimer(t)
	DestroyTimer(t)
	t = nil
end
function FoMie()
	local t = GetExpiredTimer()
	local tm = CreateTimer()
	local p = GetHandleId(t)
	local uc = LoadUnitHandle(YDHT, p, 0)
	local j = LoadInteger(YDHT, p, 1)
	local jmax = 10
	local g = CreateGroup()
	local x = GetUnitX(udg_fomiedanwei)
	local y = GetUnitY(udg_fomiedanwei)
	local range = 800.0 + 100.0 * GetUnitAbilityLevel(udg_fomiedanwei, 1093681995)
	if GetUnitAbilityLevel(udg_fomiedanwei, 1093678672) >= 1 then
		range = range + 500.0
	end
	if GetUnitAbilityLevel(udg_fomiedanwei, 1093678926) >= 1 then
		jmax = jmax + 10
	end
	if j >= jmax then
		PauseTimer(t)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, p)
		--call BJDebugMsg("等待之前")
		--10秒钟CD
		TimerStart(tm, 10.0, false, FoMie_setfalse)
	else
		GroupEnumUnitsInRange(g, x, y, range, Condition(FoMie_Condition))
		ForGroupBJ(g, FoMie_Action)
		GroupClear(g)
		DestroyGroup(g)
		SaveInteger(YDHT, p, 1, j + 1)
	end
	uc = nil
	g = nil
	t = nil
	tm = nil
end
function FoMieWanJieGong()
	local t = CreateTimer()
	local p = GetHandleId(t)
	udg_fomiedanwei = GetAttacker()
	SaveUnitHandle(YDHT, p, 0, GetTriggerUnit())
	SaveInteger(YDHT, p, 1, 0)
	if udg_shifoufomie == false then
		udg_shifoufomie = true
		TimerStart(t, 0.3, true, FoMie)
		WuGongShengChong(udg_fomiedanwei, 1093681995, 160.0)
	end
	t = nil
end
--血刀经·一刀绝空
function IsXueDaoJing()
	return GetSpellAbilityId() == 1093682248
end
function XueDaoJing_Action()
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
	shanghai = ShangHaiGongShi(u, uc, 400, 300, shxishu, 1093682248)
	if GetUnitAbilityLevel(u, 1093678669) >= 1 then
		shxishu = shxishu + 0.9
	end
	if GetUnitAbilityLevel(u, 1093679158) >= 1 then
		shxishu = shxishu + 1.5
	end
	if YDWEUnitHasItemOfTypeBJNull(u, 1227897144) then
		shxishu = shxishu * 4
	end
	if i <= imax then
		hisX = GetUnitX(uc)
		hisY = GetUnitY(uc)
		angle = Atan2(hisY - myY, hisX - myX)
		dist = SquareRoot((hisX - myX) * (hisX - myX) + (hisY - myY) * (hisY - myY))
		loc2 = Location(myX + perc * i * dist * Cos(angle), myY + perc * i * dist * Sin(angle))
		SetUnitPositionLoc(l__ut, loc2)
		--call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,R2S(hisX)+","+R2S(hisY)+","+R2S(myX)+","+R2S(myY)+","+R2S(GetLocationX(loc2))+","+R2S(GetLocationY(loc2))+","+R2S(dist)+","+R2S(angle))
		SaveInteger(YDHT, p, 4, i + 1)
	else
		WuGongShangHai(u, uc, shanghai)
		DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl", uc, "overhead"))
		SetUnitTimeScale(l__ut, 1)
		ResetUnitAnimation(l__ut)
		PauseTimer(t)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, p)
		if GetUnitAbilityLevel(u, 1093678936) >= 1 then
			UnitApplyTimedLifeBJ(100, 1112820806, l__ut)
		--call UnitRemoveAbility(ut,'Aloc')
		else
			KillUnit(l__ut)
			RemoveUnit(l__ut)
		end
		RemoveLocation(loc)
		if GetUnitAbilityLevel(u, 1093678672) >= 1 then
			CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc2, bj_UNIT_FACING)
			ShowUnitHide(bj_lastCreatedUnit)
			UnitAddAbility(bj_lastCreatedUnit, 1093678903)
			IssueTargetOrderById(bj_lastCreatedUnit, 852111, uc)
			UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
			CreateTextTagLocBJ("内伤", loc2, 60.0, 12.0, 65.0, 55.0, 42.0, 0)
			Nw(3.0, bj_lastCreatedTextTag)
			SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, 90)
			SetUnitDizzy(uc, 5.0, "Abilities\\Spells\\Human\\Thunderclap\\ThunderclapTarget.mdl")
		end
	end
	RemoveLocation(loc2)
	t = nil
	u = nil
	uc = nil
	l__ut = nil
	loc = nil
	loc2 = nil
end
function XueDaoJing()
	local u = GetTriggerUnit()
	local uc = GetSpellTargetUnit()
	local loc = GetUnitLoc(u)
	local t = CreateTimer()
	local p = GetHandleId(t)
	local l__ut = nil
	WuGongShengChong(u, 1093682248, 120)
	--call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"为什么不显示呢")
	CreateNUnitsAtLoc(1, 1865429333, GetOwningPlayer(u), loc, GetUnitFacing(u))
	l__ut = bj_lastCreatedUnit
	ShowUnit(l__ut, true)
	SaveUnitHandle(YDHT, p, 0, u)
	SaveUnitHandle(YDHT, p, 1, uc)
	SaveUnitHandle(YDHT, p, 2, l__ut)
	SaveLocationHandle(YDHT, p, 3, loc)
	SaveInteger(YDHT, p, 4, 0)
	SetUnitTimeScale(l__ut, 1.0)
	SetUnitAnimation(l__ut, "attack slam")
	TimerStart(t, 0.03, true, XueDaoJing_Action)
	u = nil
	uc = nil
	l__ut = nil
	loc = nil
end
function XueDaoJing_Condition()
	return GetUnitTypeId(GetAttacker()) == 1865429333
end
function XueDaoJing_Action2()
	local p = GetOwningPlayer(GetAttacker())
	local i = 1 + GetPlayerId(p)
	local u = udg_hero[i]
	local uc = GetTriggerUnit()
	local shxishu = 1.0
	local shanghai = 0
	if YDWEUnitHasItemOfTypeBJNull(u, 1227897144) then
		shxishu = shxishu * 4
	end
	shanghai = ShangHaiGongShi(u, uc, 200, 1200, shxishu, 1093682248)
	WuGongShangHai(u, uc, shanghai)
	DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl", uc, "overhead"))
	p = nil
	u = nil
	uc = nil
end
function XueDao_Trigger()
	local t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsXueDaoJing))
	TriggerAddAction(t, XueDaoJing)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(XueDaoJing_Condition))
	TriggerAddAction(t, XueDaoJing_Action2)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsXueZhan))
	TriggerAddAction(t, XueZhanDao)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsXueDao))
	TriggerAddAction(t, XueDaoDao)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsXueMo))
	TriggerAddAction(t, XueMoDao)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsFoMie))
	TriggerAddAction(t, FoMieWanJieGong)
	t = nil
end
----------血刀结束--------//