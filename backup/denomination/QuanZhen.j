globals
	unit udg_xiantiandanwei
endglobals
//全真剑法 3级技
function IsQuanZhen takes nothing returns boolean
	return (IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))) and GetUnitAbilityLevel(GetAttacker(),'A0CF')>=1
endfunction
function QuanZhen_Condition takes nothing returns boolean
	return (IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetAttacker()))) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function QuanZhen_Action takes nothing returns nothing
    local unit u=GetAttacker()
    local unit uc=GetEnumUnit()
    local real shxishu=1.
    local real shanghai=0.
    local integer i=1+GetPlayerId(GetOwningPlayer(u))
    local location loc=GetUnitLoc(u)
    local location loc2=GetUnitLoc(uc)
    set shxishu=1+jingmai[i]/20
    set shanghai=ShangHaiGongShi(u,uc,12.,21.,shxishu,'A0CF')
    call WuGongShangHai(u,uc,shanghai)
    call DestroyEffect(AddSpecialEffectTarget("Units\\NightElf\\Wisp\\WispExplode.mdl",uc,"overhead"))
    if GetUnitAbilityLevel(u,'A07S')>=1 and GetRandomReal(1.,100)<=20 then
	    call CreateNUnitsAtLoc(1,1697656880,GetOwningPlayer(u),loc2,bj_UNIT_FACING)
        call UnitAddAbility(bj_lastCreatedUnit,1093678412)
        call IssueTargetOrderById(bj_lastCreatedUnit,$D007F,uc)
        call UnitApplyTimedLife(bj_lastCreatedUnit,1112045413,2.)
        call ShowUnitHide(bj_lastCreatedUnit)
        call CreateTextTagLocBJ("封穴",loc2,0,12.,65.,55.,42.,0)
        call Nw(3.,bj_lastCreatedTextTag)
        call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,90)
    endif
    if GetUnitAbilityLevel(u,'A07V')>=1 then
	    call SetWidgetLife(u,GetUnitState(u,UNIT_STATE_LIFE)+GetUnitAbilityLevel(u,'A0CF')*yishu[i]*20)
    endif
    call RemoveLocation(loc)
    call RemoveLocation(loc2)
    set loc2=null
    set loc=null
    set u=null
    set uc=null
endfunction
function QuanZhenJian takes nothing returns nothing
    local unit uc=GetTriggerUnit()
    local unit u=GetAttacker()
    local player p=GetOwningPlayer(u)
    local integer i=1+GetPlayerId(p)
    local location loc=GetUnitLoc(u)
    local group g=CreateGroup()
    local real chance=fuyuan[i]
    if GetUnitAbilityLevel(u,'A07W')>=1 then
	    set chance=chance*4
    endif
    if GetRandomReal(0,100)<=20+chance/5 then
        call WuGongShengChong(u,'A0CF',1100.)


        if danpo[i]>=15 then
	        call GroupEnumUnitsInRangeOfLoc(g,loc,danpo[i]*20,Condition(function QuanZhen_Condition))

	    else
	        call GroupAddUnit(g,uc)
        endif
            call ForGroupBJ(g,function QuanZhen_Action)
        call GroupClear(g)
        call DestroyGroup(g)
        call RemoveLocation(loc)
    endif
    set g=null
    set loc=null
    set p=null
    set u=null
    set uc=null
endfunction

//昊天掌 15级技
function IsXianTianYiYang takes nothing returns boolean
    return GetSpellAbilityId()=='A0CM' and (IsUnitEnemy(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit())) or GetSpellTargetUnit()==GetTriggerUnit())
