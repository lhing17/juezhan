-------------江湖内功和九阴武功开始-----------
--使用罗汉伏魔功
function uI()
	return GetKillingUnit() ~= nil and GetUnitAbilityLevel(GetKillingUnit(), 1093678927) > 0
end
function vI()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit())))
	G9[LoadInteger(YDHT, id * cx, -1587459251)] = G9[LoadInteger(YDHT, id * cx, -1587459251)] + 1
	if G9[LoadInteger(YDHT, id * cx, -1587459251)] >= 100 then
		G9[LoadInteger(YDHT, id * cx, -1587459251)] = 0
		YDWEGeneralBounsSystemUnitSetBonus(GetKillingUnit(), 2, 0, 10)
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "防御+10")
	end
	FlushChildHashtable(YDHT, id * cx)
end
--使用化功大法
function xI()
	return GetSpellAbilityId() == 1093678928 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function yI()
	local id = GetHandleId(GetTriggeringTrigger())
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227))) and IsUnitAliveBJ(GetFilterUnit())
end
function zI()
	local id = GetHandleId(GetTriggeringTrigger())
	SaveLocationHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -860413970, GetUnitLoc(GetEnumUnit()))
	AddLightningLoc("DRAM", LoadLocationHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -1925439584), LoadLocationHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -860413970))
	Lw(2, bj_lastCreatedLightning)
	SaveInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), 1163137285, LoadInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), 1163137285) + 1)
end
function AI()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	local i = GetUnitAbilityLevel(GetTriggerUnit(), 1093678928)
	if GetUnitAbilityLevel(GetTriggerUnit(), 1093681745) >= 1 then
		if UnitHaveItem(GetTriggerUnit(), 1227899213) then
			WuGongShengChong(GetTriggerUnit(), 1093678928, 150)
		else
			WuGongShengChong(GetTriggerUnit(), 1093678928, 300)
		end
	end
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, 1505665227, GetTriggerUnit())
	SaveLocationHandle(YDHT, id * cx, -1925439584, GetUnitLoc(LoadUnitHandle(YDHT, id * cx, 1505665227)))
	SaveInteger(YDHT, id * cx, 1163137285, 0)
	ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(1000.0, LoadLocationHandle(YDHT, id * cx, -1925439584), Condition(yI)), zI)
	ModifyHeroStat(1, LoadUnitHandle(YDHT, id * cx, 1505665227), 0, i * 50 * LoadInteger(YDHT, id * cx, 1163137285))
	DisplayTimedTextToPlayer(GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)), 0, 0, 5.0, "内力提升 ： " .. (I2S(i * 50 * LoadInteger(YDHT, id * cx, 1163137285)) or ""))
	YDWEWaitForLocalVariable(20.0)
	ModifyHeroStat(1, LoadUnitHandle(YDHT, id * cx, 1505665227), 1, i * 50 * LoadInteger(YDHT, id * cx, 1163137285))
	YDWELocalVariableEnd()
	FlushChildHashtable(YDHT, id * cx)
end
--使用吸星大法
function BI()
	return GetKillingUnit() ~= nil and GetUnitAbilityLevel(GetKillingUnit(), 1093678930) > 0
end
function bI()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit())))
	H9[LoadInteger(YDHT, id * cx, -1587459251)] = H9[LoadInteger(YDHT, id * cx, -1587459251)] + 1
	if H9[LoadInteger(YDHT, id * cx, -1587459251)] >= 200 then
		H9[LoadInteger(YDHT, id * cx, -1587459251)] = 0
		ModifyHeroStat(1, GetKillingUnit(), 0, 10)
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "内力+10")
	end
	FlushChildHashtable(YDHT, id * cx)
end
--==================九阴真经系统开始==================//
--摧坚神抓和摧心掌
function JiuYin_Condition()
	return (GetUnitAbilityLevel(GetAttacker(), 1093682225) >= 1 or GetUnitAbilityLevel(GetAttacker(), 1093682227) >= 1) and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function CuiJian_Condition()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetAttacker())) and IsUnitAliveBJ(GetFilterUnit())
end
function CuiJian_Action()
	local u = GetAttacker()
	local uc = GetEnumUnit()
	local loc = GetUnitLoc(uc)
	local shxishu = 1.0
	local shanghai = 0.0
	DestroyEffect(AddSpecialEffectLocBJ(loc, "Abilities\\Spells\\Items\\AIil\\AIilTarget.mdl"))
	if GetUnitAbilityLevel(GetAttacker(), 1093678931) >= 1 then
		shxishu = shxishu + 1.0
	end
	if udg_whichzhangmen[1 + GetPlayerId(GetOwningPlayer(u))] == 11 then
		shxishu = shxishu * 20
	end
	shanghai = ShangHaiGongShi(u, uc, 30.0, 30.0, shxishu, 1093682225)
	WuGongShangHai(u, uc, shanghai)
	if GetUnitAbilityLevel(u, 1093678926) ~= 0 and GetRandomReal(0.0, 100.0) <= 10.0 and UnitHasBuffBJ(uc, 1110454328) == false then
		WanBuff(u, uc, 11)
	end
	RemoveLocation(loc)
	loc = nil
	u = nil
	uc = nil
