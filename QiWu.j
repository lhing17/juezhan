//寒冰真气
function IsHanBingZhenQi takes nothing returns boolean
	return GetSpellAbilityId()=='A03L'
endfunction
function HanBingZhenQi takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local unit ut = GetSpellTargetUnit()
	local player p = GetOwningPlayer(u)
	local location loc = GetUnitLoc(ut)
	call CreateNUnitsAtLoc(1,'e000',p,loc,bj_UNIT_FACING)
	call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddAbility(bj_lastCreatedUnit,'A038')
	if GetUnitAbilityLevel(u, 'A07T')!=0 or GetUnitAbilityLevel(u, 'A07Q')!=0 then
		call SetUnitAbilityLevel(bj_lastCreatedUnit,'A038', 3)
	endif
	if GetUnitAbilityLevel(u, 'A0DN')!=0 or GetUnitAbilityLevel(u, 'A07O')!=0 then
		call IncUnitAbilityLevel(bj_lastCreatedUnit, 'A038')
	endif
	call IssueTargetOrderById(bj_lastCreatedUnit,$D0101,ut)
endfunction
//百步神拳
//无相劫指
function IsWuXiangJieZhi takes nothing returns boolean
	return GetSpellAbilityId()=='A03P'
endfunction
function WuXiangTimeOut takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	call UnitRemoveAbility(u, 'A03M')
	call PauseTimer(t)
	call DestroyTimer(t)
	call FlushChildHashtable(YDHT, GetHandleId(t))
	set u = null
	set t = null
endfunction
function WuXiangJieZhi takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local timer t = CreateTimer()
	call UnitAddAbility(u, 'A03M')
	call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	call TimerStart(t, 3600, false, function WuXiangTimeOut)
	set u = null
	set t = null
endfunction
function IsWuXiangShangHai takes nothing returns boolean
	return GetEventDamage()==1.58
endfunction
function WuXiangShangHai takes nothing returns nothing
	local unit ut = GetEventDamageSource()
	local unit uc = GetTriggerUnit()
	local integer i = 1 + GetPlayerId(GetOwningPlayer(ut))
	local unit u = udg_hero[i]
	local real shxishu= 1.
	local real shanghai=0.
	if GetUnitAbilityLevel(u,'A06H')>=1 then
		set shxishu=shxishu+0.8
	endif
	if GetUnitAbilityLevel(u,'A07O')>=1 then
		set shxishu=shxishu+0.6
	endif
	if UnitHasBuffBJ(uc, 'Bfro') then
		set shxishu = shxishu * 3
	endif
	set shxishu = shxishu * (1. + I2R(danpo[i])/20 + I2R(juexuelingwu[i]))
	set shanghai=ShangHaiGongShi(u,uc,14., 19.,shxishu,'A03P')
	call WuGongShangHai(u,uc,shanghai)
	if GetUnitAbilityLevel(u,'A06P')>=1 and GetRandomInt(1, 100)<=8 then
		call WanBuff(u, uc, 11)
	endif
	set u=null
    set uc=null
endfunction
//神行百变
globals
	real array udg_shenxingpoyin
	unit array udg_shenxingfuzhu
	unit array udg_miaoshoufuzhu
endglobals
function IsShenXingBaiBian takes nothing returns boolean
    return ((GetSpellAbilityId() == 'A03N'))
endfunction

function ShenXingBaiBian_2 takes nothing returns nothing
	local trigger t = GetTriggeringTrigger()
	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local real r = LoadReal(YDHT, GetHandleId(t), 1)
    if ((YDWEIsTriggerEventId(EVENT_UNIT_SPELL_EFFECT) == true)) then
        set udg_shenxingpoyin[1+GetPlayerId(GetOwningPlayer(u))] = 0.
        call DestroyTrigger(t)
    else
        if udg_shenxingpoyin[1+GetPlayerId(GetOwningPlayer(u))] <= 0.00 then
            call DestroyTrigger(t)
        else
            set udg_shenxingpoyin[1+GetPlayerId(GetOwningPlayer(u))] = udg_shenxingpoyin[1+GetPlayerId(GetOwningPlayer(u))]-0.01
        endif
    endif