endfunction
function XianTianYiYang_Condition takes nothing returns boolean
	return (IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function XianTianYiYang_Action takes nothing returns nothing
    local unit u=GetTriggerUnit()
    local unit uc=GetEnumUnit()
    local unit ut=null
    local location loc1=GetUnitLoc(u)
    local location loc2=GetUnitLoc(uc)
    local real shxishu=1.
    local real shanghai=0.
    local integer level=0
    local integer i=1+GetPlayerId(GetOwningPlayer(u))
    call CreateNUnitsAtLoc(1,'e00X',GetOwningPlayer(u),loc1,bj_UNIT_FACING)
    set ut=bj_lastCreatedUnit
    call UnitAddAbility(ut,'A0DJ')
    call IssueTargetOrderById(ut,$D0097,uc)
    call UnitApplyTimedLife(ut,1112045413,2.)
    call ShowUnitHide(ut)
    if GetUnitAbilityLevel(u,'A0DE')>=1 then
	    set shxishu=shxishu*2
    endif
    if GetUnitAbilityLevel(u,'A07U')>=1 then
	    set shxishu=shxishu/2
    endif
    set shanghai=ShangHaiGongShi(u,uc,250,700,shxishu,'A0CM')
    call WuGongShangHai(u,uc,shanghai)
    if GetUnitAbilityLevel(u,'A06P')>=1 and GetRandomReal(1.,200)<=fuyuan[i] then
	    //call SetUnitState(u,UNIT_STATE_MANA,GetUnitState(u,UNIT_STATE_MANA)+80)
	    set level=GetUnitAbilityLevel(u,'A06P')
	    //call UnitRemoveAbility(u,'A06P')
	    //call UnitAddAbility(u,'A06P')
	    //call SetUnitAbilityLevel(u,'A06P',level)
	    call IssuePointOrderByIdLoc(u,$D009D,loc2)
	    call UnitRemoveAbility(u,'A06P')
	    call UnitAddAbility(u,'A06P')
	    call SetUnitAbilityLevel(u,'A06P',level)
    endif
    if fuyuan[i]>=20 and jingmai[i]>=20  and GetRandomReal(1.,200)<=fuyuan[i] then
	    set level=GetUnitAbilityLevel(u,'A0CM')
	    call UnitRemoveAbility(u,'A0CM')
	    call UnitAddAbility(u,'A0CM')
	    call SetUnitAbilityLevel(u,'A0CM',level)
    endif
    if GetUnitAbilityLevel(u,'A07V')>=1 then
        call CreateNUnitsAtLoc(1,1697656880,GetOwningPlayer(u),loc2,bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit,1093678903)
        call IssueTargetOrderById(bj_lastCreatedUnit,$D008F,uc)
        call UnitApplyTimedLife(bj_lastCreatedUnit,1112045413,2.)
        call CreateTextTagLocBJ("内伤",loc2,60.,12.,65.,55.,42.,0)
        call Nw(3.,bj_lastCreatedTextTag)
        call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,90)
    endif
    call RemoveLocation(loc1)
    call RemoveLocation(loc2)
    set u=null
    set uc=null
    set ut=null
    set loc1=null
    set loc2=null
endfunction
function XianTianYiYang takes nothing returns nothing
    local unit u=GetTriggerUnit()
    local unit uc=GetSpellTargetUnit()
    local location loc=GetUnitLoc(uc)
    local group g=CreateGroup()
    call WuGongShengChong(u,'A0CM',250)
    if u==uc then
	    call SetWidgetLife(u,1.)
	    call WuGongShangHai(u,u,299999)
    endif
    if GetUnitAbilityLevel(u,'A07U')>=1 then
	    call GroupEnumUnitsInRangeOfLoc(g,loc,500,Condition(function XianTianYiYang_Condition))

	else
	    call GroupAddUnit(g,uc)
    endif
    call ForGroupBJ(g,function XianTianYiYang_Action)
    call GroupClear(g)
    call DestroyGroup(g)
    call RemoveLocation(loc)
    set u=null
    set uc=null
    set loc=null
    set g=null
endfunction

//金雁功 8级技

function IsJinYanKai takes nothing returns boolean
    return GetIssuedOrderId()==$D00D1 and GetUnitAbilityLevel(GetTriggerUnit(),'A0DA')>=1