end
function JiuYin_Action()
	local u = GetAttacker()
	local uc = GetTriggerUnit()
	local loc = GetUnitLoc(u)
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local shanghai = 0.0
	local shxishu = 1.0
	--摧坚神抓
	if GetUnitAbilityLevel(GetAttacker(), 1093682225) >= 1 then
		if GetRandomReal(0.0, 100.0) <= 15.0 + I2R(fuyuan[i]) / 5.0 then
			ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(500.0, loc, Condition(CuiJian_Condition)), CuiJian_Action)
			WuGongShengChong(GetAttacker(), 1093682225, 700.0)
		end
	end
	--摧心掌
	if GetUnitAbilityLevel(GetAttacker(), 1093682227) >= 1 then
		if GetRandomReal(0.0, 100.0) <= 15.0 + I2R(fuyuan[i]) / 5.0 then
			if GetUnitAbilityLevel(u, 1093678931) >= 1 then
				shxishu = shxishu + 1.0
			end
			if udg_whichzhangmen[1 + GetPlayerId(GetOwningPlayer(u))] == 11 then
				shxishu = shxishu * 20
			end
			if GetUnitAbilityLevel(u, 1093682226) ~= 0 and GetRandomInt(1, 10) < 5 and UnitHasBuffBJ(uc, 1113813609) == false then
				WanBuff(u, uc, 4)
			end
			if GetUnitAbilityLevel(u, 1093682230) ~= 0 and GetRandomInt(1, 10) < 5 and UnitHasBuffBJ(uc, 1110454324) == false then
				WanBuff(u, uc, 7)
			end
			shanghai = ShangHaiGongShi(u, uc, 80, 64, shxishu, 1093682227)
			AddSpecialEffectTargetUnitBJ("overhead", GetTriggerUnit(), "Abilities\\Spells\\Items\\OrbDarkness\\OrbDarkness.mdl")
			DestroyEffect(GetLastCreatedEffectBJ())
			WuGongShangHai(u, uc, shanghai)
			WuGongShengChong(u, 1093682227, 1050.0)
		end
	end
	RemoveLocation(loc)
	u = nil
	uc = nil
	loc = nil
	p = nil
end
function cI()
	return GetUnitAbilityLevel(GetKillingUnit(), 1093678931) > 0 or GetUnitAbilityLevel(GetKillingUnit(), 1093682226) > 0 or GetUnitAbilityLevel(GetKillingUnit(), 1093682230) > 0
end
--九阴真经杀100怪
function DI()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	local i = 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit())))
	I9[LoadInteger(YDHT, id * cx, -1587459251)] = I9[LoadInteger(YDHT, id * cx, -1587459251)] + 1
	if I9[LoadInteger(YDHT, id * cx, -1587459251)] >= 100 then
		I9[LoadInteger(YDHT, id * cx, -1587459251)] = 0
		if GetUnitAbilityLevel(GetKillingUnit(), 1093678931) > 0 then
			ModifyHeroStat(0, GetKillingUnit(), 0, 10)
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "招式伤害+10")
		end
		if GetUnitAbilityLevel(GetKillingUnit(), 1093682226) > 0 then
			if GetRandomInt(1, 2) == 1 then
				ModifyHeroStat(0, GetKillingUnit(), 1, 10)
				ModifyHeroStat(1, GetKillingUnit(), 0, 30)
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "招式伤害-10")
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "内力+30")
			else
				ModifyHeroStat(2, GetKillingUnit(), 0, 10)
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "真实伤害+10")
			end
		end
		if GetUnitAbilityLevel(GetKillingUnit(), 1093682230) > 0 then
			if GetRandomInt(1, 6) == 1 then
				wuxing[i] = wuxing[i] + 1
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "悟性+1")
			elseif GetRandomInt(1, 5) == 1 then
				gengu[i] = gengu[i] + 1
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "根骨+1")
			elseif GetRandomInt(1, 4) == 1 then
				danpo[i] = danpo[i] + 1
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "胆魄+1")
			elseif GetRandomInt(1, 3) == 1 then
				yishu[i] = yishu[i] + 1
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "医术+1")
			elseif GetRandomInt(1, 2) == 1 then
				jingmai[i] = jingmai[i] + 1
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "经脉+1")
			else
				fuyuan[i] = fuyuan[i] + 1
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "福缘+1")
			end
			if GetRandomInt(1, 5) <= 3 then
				if GetRandomInt(1, 6) == 1 then
					wuxing[i] = wuxing[i] - 1
					DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "悟性-1")
				elseif GetRandomInt(1, 5) == 1 then
					gengu[i] = gengu[i] - 1
					DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "根骨-1")
				elseif GetRandomInt(1, 4) == 1 then
					danpo[i] = danpo[i] - 1
					DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "胆魄-1")
				elseif GetRandomInt(1, 3) == 1 then
					yishu[i] = yishu[i] - 1
					DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "医术-1")
				elseif GetRandomInt(1, 2) == 1 then
					jingmai[i] = jingmai[i] - 1
					DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "经脉-1")
				else
					fuyuan[i] = fuyuan[i] - 1
					DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "福缘-1")
				end
			end
		end
	end
	FlushChildHashtable(YDHT, id * cx)