endfunction

function ShenXingBaiBian_1 takes nothing returns nothing
	local timer tm = GetExpiredTimer()
	local unit u = LoadUnitHandle(YDHT, GetHandleId(tm), 0)
	local trigger t = CreateTrigger()
	set udg_shenxingpoyin[1+GetPlayerId(GetOwningPlayer(u))] = 19.5
	call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
    call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_SPELL_EFFECT )
    call TriggerRegisterTimerEventPeriodic( t, 0.01 )
    call TriggerAddCondition(t, Condition(function ShenXingBaiBian_2))
    call DestroyTimer(tm)
    set t = null
    set tm = null
    set u = null
endfunction

function ShenXingBaiBian takes nothing returns nothing
	local timer t = CreateTimer()
	local unit u = GetTriggerUnit()
	call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
    call TimerStart(t, 0.5, false, function ShenXingBaiBian_1)
    set t = null
    set u = null
endfunction



function IsShenXingShangHai takes nothing returns boolean
    return (IsUnitAlly(GetAttackedUnitBJ(), GetOwningPlayer(GetAttacker())) == false) and (IsUnitType(GetAttackedUnitBJ(), UNIT_TYPE_STRUCTURE) == false) and udg_shenxingpoyin[1+GetPlayerId(GetOwningPlayer(GetAttacker()))]>0.00
endfunction
function ShenXingShaRen takes nothing returns nothing
	local unit u = GetKillingUnit()
	local integer level = 0
	//call BJDebugMsg("到这了吗2？")
	if GetUnitAbilityLevel(u, 'A06L')!=0 then
		set level = GetUnitAbilityLevel(u, 'A03N')
		call UnitRemoveAbility(u, 'A03N')
		call UnitAddAbility(u, 'A03N')
		call SetUnitAbilityLevel(u, 'A03N', level)
	endif
	set u = null
endfunction
function ShenXingShangHai_1 takes nothing returns nothing
	local trigger t = GetTriggeringTrigger()
	local trigger t2 = null
	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local unit uc = LoadUnitHandle(YDHT, GetHandleId(t), 1)
	local integer i = 1 + GetPlayerId(GetOwningPlayer(u))
	local real shxishu=1+udg_lilianxishu[i]
	local real shanghai=0.
	if GetUnitAbilityLevel(u,'A07T')>=1 then
		set shxishu=shxishu+1.
	endif
	if GetUnitAbilityLevel(u,'A07X')>=1 then
		set shxishu=shxishu+1.6
	endif
	set t2 = CreateTrigger()
    call TriggerRegisterUnitEvent(t2, uc, EVENT_UNIT_DEATH)
	call TriggerAddAction(t2, function ShenXingShaRen)

    if ((YDWEIsTriggerEventId(EVENT_UNIT_DAMAGED) == true)) then
        if u == GetEventDamageSource() then
            call DisableTrigger(t)
            set shanghai=ShangHaiGongShi(u,uc,140., 190.,shxishu,'A03N')
           	call WuGongShangHai(u,uc,shanghai)

            call EnableTrigger(t)
			set udg_shenxingfuzhu[i] = u
            call DestroyTrigger(t)
        endif
    else
        set udg_shenxingfuzhu[i] = u
        call DestroyTrigger(t)
    endif
    set t = null
    set t2= null
    set u = null
    set uc = null
endfunction

