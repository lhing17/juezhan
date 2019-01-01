----------丐帮开始--------//
--太祖拳法
function IsTaiZu()
	return IsCertainWuGong(GetAttacker(), GetTriggerUnit(), 1093681977)
end
function TaiZu_Condition()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetAttacker())) and IsUnitAliveBJ(GetFilterUnit())
end
function TaiZu_Action()
	local uc = GetEnumUnit()
	local u = GetAttacker()
	local shxishu = 1.0
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1093682254) >= 1 then
		shxishu = shxishu + 0.7
	end
	if GetUnitAbilityLevel(u, 1093678931) >= 1 then
		shxishu = shxishu + 0.8
	end
	if UnitHaveItem(u, 1227897143) then
		shxishu = shxishu * 4
	end
	shanghai = ShangHaiGongShi(u, uc, 15.0, 21.0, shxishu, 1093681977)
	AddSpecialEffectTargetUnitBJ("overhead", uc, "Abilities\\Spells\\Demon\\RainOfFire\\RainOfFireTarget.mdl")
	DestroyEffect(GetLastCreatedEffectBJ())
	--call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,R2S(shanghai)+", "+I2S(1+GetPlayerId(GetOwningPlayer(u))))
	WuGongShangHai(u, uc, shanghai)
	if GetUnitAbilityLevel(u, 1093678933) >= 1 then
		YDWEPolledWaitNull(0.5)
		AddSpecialEffectTargetUnitBJ("overhead", uc, "Abilities\\Spells\\Demon\\RainOfFire\\RainOfFireTarget.mdl")
		DestroyEffect(GetLastCreatedEffectBJ())
		WuGongShangHai(u, uc, shanghai)
	end
	u = nil
	uc = nil
end
function TaiZuQuan()
	--local real angle=GetUnitFacing(GetAttacker())
	local g = CreateGroup()
	local r = 300.0
	r = 500.0 + 40.0 * GetUnitAbilityLevel(GetAttacker(), 1093681977)
	if GetUnitAbilityLevel(GetAttacker(), 1093681985) >= 1 then
		r = r * 1.6
	end
	--call knock_back(GetAttacker() , angle, 50.0 , .3 , 0.03 , path,shanghai)
	WuGongShengChong(GetAttacker(), 1093681977, 900.0)
	GroupEnumUnitsInRange(g, GetUnitX(GetAttacker()), GetUnitY(GetAttacker()), r, Condition(TaiZu_Condition))
	ForGroupBJ(g, TaiZu_Action)
	GroupClear(g)
	DestroyGroup(g)
	g = nil
end
--丐帮心法
function IsGaiBang()
	return GetSpellAbilityId() == 1093682249
end
function FanWei_Condition()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(udg_fanweidanwei)) and IsUnitAliveBJ(GetFilterUnit())
end
function FanWei_Action()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(udg_fanweidanwei))]
	local shanghai = LoadReal(YDHT, StringHash("范围"), StringHash("伤害"))
	WuGongShangHai(u, GetEnumUnit(), shanghai)
	u = nil
end
function FanWeiShangHai(u, range, shanghai)
	local g = CreateGroup()
	SaveReal(YDHT, StringHash("范围"), StringHash("伤害"), shanghai)
	udg_fanweidanwei = u
	GroupEnumUnitsInRange(g, GetUnitX(u), GetUnitY(u), range, Condition(FanWei_Condition))
	ForGroupBJ(g, FanWei_Action)
	DestroyGroup(g)
	g = nil
