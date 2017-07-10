#include "library/common_func.j"

//--------血刀开始--------//
//血斩千刀
function IsXueZhan takes nothing returns boolean
	return ( ( GetSpellAbilityId() == 'A0CN' ) )
endfunction
function XueZhan_Condition takes nothing returns boolean
	return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(udg_xuezhandanwei)) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function XueZhan_Action takes nothing returns nothing
    local unit u=udg_xuezhandanwei
	local unit uc=GetEnumUnit()
	local real shxishu=1.
	local real shanghai=0.
	local location loc=GetUnitLoc(uc)
	if GetUnitAbilityLevel(u,'A06M')>=1 then
	    set shxishu=shxishu+.9
    endif
    if UnitHaveItem(u,'I098') then
		set shxishu=shxishu*4
	endif
	set shanghai=ShangHaiGongShi(u,uc,100.,200.,shxishu,'A0CN')
	call SetUnitX(u,CheckX(GetLocationX(loc)))
	call SetUnitY(u,CheckY(GetLocationY(loc)))
	call SetUnitFacing( u, GetUnitFacing(uc)+180 )
    call WuGongShangHai(u,uc,shanghai)
    //call DestroyEffect( AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl",uc, "origin") )
    call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl",uc,"overhead"))
    call SetUnitTimeScale(u,20)
    call SetUnitAnimation( u, "attack" )
    call RemoveLocation(loc)
    set loc=null
    set u=null
    set uc=null
endfunction
function XueZhanDao_2 takes nothing returns nothing
	local timer t=GetExpiredTimer()
	local integer w=GetHandleId(t)
	local group g=CreateGroup()
	local unit u=udg_xuezhandanwei
    local integer j=LoadInteger(YDHT,w,1)
    local location loc=LoadLocationHandle(YDHT,w,2)
    local integer jmax=10+GetUnitAbilityLevel(u,'A0CN')
    local real r=.3
    local real range=600.
    if GetUnitAbilityLevel(u,'A06L')>=1 then
	    set range=range+400.
    endif
    if GetUnitAbilityLevel(u,'A07W')>=1 then
	    set jmax=jmax+5
    endif
    call GroupEnumUnitsInRangeOfLoc(g,loc,range,Condition(function XueZhan_Condition))
    if j<jmax then
	    if g!=null then
    	    call ForGroupBJ(YDWEGetRandomSubGroupNull(1,g),function XueZhan_Action)
    	    call SaveInteger(YDHT,w,1,j+1)
    	    //call GroupClear(g)
    	    //call GroupEnumUnitsInRangeOfLoc(g,GetSpellTargetLoc(),range,Condition(function XueZhan_Condition))
    	else
    	    call PauseTimer(t)
    	    call DestroyTimer(t)
    	    call FlushChildHashtable(YDHT,w)
    	    call RemoveLocation(loc)
    	    call SetUnitTimeScale(u,1)
            call ResetUnitAnimation( u )
	    endif
	else
	    call PauseTimer(t)
    	call DestroyTimer(t)
    	call FlushChildHashtable(YDHT,w)
    	call RemoveLocation(loc)
    	call SetUnitTimeScale(u,1)
        call ResetUnitAnimation( u )
	endif
    call GroupClear(g)
    call DestroyGroup(g)
    set u=null
    set g=null
    set t=null
    set loc=null
endfunction
function XueZhanDao takes nothing returns nothing
    local unit u=GetTriggerUnit()
    local timer t=CreateTimer()
    local integer w=GetHandleId(t)
    local real r=0.3
    set udg_xuezhandanwei=u
    if GetUnitAbilityLevel(u,'A07T')>=1 then
	    set r=r-.2
    endif
    call WuGongShengChong(u,'A0CN',120.)
    call SaveInteger(YDHT,w,1,0)
    call SaveLocationHandle(YDHT,w,2,GetSpellTargetLoc())
    call TimerStart(t,r,true,function XueZhanDao_2)
    set u=null
    set t=null
endfunction

//血刀刀法
function IsXueDao takes nothing returns boolean
	return IsUnitEnemy(GetAttacker(),GetOwningPlayer(GetTriggerUnit())) and GetUnitAbilityLevel(GetTriggerUnit(),'A0CI')>=1
