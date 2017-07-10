/*
 * 铁砂掌 A06Y
 * 伤害系数：w1=7.2, w2=8.9
 * 伤害搭配：
 *		+乾坤大挪移 A07W 伤害+80%
 *		+一阳指 A06P 几率中毒
 *		+九阴真经·摧心掌 A0D3 几率中毒
 *		+九阴真经·九阴白骨爪 A07N 几率使中毒的单位中毒加深
 *		+双手互搏 A07U 对中毒/深度中毒的单位+150%的伤害
 *		+九阴真经·内功 A07S 对深度中毒的单位+200%的伤害
 */
function IsTieShaZhang takes nothing returns boolean
	return PassiveWuGongCondition(GetAttacker(), GetTriggerUnit(), 'A06Y')
endfunction

function TieSha_Condition takes nothing returns boolean
	return DamageFilter(GetAttacker(), GetFilterUnit())
endfunction

function TieSha_Action takes nothing returns nothing
	local real shxishu = 1 + DamageCoefficientByAbility(GetAttacker(),'A07W', 0.8)
	if (UnitHasBuffBJ(GetEnumUnit(), 'BEsh') or UnitHasBuffBJ(GetEnumUnit(), 'B01J')) then
		set shxishu = shxishu + DamageCoefficientByAbility(GetAttacker(),'A07U', 1.5)
	endif
	if (UnitHasBuffBJ(GetEnumUnit(), 'B01J')) then
		set shxishu = shxishu + DamageCoefficientByAbility(GetAttacker(),'A07S', 2.0)
	endif
	if ((GetUnitAbilityLevel(GetAttacker(), 'A06P')>=1 or GetUnitAbilityLevel(GetAttacker(), 'A0D3')>=1) and GetRandomInt(1, 100)<=30) then
		if (UnitHasBuffBJ(GetEnumUnit(), 'BEsh')==false and UnitHasBuffBJ(GetEnumUnit(), 'B01J')==false) then
			call WanBuff(GetAttacker(), GetEnumUnit(), 13)
		endif
	endif
	if (GetUnitAbilityLevel(GetAttacker(), 'A07N')>=1 and UnitHasBuffBJ(GetEnumUnit(), 'BEsh') and GetRandomInt(1, 100)<=30) then
		if (UnitHasBuffBJ(GetEnumUnit(), 'B01J')==false) then
			call WanBuff(GetAttacker(), GetEnumUnit(), 14)
		endif
	endif
	call PassiveWuGongEffectAndDamage(GetAttacker(), GetEnumUnit(), "Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", 7.2, 8.9, shxishu, 'A06Y')
endfunction

function TieShaZhang takes nothing returns nothing
	call PassiveWuGongAction(GetAttacker(), GetTriggerUnit(), 15, 500, Condition(function TieSha_Condition), function TieSha_Action, 'A06Y', 1200.)
endfunction

/*
 * 毒蛇神掌 A06Z
 * 伤害系数：w1=15, w2=15
 * 伤害搭配：
 * 		+弹指神通 A06H：增加最大伤害数量，与弹指等级有关
 * 		+蛇杖 I09B：伤害增加300%
 * 		+双手互搏 A07U：增加最大伤害数量
 * 		+九阴真经·内功 A07S 使中毒/深度中毒的单位流血不止
 * 		+中毒/深度中毒 BEsh/B01J 伤害增加100%
 */
function IsDuSheShenZhang takes nothing returns boolean
	return GetSpellAbilityId()=='A06Z' and (IsUnitEnemy(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit())))
endfunction

function IsDuSheEnemy takes nothing returns boolean
	//不是玩家的单位且不无敌
	return GetPlayerController(GetOwningPlayer(GetFilterUnit()))!=MAP_CONTROL_USER and GetUnitAbilityLevel(GetFilterUnit(),'Avul')==0 and IsUnitAliveBJ(GetFilterUnit())
