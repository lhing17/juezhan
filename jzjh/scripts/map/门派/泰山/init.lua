-- 触发器条件
function IsQiXingLuo()
	return GetSpellAbilityId() == 1093679169
end

function QiXingLuo_Condition()
	return DamageFilter(LoadUnitHandle(YDHT, 398890, 0), GetFilterUnit())
end

function QiXingLuo_Action()
	local t = GetExpiredTimer()
	local iMax = LoadInteger(YDHT, GetHandleId(t), 0)
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 1)
	local range = LoadReal(YDHT, GetHandleId(t), 2)
	local i = LoadInteger(YDHT, GetHandleId(t), 3)
	local loc = GetUnitLoc(u)
	local shxishu = 1 + DamageCoefficientByAbility(u, 1093678935, 0.6) + DamageCoefficientByAbility(u, 1093678932, 1)
	local shanghai = 0.0
	local g = nil
	local l__ut = nil
	if i <= iMax then
		g = CreateGroup()
		SaveUnitHandle(YDHT, 398890, 0, u)
		GroupEnumUnitsInRangeOfLoc(g, loc, range, Condition(QiXingLuo_Condition))
		l__ut = GroupPickRandomUnit(g)
		--添加特效
		DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", l__ut, "Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl"))
		--u对ut造成伤害
		shanghai = ShangHaiGongShi(u, l__ut, 30 * (0.8 + i * 0.2), 30 * (0.8 + i * 0.2), shxishu, 1093679169)
		WuGongShangHai(u, l__ut, shanghai)
		if GetUnitAbilityLevel(u, 1093678930) >= 1 then -- +吸星大法
			if GetRandomInt(0, 100) <= 50 then
				general_buff(u, l__ut, 4) --混乱
			else
				general_buff(u, l__ut, 11) --封穴
			end
		end
		DestroyGroup(g)
		SaveInteger(YDHT, GetHandleId(t), 3, i + 1)
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


function QiXingLuoChangKong()
	local t = CreateTimer()
	local i = 0
	local u = GetTriggerUnit()
	local range = 800
	if GetUnitAbilityLevel(u, 1093678929) >= 1 then -- +斗转星移
		range = range / 2
	end
	if GetUnitAbilityLevel(u, 1093677910) >= 1 then -- +擒龙控鹤
		range = range / 2
	end
	WuGongShengChong(u, 1093679169, 200) --武功升重
	SaveInteger(YDHT, GetHandleId(t), 0, 7 * (1 + GetUnitAbilityLevel(u, 1093678929)) * (1 + GetUnitAbilityLevel(u, 1093677910)))
	SaveUnitHandle(YDHT, GetHandleId(t), 1, u)
	SaveReal(YDHT, GetHandleId(t), 2, range)
	TimerStart(t, 0.3, true, QiXingLuo_Action)
	t = nil
	u = nil
end

-- 触发器条件
function IsDaiZongRuHe()
	return GetSpellAbilityId() == 1093679170
end
-- 移除岱宗如何的BUFF
function removeDaiZongBuff()
	local t = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local extraHit = LoadReal(YDHT, GetHandleId(t), 1)
	local i = LoadInteger(YDHT, GetHandleId(t), 2)
	-- call BJDebugMsg("t:"+I2S(GetHandleId(t))+", i:"+I2S(i))
	--减少暴击倍数
	udg_baojishanghai[i] = udg_baojishanghai[i] - extraHit
	--停止计时器
	clearTimer(t)
	t = nil
end
-- 向目标施放岱宗如何
function issueTargetDaiZong(u, i, t, extraHit)
	-- 马甲对英雄施放雷击
	maJiaUseAbilityAtEnemysLoc(u, 1697657158, 1093679171, 852119, u, 3)
	-- 另一马甲对英雄施放增益技能，英雄获得BUFF
	maJiaUseAbilityAtEnemysLoc(u, 1697656880, 1093679172, 852066, u, 3)
	-- 英雄暴击倍数增加
	udg_baojishanghai[i] = udg_baojishanghai[i] + extraHit
	-- 1秒触发1次的定时器，如果英雄失去BUFF，则失去暴击倍数
	SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	SaveReal(YDHT, GetHandleId(t), 1, extraHit)
	SaveInteger(YDHT, GetHandleId(t), 2, i)
	TimerStart(t, 10, false, removeDaiZongBuff)
end
function IsDaiZongBeiDong()
	return UnitHasBuffBJ(GetAttacker(), 1110454603) and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function DaiZongBeiDongDamageFilter()
	return DamageFilter(GetAttacker(), GetFilterUnit())
end
function DaiZongBeiDong_Action()
	local u = GetAttacker()
	local l__ut = GetEnumUnit()
	local modelName = "Abilities\\Spells\\Undead\\FreezingBreath\\FreezingBreathTargetArt.mdl"
	local shxishu = 1
	if GetRandomInt(0, 100) <= 15 then
		PassiveWuGongEffectAndDamage(u, l__ut, modelName, 20, 20, shxishu, 1093679170)
	end
	u = nil
	l__ut = nil