end
function QuWuGongJi_Action()
	local t = GetExpiredTimer()
	local l__w = GetHandleId(t)
	local u = LoadUnitHandle(YDHT, l__w, 0)
	local angle = LoadReal(YDHT, l__w, 1)
	local l__ut = LoadUnitHandle(YDHT, l__w, 3)
	local j = LoadInteger(YDHT, l__w, 4)
	local id = LoadInteger(YDHT, l__w, 5)
	local jmax = 30
	local shxishu = RMinBJ(I2R(GetUnitLevel(u)), 10.0)
	local shanghai = 0.0
	if UnitHaveItem(u, 1227897143) then
		shxishu = shxishu * 4
	end
	if id == 1852075879 then
		shanghai = ShangHaiGongShi(u, u, 8, 2.6, shxishu, 1093682249)
	elseif id == 1970040675 then
		shanghai = ShangHaiGongShi(u, u, 3.2, 13.4, shxishu, 1093682249)
	else
		shanghai = ShangHaiGongShi(u, u, 6.6, 3.2, shxishu, 1093682249)
	end
	if j < jmax then
		SetUnitX(l__ut, check_x(GetLocationX(LoadLocationHandle(YDHT, l__w, 2)) + Cos(angle) * 32 * j))
		SetUnitY(l__ut, check_y(GetLocationY(LoadLocationHandle(YDHT, l__w, 2)) + Sin(angle) * 32 * j))
		--call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,R2S(CheckX(GetLocationX(loc)+Cos(angle)*10*j))+","+R2S(CheckY(GetLocationY(loc)+Sin(angle)*10*j)))
		FanWeiShangHai(l__ut, 300, shanghai)
		SaveInteger(YDHT, l__w, 4, j + 1)
	else
		KillUnit(l__ut)
		RemoveUnit(l__ut)
		PauseTimer(t)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, l__w)
	end
	t = nil
	u = nil
	l__ut = nil
end
function QuWuGongJi(u, id)
	local facing = GetUnitFacing(u)
	local angle = facing * bj_DEGTORAD
	local loc = GetUnitLoc(u)
	local t = CreateTimer()
	local l__w = GetHandleId(t)
	local l__ut = nil
	CreateNUnitsAtLoc(1, id, GetOwningPlayer(u), loc, facing)
	l__ut = bj_lastCreatedUnit
	SaveUnitHandle(YDHT, l__w, 0, u)
	SaveReal(YDHT, l__w, 1, angle)
	SaveLocationHandle(YDHT, l__w, 2, loc)
	SaveUnitHandle(YDHT, l__w, 3, l__ut)
	SaveInteger(YDHT, l__w, 4, 0)
	SaveInteger(YDHT, l__w, 5, id)
	TimerStart(t, 0.03, true, QuWuGongJi_Action)
	t = nil
	l__ut = nil
	loc = nil
end
function GaiBang_Action()
	local t = GetExpiredTimer()
	local l__w = GetHandleId(t)
	local u = LoadUnitHandle(YDHT, l__w, 0)
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local j = LoadInteger(YDHT, l__w, 1)
	local jmax = 100
	if j < jmax then
		if IsUnitType(u, UNIT_TYPE_HERO) ~= nil == true then -- INLINED!!
			ModifyHeroStat(1, u, 0, GetUnitAbilityLevel(u, 1093682249))
		end
		SaveInteger(YDHT, l__w, 1, j + 1)
	else
		ModifyHeroStat(1, u, 1, 100 * GetUnitAbilityLevel(u, 1093682249))
		PauseTimer(t)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, l__w)
	end
	t = nil
	u = nil
	p = nil
end
function GaiBangXinFa()
	local u = GetTriggerUnit()
	local t = CreateTimer()
	local loc = GetUnitLoc(u)
	SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	SaveInteger(YDHT, GetHandleId(t), 1, 0)
	CreateNUnitsAtLoc(1, 1697656920, GetOwningPlayer(u), loc, bj_UNIT_FACING)
	UnitAddAbility(bj_lastCreatedUnit, 1098016106)
	IssueTargetOrder(bj_lastCreatedUnit, "rejuvination", u)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 5.0)
	ShowUnitHide(bj_lastCreatedUnit)
	WuGongShengChong(u, 1093682249, 300.0)
	--打狗·驱狗
	if GetUnitAbilityLevel(u, 1093678924) >= 1 then
		QuWuGongJi(u, 1852075879)
	end
	--降龙·驱龙
	if GetUnitAbilityLevel(u, 1093678917) >= 1 then
		QuWuGongJi(u, 1970040675)
	end
	TimerStart(t, 0.1, true, GaiBang_Action)
	RemoveLocation(loc)
	loc = nil
	u = nil
	t = nil