function ShenXingShangHai takes nothing returns nothing
    local trigger t = CreateTrigger()
    local unit u = GetAttacker()
    local unit uc = GetAttackedUnitBJ()
    set udg_shenxingpoyin[1+GetPlayerId(GetOwningPlayer(GetAttacker()))] = 0.00
    call UnitRemoveAbility( GetAttacker(), 'BOwk' )
    if  udg_shenxingfuzhu[1+GetPlayerId(GetOwningPlayer(u))] != GetAttackedUnitBJ() then
    	call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
    	call SaveUnitHandle(YDHT, GetHandleId(t), 1, uc)
        call TriggerRegisterUnitEvent( t, uc, EVENT_UNIT_DAMAGED )
        call TriggerRegisterTimerEventSingle( t, 1.00 )
        call TriggerAddCondition(t, Condition(function ShenXingShangHai_1))
    endif
    set t = null
    set u = null
    set uc = null
endfunction
function IsShenXingMianShang takes nothing returns boolean
	return (IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))) and GetUnitAbilityLevel(GetTriggerUnit(),'A03N')>=1
endfunction

function ShenXingMianShang takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local unit uc = GetEventDamageSource()
	local location loc = GetUnitLoc(u)
	if GetRandomInt(0,100)<15*GetUnitAbilityLevel(u, 'A07Q') then
		call WuDi(u)
		call CreateTextTagLocBJ("MISS",loc,0,14.,GetRandomReal(0., 100),GetRandomReal(0., 100),GetRandomReal(0., 100),.0)
		call Nw(3,bj_lastCreatedTextTag)
	endif
	call RemoveLocation(loc)
	set loc = null
	set u = null
	set uc = null
endfunction


//妙手空空
function IsMiaoShouKongKong takes nothing returns boolean
	return (IsUnitAlly(GetAttackedUnitBJ(), GetOwningPlayer(GetAttacker())) == false) and (IsUnitType(GetAttackedUnitBJ(), UNIT_TYPE_STRUCTURE) == false) and GetUnitAbilityLevel(GetAttacker(), 'A03O')!=0
endfunction
function MiaoShouKongKong_1 takes nothing returns nothing
	local trigger t = GetTriggeringTrigger()
	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local unit uc = LoadUnitHandle(YDHT, GetHandleId(t), 1)
	local real shxishu= GetPlayerState(GetOwningPlayer(u),PLAYER_STATE_RESOURCE_GOLD)
	local real shanghai=0.
	if ((YDWEIsTriggerEventId(EVENT_UNIT_DAMAGED))) then
		call AdjustPlayerStateBJ(5*GetUnitLevel(uc),GetOwningPlayer(u),PLAYER_STATE_RESOURCE_GOLD)
		if (GetUnitAbilityLevel(u, 'A03N'))!=0 then
			call AdjustPlayerStateBJ(5*GetUnitLevel(uc),GetOwningPlayer(u),PLAYER_STATE_RESOURCE_GOLD)
		endif
		if UnitHaveItem(udg_hero[1+GetPlayerId(GetOwningPlayer(u))],'I09Z') then
			call AdjustPlayerStateBJ(5*GetUnitLevel(uc),GetOwningPlayer(u),PLAYER_STATE_RESOURCE_GOLD)
			set shxishu = shxishu*2
		endif
		if (GetUnitAbilityLevel(u, 'A03Q'))!=0 then
			call DisableTrigger(t)
			set  shanghai=ShangHaiGongShi(u,uc,0.001, 0.002,shxishu,'A03O')
    		call WuGongShangHai(u,uc,shanghai)
    		call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl",uc,"overhead"))
    		call EnableTrigger(t)
		endif
		if (GetUnitAbilityLevel(u, 'S002'))!=0 and GetRandomInt(1,100)<=15 then
			call AdjustPlayerStateBJ(2,GetOwningPlayer(u),PLAYER_STATE_RESOURCE_LUMBER)
		endif
		set udg_miaoshoufuzhu[1+GetPlayerId(GetOwningPlayer(GetAttacker()))]=u
		call DestroyTrigger(t)
	else
		set udg_miaoshoufuzhu[1+GetPlayerId(GetOwningPlayer(GetAttacker()))]=u
		call DestroyTrigger(t)
	endif
	set t = null
	set u = null
	set uc = null