endfunction
function DuSheMove takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local unit ut = LoadUnitHandle(YDHT, GetHandleId(t), 1)
	local location source = LoadLocationHandle(YDHT, GetHandleId(t), 2)
	local location destination = LoadLocationHandle(YDHT, GetHandleId(t), 3)
	local unit majia = LoadUnitHandle(YDHT, GetHandleId(t), 4)
	local integer counter = LoadInteger(YDHT, GetHandleId(t), 5)
	local integer maxCount = 15 + GetUnitAbilityLevel(u, 'A07U') * 10 + GetUnitAbilityLevel(u, 'A06H') * 3
	local real angle = AngleBetweenPoints(source, destination)
	local group g = null
	local real shxishu = 1 + DamageCoefficientByItem(u, 'I09B', 3.)
	if (UnitHasBuffBJ(ut, 'BEsh') or UnitHasBuffBJ(ut, 'B01J')) then
		set shxishu = shxishu + 1.
	endif
	if (counter>=maxCount) then
		call FlushChildHashtable(YDHT, GetHandleId(t))
		call PauseTimer(t)
		call DestroyTimer(t)
		call RemoveUnit(majia)
	else
		//距离小于15则移动到目标位置并造成伤害，然后获取下一个伤害目标
		if DistanceBetweenPoints(source, destination)<15 then
			call SetUnitPositionLoc(majia, destination)
			//设置下一个源地点
			call SaveLocationHandle(YDHT, GetHandleId(t), 2, destination)
			//造成伤害 伤害单位个数加1
			call PassiveWuGongEffectAndDamage(u, ut, "Abilities\\Spells\\Human\\Invisibility\\InvisibilityTarget.mdl", 15, 15, shxishu, 'A06Z')
			if ((UnitHasBuffBJ(ut, 'BEsh') or UnitHasBuffBJ(ut, 'B01J')) and GetUnitAbilityLevel(u, 'A07S')>=1) then
				call WanBuff(u, ut, 7)
			endif
			call SaveInteger(YDHT, GetHandleId(t), 5, counter+1)
			//获取下一个伤害目标
			set g = GetUnitsInRangeOfLocMatching(500, destination, Condition(function IsDuSheEnemy))
			if(CountUnitsInGroup(g)>0) then
				set ut = GroupPickRandomUnit(g)
				call SaveUnitHandle(YDHT, GetHandleId(t), 1, ut)
				//设置下一个目标地点
				call SaveLocationHandle(YDHT, GetHandleId(t), 3, GetUnitLoc(ut))
				//call RemoveLocation(destination)
			else
				call FlushChildHashtable(YDHT, GetHandleId(t))
				call PauseTimer(t)
				call DestroyTimer(t)
				call RemoveUnit(majia)
			endif
		else
			//毒蛇马甲向目标移动
			call SetUnitPositionLoc(majia, PolarProjectionBJ(source, 15, angle))
			call SaveLocationHandle(YDHT, GetHandleId(t), 2, PolarProjectionBJ(source, 15, angle))
			call SaveLocationHandle(YDHT, GetHandleId(t), 3, GetUnitLoc(ut))
		endif
	endif
	call RemoveLocation(source)
	set source = null
	set destination = null
	set t = null
	set ut = null
	set majia = null
	set u = null
	set g = null
endfunction

function DuSheShenZhang takes nothing returns nothing
	local timer t = CreateTimer()
	call SaveUnitHandle(YDHT, GetHandleId(t), 0, GetTriggerUnit())
	call SaveUnitHandle(YDHT, GetHandleId(t), 1, GetSpellTargetUnit())
	call SaveLocationHandle(YDHT, GetHandleId(t), 2, GetUnitLoc(GetTriggerUnit()))
	call SaveLocationHandle(YDHT, GetHandleId(t), 3, GetUnitLoc(GetSpellTargetUnit()))
	call CreateNUnitsAtLocFacingLocBJ(1, 'e01E', GetOwningPlayer(GetTriggerUnit()), GetUnitLoc(GetTriggerUnit()), GetUnitLoc(GetSpellTargetUnit()))
	call SaveUnitHandle(YDHT, GetHandleId(t), 4, bj_lastCreatedUnit)
	call WuGongShengChong(GetTriggerUnit(),'A06Z',200)
	call TimerStart(t, 0.02, true, function DuSheMove)
	set t = null
endfunction

/*
 * 通背拳 A070
 * 		几率对单体单位造成伤害并使单位中毒，如果单位已经中毒则使其中毒加深，如果单位已经深度中毒，则每次触发比上次触发造成额外伤害
 * 伤害系数：w1=75, w2=75
 * 伤害搭配：
 * 		+乾坤大挪移 A07W 伤害+70%
 *		+九阴真经·摧心掌 A0D3 伤害+90%
 *		+西毒杖法 A089 额外伤害加成系数翻倍
 *		+蛤蟆功 A084 召唤一个会通背拳的铁掌帮长老协助战斗
 */