end
--铁布衫
function IsTieBuShan()
	return GetUnitAbilityLevel(GetTriggerUnit(), 1093681985) >= 1
end
function TieBuShan_Action()
	local tm = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(tm), 0)
	local uc = LoadUnitHandle(YDHT, GetHandleId(tm), 3)
	local cengxieliang = LoadInteger(YDHT, GetHandleId(tm), 1)
	local cengjialiang = LoadInteger(YDHT, GetHandleId(tm), 2)
	if udg_tiebushancengshu >= 1 then
		udg_tiebushancengshu = udg_tiebushancengshu - 1
	end
	FlushChildHashtable(YDHT, GetHandleId(tm))
	PauseTimer(tm)
	DestroyTimer(tm)
	tm = nil
	uc = nil
	u = nil
end
function TieBuShan()
	local cengshu = 15
	local u = GetTriggerUnit()
	local uc = GetAttacker()
	local cengxieliang = 6000 + 1000 * GetUnitAbilityLevel(u, 1093681985)
	local cengjialiang = 100 + 30 * GetUnitAbilityLevel(u, 1093681985)
	local tm = CreateTimer()
	local time = 20.0
	local i = 1
	if tiebucishu[1 + GetPlayerId(GetOwningPlayer(u))] >= 500 then
		tiebucishu[1 + GetPlayerId(GetOwningPlayer(u))] = tiebucishu[1 + GetPlayerId(GetOwningPlayer(u))] - 500
		unitadditembyidswapped(1227895892, u)
	else
		tiebucishu[1 + GetPlayerId(GetOwningPlayer(u))] = tiebucishu[1 + GetPlayerId(GetOwningPlayer(u))] + 1
	end
	--set i=1
	--   loop
	--   exitwhen i>6
	--   if GetItemType(UnitItemInSlotBJ(GetTriggerUnit(),i))== ITEM_TYPE_PURCHASABLE then
	--    set cengxieliang=cengxieliang/2
	--    set cengjialiang=cengjialiang/2
	--   endif
	--   set i=i+1
	--   endloop
	--   if GetUnitAbilityLevel(u,'A0DN')>=1 then
	--    set cengxieliang=cengxieliang-600
	--   endif
	--   if GetUnitAbilityLevel(u,'A070')>=1 then
	--    set cengjialiang=cengjialiang-20
	--   endif
	if danpo[1 + GetPlayerId(GetOwningPlayer(u))] >= 20 then
		time = time - 10.0
	end
	if GetUnitAbilityLevel(u, 1093679155) >= 1 then
		cengshu = cengshu + 20
	end
	cengshu = cengshu - 1 + GetUnitAbilityLevel(u, 1093681985)
	if udg_tiebushancengshu <= cengshu - 1 and GetRandomReal(1.0, 200) < 20 then
		WuGongShengChong(u, 1093681985, 2000.0)
		WuGongShangHai(u, uc, ShangHaiGongShi(u, uc, 40.0, 80.0, udg_tiebushancengshu, 1093681985))
		SetUnitDizzy(uc, 4.0 + 1.5 * GetUnitAbilityLevel(u, 1093681985), "Abilities\\Spells\\Human\\Thunderclap\\ThunderclapTarget.mdl")
		udg_tiebushancengshu = udg_tiebushancengshu + 1
		SaveUnitHandle(YDHT, GetHandleId(tm), 0, u)
		SaveUnitHandle(YDHT, GetHandleId(tm), 3, uc)
		SaveInteger(YDHT, GetHandleId(tm), 1, cengxieliang)
		SaveInteger(YDHT, GetHandleId(tm), 2, cengjialiang)
		TimerStart(tm, time, false, TieBuShan_Action)
	end
	u = nil
	uc = nil
	tm = nil
end
--夜叉棍法
function IsYeCha()
	return GetSpellAbilityId() == 1093681986