endfunction
function XueDaoZhuan takes nothing returns nothing
	local timer t=GetExpiredTimer()
	local integer w=GetHandleId(t)
	local unit ut=LoadUnitHandle(YDHT,w,0)
	local integer j=LoadInteger(YDHT,w,2)
	local real face=LoadReal(YDHT,w,1)
	local unit u=LoadUnitHandle(YDHT,w,3)
	if j<36 then
	call SetUnitFacing(ut,face+30.)
	call SetUnitX(ut,CheckX(GetUnitX(u)+200*Sin(Deg2Rad(face))))
	call SetUnitY(ut,CheckY(GetUnitY(u)+200*Cos(Deg2Rad(face))))
	call SaveReal(YDHT,w,1,face+30.)
	call SaveInteger(YDHT,w,2,j+1)
	else
	call KillUnit(ut)
	call PauseTimer(t)
	call DestroyTimer(t)
	call FlushChildHashtable(YDHT,w)
    endif
    set t=null
    set ut=null
    set u=null
endfunction
function XueDao_Condition takes nothing returns boolean
	return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit())) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function XueDao_Action takes nothing returns nothing
	local real shxishu=1.
	local real shanghai=0.
	local unit u=GetTriggerUnit()
	local unit uc=GetEnumUnit()
	if GetUnitAbilityLevel(u,'A06M')>=1 then
		set shxishu=shxishu+.7
	endif
	if GetUnitAbilityLevel(u,'A06P')>=1 then
		set shxishu=shxishu+.8
	endif
	if GetUnitAbilityLevel(u,'A086')>=1 then
		set shxishu=shxishu+1.5
	endif
	if UnitHaveItem(u,'I098') then
		set shxishu=shxishu*4
	endif
	set shanghai=ShangHaiGongShi(u,uc,18,27,shxishu,'A0CI')
	//call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,R2S(shanghai))
	call WuGongShangHai(u,uc,shanghai)
	call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\HeroBloodElfBlood.mdl",uc,"overhead"))
	set u=null
	set uc=null
endfunction
function XueDaoDao takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local unit uc=GetAttacker()
	local unit ut=null
	local timer t=CreateTimer()
	local player p=GetOwningPlayer(u)
	local group g=CreateGroup()
	local integer w=GetHandleId(t)
	local location loc=GetUnitLoc(u)
	local real r=200.+I2R(jingmai[1+GetPlayerId(p)])*15
	if GetUnitAbilityLevel(u,'A07Q')>=1 then
		set r=r+200.
	endif
	if GetRandomReal(1.,300.)<=15+fuyuan[1+GetPlayerId(p)]/5 then
    call CreateNUnitsAtLoc(1,'h00E',p,loc,bj_UNIT_FACING)
    set ut=bj_lastCreatedUnit
    call SaveUnitHandle(YDHT,w,0,ut)
    call SaveReal(YDHT,w,1,GetUnitFacing(ut))
    call SaveInteger(YDHT,w,2,0)
    call SaveUnitHandle(YDHT,w,3,u)
    call TimerStart(t,0.05,true,function XueDaoZhuan)
    call GroupEnumUnitsInRangeOfLoc(g,loc,r,Condition(function XueDao_Condition))
    call ForGroupBJ(g,function XueDao_Action)
    call WuGongShengChong(u,'A0CI',900.)
	endif
	call RemoveLocation(loc)
	call GroupClear(g)
	call DestroyGroup(g)
	set u=null
	set uc=null
	set ut=null
	set loc=null
	set p=null
	set t=null
endfunction
//血魔刀法
function IsXueMo takes nothing returns boolean
   return IsCertainWuGong(GetAttacker(),GetTriggerUnit(),'A0CJ')
