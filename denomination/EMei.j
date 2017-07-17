//--------峨眉开始--------//
//四象掌
function IsSiXiang takes nothing returns boolean
	local real r=0.
	if GetUnitAbilityLevel(GetAttacker(),'A0C4')>=1 then
		set r=fuyuan[1+GetPlayerId(GetOwningPlayer(GetAttacker()))]*4
	else
	    set r=fuyuan[1+GetPlayerId(GetOwningPlayer(GetAttacker()))]
    endif
    return (GetRandomReal(0.,100.)<15+r/5) and ((GetUnitAbilityLevel(GetAttacker(),'A0C7')>=1)and(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))))
endfunction
function SiXiang_Condition takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetAttacker()))==true) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function SiXiang2 takes nothing returns nothing
    local player p=GetOwningPlayer(udg_sixiangdanwei)
    local integer i=1+GetPlayerId(p)
    local real shanghai=0.
    local real shxishu=1.
    if GetUnitAbilityLevel(udg_sixiangdanwei,'A07N')>=1 then
	    set shxishu=shxishu+0.8
    endif
    set shanghai=ShangHaiGongShi(udg_sixiangdanwei,GetEnumUnit(), 12, 20, shxishu,'A0C7')
    call WuGongShangHai(udg_sixiangdanwei,GetEnumUnit(),shanghai)
    if GetUnitAbilityLevel(udg_sixiangdanwei,'A0C6')>=1 and GetRandomReal(1.,100.)<=27 then
        call WanBuff(udg_sixiangdanwei,GetEnumUnit(), 11)
    endif
    set p=null
endfunction
function SiXiangZhang takes nothing returns nothing
    local unit u=GetAttacker()
    local player p=GetOwningPlayer(u)
    local integer i=0
    local integer imax=0
    local location loc=GetUnitLoc(u)
    local location loc2=GetUnitLoc(GetTriggerUnit())
    local location array loc3
    if GetUnitAbilityLevel(u,'A07W')>=1 then
	    set imax=8
	else
	    set imax=5
    endif
    set i = 1
    loop
    	exitwhen i > imax

    	set loc3[i] = PolarProjectionBJ(loc,(100.00*I2R(i)),0)
    	set loc3[i+imax]=PolarProjectionBJ(loc,(100.00*I2R(i)),90.00)
    	set loc3[i+2*imax]=PolarProjectionBJ(loc,(100.00*I2R(i)),180.00)
    	set loc3[i+3*imax]=PolarProjectionBJ(loc,(100.00*I2R(i)),270.00)

    	set i=i+1
    endloop
    set i=1
    loop
        exitwhen i>imax
        call CreateNUnitsAtLocFacingLocBJ(1,'h00B',p,loc3[i],loc)
        call UnitApplyTimedLife(bj_lastCreatedUnit,'BTLF',0.50)
        set i=i+1
    endloop
    set i=1
    loop
        exitwhen i>imax
        call CreateNUnitsAtLocFacingLocBJ(1,'h00B',p,loc3[i+imax],loc)
        call UnitApplyTimedLife(bj_lastCreatedUnit,'BTLF',0.50)
        set i=i+1
    endloop
    set i=1
    loop
        exitwhen i>imax
        call CreateNUnitsAtLocFacingLocBJ(1,'h00B',p,loc3[i+2*imax],loc)
        call UnitApplyTimedLife(bj_lastCreatedUnit,'BTLF',0.50)
        set i=i+1
    endloop
    set i=1
    loop
        exitwhen i>imax
        call CreateNUnitsAtLocFacingLocBJ(1,'h00B',p,loc3[i+3*imax],loc)
        call UnitApplyTimedLife(bj_lastCreatedUnit,'BTLF',0.50)
        set i=i+1
    endloop

     call WuGongShengChong(u,'A0C7',900.)
    set udg_sixiangdanwei=GetAttacker()
    call GroupEnumUnitsInRangeOfLoc(udg_shanghaidanweizu,loc,imax*100.00,Condition(function SiXiang_Condition))
   // call ForGroupBJ(GetUnitsInRangeOfLocMatching(imax*100.00,loc2,Condition(function SiXiang_Condition)),function SiXiang)
    call ForGroupBJ(udg_shanghaidanweizu,function SiXiang2)
    call GroupClear(udg_shanghaidanweizu)
    call RemoveLocation(loc)
    call RemoveLocation(loc2)
    set i = 1
    loop
    	exitwhen i >= 4*imax
    	call RemoveLocation(loc3[i])
    	set loc3[i]=null
    	set i = i + 1
    endloop
    set u=null
    set p=null
    set loc=null
    set loc2=null