end
function YeChaGun_Condition()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(udg_yechadanwei)) and IsUnitAliveBJ(GetFilterUnit())
end
function YeChaGun_SH()
	local shanghai = 0.0
	local shxishu = 1.0
	if GetUnitAbilityLevel(udg_yechadanwei, 1093678928) >= 1 then
		shxishu = shxishu + 0.7
	end
	if GetUnitAbilityLevel(udg_yechadanwei, 1093678932) >= 1 then
		shxishu = shxishu + 0.8
	end
	if GetUnitAbilityLevel(udg_yechadanwei, 1093679152) >= 1 then
		shxishu = shxishu + 1.5
	end
	if UnitHaveItem(udg_yechadanwei, 1227897143) then
		shxishu = shxishu * 4
	end
	shanghai = ShangHaiGongShi(udg_yechadanwei, GetEnumUnit(), 8.4, 2.3, shxishu, 1093681986)
	WuGongShangHai(udg_yechadanwei, GetEnumUnit(), shanghai)
	if GetUnitAbilityLevel(udg_yechadanwei, 1093682249) >= 1 then
		SetUnitDizzy(GetEnumUnit(), 2.0, "Abilities\\Spells\\Human\\Thunderclap\\ThunderclapTarget.mdl")
	end
	DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl", GetEnumUnit(), "overhead"))
end
function YeChaGun_Action()
	local t = GetExpiredTimer()
	local p = GetHandleId(t)
	local u = LoadUnitHandle(YDHT, p, 0)
	local l__ut = LoadUnitHandle(YDHT, p, 1)
	local Axx = LoadReal(YDHT, p, 2)
	local Ayy = LoadReal(YDHT, p, 3)
	local Cxx = LoadReal(YDHT, p, 4)
	local Cyy = LoadReal(YDHT, p, 5)
	local Bxx = LoadReal(YDHT, p, 6)
	local Byy = LoadReal(YDHT, p, 7)
	local a = LoadReal(YDHT, p, 8)
	local b = 1 - a
	local firstpass = LoadBoolean(YDHT, p, 9)
	local loc = GetUnitLoc(l__ut)
	local g = CreateGroup()
	SetUnitX(l__ut, check_x(Axx * a * a + Bxx * 2 * a * b + Cxx * b * b))
	SetUnitY(l__ut, check_y(Ayy * a * a + Byy * 2 * a * b + Cyy * b * b))
	udg_yechadanwei = u
	GroupEnumUnitsInRangeOfLoc(g, loc, 150, Condition(YeChaGun_Condition))
	ForGroupBJ(g, YeChaGun_SH)
	GroupClear(g)
	DestroyGroup(g)
	if firstpass then
		a = a - 0.02
	else
		a = a + 0.02
	end
	SaveReal(YDHT, p, 8, a)
	SaveReal(YDHT, p, 2, GetUnitX(u))
	SaveReal(YDHT, p, 3, GetUnitY(u))
	if a < 0 and firstpass then
		SetUnitFacing(l__ut, GetUnitFacing(l__ut) + 180)
		SaveBoolean(YDHT, p, 9, false)
		SaveReal(YDHT, p, 6, Axx + 300 * Cos(Atan2(Cyy - Ayy, Cxx - Axx)) - 45)
		SaveReal(YDHT, p, 7, Ayy + 300 * Sin(Atan2(Cyy - Ayy, Cxx - Axx)) - 45)
	end
	if a > 1 and firstpass == false then
		KillUnit(l__ut)
		FlushChildHashtable(YDHT, p)
		PauseTimer(t)
		DestroyTimer(t)
	end
	RemoveLocation(loc)
	loc = nil
	g = nil
	t = nil
	u = nil
	l__ut = nil