endfunction
//没蓝自动关闭金雁功
function JinYanMeiLan takes nothing returns nothing
    local timer t=GetExpiredTimer()
    local unit u=LoadUnitHandle(YDHT,GetHandleId(t),0)
    if UnitHasBuffBJ(u,'B00W')==false then
	    call UnitRemoveAbility(u,'A0DB')
        call UnitRemoveAbility(u,'A0DC')
        call UnitRemoveAbility(u,'Aspb')
        call FlushChildHashtable(YDHT,GetHandleId(t))
        call PauseTimer(t)
        call DestroyTimer(t)
    endif
    set u=null
    set t=null
endfunction
//开启金雁功
function JinYanKai takes nothing returns nothing
    local unit u=GetTriggerUnit()
    local integer level=GetUnitAbilityLevel(u,'A0DA')
    local timer t=CreateTimer()
    call UnitAddAbility(u,'A0DB')
    call UnitAddAbility(u,'A0DC')
    call UnitAddAbilityBJ( 'Aspb', u )
    call SetPlayerAbilityAvailableBJ( false, 'Aspb', GetOwningPlayer(u) )
    if GetUnitAbilityLevel(u,'A07T')>=1 then
        call SetUnitAbilityLevel(u,'A0DB',level+1)
    else
        call SetUnitAbilityLevel(u,'A0DB',level)
    endif
    if GetUnitAbilityLevel(u,'A0CH')>=1 then
        call SetUnitAbilityLevel(u,'A0DC',level+1)
    else
        call SetUnitAbilityLevel(u,'A0DC',level)
    endif
    if GetUnitAbilityLevel(u,'A0DE')>=1 then
        call SetUnitAbilityLevel(u,'A0DD',level+1)
    else
        call SetUnitAbilityLevel(u,'A0DD',level)
    endif
    //set fuyuan[1+GetPlayerId(GetOwningPlayer(u))]=fuyuan[1+GetPlayerId(GetOwningPlayer(u))]+10
    call WuGongShengChong(u,'A0DA',150.)
    //call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,I2S(GetUnitAbilityLevel(u,'A0DD')))
    call SaveUnitHandle(YDHT,GetHandleId(t),0,u)
    call TimerStart(t,0.5,true,function JinYanMeiLan)
    set t=null
    set u=null
endfunction
//关闭金雁功
function IsJinYanGuan takes nothing returns boolean
    return GetIssuedOrderId()==$D00D2 and GetUnitAbilityLevel(GetTriggerUnit(),'A0DA')>=1
endfunction
function JinYanGuan takes nothing returns nothing
    local unit u=GetTriggerUnit()
    call UnitRemoveAbility(u,'A0DB')
    call UnitRemoveAbility(u,'A0DC')
    call UnitRemoveAbility(u,'Aspb')
    //set fuyuan[1+GetPlayerId(GetOwningPlayer(u))]=fuyuan[1+GetPlayerId(GetOwningPlayer(u))]-10
    set u=null

endfunction
//金雁功被动
function IsJinYan takes nothing returns boolean
    return IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker())) and  UnitHasBuffBJ(GetAttacker(),'B00W')