function IsTongBeiQuan takes nothing returns boolean
	return PassiveWuGongCondition(GetAttacker(), GetTriggerUnit(), 'A070')
endfunction

function TongBeiQuan takes nothing returns nothing
	local unit u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))]
	local unit ut = GetTriggerUnit()
	local integer i = 1 + GetPlayerId(GetOwningPlayer(u))
	local location loc = GetUnitLoc(ut)
	local real shxishu = 1. + DamageCoefficientByAbility(u,'A07W', 0.7) + DamageCoefficientByAbility(u,'A0D3', 0.9)
	local real coefficient = 0.5
	if (GetUnitAbilityLevel(u, 'A089')>=1) then
		set coefficient = 1
	endif
	if (GetRandomInt(1, 100)<=fuyuan[i]/5+15) then
		//+蛤蟆功 A084 召唤一个会通背拳的铁掌帮长老协助战斗 此处概率有待平衡 TODO
		if (GetUnitAbilityLevel(u, 'A084')>=1 and GetRandomInt(1, 100)<=7) then
			call CreateNUnitsAtLoc(1,'o02O',GetOwningPlayer(u),loc,bj_UNIT_FACING)
			call UnitAddAbility(bj_lastCreatedUnit, 'A070')
	    	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',15.)
		endif
		call WuGongShengChong(u,'A070',800)
		if (UnitHasBuffBJ(ut, 'BEsh')) then //已中毒则使之中毒加深
			call SaveReal(YDHT, GetHandleId(ut), StringHash("TongBei"), 0.)
			call WanBuff(u, ut, 14)
		elseif (UnitHasBuffBJ(ut, 'B01J')) then //已深度中毒则造成额外伤害
			call SaveReal(YDHT, GetHandleId(ut), StringHash("TongBei"), LoadReal(YDHT, GetHandleId(ut), StringHash("TongBei"))+coefficient)
			set shxishu = shxishu + LoadReal(YDHT, GetHandleId(ut), StringHash("TongBei"))
			call FontFloat("+"+I2S(R2I(shxishu)), loc, 60., 14, 100., 100., 0., 0, 2.)
		else //未中毒则使之中毒
			call SaveReal(YDHT, GetHandleId(ut), StringHash("TongBei"), 0.)
			call WanBuff(u, ut, 13)
		endif
		call PassiveWuGongEffectAndDamage(u, ut, "Abilities\\Spells\\NightElf\\EntanglingRoots\\EntanglingRootsTarget.mdl", 75, 75, shxishu, 'A070')
	endif
	call RemoveLocation(loc)
	set u = null
	set ut = null
	set loc = null
endfunction

/*
 * 水上漂 A07Y
 * 		铁掌帮绝顶轻功，可以快速到达目标地点
 * 伤害系数：w1=, w2=
 * 伤害搭配：
 */
function IsShuiShangPiao takes nothing returns boolean
	return GetSpellAbilityId()=='A07Y'
endfunction

function XYInMap takes real x,real y returns boolean
    if x<GetRectMinX(GetEntireMapRect())then
        return false
    endif
    if x>GetRectMaxX(GetEntireMapRect())then
        return false
    endif
    if y<GetRectMinY(GetEntireMapRect())then
        return false
    endif
    if y>GetRectMaxY(GetEntireMapRect())then
        return false
    endif
    return true
endfunction

function saveVarsInTimer takes timer tm,unit u,real x,real y,real n,real distance,real angle,real a,real b,real m returns nothing
	call SaveUnitHandle(YDHT, GetHandleId(tm), 0, u)
    call SaveReal(YDHT, GetHandleId(tm), 1, x)
    call SaveReal(YDHT, GetHandleId(tm), 2, y)
    call SaveReal(YDHT, GetHandleId(tm), 3, n)
    call SaveReal(YDHT, GetHandleId(tm), 4, distance)
    call SaveReal(YDHT, GetHandleId(tm), 5, angle)
    call SaveReal(YDHT, GetHandleId(tm), 6, a)
    call SaveReal(YDHT, GetHandleId(tm), 7, b)
    call SaveReal(YDHT, GetHandleId(tm), 8, m)
endfunction