endfunction
//佛光普照
function IsFoGuang takes nothing returns boolean
    return((GetSpellAbilityId()=='A0C4')and(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function FoGuang_Condition takes nothing returns boolean
    local unit u=LoadUnitHandle(YDHT,StringHash("佛光"),StringHash("普照"))
    local unit uc=GetFilterUnit()
    local real shanghai=GetWidgetLife(uc)*.03*GetUnitAbilityLevel(u,'A0C4')
    local timer t=CreateTimer()
    local real r=2.00
    if GetUnitAbilityLevel(u,'A06P')>=1 then
	    set r=4.00
    endif
    if GetUnitAbilityLevel(u,'A07N')>=1 then
	    set shanghai=shanghai*2
    endif
    call SetWidgetLife(u,GetWidgetLife(u)+shanghai)
    if IsUnitEnemy(uc,GetOwningPlayer(u))==true and IsUnitAliveBJ(uc) and IsUnitMonster(uc) == false then
	    if (ModuloInteger(GetUnitPointValue(uc),100)==0) then
            call SetWidgetLife(uc,GetWidgetLife(uc)-shanghai)
        else
        	call SetWidgetLife(uc,GetWidgetLife(uc)-shanghai/6)
        endif
    	call SetUnitDizzy(uc,r,"Abilities\\Spells\\Human\\Thunderclap\\ThunderclapTarget.mdl")
    else
    	if UnitTypeNotNull(uc,UNIT_TYPE_HERO) then
    		call SetWidgetLife(uc,GetWidgetLife(uc)+shanghai)
    	endif
    endif
    set u=null
    set uc=null
    set t=null
    return false
endfunction
function FoGuangHuiXie takes nothing returns nothing
	local timer tm=GetExpiredTimer()
	local integer i=LoadInteger(YDHT,GetHandleId(tm),1)+1
	local unit u=LoadUnitHandle(YDHT,GetHandleId(tm),0)
	call SaveInteger(YDHT,GetHandleId(tm),1,i)
	call SetWidgetLife(u,GetWidgetLife(u)+0.02*GetUnitState(u,UNIT_STATE_MAX_LIFE))
	//call BJDebugMsg("触发一次")
	if i>=60 then
		call FlushChildHashtable(YDHT,GetHandleId(tm))
        call PauseTimer(tm)
		call DestroyTimer(tm)
	endif
	set u=null
	set tm=null
endfunction
function FoGuangZhang takes nothing returns nothing
    local unit u=GetTriggerUnit()
    local player p=GetOwningPlayer(u)
    local integer i=1+GetPlayerId(p)
    local group g=CreateGroup()
    local real r=700.
    local real x=GetUnitX(u)
    local real y=GetUnitY(u)
    local timer tm=CreateTimer()
    call WuGongShengChong(u,'A0C4',200.)
    if GetUnitAbilityLevel(u,'A0DN')>=1 then
	    set r=1500.
    endif
    if GetUnitAbilityLevel(u,'A07S')>=1 then
	    call SaveUnitHandle(YDHT,GetHandleId(tm),0,u)
	    call SaveInteger(YDHT,GetHandleId(tm),1,0)
	    call TimerStart(tm,.25,true,function FoGuangHuiXie)
    endif
    call SaveUnitHandle(YDHT,StringHash("佛光"),StringHash("普照"),u)
    call GroupEnumUnitsInRange(g,x,y,r,Condition(function FoGuang_Condition))
    call DestroyGroup(g)
    set u=null
    set p=null
    set g=null
    set tm=null
endfunction
//金顶绵掌
function IsJinDing takes nothing returns boolean
    return (GetRandomReal(0.,100.)<15+fuyuan[1+GetPlayerId(GetOwningPlayer(GetAttacker()))]/5) and ((GetUnitAbilityLevel(GetAttacker(),'A0C2')>=1)and(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))))
