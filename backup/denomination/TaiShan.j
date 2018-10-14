/*
 * @version：决战江湖1.53
 * @author: zei_kale
 * @date:2017.7.12
 *
 * 泰山门派武功：七星落长空A08A、岱宗如何A08B、泰山十八盘A08E、五大夫剑A08G、快活三剑A08H
 */


/*
 * 七星落长空 A08A 释放七次星落，对范围内随机敌人造成伤害（以及特效）伤害递增20%
 * 主动武功
 * 伤害系数：w1=30, w2=30
 * 伤害搭配：
 *		+乾坤大挪移 A07W 伤害+60%
 *		+葵花宝典 A07T 伤害+100%
 *		+吸星大法 A07R 几率封穴或混乱
 *		+斗转星移 A07Q 随机范围减半
 *		+擒龙控鹤 A03V 随机范围减半
 */
 // 触发器条件
 function IsQiXingLuo takes nothing returns boolean
	return GetSpellAbilityId()=='A08A'
 endfunction
 
 function QiXingLuo_Condition takes nothing returns boolean
	return DamageFilter(LoadUnitHandle(YDHT, $6162A, 0), GetFilterUnit())
 endfunction
 
 function QiXingLuo_Action takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local integer iMax = LoadInteger(YDHT, GetHandleId(t), 0)
	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 1)
	local real range = LoadReal(YDHT, GetHandleId(t), 2)
	local integer i = LoadInteger(YDHT, GetHandleId(t), 3)
	local location loc = GetUnitLoc(u)
	local real shxishu = 1 + DamageCoefficientByAbility(u,'A07W', 0.6) + DamageCoefficientByAbility(u,'A07T', 1) // 乾坤大挪移+60% 葵花宝典+100%
	local real shanghai = 0.
	local group g = null
	local unit ut = null
	if (i <= iMax) then
		set g = CreateGroup()
		call SaveUnitHandle(YDHT, $6162A, 0, u)
		call GroupEnumUnitsInRangeOfLoc(g, loc, range, function QiXingLuo_Condition)
		set ut = GroupPickRandomUnit(g)
		//添加特效
		call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin",ut,"Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl"))
		//u对ut造成伤害
		set shanghai=ShangHaiGongShi(u,ut,30*(0.8+i*0.2),30*(0.8+i*0.2),shxishu,'A08A')
		call WuGongShangHai(u,ut,shanghai)
		if (GetUnitAbilityLevel(u, 'A07R')>=1) then // +吸星大法
			if (GetRandomInt(0, 100)<=50) then
				call WanBuff(u, ut, 4) //混乱
			else
				call WanBuff(u, ut, 11) //封穴
			endif
		endif
		call DestroyGroup(g)
		call SaveInteger(YDHT, GetHandleId(t), 3, i + 1)
	else
		call PauseTimer(t)
		call DestroyTimer(t)
		call FlushChildHashtable(YDHT, GetHandleId(t))
	endif
	call RemoveLocation(loc)
	set t = null
	set u = null
	set loc = null
 endfunction
 
 /*
  * 触发器动作
  *
  * 可替换参数：
  * 范围 800
  * 升重速度 200
  * w1=30 w2=30
  * 特效字符串 Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl
  * 
  * 可选搭配：
  * 增加伤害 乾坤大挪移+60% 葵花宝典+100% 
  * 增加BUFF 吸星大法+封穴或混乱
  * 减小随机的范围 斗转A07Q+范围减半 擒龙控鹤A03V+范围减半
  */
 function QiXingLuoChangKong takes nothing returns nothing
	local timer t = CreateTimer()
	local integer i = 0
	local unit u = GetTriggerUnit()
	local real range = 800
	if (GetUnitAbilityLevel(u, 'A07Q')>=1) then // +斗转星移
		set range = range / 2
	endif
	if (GetUnitAbilityLevel(u, 'A03V')>=1) then // +擒龙控鹤
		set range = range / 2
	endif
	call WuGongShengChong(u, 'A08A', 200) //武功升重
	call SaveInteger(YDHT, GetHandleId(t), 0, 7 * (1 + GetUnitAbilityLevel(u, 'A07Q'))*(1 + GetUnitAbilityLevel(u, 'A03V')))
	call SaveUnitHandle(YDHT, GetHandleId(t), 1, u)
	call SaveReal(YDHT, GetHandleId(t), 2, range)
	call TimerStart(t, 0.3, true, function QiXingLuo_Action)
	set t = null
	set u = null
 endfunction

