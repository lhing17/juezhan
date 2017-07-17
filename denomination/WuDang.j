//--------武当开始--------//
//柔云掌
function IsRouYun takes nothing returns boolean
	return GetUnitAbilityLevel(GetAttacker(),'A04D')>=1 and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker())) and GetRandomReal(0., 100.)<=15.
endfunction
function RouYunZhang takes nothing returns nothing
	local unit u = GetAttacker()
	local location loc = GetUnitLoc(GetTriggerUnit())
	call WuGongShengChong(u,'A04D',600.)
	call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(u),loc,bj_UNIT_FACING)
    call UnitAddAbility(bj_lastCreatedUnit,'A08P')
    call ShowUnitHide(bj_lastCreatedUnit)
    call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D0208,loc)
    call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
    call RemoveLocation(loc)
    set u = null
    set loc = null
endfunction
function Xc takes nothing returns boolean
	return((GetEventDamage()==.41))
endfunction
function Yc takes nothing returns nothing
	local unit u=udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))]
    local unit uc=GetTriggerUnit()
    local real shxishu=1.
    local real shanghai=0.
    local location loc=GetUnitLoc(uc)
    if GetUnitAbilityLevel(u,'A08Q')!=0 then
        set shxishu=shxishu+.5
    endif
    if GetUnitAbilityLevel(u,'A071')!=0 then
        set shxishu=shxishu+.7
    endif
    if GetUnitAbilityLevel(u,'A06H')!=0 then
        set shxishu=shxishu+.7
    endif
    set shanghai=ShangHaiGongShi(u,uc,14,30,shxishu,'A04D')
    call WuGongShangHai(u,uc,shanghai)
    if((GetUnitAbilityLevel(u,1093678930)!=0)and(GetUnitAbilityLevel(u,1093678932)!=0)and(UnitHasBuffBJ(uc,1110454328)==false))then
        call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(u),loc,bj_UNIT_FACING)
        call UnitAddAbility(bj_lastCreatedUnit,1093678412)
        call ShowUnitHide(bj_lastCreatedUnit)
        call IssueTargetOrderById(bj_lastCreatedUnit,$D007F,uc)
        call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
    endif
    call RemoveLocation(loc)
    set u=null
    set uc=null
    set loc=null
endfunction
//绕指柔剑法
function dD takes nothing returns boolean
	return((GetEventDamage()==.42))
endfunction
function eD takes nothing returns nothing
	local unit u=udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))]
    local unit uc=GetTriggerUnit()
    local real shxishu=1.
    local real shanghai=0.
    local location loc=GetUnitLoc(uc)
    if((GetUnitAbilityLevel(u,'A08Q')!=0))then
        set shxishu=shxishu+.5
    endif
    if((GetUnitAbilityLevel(u,'A07U')!=0))then
        set shxishu=shxishu+.6
    endif
    if((GetUnitAbilityLevel(u,'A06J')!=0))then
        set shxishu=shxishu+.7
    endif
    set shanghai=ShangHaiGongShi(u,uc,60,120,shxishu,'A08S')
    call WuGongShangHai(u,uc,shanghai)
    if((GetUnitAbilityLevel(u,1093678935)!=0)and(GetRandomInt(1,100)<=30)and(UnitHasBuffBJ(uc,1111844210)==false))then
        call WanBuff(u, uc, 8)
    endif
    if((GetUnitAbilityLevel(u,'A06M')!=0)and(GetRandomInt(1,100)<=30)and(UnitHasBuffBJ(uc,1110454323)==false))then
         call WanBuff(u, uc, 3)
    endif
    call RemoveLocation(loc)
    call WuGongShengChong(u,'A08S',500.)
    set u=null
    set uc=null
    set loc=null
endfunction
//太极拳
function gD takes nothing returns boolean
	return((GetSpellAbilityId()=='A08R'))
endfunction
function hD takes nothing returns boolean
	return(((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit())))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