endfunction
function MiaoShouKongKong takes nothing returns nothing
    local trigger t = CreateTrigger()
    local unit u = GetAttacker()
    if  udg_miaoshoufuzhu[1+GetPlayerId(GetOwningPlayer(GetAttacker()))] != GetAttackedUnitBJ() then
    	call SaveUnitHandle(YDHT, GetHandleId(t), 0, udg_hero[1+GetPlayerId(GetOwningPlayer(u))])
    	call SaveUnitHandle(YDHT, GetHandleId(t), 1, GetAttackedUnitBJ())
    	call TriggerRegisterUnitEvent( t, GetAttackedUnitBJ(), EVENT_UNIT_DAMAGED )
    	call TriggerRegisterTimerEventSingle( t, 1.00 )
    	call TriggerAddCondition(t, Condition(function MiaoShouKongKong_1))
	endif
    set t = null
endfunction
//龟息功
globals
	real array guixihuixie
endglobals
function IsGuiXiGong takes nothing returns boolean
	return GetUnitAbilityLevel(GetTriggerUnit(), 'A0CE')!=0 and GetEventDamage()>=GetWidgetLife(GetTriggerUnit())
endfunction
//function GuiXiGong_1 takes nothing returns nothing
//	local timer t = GetExpiredTimer()
//	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
//	local integer j = LoadInteger(YDHT, GetHandleId(t), 1)
//	if j <=10 then

//endfunction
function GuiXiXianTian_Condition takes nothing returns boolean
	return (IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function GuiXiXianTian_Action takes nothing returns nothing
	local unit uc=GetEnumUnit()
	local real shxishu=1.
	local real shanghai=0.
	local location loc=GetUnitLoc(uc)
	set shanghai=ShangHaiGongShi(GetTriggerUnit(),uc,800,320,shxishu,'A0CH')
	call WuGongShangHai(GetTriggerUnit(),uc,shanghai)
	if GetUnitAbilityLevel(GetTriggerUnit(),'A07V')>=1 then
		set shxishu=shxishu+1.
	endif
	if GetUnitAbilityLevel(GetTriggerUnit(),'A06P')>=1 then
		call CreateNUnitsAtLoc(1,1697656880,GetOwningPlayer(GetTriggerUnit()),loc,bj_UNIT_FACING)
        call UnitAddAbility(bj_lastCreatedUnit,1093678412)
        call IssueTargetOrderById(bj_lastCreatedUnit,$D007F,uc)
        call UnitApplyTimedLife(bj_lastCreatedUnit,1112045413,2.)
        call ShowUnitHide(bj_lastCreatedUnit)
        call CreateTextTagLocBJ("封穴",loc,0,12.,65.,55.,42.,0)
        call Nw(3.,bj_lastCreatedTextTag)
        call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,90)
    endif
    if GetUnitAbilityLevel(GetTriggerUnit(),'A07O')>=1 then
        call CreateNUnitsAtLoc(1,1697656880,GetOwningPlayer(GetTriggerUnit()),loc,bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit,'A0DF')
        call IssueTargetOrderById(bj_lastCreatedUnit,$D0062,GetTriggerUnit())
        call UnitApplyTimedLife(bj_lastCreatedUnit,1112045413,3.)
    endif
    call RemoveLocation(loc)
    set loc=null
	set uc=null