/*
 * 岱宗如何 A08B 施放后数秒内大幅提升暴击倍数（50%*武功重数）
 * 主动武功
 * 伤害搭配：
 *		+葵花宝典 A07T 暴击伤害额外+20%
 *		+双手互搏 A07U 暴击伤害额外+20%
 *		+小无相功 A083 对所有友方英雄施放岱宗如何
 */
 // 触发器条件
function IsDaiZongRuHe takes nothing returns boolean
	return GetSpellAbilityId()=='A08B'
endfunction

// 移除岱宗如何的BUFF
function removeDaiZongBuff takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local real extraHit = LoadReal(YDHT, GetHandleId(t), 1)
	local integer i = LoadInteger(YDHT, GetHandleId(t), 2)
	// call BJDebugMsg("t:"+I2S(GetHandleId(t))+", i:"+I2S(i))
	//减少暴击倍数
	set udg_baojishanghai[i] = udg_baojishanghai[i] - extraHit
	//停止计时器
	call clearTimer(t)
	set t = null
endfunction

// 向目标施放岱宗如何
function issueTargetDaiZong takes unit u, integer i, timer t, real extraHit returns nothing
	// 马甲对英雄施放雷击
	call maJiaUseAbilityAtEnemysLoc(u, 'e01F',  'A08C', $D0097, u, 3)
	// 另一马甲对英雄施放增益技能，英雄获得BUFF
	call maJiaUseAbilityAtEnemysLoc(u, 'e000',  'A08D', $D0062, u, 3)
	// 英雄暴击倍数增加
	set udg_baojishanghai[i] = udg_baojishanghai[i] + extraHit
	// 1秒触发1次的定时器，如果英雄失去BUFF，则失去暴击倍数
	call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	call SaveReal(YDHT, GetHandleId(t), 1, extraHit)
	call SaveInteger(YDHT, GetHandleId(t), 2, i)
	call TimerStart(t, 10, false, function removeDaiZongBuff)
endfunction

function IsDaiZongBeiDong takes nothing returns boolean
	return UnitHasBuffBJ(GetAttacker(), 'B01K') and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
endfunction

function DaiZongBeiDongDamageFilter takes nothing returns boolean
	return DamageFilter(GetAttacker(), GetFilterUnit())
endfunction

function DaiZongBeiDong_Action takes nothing returns nothing
	local unit u = GetAttacker()
	local unit ut = GetEnumUnit()
	local string modelName = "Abilities\\Spells\\Undead\\FreezingBreath\\FreezingBreathTargetArt.mdl" // 冰霜喷吐
	local real shxishu = 1
	if GetRandomInt(0, 100) <= 15 then
		call PassiveWuGongEffectAndDamage(u, ut, modelName, 20, 20, shxishu, 'A08B')
	endif
	set u = null
	set ut = null
endfunction

function DaiZongBeiDong takes nothing returns nothing
	local location loc = GetUnitLoc(GetAttacker())
	local integer i = 1 + GetPlayerId(GetOwningPlayer(GetAttacker()))
	call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(700,loc,Condition(function DaiZongBeiDongDamageFilter)), function DaiZongBeiDong_Action)
	call RemoveLocation(loc)
	set loc = null
endfunction
 /*
  * 触发器动作
  *
  * 可替换参数：
  * 升重速度 100
  * 
  * 可选搭配：
  * 增加伤害 葵花宝典 A07T 双手互搏 A07U 每级暴击伤害额外+20% 
  * 群体BUFF 小无相功 A083 对所有友方英雄施放岱宗如何
  */