function iD takes nothing returns nothing
	local unit u=GetTriggerUnit()
    local unit uc=GetEnumUnit()
    local real shxishu=1.
    local real shanghai=0.
    local location loc=GetUnitLoc(uc)
    if((GetUnitAbilityLevel(u,'A08V')!=0))then
        set shxishu=shxishu+.6
    endif
    if((GetUnitAbilityLevel(u,'A0DN')!=0))then
        set shxishu=shxishu+.8
    endif
    if((GetUnitAbilityLevel(u,'A07Q')!=0))then
        set shxishu=shxishu+.8
    endif
    set shanghai=ShangHaiGongShi(u,uc,150.,150.,shxishu,'A08R')
    call WuGongShangHai(u,uc,shanghai)
    if((GetUnitAbilityLevel(u,'A06L')!=0)and(GetRandomInt(1,100)<=50)and(UnitHasBuffBJ(uc,'B002')==false))then
        call WanBuff(u, uc, 1)
    endif
    if((GetUnitAbilityLevel(u,'A07M')!=0)and(GetRandomInt(1,100)<=50)and(UnitHasBuffBJ(uc,1112896364)==false))then
        call WanBuff(u, uc, 5)
    endif
    call RemoveLocation(loc)
    set loc=null
    set u=null
    set uc=null
endfunction
function jD takes nothing returns nothing
	local unit u=GetTriggerUnit()
    local location loc=GetUnitLoc(u)
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=60
    loop
        exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
        call DestroyEffect(AddSpecialEffectLocBJ(pu(loc,400.,(I2R(bj_forLoopAIndex)*6.)),"Abilities\\Spells\\Other\\Doom\\DoomTarget.mdl"))
        set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=20
    loop
        exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
        call DestroyEffect(AddSpecialEffectLocBJ(pu(pu(loc,200.,0),40.,(I2R(bj_forLoopAIndex)*18.)),"Abilities\\Spells\\Other\\Doom\\DoomTarget.mdl"))
        call DestroyEffect(AddSpecialEffectLocBJ(pu(pu(loc,200.,180.),40.,(I2R(bj_forLoopAIndex)*18.)),"Abilities\\Spells\\Other\\Doom\\DoomTarget.mdl"))
        set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    set bj_forLoopBIndex=1
    set bj_forLoopBIndexEnd=30
    loop
        exitwhen bj_forLoopBIndex>bj_forLoopBIndexEnd
        call  DestroyEffect(AddSpecialEffectLocBJ(pu(pu(loc,200.,.0),200.,(I2R(bj_forLoopBIndex)*6.)),"Abilities\\Spells\\Other\\Doom\\DoomTarget.mdl"))
        call  DestroyEffect(AddSpecialEffectLocBJ(pu(pu(loc,200.,180.),200.,((I2R(bj_forLoopBIndex)*6.)+180.)),"Abilities\\Spells\\Other\\Doom\\DoomTarget.mdl"))
        set bj_forLoopBIndex=bj_forLoopBIndex+1
    endloop
    call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(500.,loc,Condition(function hD)),function iD)
    call WuGongShengChong(u,'A08R',250.)
    call RemoveLocation(loc)
    set u=null
    set loc=null
endfunction
//纯阳无级功
function mD takes nothing returns boolean
	return (GetSpellAbilityId()=='A08Q')
endfunction
function nD takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local integer p = GetHandleId(t)
	local unit u = LoadUnitHandle(YDHT, p, 0)
	local location loc = GetUnitLoc(u)
	if((LoadReal(YDHT,p,1)>=2000.))then
		call FlushChildHashtable(YDHT,p)
		call DestroyTimer(t)
	else
		call SaveReal(YDHT,p,1, LoadReal(YDHT,p,1)+10.)
		call CreateNUnitsAtLoc(1,'e00U',GetOwningPlayer(u),loc,bj_UNIT_FACING)
		call IssueImmediateOrderById(bj_lastCreatedUnit,$D00D1)
		call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',5.)
		call RemoveLocation(loc)
	endif
	set t = null
	set u = null
	set loc = null