endfunction
function JinYanFanWei takes nothing returns boolean
	return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetAttacker())) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function JinYanGong takes nothing returns nothing
    local unit u=GetAttacker()
    local unit ut=GetTriggerUnit()
    local group g=CreateGroup()
    local location loc=GetUnitLoc(u)
    local unit uc=null
    local location loc2=GetUnitLoc(ut)
    local integer level=0
    call GroupEnumUnitsInRangeOfLoc(g,loc,1000,Condition(function JinYanFanWei))
    set uc=GroupPickRandomUnit(g)
    if GetRandomReal(1.,100)<=fuyuan[1+GetPlayerId(GetOwningPlayer(u))] then
        if GetUnitAbilityLevel(u,'A07T')>=1 then
	        call CreateNUnitsAtLoc(1,1697656880,GetOwningPlayer(u),loc2,bj_UNIT_FACING)
            call ShowUnitHide(bj_lastCreatedUnit)
            call UnitAddAbility(bj_lastCreatedUnit,1093678903)
            call IssueTargetOrderById(bj_lastCreatedUnit,$D008F,ut)
            call UnitApplyTimedLife(bj_lastCreatedUnit,1112045413,2.)
            call CreateTextTagLocBJ("内伤",loc2,60.,12.,65.,55.,42.,0)
            call Nw(3.,bj_lastCreatedTextTag)
            call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,90)
        endif
        if GetUnitAbilityLevel(u,'A0CH')>=1 then
            call CreateNUnitsAtLoc(1,1697656880,GetOwningPlayer(u),loc2,bj_UNIT_FACING)
            call UnitAddAbility(bj_lastCreatedUnit,1093678900)
            call IssueTargetOrderById(bj_lastCreatedUnit,$D022F,ut)
            call UnitApplyTimedLife(bj_lastCreatedUnit,1112045413,2.)
            call ShowUnitHide(bj_lastCreatedUnit)
            call CreateTextTagLocBJ("中毒",loc2,0,12.,65.,55.,42.,0)
            call Nw(3.,bj_lastCreatedTextTag)
            call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,90)
        endif
        if GetUnitAbilityLevel(u,'A0DE')>=1 then
            call CreateNUnitsAtLoc(1,1697656880,GetOwningPlayer(u),loc2,bj_UNIT_FACING)
            call ShowUnitHide(bj_lastCreatedUnit)
            call UnitAddAbility(bj_lastCreatedUnit,1093681498)
            call IssueTargetOrderById(bj_lastCreatedUnit,$D006B,ut)
            call UnitApplyTimedLife(bj_lastCreatedUnit,1112045413,2.)
            call CreateTextTagLocBJ("昏迷",loc2,60.,12.,65.,55.,42.,0)
            call Nw(3.,bj_lastCreatedTextTag)
            call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,90)
        endif
        if uc!=null and GetUnitAbilityLevel(u,'A0CM')>=1 and GetRandomInt(1,10)==1 then
	        call SetUnitState(u,UNIT_STATE_MANA,GetUnitState(u,UNIT_STATE_MANA)+70)
            set level=GetUnitAbilityLevel(u,'A0CM')
	        call UnitRemoveAbility(u,'A0CM')
	        call UnitAddAbility(u,'A0CM')
	        call SetUnitAbilityLevel(u,'A0CM',level)
        endif
    endif
    call GroupClear(g)
    call DestroyGroup(g)
    call RemoveLocation(loc)
    set u=null
    set uc=null
    set g=null
    set loc=null
endfunction

//先天功

function IsXianTian takes nothing returns boolean
    return ((GetUnitAbilityLevel(GetTriggerUnit(), 'A0CH') >=1 ) and (GetEventDamage() >= GetUnitState(GetTriggerUnit(), UNIT_STATE_LIFE)))
endfunction
function XianTian_Condition takes nothing returns boolean
	return (IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(udg_xiantiandanwei))) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function XianTian_Action takes nothing returns nothing
	local unit uc=GetEnumUnit()
	local real shxishu=1.
	local real shanghai=0.
	local location loc=GetUnitLoc(uc)
	set shanghai=ShangHaiGongShi(udg_xiantiandanwei,uc,2000,800,shxishu,'A0CH')
	call WuGongShangHai(udg_xiantiandanwei,uc,shanghai)
	if GetUnitAbilityLevel(udg_xiantiandanwei,'A07V')>=1 then
		set shxishu=shxishu+1.
	endif
	if GetUnitAbilityLevel(udg_xiantiandanwei,'A06P')>=1 then
		call CreateNUnitsAtLoc(1,1697656880,GetOwningPlayer(udg_xiantiandanwei),loc,bj_UNIT_FACING)
        call UnitAddAbility(bj_lastCreatedUnit,1093678412)
        call IssueTargetOrderById(bj_lastCreatedUnit,$D007F,uc)
        call UnitApplyTimedLife(bj_lastCreatedUnit,1112045413,2.)
        call ShowUnitHide(bj_lastCreatedUnit)
        call CreateTextTagLocBJ("封穴",loc,0,12.,65.,55.,42.,0)
        call Nw(3.,bj_lastCreatedTextTag)
        call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,90)
    endif
    if GetUnitAbilityLevel(udg_xiantiandanwei,'A07O')>=1 then
        call CreateNUnitsAtLoc(1,1697656880,GetOwningPlayer(udg_xiantiandanwei),loc,bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit,'A0DF')
        call IssueTargetOrderById(bj_lastCreatedUnit,$D0062,udg_xiantiandanwei)
        call UnitApplyTimedLife(bj_lastCreatedUnit,1112045413,3.)
    endif
    call RemoveLocation(loc)
    set loc=null
	set uc=null