function DaiZongRuHe takes nothing returns nothing
	local integer i = 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	local real extraHit = (0.5 + 0.2 * GetUnitAbilityLevel(GetTriggerUnit(), 'A07T') + 0.2 * GetUnitAbilityLevel(GetTriggerUnit(), 'A07U')) * GetUnitAbilityLevel(GetTriggerUnit(), 'A08B')
	call WuGongShengChong(GetTriggerUnit(), 'A08B', 100) //武功升重
	if GetUnitAbilityLevel(GetTriggerUnit(), 'A083') >= 1 then // 小无相功
		call issueTargetDaiZong(udg_hero[1], 1, CreateTimer(), extraHit)
		call issueTargetDaiZong(udg_hero[2], 2, CreateTimer(), extraHit)
		call issueTargetDaiZong(udg_hero[3], 3, CreateTimer(), extraHit)
		call issueTargetDaiZong(udg_hero[4], 4, CreateTimer(), extraHit)
		call issueTargetDaiZong(udg_hero[5], 5, CreateTimer(), extraHit)
	else
		call issueTargetDaiZong(GetTriggerUnit(), i, CreateTimer(), extraHit)
	endif
endfunction


/*
 * 泰山十八盘 A08E 攻击有小概率在短时间内大幅增加攻速 测试通过
 * 被动武功
 * 武功搭配：
 *		武功等级：触发概率
 *		+葵花宝典 A07T 狂暴持续时间+1s
 *		+吸星大法 A07R 狂暴持续时间+1s
 *		+乾坤大挪移 A07W 狂暴持续时间+1s
 *		+上面三种武功 攻速增幅翻倍
 *		+小无相功 A083 所有友方英雄触发泰山十八盘
 */
// 触发器条件
function IsShiBaPan takes nothing returns boolean
	return PassiveWuGongCondition(GetAttacker(), GetTriggerUnit(), 'A08E')
endfunction

// 触发器动作
function ShiBaPan takes nothing returns nothing
	local unit u = GetAttacker()
	local unit ut = GetTriggerUnit()
	local integer i = 1 + GetPlayerId(GetOwningPlayer(u))
	local integer abilityLevel = IMinBJ(1 + GetUnitAbilityLevel(u, 'A07T') + GetUnitAbilityLevel(u, 'A07R') + GetUnitAbilityLevel(u, 'A07W'), 4)
	if (GetRandomInt(1, 100) <= 15 + GetUnitAbilityLevel(u, 'A08F') + fuyuan[i] / 5 and not(UnitHasBuffBJ(u, 'B01L'))) then
		call WuGongShengChong(u, 'A08E', 500)
		if GetUnitAbilityLevel(u, 'A083') >= 1 then
			call maJiaUseLeveldAbilityAtTargetLoc(udg_hero[1], 'e000',  'A08F', abilityLevel, $D0085, udg_hero[1], 3)
			call maJiaUseLeveldAbilityAtTargetLoc(udg_hero[2], 'e000',  'A08F', abilityLevel, $D0085, udg_hero[2], 3)
			call maJiaUseLeveldAbilityAtTargetLoc(udg_hero[3], 'e000',  'A08F', abilityLevel, $D0085, udg_hero[3], 3)
			call maJiaUseLeveldAbilityAtTargetLoc(udg_hero[4], 'e000',  'A08F', abilityLevel, $D0085, udg_hero[4], 3)
			call maJiaUseLeveldAbilityAtTargetLoc(udg_hero[5], 'e000',  'A08F', abilityLevel, $D0085, udg_hero[5], 3)
		else
			call maJiaUseLeveldAbilityAtTargetLoc(u, 'e000',  'A08F', abilityLevel, $D0085, u, 3)
		endif
	endif
	set u = null
	set ut = null
endfunction