endfunction
function XueMo_Action takes nothing returns nothing
	local timer t=GetExpiredTimer()
	local integer p=GetHandleId(t)
	local unit u=LoadUnitHandle(YDHT,p,0)
	local unit uc=LoadUnitHandle(YDHT,p,1)
	local integer j=LoadInteger(YDHT,p,2)
	local real lastX=LoadReal(YDHT,p,3)
	local real lastY=LoadReal(YDHT,p,4)
	local real nowX=GetUnitX(uc)
	local real nowY=GetUnitY(uc)
	local real dist=SquareRoot((lastX-nowX)*(lastX-nowX)+(lastY-nowY)*(lastY-nowY))
	local real shxishu=1.
	local real shanghai=0.
	local integer jmax=20
	if GetUnitAbilityLevel(u,'A06M')>=1 then
		set shxishu=shxishu+.7
	endif
	if GetUnitAbilityLevel(u,'A086')>=1 then
		set shxishu=shxishu+1.5
	endif
    if UnitHaveItem(u,'I098') then
		set shxishu=shxishu*4
	endif
	if GetUnitAbilityLevel(u,'A0CK')>=1 then
		set jmax=jmax+20
	endif
	if GetUnitAbilityLevel(u,'A07W')>=1 then
		set jmax=jmax+20
	endif
	if j<jmax then
		if dist>2. then
			set shxishu=1.+dist/5.
		endif
		set shanghai=ShangHaiGongShi(u,uc,3.5,3.5,shxishu,'A0CJ')
		if uc!=null and IsUnitAliveBJ(uc) then
		    call WuGongShangHai(u,uc,shanghai)
		    call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\HeroBloodElfBlood.mdl",uc,"overhead"))
	    endif
		call SaveInteger(YDHT,p,2,j+1)
		call SaveReal(YDHT,p,3,nowX)
		call SaveReal(YDHT,p,4,nowY)
	else
	    call PauseTimer(t)
	    call DestroyTimer(t)
	    call FlushChildHashtable(YDHT,p)
    endif
    set t=null
    set u=null
    set uc=null
endfunction
function XueMoDao takes nothing returns nothing
   local unit u=GetAttacker()
   local unit uc=GetTriggerUnit()
   local timer t=CreateTimer()
   local integer p=GetHandleId(t)
   local real r=1000.
   if GetUnitAbilityLevel(u,'A07O')>=1 then
	   set r=400.
   endif
   call SaveUnitHandle(YDHT,p,0,u)
   call SaveUnitHandle(YDHT,p,1,uc)
   call SaveInteger(YDHT,p,2,0)
   call SaveReal(YDHT,p,3,GetUnitX(uc))
   call SaveReal(YDHT,p,4,GetUnitY(uc))
   call WuGongShengChong(u,'A0CJ',r)
   call TimerStart(t,0.25,true,function XueMo_Action)
   set u=null
   set uc=null
   set t=null
endfunction
//佛灭万劫功
function IsFoMie takes nothing returns boolean
	return IsCertainWuGong(GetAttacker(),GetTriggerUnit(),'A0CK')
endfunction
function FoMie_Condition takes nothing returns boolean
	return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(udg_fomiedanwei))and IsUnitAliveBJ(GetFilterUnit()) and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitTypeId(GetFilterUnit())!='N008' and GetUnitTypeId(GetFilterUnit())!='N009'
endfunction
function FoMie_Action takes nothing returns nothing
    local unit u=udg_fomiedanwei
    local unit uc=GetEnumUnit()
    local real myX=GetUnitX(u)
    local real myY=GetUnitY(u)
    local real hisX=GetUnitX(uc)
    local real hisY=GetUnitY(uc)
    local real dist=0.
    local location loc=null
    local real angle=0.
    local integer i=0
    local real perc=0.3
    local real shxishu=1.
	local real shanghai=0.
	if GetUnitAbilityLevel(u,'A06M')>=1 then
		set shxishu=shxishu+.7
	endif
	if GetUnitAbilityLevel(u,'A086')>=1 then
		set shxishu=shxishu+1.5
	endif
    if UnitHaveItem(u,'I098') then
		set shxishu=shxishu*4
	endif
	if dist>20. then
		set shxishu=1.+2000./dist
	endif
	if GetUnitAbilityLevel(u,'A0D3')>=1 then
		set shanghai=ShangHaiGongShi(u,uc,1.2,1.2,shxishu,'A0CJ')
		if uc!=null and IsUnitAliveBJ(uc) then
		    call WuGongShangHai(u,uc,shanghai)
		    call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\HeroBloodElfBlood.mdl",uc,"overhead"))
		endif
	endif
    if GetUnitAbilityLevel(u,'A07W')>=1 then
	    set perc=perc+0.2
    endif
    set hisX=GetUnitX(uc)
    set hisY=GetUnitY(uc)
    set angle=Atan2(hisY-myY,hisX-myX)
    set dist=SquareRoot((hisX-myX)*(hisX-myX)+(hisY-myY)*(hisY-myY))
    set loc=Location(hisX-perc*dist*Cos(angle),hisY-perc*dist*Sin(angle))
    call SetUnitPositionLoc(uc,loc)
    if dist<300 then
        call WanBuff(u, uc, 11)
    endif
    call RemoveLocation(loc)
    set u=null
    set uc=null
    set loc=null