endfunction
function XianTian2 takes nothing returns nothing
	local timer t=GetExpiredTimer()
	local integer p=GetHandleId(t)
	local unit u=LoadUnitHandle(YDHT,p,0)
	local group g=CreateGroup()
	local location loc=GetUnitLoc(u)
	local real range=800
	set udg_xiantiandanwei=u
	if GetUnitAbilityLevel(u,'A07W')>=0 then
		set range=range+700
	endif
    call GroupEnumUnitsInRangeOfLoc(g,loc,range,Condition(function XianTian_Condition))
    call ForGroupBJ(g,function XianTian_Action)
    call GroupClear(g)
    call DestroyGroup(g)
    call PauseTimer(t)
    call DestroyTimer(t)
    call RemoveLocation(loc)
    set u=null
    set t=null
    set g=null
    set loc=null
endfunction
//捕捉重生事件
function XianTian1 takes nothing returns nothing
    local timer t=GetExpiredTimer()
    local timer tm=null
    local integer p=GetHandleId(t)
    local unit u=LoadUnitHandle(YDHT,p,0)
    if GetPlayerState(GetOwningPlayer(u),PLAYER_STATE_RESOURCE_FOOD_USED)==LoadInteger(YDHT,p,1) then
        //call DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "捕捉成功" )
        call WuGongShengChong(u,'A0CH',40.)
        set tm = CreateTimer()
        call SaveUnitHandle(YDHT,GetHandleId(tm),0,u)
        call SaveInteger(YDHT,GetHandleId(tm),1,LoadInteger(YDHT,p,1))
        call PauseTimer(t)
        call DestroyTimer(t)
        call FlushChildHashtable(YDHT,p)
        call TimerStart(tm, 3.01, false, function XianTian2)
    else
    endif
    set t = null
    set tm=null
    set u=null
endfunction

function XianTianGong takes nothing returns nothing
    local timer t= CreateTimer()
    local integer p=GetHandleId(t)
    local unit u=GetTriggerUnit()
    call SaveUnitHandle(YDHT,p,0,u)
    call SaveInteger(YDHT,p,1,GetPlayerState(GetOwningPlayer(u),PLAYER_STATE_RESOURCE_FOOD_USED))
    call TimerStart(t, 0.00, false, function XianTian1)
    set t = null
    set u=null
endfunction

//三花聚顶
function IsSanHua takes nothing returns boolean
	return (GetSpellAbilityId()=='A0DE')
endfunction
function SanHua_Condition takes nothing returns boolean
	return GetUnitTypeId(GetEventDamageSource())=='e00Y'
endfunction
function SanHua_Action takes nothing returns nothing
    local player p=GetOwningPlayer(GetEventDamageSource())
    local integer i=1+GetPlayerId(p)
	local unit u=udg_hero[i]
	local unit uc=GetTriggerUnit()
	local location loc = GetUnitLoc(uc)
	local real shxishu=1.
	local real shanghai=0
	if GetUnitAbilityLevel(u,'A07R')>=1 then
		set shxishu=shxishu+.7
	endif
	if GetUnitAbilityLevel(u,'A07A')>=1 then
		call WanBuff(u, uc, 5)
	endif
	set shanghai=ShangHaiGongShi(u,uc,250,180,shxishu,'A0DE')
	if IsUnitEnemy(uc,GetOwningPlayer(u)) then
		call WuGongShangHai(u,uc,shanghai)
	else
	    call SetWidgetLife(uc,GetUnitState(uc,UNIT_STATE_LIFE)+shanghai/10)
	    call SetUnitState(uc,UNIT_STATE_MANA,GetUnitState(uc,UNIT_STATE_MANA)+200)
    endif
    call RemoveLocation(loc)
    set p=null
    set u=null
    set uc=null
    set loc=null