/*
 * 五大夫剑 A08G
 * 被动武功
 * 伤害系数：w1=40, w2=40
 * 伤害搭配：
 *		+化功大法 A07P 伤害+100%
 *		+葵花宝典 A07T 伤害+100%
 *		+倚天剑 I00B 伤害+300%
 *		+双手互搏 A07U 五大夫剑分别几率造成混乱、昏迷、流血、中毒、破防
 */
// 触发器条件
function IsWuDaFu takes nothing returns boolean
	return PassiveWuGongCondition(GetAttacker(), GetTriggerUnit(), 'A08G')
endfunction

function WuDaFuJianDamageFilter takes nothing returns boolean
	return DamageFilter(GetAttacker(), GetFilterUnit())
endfunction

function WuDaFuJian_Action takes nothing returns nothing
	local unit u = GetAttacker()
	local unit ut = GetEnumUnit()
	local string modelName1 = "Abilities\\Spells\\Other\\Tornado\\TornadoElementalSmall.mdl" //风
	local string modelName2 = "Abilities\\Spells\\Demon\\RainOfFire\\RainOfFireTarget.mdl" //火
	local string modelName3 = "Abilities\\Spells\\Other\\Monsoon\\MonsoonBoltTarget.mdl" //雷
	local string modelName4 = "Abilities\\Spells\\NightElf\\EntanglingRoots\\EntanglingRootsTarget.mdl" //木
	local string modelName5 = "Abilities\\Spells\\Human\\Blizzard\\BlizzardTarget.mdl" //冰
	local real shxishu = 1 + DamageCoefficientByAbility(u, 'A07P', 1.0) + DamageCoefficientByAbility(u, 'A07T', 1.0) + DamageCoefficientByItem(u, 'I00B', 3.0)
	local integer i = GetRandomInt(0, 100)
	if (i <= 20) then
		call PassiveWuGongEffectAndDamage(u, ut, modelName1, 20, 100, shxishu, 'A08G')
		if (GetRandomInt(0, 100) < 20 and GetUnitAbilityLevel(u, 'A07U') >= 1) then
			call WanBuff(u, ut, 4)
		endif
	elseif (i<= 40) then
		call PassiveWuGongEffectAndDamage(u, ut, modelName2, 40, 80, shxishu, 'A08G')
		if (GetRandomInt(0, 100) < 20 and GetUnitAbilityLevel(u, 'A07U') >= 1) then
			call WanBuff(u, ut, 5)
		endif
	elseif (i<= 60) then
		call PassiveWuGongEffectAndDamage(u, ut, modelName3, 60, 60, shxishu, 'A08G')
		if (GetRandomInt(0, 100) < 20 and GetUnitAbilityLevel(u, 'A07U') >= 1) then
			call WanBuff(u, ut, 3)
		endif
	elseif (i<= 80) then
		call PassiveWuGongEffectAndDamage(u, ut, modelName4, 80, 40, shxishu, 'A08G')
		if (GetRandomInt(0, 100) < 20 and GetUnitAbilityLevel(u, 'A07U') >= 1) then
			call WanBuff(u, ut, 13)
		endif
	else
		call PassiveWuGongEffectAndDamage(u, ut, modelName5, 100, 20, shxishu, 'A08G')
		if (GetRandomInt(0, 100) < 20 and GetUnitAbilityLevel(u, 'A07U') >= 1) then
			call WanBuff(u, ut, 9)
		endif
	endif
		
	set u = null
	set ut = null
endfunction

// 触发器动作
function WuDaFuJian takes nothing returns nothing
	call PassiveWuGongAction(GetAttacker(), GetTriggerUnit(), 15, 700, Condition(function WuDaFuJianDamageFilter), function WuDaFuJian_Action, 'A08G', 500)
endfunction

/*
 * 快活三剑 A08H
 * 被动武功
 * 伤害系数：w1=16, w2=16
 * 伤害搭配：
 *		+吸星大法 A07R 伤害+100%
 *		+葵花宝典 A07T 伤害范围+200
 *		+双手互搏 A07U 伤害+80%
 *		+小无相功 A083 伤害+150%
 *		+擒龙控鹤 A03V 加快升重速度
 */