end
function YeChaGun()
	local t = CreateTimer()
	local p = GetHandleId(t)
	local u = GetTriggerUnit()
	local Axx = GetUnitX(u)
	local Ayy = GetUnitY(u)
	local Cxx = GetSpellTargetX()
	local Cyy = GetSpellTargetY()
	local i = 0
	local angle = 0.0
	local a = 1.0
	SaveUnitHandle(YDHT, p, 0, u)
	SaveUnitHandle(YDHT, p, 1, CreateUnit(GetOwningPlayer(u), 1747988548, Axx, Ayy, GetUnitFacing(u)))
	SaveReal(YDHT, p, 2, Axx)
	SaveReal(YDHT, p, 3, Ayy)
	SaveReal(YDHT, p, 4, Cxx)
	SaveReal(YDHT, p, 5, Cyy)
	SaveReal(YDHT, p, 6, Axx + 300 * Cos(Atan2(Cyy - Ayy, Cxx - Axx)) + 45)
	SaveReal(YDHT, p, 7, Ayy + 300 * Sin(Atan2(Cyy - Ayy, Cxx - Axx)) + 45)
	SaveReal(YDHT, p, 8, a)
	SaveBoolean(YDHT, p, 9, true)
	WuGongShengChong(u, 1093681986, 240.0)
	TimerStart(t, 0.03, true, YeChaGun_Action)
	u = nil
	t = nil
end
--疯魔杖法
function IsFengMoShe()
	return GetUnitTypeId(GetAttacker()) == 1869836337 or GetUnitTypeId(GetAttacker()) == 1869836338 or GetUnitTypeId(GetAttacker()) == 1869836339
end
function FengMoShe()
	local p = GetOwningPlayer(GetAttacker())
	local i = 1 + GetPlayerId(p)
	local u = udg_hero[i]
	local uc = GetTriggerUnit()
	local shanghai = 0.0
	local shxishu = 1.0
	local Maxsh = 0.0
	local Minsh = 0.0
	if GetUnitTypeId(GetAttacker()) == 1869836337 then
		shxishu = 1.0
	elseif GetUnitTypeId(GetAttacker()) == 1869836338 then
		shxishu = 3.0
	elseif GetUnitTypeId(GetAttacker()) == 1869836339 then
		shxishu = 13.0
	end
	if UnitHaveItem(u, 1227897143) then
		shxishu = shxishu * 4
	end
	shanghai = ShangHaiGongShi(u, uc, 24.0, 45.0, shxishu, 1093681976)
	WuGongShangHai(u, uc, shanghai)
	uc = nil
	u = nil
	p = nil
end
function IsFengMo()
	return IsCertainWuGong(GetAttacker(), GetTriggerUnit(), 1093681976)
end
function FengMoGun()
	local u = GetAttacker()
	local uc = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local id = 1869836337
	local loc1 = GetUnitLoc(u)
	local loc2 = GetUnitLoc(uc)
	if GetUnitAbilityLevel(u, 1093679161) >= 1 then
		if GetUnitAbilityLevel(u, 1093682232) >= 1 then
			id = 1869836339
		else
			id = 1869836338
		end
	end
	CreateNUnitsAtLocFacingLocBJ(1, id, p, loc1, loc2)
	UnitApplyTimedLifeBJ(3, 1112820806, bj_lastCreatedUnit)
	if GetUnitAbilityLevel(u, 1093678933) >= 1 then
		CreateNUnitsAtLocFacingLocBJ(1, id, p, loc1, loc2)
		UnitApplyTimedLifeBJ(3, 1112820806, bj_lastCreatedUnit)
	end
	WuGongShengChong(u, 1093681976, 900.0)
	RemoveLocation(loc1)
	RemoveLocation(loc2)
	loc1 = nil
	loc2 = nil
	p = nil
	u = nil
	uc = nil
end
----------丐帮结束--------//
function GaiBang_Trigger()
	local t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsTaiZu))
	TriggerAddAction(t, TaiZuQuan)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsTieBuShan))
	TriggerAddAction(t, TieBuShan)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsFengMo))
	TriggerAddAction(t, FengMoGun)

	Bk = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Bk, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(Bk, Condition(IsFengMoShe))
	TriggerAddAction(Bk, FengMoShe)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsGaiBang))
	TriggerAddAction(t, GaiBangXinFa)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsYeCha))
	TriggerAddAction(t, YeChaGun)
end

GaiBang_Trigger() --丐帮武功触发