endfunction
function JinDingZhang takes nothing returns nothing
    local unit u=GetAttacker()
    local unit ut=GetTriggerUnit()
    local real shanghai=0.
    local player p=GetOwningPlayer(u)
    local integer i=1+GetPlayerId(p)
    local real shxishu=1.
    if GetUnitAbilityLevel(u,'A0C6')>=1 then
	    set shxishu=shxishu+.5
    endif
    if GetUnitAbilityLevel(u,'A07S')>=1 then
	    set shxishu=shxishu+.7
    endif
        set shanghai=ShangHaiGongShi(u,ut,130,106,shxishu,'A0C2')
    call AddSpecialEffectTargetUnitBJ( "overhead", GetTriggerUnit(), "Abilities\\Spells\\Other\\Transmute\\GoldBottleMissile.mdl" )
    call DestroyEffect( GetLastCreatedEffectBJ() )
    call WuGongShangHai(u,ut,shanghai)
    if jingmai[i]>=20 then
        call YDWEJumpTimer( ut, 0, 0.00, 1, 0.01, GetRandomReal(200,500) )
    endif
    call WuGongShengChong(u,'A0C2',1000.)
    set u=null
    set ut=null
    set p=null
endfunction
//灭绝剑法
function IsMieJue takes nothing returns boolean
    return (  GetSpellAbilityId() == 'A0C5' )
endfunction
function MieJue_Condition takes nothing returns boolean
	return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(udg_miejuedanwei)) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function MieJue_Action takes nothing returns nothing
	local player p=GetOwningPlayer(udg_miejuedanwei)
    local integer i=1+GetPlayerId(p)
    local real shanghai=0.
    local real shxishu=1.
    if GetUnitAbilityLevel(udg_miejuedanwei,'A07M')>=1 then
	    set shxishu=shxishu+0.8
    endif
    if GetUnitAbilityLevel(udg_miejuedanwei,'A071')>=1 then
	    set shxishu=shxishu+0.7
    endif
    set shanghai=ShangHaiGongShi(udg_miejuedanwei,GetEnumUnit(),5.5,5.5,shxishu,'A0C5')
    call WuGongShangHai(udg_miejuedanwei,GetEnumUnit(),shanghai)
    set p=null