end
--==================九阴真经系统结束==================//
--双手互搏
function FI()
	return GetSpellAbilityId() == 1093678933 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function GI()
	UnitResetCooldown(GetTriggerUnit())
end
--使用九阳神功
function II()
	return GetKillingUnit() ~= nil and GetUnitAbilityLevel(GetKillingUnit(), 1093682254) > 0
end
function lI()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit())))
	l9[LoadInteger(YDHT, id * cx, -1587459251)] = l9[LoadInteger(YDHT, id * cx, -1587459251)] + 1
	if l9[LoadInteger(YDHT, id * cx, -1587459251)] >= 100 then
		l9[LoadInteger(YDHT, id * cx, -1587459251)] = 0
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "生命值提高2000")
		unitadditembyidswapped(1227895892, GetKillingUnit())
	end
	FlushChildHashtable(YDHT, id * cx)
end
-------------江湖内功和九阴武功结束-----------
--模拟九阳神功
function IsJiuYang()
	return GetSpellAbilityId() == 1093682254 or GetSpellAbilityId() == 1093677378 or GetSpellAbilityId() == 1093677379 or GetSpellAbilityId() == 1093677380
end
function JiuYang_End()
	local t = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	UnitRemoveAbility(u, 1093682252)
	UnitRemoveAbility(u, 1093682253)
	UnitRemoveAbility(u, 1093681999)
	UnitRemoveAbility(u, 1093682001)
	FlushChildHashtable(YDHT, GetHandleId(t))
	PauseTimer(t)
	DestroyTimer(t)
	t = nil
	u = nil
end
function JiuYang()
	local u = GetTriggerUnit()
	local t = CreateTimer()
	local r = 0.0
	SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	UnitAddAbility(u, 1093682252)
	UnitAddAbility(u, 1093682253)
	UnitAddAbility(u, 1093681999)
	UnitAddAbilityBJ(1093682001, u)
	SetPlayerAbilityAvailableBJ(false, 1093682001, GetOwningPlayer(u))
	if GetSpellAbilityId() == 1093682254 then
		r = 30
	elseif GetSpellAbilityId() == 1093677378 then
		r = 12
	elseif GetSpellAbilityId() == 1093677379 then
		r = 20
	elseif GetSpellAbilityId() == 1093677380 then
		r = 30
	end
	TimerStart(t, r, false, JiuYang_End)
	t = nil
	u = nil
end
--医疗篇
function IsYiLiao()
	return GetSpellAbilityId() == 1093682228
end
function YiLiaoPian()
	local u = GetTriggerUnit()
	local uc = GetSpellTargetUnit()
	SetWidgetLife(uc, GetWidgetLife(u) + 20000)
	if udg_whichzhangmen[1 + GetPlayerId(GetOwningPlayer(u))] == 11 then
		SetWidgetLife(uc, GetWidgetLife(u) + 380000)
	end
end
--使用洗髓经
function QI()
	return GetSpellAbilityId() == 1093679152 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function RI()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 1585647951, GetUnitLoc(GetTriggerUnit()))
	CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, 1093679153)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 26.0)
	IssueImmediateOrderById(bj_lastCreatedUnit, 852184)
	FlushChildHashtable(YDHT, id * cx)
end
function JiangHuNeiGong_Trigger()
	local t = nil
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(JiuYin_Condition))
	TriggerAddAction(t, JiuYin_Action)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsJiuYang))
	TriggerAddAction(t, JiuYang)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsYiLiao))
	TriggerAddAction(t, YiLiaoPian)
	bn = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(bn, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(bn, Condition(uI))
	TriggerAddAction(bn, vI)
	Cn = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Cn, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(Cn, Condition(xI))
	TriggerAddAction(Cn, AI)
	cn = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(cn, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(cn, Condition(BI))
	TriggerAddAction(cn, bI)
	Dn = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Dn, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Dn, Condition(cI))
	TriggerAddAction(Dn, DI)
	En = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(En, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(En, Condition(FI))
	TriggerAddAction(En, GI)
	Fn = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Fn, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Fn, Condition(II))
	TriggerAddAction(Fn, lI)
	In = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(In, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(In, Condition(QI))
	TriggerAddAction(In, RI)
	-- 特殊事件——辽国进攻
	t = CreateTrigger()
	TriggerRegisterTimerEventSingle(t, 2100.0)
	TriggerAddAction(t, LiaoGuoJinGong)
	-- 特殊事件——灵鹫宫进攻
	t = CreateTrigger()
	TriggerRegisterTimerEventSingle(t, 3000.0)
	TriggerAddAction(t, LingJiuGongJinGong)
	t = nil
end

JiangHuNeiGong_Trigger() --江湖内功触发（含九阴、绝内）