endfunction
function IsChunYangHuo takes nothing returns boolean
	return (GetEventDamage()==5.17) and (GetUnitAbilityLevel(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))], 'A08Q')>=1 or GetUnitAbilityLevel(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))], 'A035')>=1)
endfunction
function ChunYangHuo takes nothing returns nothing
	local unit u=udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))]
    local unit uc=GetTriggerUnit()
    local real shxishu=1.
    local real shanghai=0.
    //call BJDebugMsg("伤害执行了1")
    if GetUnitAbilityLevel(u, 'A08Q')>=1 then
    	set shanghai=ShangHaiGongShi(u,uc,65,75,shxishu,'A08Q')
    	//圣火令神功
    elseif GetUnitAbilityLevel(u, 'A035')>=1 then
    	//call BJDebugMsg("伤害执行了2")
    	set shanghai=ShangHaiGongShi(u,uc,15,20,shxishu,'A035')
	endif
    call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
function oD takes nothing returns nothing
	local timer t = CreateTimer()
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = GetPlayerId(p)
	local location loc = null
	call SetUnitManaBJ(u,GetUnitState(u,UNIT_STATE_MANA)+I2R(100*(yishu[i]/10+GetUnitAbilityLevel(u,'A08Q'))))
	if((GetUnitAbilityLevel(u,'A07U')!=0))then
		set loc = GetUnitLoc(u)
		call CreateNUnitsAtLoc(1,'e000',p,loc,bj_UNIT_FACING)
		call ShowUnitHide(bj_lastCreatedUnit)
		call UnitAddAbility(bj_lastCreatedUnit,'A08T')
		call IssueTargetOrderById(bj_lastCreatedUnit,$D0062,u)
		call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
		call RemoveLocation(loc)
	endif
	if((GetUnitAbilityLevel(u,1093678935)!=0))then
		set loc = GetUnitLoc(u)
		call CreateNUnitsAtLoc(1,'e000',p,loc,bj_UNIT_FACING)
		call ShowUnitHide(bj_lastCreatedUnit)
		call UnitAddAbility(bj_lastCreatedUnit,1093679189)
		call IssueTargetOrderById(bj_lastCreatedUnit,$D0085,u)
		call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
		call SaveUnitHandle(YDHT,GetHandleId(t),0,u)
		call TimerStart(t,.05,true,function nD)
		call RemoveLocation(loc)
	endif
	call WuGongShengChong(u,'A08Q',250.)
	set t = null
	set u = null
	set p = null
	set loc = null
endfunction
function qD takes nothing returns boolean
	return((GetUnitAbilityLevel(GetTriggerUnit(),'A08Q')!=0)and(GetSpellAbilityId()!='A05R')and(GetSpellAbilityId()!='A08V')and(GetSpellAbilityId()!='A08X')) and(GetSpellAbilityId()!='AIha')
endfunction
function rD takes nothing returns nothing
	local unit u = GetTriggerUnit()
	call ModifyHeroStat(1,u,0,50)
	call YDWEPolledWaitNull(60.)
	call ModifyHeroStat(1,u,1,50)
	set u = null
endfunction
function tD takes nothing returns boolean
	return ((GetUnitAbilityLevel(GetAttacker(),'A08Q')!=0 and UnitHasBuffBJ(GetAttacker(),'B00I'))  or (GetUnitAbilityLevel(GetAttacker(),'A08R')!=0 and GetUnitAbilityLevel(GetAttacker(),'A09D')!=0)) and GetRandomInt(1,30)<=5
endfunction
function uD takes nothing returns boolean
	return (IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetAttacker()))and IsUnitAliveBJ(GetFilterUnit()))