endfunction
function On_Timer takes nothing returns nothing
    local timer t= GetExpiredTimer()
    local integer p= GetHandleId(t)
    local real x= LoadReal(YDHT, p, 1) + LoadReal(YDHT, p, 3)
    local real y= LoadReal(YDHT, p, 2) + LoadReal(YDHT, p, 4)
    local integer j= LoadInteger(YDHT, p, 0) + 1
    local integer i= 0
    local unit u=null
    local integer jmax=30
    local real a=0.
    local location loc=null
    call SaveReal(YDHT, p, 1, x)
    call SaveReal(YDHT, p, 2, y)
    call SaveInteger(YDHT, p, 0, j)
    if GetUnitAbilityLevel(udg_miejuedanwei,'A07W')>=1 then
	    set jmax=jmax*2
    endif
    //call DisplayTextToPlayer(Player(0),0,0,"x="+R2S(x)+", y="+R2S(y))
    loop
        exitwhen i >= 12
        set u=LoadUnitHandle(YDHT, p, 5 + i)
        set loc=GetUnitLoc(u)
        set a=( j * 12.0 + i * 30.0 ) * bj_DEGTORAD
        call SetUnitX(u, CheckX(x + 150.0 * Cos(a)))
        call SetUnitY(u, CheckY(y + 150.0 * Sin(a)))
        call GroupEnumUnitsInRangeOfLoc(udg_shanghaidanweizu,loc,100,Condition(function MieJue_Condition))
        call ForGroupBJ(udg_shanghaidanweizu,function MieJue_Action)
        call GroupClear(udg_shanghaidanweizu)
        call RemoveLocation(loc)
        if GetUnitAbilityLevel(udg_miejuedanwei,'A089')>=1 then
            set u=LoadUnitHandle(YDHT, p, 17 + i)
            set loc = GetUnitLoc(u)
            call SetUnitX(u, CheckX(GetUnitX(udg_miejuedanwei) + 150.0 * Cos(a)))
            call SetUnitY(u, CheckY(GetUnitY(udg_miejuedanwei) + 150.0 * Sin(a)))
            call GroupEnumUnitsInRangeOfLoc(udg_shanghaidanweizu,loc,100,Condition(function MieJue_Condition))
            call ForGroupBJ(udg_shanghaidanweizu,function MieJue_Action)
            call GroupClear(udg_shanghaidanweizu)
            call RemoveLocation(loc)
        endif

        set i=i + 1
    endloop
    if ( j >= jmax ) then
        set i=0
        loop
            exitwhen i >= 12
            call KillUnit(LoadUnitHandle(YDHT, p, 5 + i))
            if GetUnitAbilityLevel(udg_miejuedanwei,'A089')>=1 then
                call KillUnit(LoadUnitHandle(YDHT, p, 17 + i))
            endif
            set i=i + 1
        endloop
        call PauseTimer(t)
        call DestroyTimer(t)
        call FlushChildHashtable(YDHT, p)
    endif
    set t=null
    set loc=null
    set u=null
endfunction
function MieJueJian takes nothing returns nothing
    local timer t= CreateTimer()
    local integer p= GetHandleId(t)
    local unit u= GetTriggerUnit()
    local real x= GetUnitX(u)
    local real y= GetUnitY(u)
    local integer i= 0
    local real a
    set a=Atan2(GetSpellTargetY() - y, GetSpellTargetX() - x)
    call SaveInteger(YDHT, p, 0, 0)
    call SaveReal(YDHT, p, 1, x)
    call SaveReal(YDHT, p, 2, y)
    call SaveReal(YDHT, p, 3, 30.0 * Cos(a))
    call SaveReal(YDHT, p, 4, 30.0 * Sin(a))
    loop
        exitwhen i >= 12
        set a=30.0 * i * bj_DEGTORAD
        call SaveUnitHandle(YDHT, p, 5 + i, CreateUnit(GetOwningPlayer(u), 'h00C', x + 150.0 * Cos(a), y + 150.0 * Sin(a), GetUnitFacing(u)))
        if GetUnitAbilityLevel(u,'A089')>=1 then
            call SaveUnitHandle(YDHT, p, 17 + i, CreateUnit(GetOwningPlayer(u), 'h00C', x + 150.0 * Cos(a), y + 150.0 * Sin(a), 0.0))
        endif
        // 在hashtable中你需要自己规划好整数路径的分配
        // 比如在这里, 5,6,...15,16 用于存储12个马甲
        set i=i + 1
    endloop
    set udg_miejuedanwei=u
     call WuGongShengChong(u,'A0C5',250.)
    call TimerStart(t, 0.03, true, function On_Timer)
    set u=null
    set t=null