end
function DaiZongBeiDong()
	local loc = GetUnitLoc(GetAttacker())
	local i = 1 + GetPlayerId(GetOwningPlayer(GetAttacker()))
	ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(700, loc, Condition(DaiZongBeiDongDamageFilter)), DaiZongBeiDong_Action)
	RemoveLocation(loc)
	loc = nil
end

function DaiZongRuHe()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	local extraHit = (0.5 + 0.2 * GetUnitAbilityLevel(GetTriggerUnit(), 1093678932) + 0.2 * GetUnitAbilityLevel(GetTriggerUnit(), 1093678933)) * GetUnitAbilityLevel(GetTriggerUnit(), 1093679170)
	WuGongShengChong(GetTriggerUnit(), 1093679170, 100) --武功升重
	if GetUnitAbilityLevel(GetTriggerUnit(), 1093679155) >= 1 then -- 小无相功
		issueTargetDaiZong(udg_hero[1], 1, CreateTimer(), extraHit)
		issueTargetDaiZong(udg_hero[2], 2, CreateTimer(), extraHit)
		issueTargetDaiZong(udg_hero[3], 3, CreateTimer(), extraHit)
		issueTargetDaiZong(udg_hero[4], 4, CreateTimer(), extraHit)
		issueTargetDaiZong(udg_hero[5], 5, CreateTimer(), extraHit)
	else
		issueTargetDaiZong(GetTriggerUnit(), i, CreateTimer(), extraHit)
	end
end

-- 触发器条件
function IsShiBaPan()
	return PassiveWuGongCondition(GetAttacker(), GetTriggerUnit(), 1093679173)
end
-- 触发器动作
function ShiBaPan()
	local u = GetAttacker()
	local l__ut = GetTriggerUnit()
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local abilityLevel = IMinBJ(1 + GetUnitAbilityLevel(u, 1093678932) + GetUnitAbilityLevel(u, 1093678930) + GetUnitAbilityLevel(u, 1093678935), 4)
	if GetRandomInt(1, 100) <= 15 + GetUnitAbilityLevel(u, 1093679174) + fuyuan[i] // 5 and not UnitHasBuffBJ(u, 1110454604) then
		WuGongShengChong(u, 1093679173, 500)
		if GetUnitAbilityLevel(u, 1093679155) >= 1 then
			maJiaUseLeveldAbilityAtTargetLoc(udg_hero[1], 1697656880, 1093679174, abilityLevel, 852101, udg_hero[1], 3)
			maJiaUseLeveldAbilityAtTargetLoc(udg_hero[2], 1697656880, 1093679174, abilityLevel, 852101, udg_hero[2], 3)
			maJiaUseLeveldAbilityAtTargetLoc(udg_hero[3], 1697656880, 1093679174, abilityLevel, 852101, udg_hero[3], 3)
			maJiaUseLeveldAbilityAtTargetLoc(udg_hero[4], 1697656880, 1093679174, abilityLevel, 852101, udg_hero[4], 3)
			maJiaUseLeveldAbilityAtTargetLoc(udg_hero[5], 1697656880, 1093679174, abilityLevel, 852101, udg_hero[5], 3)
		else
			maJiaUseLeveldAbilityAtTargetLoc(u, 1697656880, 1093679174, abilityLevel, 852101, u, 3)
		end
	end
	u = nil
	l__ut = nil
end

-- 触发器条件
function IsWuDaFu()
	return PassiveWuGongCondition(GetAttacker(), GetTriggerUnit(), 1093679175)
end
function WuDaFuJianDamageFilter()
	return DamageFilter(GetAttacker(), GetFilterUnit())