function Fly_tm takes nothing returns nothing
	local timer tm=GetExpiredTimer()
    local unit u=LoadUnitHandle(YDHT, GetHandleId(tm), 0)
    local real x=LoadReal(YDHT, GetHandleId(tm), 1)
    local real y=LoadReal(YDHT, GetHandleId(tm), 2)
    local real n=LoadReal(YDHT, GetHandleId(tm), 3)
    local real dis=LoadReal(YDHT, GetHandleId(tm), 4)
    local real ang=LoadReal(YDHT, GetHandleId(tm), 5)
    local real a=LoadReal(YDHT, GetHandleId(tm), 6)
    local real b=LoadReal(YDHT, GetHandleId(tm), 7)
    local real m=LoadReal(YDHT, GetHandleId(tm), 8)+1
    local real h=a*m*m+b*m
    if m<=n then
        call SaveReal(YDHT, GetHandleId(tm), 8, m)
        call PauseUnit(u,true)
        call SetUnitFlyHeight(u,h,0)
        if XYInMap(x+m*dis*Cos(ang*bj_DEGTORAD),y+m*dis*Sin(ang*bj_DEGTORAD)) then
            set x=x+m*dis*Cos(ang*bj_DEGTORAD)
            set y=y+m*dis*Sin(ang*bj_DEGTORAD)
            call SetUnitX(u,x)
            call SetUnitY(u,y)
        else
            call SetUnitFlyHeight(u,0,0)
            call PauseUnit(u,false)
            call clearTimer(tm)
        endif
    else
        call PauseUnit(u,false)
        call clearTimer(tm)
    endif
    set u=null
    set tm=null
endfunction



function Fly takes unit u,real speed,real height,real angle,real time returns nothing
    local timer tm=CreateTimer()
    local real x=GetUnitX(u)
    local real y=GetUnitY(u)
    local real n=time*100
    local real distance=speed/n
    local real a=-4*height/(n*n)
    local real b=4*height/n
    if height>0 then
        call UnitAddAbility(u,'Arav')
        call UnitRemoveAbility(u,'Arav')
    endif
    call saveVarsInTimer(tm,u,x,y,n,distance,angle,a,b,0)
    call TimerStart(tm,0.01,true,function Fly_tm)
    set tm=null
endfunction

function FlyEnd takes nothing returns nothing
	local timer tm=GetExpiredTimer()
	local unit u=LoadUnitHandle(YDHT, GetHandleId(tm), 0)
	call DestroyEffect(udg_JTX[GetPlayerId(GetOwningPlayer(u))+1])
	call clearTimer(tm)
	set u=null
	set tm=null
endfunction

function ShuiShangPiao takes nothing returns nothing
	local location source = GetUnitLoc(GetTriggerUnit())
	local location destination = GetSpellTargetLoc()
	local real angle = AngleBetweenPoints(source, destination)
	local real speed = 500.
	local real height = 200.
	local timer t = CreateTimer()
	local real lastTime = RMinBJ(DistanceBetweenPoints(source, destination)/speed, 2.) //轻功持续时间
	call WuGongShengChong(GetTriggerUnit(), 'A07Y', 200)
	call SetUnitFacing( GetTriggerUnit(), angle)
	call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Weapons\\PhoenixMissile\\Phoenix_Missile.mdl"))
	set udg_JTX[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))+1]=AddSpecialEffectTarget("Abilities\\Weapons\\PhoenixMissile\\Phoenix_Missile.mdl", GetTriggerUnit(), "origin")
    call SetUnitAnimation( GetTriggerUnit(), "walk" )
	call Fly(GetTriggerUnit(),speed,height,angle,lastTime)
	//call YDWEJumpTimer(GetTriggerUnit(),angle,speed*lastTime,lastTime,0.03,height)
    call SaveUnitHandle(YDHT, GetHandleId(t), 0, GetTriggerUnit())
	call TimerStart(t,lastTime,false,function FlyEnd)
	call RemoveLocation(source)
	call RemoveLocation(destination)
	set source = null
	set destination = null
endfunction

/*
 * 铁掌帮触发器总函数
 */
function TieZhang_Trigger takes nothing returns nothing

	/*
	 * 铁砂掌触发器
	 */
	local trigger t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsTieShaZhang))
	call TriggerAddAction(t,function TieShaZhang)

	/*
	 * 毒蛇神掌触发器
	 */
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsDuSheShenZhang))
    call TriggerAddAction(t,function DuSheShenZhang)

	/*
	 * 通背拳触发器
	 */
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsTongBeiQuan))
	call TriggerAddAction(t,function TongBeiQuan)

	/*
	 * 水上漂触发器
	 */
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsShuiShangPiao))
    call TriggerAddAction(t,function ShuiShangPiao)

	set t =null
endfunction