endfunction
function GuiXiGong takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local group g = CreateGroup()
	local location loc = GetUnitLoc(u)
	local real range = 800.
	//local timer t = null
	if (GetUnitState(u,UNIT_STATE_LIFE)>=0.99*GetUnitState(u,UNIT_STATE_MAX_LIFE)) or (GetRandomReal(1, 100)<=40) or (GetRandomReal(1, 100)<=40 and GetUnitAbilityLevel(u, 'A0DN')!=0) then
		call WuDi(u)
		call SetWidgetLife(u, 1.)
		if GetUnitAbilityLevel(u, 'A0CH')!=0 then
			if GetUnitAbilityLevel(u,'A07W')>=0 then
				set range=range+700
			endif
			call GroupEnumUnitsInRangeOfLoc(g,loc,range,Condition(function GuiXiXianTian_Condition))
			call ForGroupBJ(g,function GuiXiXianTian_Action)
		endif

		if GetUnitAbilityLevel(u, 'A080')!=0 then
			set guixihuixie[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = 20.
			call YDWEPolledWaitNull(2.)
			set guixihuixie[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = 0.
		endif
	endif
	call GroupClear(g)
	call RemoveLocation(loc)
	set loc = null
	set g = null
	set u = null
	//set t = null
endfunction
function GuiXiJiaFang takes nothing returns boolean
	local integer i = 1
	set i = 1
	loop
		exitwhen i >= 6
		if GetUnitAbilityLevel(udg_hero[i], 'A0CE')!=0 then
			if GetUnitMoveSpeed(udg_hero[i])<=200 then
				call UnitAddAbility(udg_hero[i], 'A03S')
				call UnitAddAbility(udg_hero[i], 'A03R')
			elseif GetUnitMoveSpeed(udg_hero[i])<=300 then
				call UnitRemoveAbility(udg_hero[i], 'A03S')
				call UnitAddAbility(udg_hero[i], 'A03R')
			else
				call UnitRemoveAbility(udg_hero[i], 'A03R')
				call UnitRemoveAbility(udg_hero[i], 'A03S')
			endif
		endif
		set i = i + 1
	endloop
	return false
endfunction
//须弥山掌
function IsXuMiKai takes nothing returns boolean
    return GetIssuedOrderId()==$D0057 and GetUnitAbilityLevel(GetTriggerUnit(),'A03T')>=1
endfunction
//开启须弥山掌
function XuMiKai takes nothing returns nothing
    local unit u=GetTriggerUnit()
    local integer level=GetUnitAbilityLevel(u,'A03T')
    call UnitAddAbility(u,'A0DB')
    if GetUnitAbilityLevel(u,'A09D')>=1 then
        call SetUnitAbilityLevel(u,'A0DB',level+1)
    else
        call SetUnitAbilityLevel(u,'A0DB',level)
    endif
    set u=null
endfunction
//关闭须弥山掌
function IsXuMiGuan takes nothing returns boolean
    return GetIssuedOrderId()==$D0058 and GetUnitAbilityLevel(GetTriggerUnit(),'A03T')>=1
endfunction
function XuMiGuan takes nothing returns nothing
    local unit u=GetTriggerUnit()
    call UnitRemoveAbility(u,'A0DB')
    set u=null
endfunction
//夫妻刀法
function IsYuanYangDaoFa takes nothing returns boolean
	return (GetSpellAbilityId() == 'A04V')
endfunction
function YuanYangDaoFa takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local unit ut = GetSpellTargetUnit()
	local location loc = GetUnitLoc(u)
	local location loc2 = GetUnitLoc(ut)
	local real time = 0.5
	local integer i = 1 + GetPlayerId(GetOwningPlayer(u))
	local integer j = 1
	local real lasttime = 5.
	call YDWEJumpTimer( u, AngleBetweenPoints(loc, loc2), DistanceBetweenPoints(loc, loc2), time, 0.01, 0.)
	call PolledWait(time)
	call UnitAddAbility(u, 'A04S')
	call SetPlayerAbilityAvailableBJ( false, 'A04S', GetOwningPlayer(u) )
	if IsUnitAlly(ut, GetOwningPlayer(u)) then
		call UnitAddAbility(ut, 'A04S')
		call SetPlayerAbilityAvailableBJ( false, 'A04S', GetOwningPlayer(ut) )
	endif
	loop
		exitwhen j>6
		if (udg_hero[i]==bd[j]) then
			if (ModuloInteger(j,2)==0) then
				if (bd[j-1]!=null) and bd[j-1]==ut then
					call SetUnitAbilityLevel(u, 'A04T', 3)
					call SetUnitAbilityLevel(u, 'A04U', 3)
					if IsUnitAlly(ut, GetOwningPlayer(u)) then
						call SetUnitAbilityLevel(ut, 'A04T', 3)
						call SetUnitAbilityLevel(ut, 'A04U', 3)
					endif
				endif
			else
				if (bd[j+1]!=null) and bd[j+1]==ut then
					call SetUnitAbilityLevel(u, 'A04T', 3)
					call SetUnitAbilityLevel(u, 'A04U', 3)
					if IsUnitAlly(ut, GetOwningPlayer(u)) then
						call SetUnitAbilityLevel(ut, 'A04T', 3)
						call SetUnitAbilityLevel(ut, 'A04U', 3)
					endif
				endif
			endif
		endif
		set j=j+1
	endloop
	if GetUnitAbilityLevel(u,'A09D')>=1 then
		set lasttime = 10.
	endif
	call PolledWait(lasttime)
	call UnitRemoveAbility(u, 'A04S')
	if GetUnitAbilityLevel(u, 'A04S') >=1 then
		call UnitRemoveAbility(ut, 'A04S')
	endif
	call RemoveLocation(loc)
	call RemoveLocation(loc2)
	set u = null
	set ut = null
	set loc = null
	set loc2 = null
endfunction
//寿木长生功
function isShouMu takes nothing returns boolean
	return (GetSpellAbilityId() == 'A06A')
endfunction
function shouMu takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local location loc = GetUnitLoc(u)
	//马甲施放防御最大化
	call CreateNUnitsAtLoc(1,'e000',p,loc,bj_UNIT_FACING)
	call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddAbility(bj_lastCreatedUnit,'A06V')
	call IssueTargetOrderById(bj_lastCreatedUnit,$D0062,u)
	//马甲施放残废
	call CreateNUnitsAtLoc(1,'e000',p,loc,bj_UNIT_FACING)
	call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddAbility(bj_lastCreatedUnit,'A06U')
	call IssueTargetOrderById(bj_lastCreatedUnit,$D00DD,u)
endfunction
//黄沙万里鞭法
function isHuangSha takes nothing returns boolean
	return (GetSpellAbilityId() == 'A06B')
endfunction
function huangSha takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local location loc = GetUnitLoc(u)
	local integer i = 0
	local location loc1 = null
	call CreateNUnitsAtLoc(1,'e01D',GetOwningPlayer(u),loc,bj_UNIT_FACING)
	call IssueImmediateOrderById(bj_lastCreatedUnit,$D00D1)
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',10.)
	set i = 0
	loop
		exitwhen i >= 8
		set loc1 = PolarProjectionBJ(loc, 200, 45*i)
		call CreateNUnitsAtLoc(1,'e01D',GetOwningPlayer(u),loc1,bj_UNIT_FACING)
		call IssueImmediateOrderById(bj_lastCreatedUnit,$D00D1)
		call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',10.)
		call RemoveLocation(loc1)
		set i = i + 1
	endloop
	set i = 0
	loop
		exitwhen i >= 18
		set loc1 = PolarProjectionBJ(loc, 350, 20*i)
		call CreateNUnitsAtLoc(1,'e01D',GetOwningPlayer(u),loc1,bj_UNIT_FACING)
		call IssueImmediateOrderById(bj_lastCreatedUnit,$D00D1)
		call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',10.)
		call RemoveLocation(loc1)
		set i = i + 1
	endloop
	call RemoveLocation(loc)
	set u = null
	set loc = null
	set loc1 = null
endfunction
function isHuangShaSH takes nothing returns boolean
	return (GetEventDamage()==6.09) and (GetUnitAbilityLevel(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))], 'A06B')>=1 )