end
function WuDaFuJian_Action()
	local u = GetAttacker()
	local l__ut = GetEnumUnit()
	local modelName1 = "Abilities\\Spells\\Other\\Tornado\\TornadoElementalSmall.mdl"
	local modelName2 = "Abilities\\Spells\\Demon\\RainOfFire\\RainOfFireTarget.mdl"
	local modelName3 = "Abilities\\Spells\\Other\\Monsoon\\MonsoonBoltTarget.mdl"
	local modelName4 = "Abilities\\Spells\\NightElf\\EntanglingRoots\\EntanglingRootsTarget.mdl"
	local modelName5 = "Abilities\\Spells\\Human\\Blizzard\\BlizzardTarget.mdl"
	local shxishu = 1 + DamageCoefficientByAbility(u, 1093678928, 1.0) + DamageCoefficientByAbility(u, 1093678932, 1.0) + DamageCoefficientByItem(u, 1227894850, 3.0)
	local i = GetRandomInt(0, 100)
	if i <= 20 then
		PassiveWuGongEffectAndDamage(u, l__ut, modelName1, 20, 100, shxishu, 1093679175)
		if GetRandomInt(0, 100) < 20 and GetUnitAbilityLevel(u, 1093678933) >= 1 then
			general_buff(u, l__ut, 4)
		end
	elseif i <= 40 then
		PassiveWuGongEffectAndDamage(u, l__ut, modelName2, 40, 80, shxishu, 1093679175)
		if GetRandomInt(0, 100) < 20 and GetUnitAbilityLevel(u, 1093678933) >= 1 then
			general_buff(u, l__ut, 5)
		end
	elseif i <= 60 then
		PassiveWuGongEffectAndDamage(u, l__ut, modelName3, 60, 60, shxishu, 1093679175)
		if GetRandomInt(0, 100) < 20 and GetUnitAbilityLevel(u, 1093678933) >= 1 then
			general_buff(u, l__ut, 3)
		end
	elseif i <= 80 then
		PassiveWuGongEffectAndDamage(u, l__ut, modelName4, 80, 40, shxishu, 1093679175)
		if GetRandomInt(0, 100) < 20 and GetUnitAbilityLevel(u, 1093678933) >= 1 then
			general_buff(u, l__ut, 13)
		end
	else
		PassiveWuGongEffectAndDamage(u, l__ut, modelName5, 100, 20, shxishu, 1093679175)
		if GetRandomInt(0, 100) < 20 and GetUnitAbilityLevel(u, 1093678933) >= 1 then
			general_buff(u, l__ut, 9)
		end
	end

	u = nil
	l__ut = nil
end
-- 触发器动作
function WuDaFuJian()
	PassiveWuGongAction(GetAttacker(), GetTriggerUnit(), 15, 700, Condition(WuDaFuJianDamageFilter), WuDaFuJian_Action, 1093679175, 500)
end

-- 触发器条件
function IsKuaiHuoSan()
	return PassiveWuGongCondition(GetAttacker(), GetTriggerUnit(), 1093679176)
end
-- 触发器动作
function KuaiHuoSanJian()
	local caster = GetAttacker()
	local angle = 270
	local missile = nil
	local originspeed = 500
	local maxspeed = 800
	local accel = 56
	local distance = 2000
	local arc = 0
	local range = 300
	local damage = 0
	local loc = GetUnitLoc(caster)
	local target = nil
	local height = 50
	local l__hp = 400
	local Effect = "Abilities\\Weapons\\Dryadmissile\\Dryadmissile.mdl"
	local gravity = false
	local i = 1 + GetPlayerId(GetOwningPlayer(caster))
	local j = 0
	local jmax = 2
	local shxishu = 1 + DamageCoefficientByAbility(GetTriggerUnit(), 1093678930, 1) + DamageCoefficientByAbility(GetTriggerUnit(), 1093678933, 0.8) + DamageCoefficientByAbility(GetTriggerUnit(), 1093679155, 1.5)
	if GetUnitAbilityLevel(caster, 1093678932) >= 1 then
		range = range + 200
	end
	-- if (GetUnitAbilityLevel(caster, 'A07U') >= 1) then
	-- set jmax = jmax + 2
	-- endif
	-- if (GetUnitAbilityLevel(caster, 'A083') >= 1) then
	-- set jmax = jmax + 6
	-- endif
	damage = ShangHaiGongShi(caster, nil, 16, 16, shxishu, 1093679176)
	if GetRandomInt(0, 100) <= 15 + fuyuan[i] then
		WuGongShengChong(caster, 1093679176, 700 - GetUnitAbilityLevel(caster, 1093677910) * 350)
		for _ in _loop_() do
			if j >= jmax then break end
			angle = GetUnitFacing(caster) + 360 // jmax * j + GetRandomReal(-90, 90)
			missile = CreateUnit(GetOwningPlayer(caster), 1747988557, GetUnitX(caster), GetUnitY(caster), angle) --弹幕单位
			missile_cast(caster, missile, originspeed, maxspeed, accel, angle, distance, arc, range, damage, loc, target, height, l__hp, Effect, gravity)
			j = j + 1
		end
	--call MissileCast(caster, missile, originspeed, maxspeed, accel, angle, distance, arc, range, damage, loc, target, height, hp, Effect, gravity)
	end
	-- 排泄
	RemoveLocation(loc)
	caster = nil
	missile = nil
	target = nil
	loc = nil
end

function TaiShan_Trigger()

	local t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsQiXingLuo))
	TriggerAddAction(t, QiXingLuoChangKong)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsDaiZongRuHe))
	TriggerAddAction(t, DaiZongRuHe)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsDaiZongBeiDong))
	TriggerAddAction(t, DaiZongBeiDong)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsShiBaPan))
	TriggerAddAction(t, ShiBaPan)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsWuDaFu))
	TriggerAddAction(t, WuDaFuJian)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsKuaiHuoSan))
	TriggerAddAction(t, KuaiHuoSanJian)
	t = nil
end

TaiShan_Trigger() --泰山派武功触发