endfunction
function FoMie_setfalse takes nothing returns nothing
	local timer t=GetExpiredTimer()
	set udg_shifoufomie=false
	//call BJDebugMsg("等待之后")
	call PauseTimer(t)
	call DestroyTimer(t)
	set t=null
endfunction
function FoMie takes nothing returns nothing
    local timer t=GetExpiredTimer()
    local timer tm=CreateTimer()
    local integer p=GetHandleId(t)
    local unit uc=LoadUnitHandle(YDHT,p,0)
    local integer j=LoadInteger(YDHT,p,1)
    local integer jmax=10
    local group g=CreateGroup()
    local real x=GetUnitX(udg_fomiedanwei)
    local real y=GetUnitY(udg_fomiedanwei)
    local real range=800.+100.*GetUnitAbilityLevel(udg_fomiedanwei,'A0CK')
    if GetUnitAbilityLevel(udg_fomiedanwei,'A06P')>=1 then
	    set range=range+500.
    endif
    if GetUnitAbilityLevel(udg_fomiedanwei,'A07N')>=1 then
	    set jmax=jmax+10
    endif
    if j>=jmax then
	    call PauseTimer(t)
	    call DestroyTimer(t)
	    call FlushChildHashtable(YDHT,p)
	    //call BJDebugMsg("等待之前")
	    //10秒钟CD
	    call TimerStart(tm,10.,false,function FoMie_setfalse)
	else
        call GroupEnumUnitsInRange(g,x,y,range,Condition(function FoMie_Condition))
        call ForGroupBJ(g,function FoMie_Action)
        call GroupClear(g)
        call DestroyGroup(g)
        call SaveInteger(YDHT,p,1,j+1)
    endif
    set uc=null
    set g=null
    set t=null
    set tm=null
endfunction
function FoMieWanJieGong takes nothing returns nothing
    local timer t=CreateTimer()
    local integer p=GetHandleId(t)
    set udg_fomiedanwei=GetAttacker()
    call SaveUnitHandle(YDHT,p,0,GetTriggerUnit())
    call SaveInteger(YDHT,p,1,0)
    if udg_shifoufomie==false then
	    set udg_shifoufomie=true
        call TimerStart(t,0.3,true,function FoMie)
        call WuGongShengChong(udg_fomiedanwei,'A0CK',160.)
    endif
    set t=null
endfunction


//血刀经·一刀绝空
function IsXueDaoJing takes nothing returns boolean
    return GetSpellAbilityId()=='A0DH'