endfunction
//峨眉九阳功
function IsEMeiJiuYang takes nothing returns boolean
	return((GetSpellAbilityId()=='A0C6')and(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function EMeiJiuYang_Condition takes nothing returns boolean
	return IsUnitAliveBJ(GetFilterUnit())
endfunction
function EMeiJiuYang_Action2 takes nothing returns nothing
	local timer t=GetExpiredTimer()
	local integer p=GetHandleId(t)
	local integer j=LoadInteger(YDHT,p,2)
	local unit u=LoadUnitHandle(YDHT,p,0)
	local unit uc=LoadUnitHandle(YDHT,p,1)
	local real shanghai=0.
	local real shxishu=1.
	local unit ut=null
	local location loc=GetUnitLoc(u)
	set shanghai=ShangHaiGongShi(u,uc,15.,15.,shxishu,'A0C6')
	if uc!=null and IsUnitEnemy(uc,GetOwningPlayer(u))==true and IsUnitAliveBJ(uc) then
		call WuGongShangHai(u,uc,shanghai)
		call CreateNUnitsAtLoc(1,'h00C',GetOwningPlayer(u),loc,bj_UNIT_FACING)
		set ut=bj_lastCreatedUnit
		call ShowUnitHide(ut)
		call UnitAddAbility(ut,'ACcr')
		call IssueTargetOrderById(ut,$D00DD,uc)
        call UnitApplyTimedLife(ut,'BHwe',3.)
	else
	    call SetUnitState(uc,UNIT_STATE_MANA,GetUnitState(uc,UNIT_STATE_MANA)+20)
    endif
    call SaveInteger(YDHT,p,2,j+1)
    if (j>=10) then
	    call PauseTimer(t)
	    call DestroyTimer(t)
	    call FlushChildHashtable(YDHT,p)
    endif
    call RemoveLocation(loc)
    set loc=null
    set t=null
    set u=null
    set uc=null
    set ut=null
endfunction
function EMeiJiuYang_Action takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local unit uc=GetEnumUnit()
	local timer t=CreateTimer()
    local integer p=GetHandleId(t)
    call SaveUnitHandle(YDHT,p,0,u)
    call SaveUnitHandle(YDHT,p,1,uc)
    call SaveInteger(YDHT,p,2,1)
    call TimerStart(t,1.,true,function EMeiJiuYang_Action2 )
    set u=null
    set t=null
    set uc=null
endfunction
function EMeiJiuYang takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	local group g=CreateGroup()
	local real r=500.
	local real x=GetUnitX(u)
	local real y=GetUnitY(u)
	call WuGongShengChong(u,'A0C6',200.)
	if GetUnitAbilityLevel(u,'A0DN')>=1 then
		set r=r+300.
	endif
	if GetUnitAbilityLevel(u,'A083')>=1 then
		call YDWEGeneralBounsSystemUnitSetBonus(u,1,0,20)
	endif
    call GroupEnumUnitsInRange(g,x,y,r,Condition(function EMeiJiuYang_Condition))
    call ForGroupBJ(g,function EMeiJiuYang_Action)
    call GroupClear(g)
    call DestroyGroup(g)
    set u=null
    set p=null
    set g=null
endfunction
//--------峨眉结束--------//
function EMei_Trigger takes nothing returns nothing
	/*
	 * 四象掌触发器
	 */
	local trigger t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsSiXiang))
	call TriggerAddAction(t,function SiXiangZhang)
	/*
	 * 佛光普照触发器
	 */
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsFoGuang))
	call TriggerAddAction(t,function FoGuangZhang)
	/*
	 * 峨眉九阳功触发器
	 */
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsEMeiJiuYang))
	call TriggerAddAction(t,function EMeiJiuYang)
	/*
	 * 金顶绵掌触发器
	 */
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsJinDing))
	call TriggerAddAction(t,function JinDingZhang)
	/*
	 * 灭绝剑法触发器
	 */
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t, Condition(function IsMieJue))
	call TriggerAddAction(t, function MieJueJian)
	
	set t = null
endfunction