// 触发器条件
function IsKuaiHuoSan takes nothing returns boolean
	return PassiveWuGongCondition(GetAttacker(), GetTriggerUnit(), 'A08H')
endfunction

// 触发器动作
function KuaiHuoSanJian takes nothing returns nothing
	local unit caster = GetAttacker() //发射者
	local real angle = 270 //角度
	local unit missile = null
	local real originspeed = 500 //初始速度
	local real maxspeed = 800 //最大速度
	local real accel = 56 //加速度
	local real distance = 2000 //距离
	local real arc = 0 //弧度
	local real range = 300 //伤害范围
	local real damage = 0 //伤害
	local location loc = GetUnitLoc(caster) //目标点
	local unit target = null //目标单位
	local real height = 50 //初始高度
	local real hp = 400 //弹幕耐久度
	local string Effect = "Abilities\\Weapons\\Dryadmissile\\Dryadmissile.mdl" //弹幕特效
	local boolean gravity = false //是否考虑重力
	local integer i = 1 + GetPlayerId(GetOwningPlayer(caster))
	local integer j = 0
	local integer jmax = 2
	local real shxishu = 1 + DamageCoefficientByAbility(GetTriggerUnit(),'A07R', 1) + DamageCoefficientByAbility(GetTriggerUnit(),'A07U', 0.8) + DamageCoefficientByAbility(GetTriggerUnit(),'A083', 1.5)// 伤害系数
	if (GetUnitAbilityLevel(caster, 'A07T') >= 1) then
		set range = range + 200
	endif
	// if (GetUnitAbilityLevel(caster, 'A07U') >= 1) then
		// set jmax = jmax + 2
	// endif
	// if (GetUnitAbilityLevel(caster, 'A083') >= 1) then
		// set jmax = jmax + 6
	// endif
	set damage = ShangHaiGongShi(caster, null, 16, 16, shxishu, 'A08H')
	if (GetRandomInt(0, 100) <= 15 + fuyuan[i]) then
		call WuGongShengChong(caster, 'A08H', 700 - GetUnitAbilityLevel(caster, 'A03V') * 350)
		loop
			exitwhen j >= jmax
			set angle = GetUnitFacing(caster) + 360 / jmax * j + GetRandomReal(-90, 90)
			set missile = CreateUnit(GetOwningPlayer(caster), 'h00M', GetUnitX(caster), GetUnitY(caster), angle) //弹幕单位
			call MissileCast(caster, missile, originspeed, maxspeed, accel, angle, distance, arc, range, damage, loc, target, height, hp, Effect, gravity)
			set j = j + 1
		endloop
		//call MissileCast(caster, missile, originspeed, maxspeed, accel, angle, distance, arc, range, damage, loc, target, height, hp, Effect, gravity)
	endif
	// 排泄
	call RemoveLocation(loc)
	set caster = null
	set missile = null
	set target = null
	set loc = null
endfunction
/*
 * 泰山触发器总函数
 */
function TaiShan_Trigger takes nothing returns nothing
	/*
	 * 七星落长空触发器
	 */
	local trigger t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsQiXingLuo))
    call TriggerAddAction(t,function QiXingLuoChangKong)
	/*
	 * 岱宗如何触发器
	 */
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t, Condition(function IsDaiZongRuHe))
	call TriggerAddAction(t, function DaiZongRuHe)
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t, Condition(function IsDaiZongBeiDong))
	call TriggerAddAction(t, function DaiZongBeiDong)
	/*
	 * 泰山十八盘触发器
	 */
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t, Condition(function IsShiBaPan))
	call TriggerAddAction(t, function ShiBaPan)
	/*
	 * 五大夫剑触发器
	 */
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t, Condition(function IsWuDaFu))
	call TriggerAddAction(t, function WuDaFuJian)
	/*
	 * 快活三剑触发器
	 */
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t, Condition(function IsKuaiHuoSan))
	call TriggerAddAction(t, function KuaiHuoSanJian)
	set t = null
endfunction