endfunction
function huangShaSH takes nothing returns nothing
	local unit u=udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))]
    local unit uc=GetTriggerUnit()
    local real shxishu=1.
    local real shanghai=0.
    if GetUnitAbilityLevel(u,'A06A')>=1 then
		set shxishu=shxishu+0.8
	endif
	if GetUnitAbilityLevel(u,'A0DN')>=1 then
		set shxishu=shxishu+0.6
	endif
    set shanghai=ShangHaiGongShi(u,uc,130,150,shxishu,'A06B')
    call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
//珍珑棋局
//function IsZhenLongQiJu takes nothing returns boolean
//	return GetSpellAbilityId()=='A03U'
//endfunction
//function ZhenLong_Condition takes nothing returns boolean
//	return IsUnitAlly(GetFilterUnit(),Player(0)) and IsUnitAliveBJ(GetFilterUnit()) and GetFilterUnit()!=udg_hero[1] and GetFilterUnit()!=udg_hero[2] and GetFilterUnit()!=udg_hero[3] and GetFilterUnit()!=udg_hero[4] and GetFilterUnit()!=udg_hero[5]
//endfunction
//function ZhenLongQiJu_2 takes nothing returns nothing
//	local unit u = GetTriggerUnit()
//	call WuDi(u)
//	call DestroyTrigger(GetTriggeringTrigger())
//	set u = null
//endfunction
//function ZhenLong_Action takes nothing returns nothing
//	local trigger t = CreateTrigger()
//	//call BJDebugMsg("到这了吗2")
//	call YDWETimerDestroyEffect(0.5, AddSpecialEffectTarget("Abilities\\Spells\\Orc\\Voodoo\\VoodooAuraTarget.mdl",GetEnumUnit(),"origin"))
//	call TriggerRegisterUnitEvent(t, GetEnumUnit(), EVENT_UNIT_DAMAGED)
//	call TriggerAddAction(t, function ZhenLongQiJu_2)
//	set t = null
//endfunction
//function ZhenLongQiJu_1 takes nothing returns nothing
//	local timer t = GetExpiredTimer()
//	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
//	local group g = CreateGroup()
//	local integer j = LoadInteger(YDHT, GetHandleId(t), 1)
//	local location loc = GetUnitLoc(u)
//	if j < 24 then
//		//call BJDebugMsg("到这了吗1")
//		call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(600., loc, Condition(function ZhenLong_Condition)),function ZhenLong_Action)
//		call SaveInteger(YDHT, GetHandleId(t), 1, j+1)
//	else
//		call PauseTimer(t)
//		call DestroyTimer(t)
//		call FlushChildHashtable(YDHT, GetHandleId(t))
//	endif
//	call DestroyGroup(g)
//	call RemoveLocation(loc)
//	set t = null
//	set u = null
//	set g = null
//	set loc = null
//endfunction
//function ZhenLongQiJu takes nothing returns nothing
//	local unit u = GetTriggerUnit()
//	local timer t = CreateTimer()
//	call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
//	call TimerStart(t, 0.5, true, function ZhenLongQiJu_1)
//	set u = null
//	set t = null
//endfunction
//药王神篇
//擒龙控鹤
//枯荣禅功
//function IsXuMiShanZhang takes nothing returns boolean
//	return UnitHasBuffBJ(GetTriggerUnit(),'B013')
//endfunction
//function XuMiShanZhang takes nothing returns nothing
//	local real percent = 25.
//	local real damage = GetEventDamage()
//	local location loc = GetUnitLoc(GetEventDamageSource())
//	local real r = GetRandomReal(1., 10.)
//	if GetUnitAbilityLevel(GetTriggerUnit(), 'A0D8')!=0 then
//		set percent = 50.
//	endif
//	if damage>GetWidgetLife(GetTriggerUnit()) then
//		call WuDi(GetTriggerUnit())
//		call SetWidgetLife(GetTriggerUnit(), GetWidgetLife(GetTriggerUnit())-(100-percent)/100*damage)
//	else
//		call SetWidgetLife(GetTriggerUnit(), GetWidgetLife(GetTriggerUnit())+percent/100*damage)
//	endif
//	if GetUnitAbilityLevel(GetTriggerUnit(), 'A0CE')!=0 then
//		if r*damage>GetWidgetLife(GetEventDamageSource()) then
//			call WuDi(GetEventDamageSource())
//			call SetWidgetLife(GetEventDamageSource(), 1.)
//		else
//			call SetWidgetLife(GetEventDamageSource(), GetWidgetLife(GetEventDamageSource())-r*damage)
//		endif
//		call AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl")
//	endif
//	call RemoveLocation(loc)
//	set loc = null
//endfunction
//事件
function QiWu_Trigger takes nothing returns nothing
	local trigger t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsHanBingZhenQi))
    call TriggerAddAction(t,function HanBingZhenQi)
    set t = CreateTrigger()
    call YDWESyStemAnyUnitDamagedRegistTrigger( t )
    call TriggerAddCondition(t, Condition(function IsWuXiangShangHai))
    call TriggerAddAction(t, function WuXiangShangHai)
    set t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsWuXiangJieZhi))
    call TriggerAddAction(t,function WuXiangJieZhi)
    set t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsShenXingBaiBian))
    call TriggerAddAction(t,function ShenXingBaiBian)
    set t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsShenXingShangHai))
	call TriggerAddAction(t,function ShenXingShangHai)
	set t=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger( t )
	call TriggerAddCondition(t,Condition(function IsShenXingMianShang))
    call TriggerAddAction(t,function ShenXingMianShang)
    set t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsMiaoShouKongKong))
	call TriggerAddAction(t,function MiaoShouKongKong)
	set t=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger( t )
	call TriggerAddCondition(t,Condition(function IsGuiXiGong))
    call TriggerAddAction(t,function GuiXiGong)
    set t = CreateTrigger()
    call TriggerRegisterTimerEventPeriodic(t, 0.1)
    call TriggerAddCondition(t, Condition(function GuiXiJiaFang))
    set t=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(t,Condition(function IsXuMiKai))
    call TriggerAddAction(t,function XuMiKai)
    set t=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(t,Condition(function IsXuMiGuan))
    call TriggerAddAction(t,function XuMiGuan)
    set t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsYuanYangDaoFa))
    call TriggerAddAction(t,function YuanYangDaoFa)
    set t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function isShouMu))
    call TriggerAddAction(t,function shouMu)
    set t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function isHuangSha))
    call TriggerAddAction(t,function huangSha)
    set t = CreateTrigger()
    call YDWESyStemAnyUnitDamagedRegistTrigger( t )
    call TriggerAddCondition(t, Condition(function isHuangShaSH))
    call TriggerAddAction(t, function huangShaSH)
 //   set t=CreateTrigger()
	//call YDWESyStemAnyUnitDamagedRegistTrigger( t )
	//call TriggerAddCondition(t,Condition(function IsXuMiShanZhang))
 //   call TriggerAddAction(t,function XuMiShanZhang)
	//set t = CreateTrigger()
 //   call YDWESyStemAnyUnitDamagedRegistTrigger( t )
 //   call TriggerAddCondition(t, Condition(function IsTianGangShangHai))
 //   call TriggerAddAction(t, function TianGangShangHai)
 //   set t = CreateTrigger()
 //   call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	//call TriggerAddCondition(t,Condition(function IsZhenLongQiJu))
 //   call TriggerAddAction(t,function ZhenLongQiJu)
 //   set t = CreateTrigger()
 //   call YDWESyStemAnyUnitDamagedRegistTrigger( t )
 //   call TriggerAddCondition(t, Condition(function IsZhenWuShangHai))
 //   call TriggerAddAction(t, function ZhenWuShangHai)
 //   set t=CreateTrigger()
	//call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	//call TriggerAddCondition(t,Condition(function IsXueZhenFa))
	//call TriggerAddAction(t,function XueZhenFa)
    set t =null
endfunction