endfunction
function vD takes nothing returns nothing
	local unit u=GetAttacker()
	local unit uc=GetEnumUnit()
	local real shxishu=1.
	local real shanghai=0.
    if((GetUnitAbilityLevel(u,'A08V')!=0))then
        set shxishu=shxishu+.6
    endif
    if((GetUnitAbilityLevel(u,'A0DN')!=0))then
        set shxishu=shxishu+.8
    endif
    if((GetUnitAbilityLevel(u,'A07Q')!=0))then
        set shxishu=shxishu+.8
    endif
    set shanghai=ShangHaiGongShi(u,uc,50,50,shxishu,'A08R')
    call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
function wD takes nothing returns nothing
	local unit u = GetAttacker()
	local location loc = GetUnitLoc(u)
	local integer i =1
	set i=1
	loop
		exitwhen i>60
		call AddSpecialEffectLocBJ(pu(loc,400.,I2R(i)*6.),"Abilities\\Spells\\Other\\Doom\\DoomTarget.mdl")
		call DestroyEffect(bj_lastCreatedEffect)
		set i=i+1
	endloop
	set i=1
	loop
		exitwhen i>20
		call AddSpecialEffectLocBJ(pu(pu(loc,200.,0),40.,I2R(i)*18.),"Abilities\\Spells\\Other\\Doom\\DoomTarget.mdl")
		call DestroyEffect(bj_lastCreatedEffect)
		call AddSpecialEffectLocBJ(pu(pu(loc,200.,180.),40.,I2R(i)*18.),"Abilities\\Spells\\Other\\Doom\\DoomTarget.mdl")
		call DestroyEffect(bj_lastCreatedEffect)
		set i=i+1
	endloop
	set i=1
	loop
		exitwhen i>30
		call AddSpecialEffectLocBJ(pu(pu(loc,200.,.0),200.,I2R(i)*6.),"Abilities\\Spells\\Other\\Doom\\DoomTarget.mdl")
		call DestroyEffect(bj_lastCreatedEffect)
		call AddSpecialEffectLocBJ(pu(pu(loc,200.,180.),200.,I2R(i)*6.+180.),"Abilities\\Spells\\Other\\Doom\\DoomTarget.mdl")
		call DestroyEffect(bj_lastCreatedEffect)
		set i=i+1
	endloop
	call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(500.,loc,Condition(function uD)),function vD)
	call RemoveLocation(loc)
	set u = null
	set loc = null
endfunction
function yD takes nothing returns boolean
	return((GetUnitAbilityLevel(GetAttacker(),'A071')!=0)and(GetUnitAbilityLevel(GetAttacker(),'A08Q')!=0)and(GetRandomInt(1,30)<=3))
endfunction
function zD takes nothing returns nothing
	call WanBuff(GetAttacker(), GetTriggerUnit(), 6)
endfunction
function aD takes nothing returns boolean
	return((GetUnitAbilityLevel(GetTriggerUnit(),'A0DN')!=0)and(GetUnitAbilityLevel(GetTriggerUnit(),'A08Q')!=0)and(GetRandomInt(1,20)<=2))
endfunction
function BD takes nothing returns nothing
	call WanBuff(GetTriggerUnit(), GetAttacker(), 1)
endfunction
//混沌一气
function CD takes nothing returns boolean
	return((GetUnitAbilityLevel(GetTriggerUnit(),'A08V')!=0))
endfunction
function cD takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	if((GetUnitAbilityLevel(u,'A07P')!=0))then
		set Cd[i]=(Cd[i]+1)
		if((Cd[i]>=300))then
			set Cd[i]=0
			call YDWEGeneralBounsSystemUnitSetBonus(u,1,0,20)
			call DisplayTextToPlayer(p,0,0,"魔法上限+20")
		endif
	endif
	call WuGongShengChong(u,'A08V',4000)
	set u = null
	set p = null
