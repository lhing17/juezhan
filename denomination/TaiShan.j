/*
 * 七星落长空 XXXX 释放七次星落，对范围内随机敌人造成伤害（以及特效）
 * 主动武功
 * 伤害系数：w1=7.2, w2=8.9
 * 伤害搭配：
 *		+乾坤大挪移 A07W 伤害+80%
 *		+一阳指 A06P 几率中毒
 *		+九阴真经·摧心掌 A0D3 几率中毒
 *		+九阴真经·九阴白骨爪 A07N 几率使中毒的单位中毒加深
 *		+双手互搏 A07U 对中毒/深度中毒的单位+150%的伤害
 *		+九阴真经·内功 A07S 对深度中毒的单位+200%的伤害
 */
 // 触发器条件
 function IsQiXingLuo takes nothing returns boolean
	return GetSpellAbilityId()=='XXXX'
 endfunction
 /*
  * 触发器动作
  *
  * 可替换参数：
  * 范围
  * 升重速度
  * w1 w2
  * 特效字符串
  * 
  * 可选搭配：
  * 增加伤害
  * 增加BUFF
  * 减小随机的范围
  */
 function QiXingLuoChangKong takes nothing returns nothing
	local group g = null
	local location loc = null
	local integer i = 0
	local unit u = GetTriggerUnit()
	local unit ut = null
	local real shxishu = 1
	call WuGongShengChong(GetTriggerUnit(), 'XXXX', 200)
	call GroupEnumUnitsInRangeOfLoc(g,loc,700,function QiXingLuo_Condition)
	loop
		exitwhen i >= 7
		set ut = GroupPickRandomUnit(g)
		//添加特效
		call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Weapons\\PhoenixMissile\\Phoenix_Missile.mdl"))
		//u对ut造成伤害
		set shanghai=ShangHaiGongShi(u,ut,80,90,shxishu,'XXXX')
		call WuGongShangHai(u,ut,shanghai)
		set i = i + 1
	endloop
	//武功升重
	
	call RemoveLocation(loc)
	set g = null
	set loc = null
	set u = null
	set ut = null
 endfunction



/*
 * 泰山触发器总函数
 */
function Taishan_Trigger takes nothing returns nothing
	/*
	 * 七星落长空触发器
	 */
	local trigger t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsQiXingLuo))
    call TriggerAddAction(t,function QiXingLuoChangKong)
	
	set t = null
endfunction