endfunction
function SanHua_1 takes nothing returns boolean
	return IsUnitAliveBJ(GetFilterUnit())
endfunction
function SanHua takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local location loc = GetUnitLoc(u)
	local location loc2 = null
	local group g = null
	local unit ut=null
	local unit uc=GetSpellTargetUnit()
	local integer i = 0
	local integer imax = 10
	if GetUnitAbilityLevel(u,'A06H')>=1 then
		set imax = imax + 3
	endif
	if GetUnitAbilityLevel(u,'A07V')>=1 then
		set imax = imax + 3
	endif
	if GetUnitAbilityLevel(u,'A0D4')>=1 then
		set imax = imax + 50
	endif
	call WuGongShengChong(u,'A0DE',150.)
	call CreateNUnitsAtLoc(1,'e00Y',GetOwningPlayer(u),loc,bj_UNIT_FACING)
	set ut=bj_lastCreatedUnit
	call UnitAddAbility(ut,'A0DG')
	call UnitApplyTimedLife(ut,1112045413,2.)
    call ShowUnitHide(ut)
	call IssueTargetOrderById(ut,$D0097,uc)
    call RemoveLocation(loc)
    loop
	    exitwhen i > imax
		set loc2 = GetUnitLoc(uc)
		set g = CreateGroup()
		call GroupEnumUnitsInRangeOfLoc(g, loc2, 800, Condition(function SanHua_1))
		if g != null then
			call CreateNUnitsAtLoc(1,'e00Y',GetOwningPlayer(u),loc2,bj_UNIT_FACING)
			set ut=bj_lastCreatedUnit
			call UnitAddAbility(ut,'A0DG')
			call UnitApplyTimedLife(ut,1112045413,2.)
    		call ShowUnitHide(ut)
    		set uc = GroupPickRandomUnit(g)
			call IssueTargetOrderById(ut, $D0097, uc)
			call DestroyGroup(g)
			call RemoveLocation(loc2)
			call YDWEPolledWaitNull(0.15)
		else
			call DestroyGroup(g)
			call RemoveLocation(loc2)
			exitwhen true
		endif
	    set i = i + 1
    endloop
	set u=null
	set loc=null
	set loc2 = null
	set uc=null
	set ut=null
	set g = null
endfunction

//事件
function QuanZhen_Trigger takes nothing returns nothing
	local trigger t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsQuanZhen))
    call TriggerAddAction(t,function QuanZhenJian)
    set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsXianTianYiYang))
    call TriggerAddAction(t,function XianTianYiYang)
    set t=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(t,Condition(function IsJinYanKai))
    call TriggerAddAction(t,function JinYanKai)
    set t=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(t,Condition(function IsJinYanGuan))
    call TriggerAddAction(t,function JinYanGuan)
    set t=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsJinYan))
    call TriggerAddAction(t,function JinYanGong)
    set t = CreateTrigger()
    call YDWESyStemAnyUnitDamagedRegistTrigger( t )
    call TriggerAddCondition(t, Condition(function IsXianTian))
    call TriggerAddAction(t, function XianTianGong)
    set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsSanHua))
    call TriggerAddAction(t,function SanHua)
    set t=CreateTrigger()
    call YDWESyStemAnyUnitDamagedRegistTrigger( t )
    call TriggerAddCondition(t, Condition(function SanHua_Condition))
    call TriggerAddAction(t, function SanHua_Action)
    set t =null
endfunction