endfunction
function ED takes nothing returns boolean
	return((GetUnitAbilityLevel(GetAttacker(),'A08V')!=0)and(GetUnitAbilityLevel(GetAttacker(),1093678930)!=0)and(GetUnitAbilityLevel(GetAttacker(),1093678935)!=0)and(GetRandomInt(1,100)<=10))
endfunction
function FD takes nothing returns nothing
	call WanBuff(GetAttacker(), GetTriggerUnit(), 2)
endfunction
function HD takes nothing returns boolean
	return(GetUnitAbilityLevel(GetTriggerUnit(),'A08V')!=0)and(GetSpellAbilityId()!='A05R')and(GetSpellAbilityId()!='A08V')and(GetSpellAbilityId()!='A08X') and(GetSpellAbilityId()!='AIha')
endfunction
function ID takes nothing returns nothing
	call YDWEPolledWaitNull(.2)
	call SetUnitManaBJ(GetTriggerUnit(),GetUnitState(GetTriggerUnit(),UNIT_STATE_MANA)+100.)
endfunction
function JD takes nothing returns boolean
	return((GetUnitAbilityLevel(GetTriggerUnit(),'A08V')!=0)and(GetUnitAbilityLevel(GetTriggerUnit(),'A083')!=0)and(GetUnitAbilityLevel(GetTriggerUnit(),'A0DN')!=0) and(GetSpellAbilityId()!='A05R')and(GetSpellAbilityId()!='A08V')and(GetSpellAbilityId()!='A08X') and(GetSpellAbilityId()!='AIha') and(GetRandomInt(1,$A)<=3) )
endfunction
function KD takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local location loc = GetUnitLoc(u)
	call UnitResetCooldown(u)
	call AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Human\\Avatar\\AvatarCaster.mdl")
	call DestroyEffect(bj_lastCreatedEffect)
	call RemoveLocation(loc)
	set u = null
	set loc = null
endfunction
function MD takes nothing returns boolean
	return((GetUnitAbilityLevel(GetTriggerUnit(),'A08V')!=0)and(GetUnitAbilityLevel(GetTriggerUnit(),'A07Q')!=0))
endfunction
function ND takes nothing returns nothing
	call UnitDamageTarget(GetTriggerUnit(),GetEventDamageSource(),(GetEventDamage()*10.),true,false,ATTACK_TYPE_MELEE,DAMAGE_TYPE_MAGIC,WEAPON_TYPE_WHOKNOWS)
endfunction
//--------武当结束--------//

function WuDang_Trigger takes nothing returns nothing
	local trigger t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsRouYun))
	call TriggerAddAction(t,function RouYunZhang)
	
	set t=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger(t)
	call TriggerAddCondition(t,Condition(function Xc))
	call TriggerAddAction(t,function Yc)
	
	set t=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger(t)
	call TriggerAddCondition(t,Condition(function dD))
	call TriggerAddAction(t,function eD)
	
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function gD))
	call TriggerAddAction(t,function jD)
	
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function mD))
	call TriggerAddAction(t,function oD)
	
	set t=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger(t)
	call TriggerAddCondition(t,Condition(function IsChunYangHuo))
	call TriggerAddAction(t,function ChunYangHuo)
	
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function qD))
	call TriggerAddAction(t,function rD)
	
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function tD))
	call TriggerAddAction(t,function wD)
	
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function yD))
	call TriggerAddAction(t,function zD)
	
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function aD))
	call TriggerAddAction(t,function BD)
	
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function CD))
	call TriggerAddAction(t,function cD)
	
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function ED))
	call TriggerAddAction(t,function FD)
	
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function HD))
	call TriggerAddAction(t,function ID)
	
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function JD))
	call TriggerAddAction(t,function KD)
	
	set t=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger(t)
	call TriggerAddCondition(t,Condition(function MD))
	call TriggerAddAction(t,function ND)
endfunction