endfunction
function XueDaoJing_Action takes nothing returns nothing
	local timer t=GetExpiredTimer()
	local integer p=GetHandleId(t)
	local unit u=LoadUnitHandle(YDHT,p,0)
	local unit uc=LoadUnitHandle(YDHT,p,1)
	local unit ut=LoadUnitHandle(YDHT,p,2)
	local location loc=LoadLocationHandle(YDHT,p,3)
	local real myX=GetLocationX(loc)
    local real myY=GetLocationY(loc)
    local real hisX=GetUnitX(uc)
    local real hisY=GetUnitY(uc)
    local location loc2=null
    local real dist=0.
    local real angle=0.
    local integer i=LoadInteger(YDHT,p,4)
    local real perc=0.04
    local integer imax=25
    local real shxishu=1.
    local real shanghai=0
    set shanghai=ShangHaiGongShi(u,uc,400,300,shxishu,'A0DH')
    if GetUnitAbilityLevel(u,'A06M')>=1 then
	    set shxishu=shxishu+.9
    endif
    if GetUnitAbilityLevel(u,'A086')>=1 then
	    set shxishu=shxishu+1.5
    endif
    if UnitHasItemOfTypeBJ(u,'I098') then
	    set shxishu=shxishu*4
    endif
    if i<=imax then
        set hisX=GetUnitX(uc)
        set hisY=GetUnitY(uc)
    	set angle=Atan2(hisY-myY,hisX-myX)
    	set dist=SquareRoot((hisX-myX)*(hisX-myX)+(hisY-myY)*(hisY-myY))
        set loc2=Location(myX+perc*i*dist*Cos(angle),myY+perc*i*dist*Sin(angle))
        call SetUnitPositionLoc(ut,loc2)
        //call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,R2S(hisX)+","+R2S(hisY)+","+R2S(myX)+","+R2S(myY)+","+R2S(GetLocationX(loc2))+","+R2S(GetLocationY(loc2))+","+R2S(dist)+","+R2S(angle))
        call SaveInteger(YDHT,p,4,i+1)
    else
        call WuGongShangHai(u,uc,shanghai)
        call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl",uc,"overhead"))
        call SetUnitTimeScale(ut,1)
        call ResetUnitAnimation(ut)
        call PauseTimer(t)
        call DestroyTimer(t)
        call FlushChildHashtable(YDHT,p)
        if GetUnitAbilityLevel(u,'A07X')>=1  then
	        call UnitApplyTimedLifeBJ(100,'BTLF',ut)
	        //call UnitRemoveAbility(ut,'Aloc')
        else
            call KillUnit(ut)
            call RemoveUnit(ut)
        endif
        call RemoveLocation(loc)
        if GetUnitAbilityLevel(u,'A06P')>=1 then
	        call CreateNUnitsAtLoc(1,1697656880,GetOwningPlayer(u),loc2,bj_UNIT_FACING)
            call ShowUnitHide(bj_lastCreatedUnit)
            call UnitAddAbility(bj_lastCreatedUnit,1093678903)
            call IssueTargetOrderById(bj_lastCreatedUnit,$D008F,uc)
            call UnitApplyTimedLife(bj_lastCreatedUnit,1112045413,2.)
            call CreateTextTagLocBJ("内伤",loc2,60.,12.,65.,55.,42.,0)
            call Nw(3.,bj_lastCreatedTextTag)
            call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,90)
            call SetUnitDizzy(uc,5.,"Abilities\\Spells\\Human\\Thunderclap\\ThunderclapTarget.mdl")
        endif
    endif
    call RemoveLocation(loc2)
    set t=null
    set u=null
    set uc=null
    set ut=null
    set loc=null
    set loc2=null
endfunction
function XueDaoJing takes nothing returns nothing
    local unit u=GetTriggerUnit()
    local unit uc=GetSpellTargetUnit()
    local location loc =GetUnitLoc(u)
    local timer t=CreateTimer()
    local integer p=GetHandleId(t)
    local unit ut=null
    call WuGongShengChong(u,'A0DH',120)
    //call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"为什么不显示呢")
    call CreateNUnitsAtLoc(1,'o01U',GetOwningPlayer(u),loc,GetUnitFacing(u))
    set ut=bj_lastCreatedUnit
    call ShowUnit(ut,true)
    call SaveUnitHandle(YDHT,p,0,u)
    call SaveUnitHandle(YDHT,p,1,uc)
    call SaveUnitHandle(YDHT,p,2,ut)
    call SaveLocationHandle(YDHT,p,3,loc)
    call SaveInteger(YDHT,p,4,0)
    call SetUnitTimeScale(ut,1.)
    call SetUnitAnimation(ut,"attack slam")
    call TimerStart(t,0.03,true,function XueDaoJing_Action)
    set u=null
    set uc=null
    set ut=null
    set loc=null
endfunction
function XueDaoJing_Condition takes nothing returns boolean
	return GetUnitTypeId(GetAttacker())=='o01U'
endfunction
function XueDaoJing_Action2 takes nothing returns nothing
	local player p=GetOwningPlayer(GetAttacker())
	local integer i=1+GetPlayerId(p)
	local unit u=udg_hero[i]
	local unit uc=GetTriggerUnit()
	local real shxishu=1.
	local real shanghai=0
	if UnitHasItemOfTypeBJ(u,'I098') then
	    set shxishu=shxishu*4
    endif
	set shanghai=ShangHaiGongShi(u,uc,200,1200,shxishu,'A0DH')
	call WuGongShangHai(u,uc,shanghai)
	call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl",uc,"overhead"))
	set p=null
	set u=null
	set uc=null
endfunction
function XueDao_Trigger takes nothing returns nothing
	local trigger t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsXueDaoJing))
	call TriggerAddAction(t,function XueDaoJing)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function XueDaoJing_Condition))
	call TriggerAddAction(t,function XueDaoJing_Action2)
	set t=null
endfunction
//--------血刀结束--------//
