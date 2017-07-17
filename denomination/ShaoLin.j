#include "library/common_func.j"

//--------少林开始--------//
//韦陀棍法
function IsWeiTuo takes nothing returns boolean
	return((GetUnitAbilityLevel(GetAttacker(),'A05G')>=1)and(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))))
endfunction
function WeiTuo_Condition takes nothing returns boolean
	return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetAttacker()))and(IsUnitAliveBJ(GetFilterUnit()))
endfunction
function WeiTuo_Action takes nothing returns nothing
	local unit uc=GetEnumUnit()
	local unit u=GetAttacker()
	local real x=GetUnitX(uc)
	local real y=GetUnitY(uc)
	local real shxishu=1.
	local real shanghai=0.
	if((GetUnitAbilityLevel(u,'S000')!=0))then
	    set shxishu=shxishu+.5
	endif
	if((GetUnitAbilityLevel(u,'A07O')!=0))then
	    set shxishu=shxishu+.7
	endif
	if UnitHaveItem(u,'I0AL') then
		set shxishu=shxishu*8
	endif
	//if((GetUnitAbilityLevel(u,'A05G')==9))then
	//    set shxishu=shxishu*8.
	//endif
	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl", x, y))
	set shanghai=ShangHaiGongShi(u,uc,7.2,8.9,shxishu,'A05G')
	//call BJDebugMsg("伤害="+R2S(shanghai))
	call WuGongShangHai(u,uc,shanghai)
	set u=null
	set uc=null
endfunction
function WeiTuoGun takes nothing returns nothing
	local unit u=GetAttacker()
	local unit uc=GetTriggerUnit()
	local location loc1=GetUnitLoc(u)
	local location loc2=GetUnitLoc(uc)
	local integer i = 1 + GetPlayerId(GetOwningPlayer(u))
	if((UnitHasBuffBJ(u,'Bblo'))) then
	    call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(300.+(I2R(jingmai[(1+GetPlayerId(GetOwningPlayer(u)))])*8.),loc1,Condition(function WeiTuo_Condition)),function WeiTuo_Action)
	    if((GetUnitAbilityLevel(u,'A0DN')!=0))then
	        call SetWidgetLife(u,(GetUnitState(u,UNIT_STATE_LIFE)+(.02*GetUnitState(u,UNIT_STATE_MAX_LIFE))))
	    endif
	else
	    if (GetRandomReal(.0,100.) <= 22. + fuyuan[i]/3 )then
	        call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(300.+(I2R(jingmai[(1+GetPlayerId(GetOwningPlayer(u)))])*8.),loc1,Condition(function WeiTuo_Condition)),function WeiTuo_Action)
	        if((GetUnitAbilityLevel(u,'A0DN')!=0))then
	            call SetWidgetLife(u,(GetUnitState(u,UNIT_STATE_LIFE)+(.02*GetUnitState(u,UNIT_STATE_MAX_LIFE))))
	        endif
	        if((GetUnitAbilityLevel(u,'A07U')!=0)and(GetRandomReal(.0,100.)<=15.))then
	            call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(u),loc1,bj_UNIT_FACING)
	            call ShowUnitHide(bj_lastCreatedUnit)
	            call UnitAddAbility(bj_lastCreatedUnit,1093681496)
	            call IssueTargetOrderById(bj_lastCreatedUnit,$D0085,u)
	            call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',3.)
	        endif
	        call WuGongShengChong(u,'A05G',1200.)
	    endif
	endif
	call RemoveLocation(loc1)
	call RemoveLocation(loc2)
	set u = null
	set uc = null
	set loc1 = null
	set loc2 = null
endfunction
//达摩剑法
function qc takes nothing returns boolean
return((GetEventDamage()==.15))
endfunction
function rc takes nothing returns boolean
return(((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetEventDamageSource())))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
function sc takes nothing returns nothing
    local unit u=GetEventDamageSource()
    local unit uc=GetEnumUnit()
    local real shxishu=1.
    local real shanghai=0.
    if((GetUnitAbilityLevel(u,'S000')!=0))then
    	set shxishu=shxishu+.4
    endif
    if((GetUnitAbilityLevel(u,'A071')!=0))then
        set shxishu=shxishu+.8
    endif
    if((GetUnitAbilityLevel(u,'A07S')!=0))then
        set shxishu=shxishu+.7
    endif
    if UnitHaveItem(u,'I0AL') then
		set shxishu=shxishu*8
	endif
    set shanghai= ShangHaiGongShi(u,uc,70.,60.,shxishu,'A000')
    call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
function ucFunc takes nothing returns nothing
	local unit u=udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))]
    local unit uc=GetTriggerUnit()
    local real shxishu=1.
    local real shanghai=0.
    local location loc2=GetUnitLoc(uc)
    if((GetUnitAbilityLevel(u,'S000')!=0))then
    	set shxishu=shxishu+.4
    endif
    if((GetUnitAbilityLevel(u,'A071')!=0))then
        set shxishu=shxishu+.8
    endif
    if((GetUnitAbilityLevel(u,'A07S')!=0))then
        set shxishu=shxishu+.7
    endif
    if UnitHaveItem(u,'I0AL') then
		set shxishu=shxishu*8
	endif
    set shanghai= ShangHaiGongShi(u,uc,10,30,shxishu,'A000')
    call WuGongShangHai(u,uc,shanghai)
    if((GetUnitAbilityLevel(u,1093678932)!=0))then
        call DestroyEffect(AddSpecialEffectLocBJ(loc2,"war3mapImported\\ShadowBurn.mdx"))
        call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(100,loc2,Condition(function rc)),function sc)
    endif
    call RemoveLocation(loc2)
    set u=null
    set uc=null
    set loc2=null
endfunction
function wc takes nothing returns boolean
	return((GetSpellAbilityId()=='A000')and(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function xc takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local location loc = GetUnitLoc(u)
	local location loc2 = pu(loc, 256, GetUnitPropWindowBJ(u)+90.)
	local integer id = 'A000'
	if (GetUnitAbilityLevel(u,'A05O')!=0) then
	    call CreateNUnitsAtLoc(1,'e000',p,loc,bj_UNIT_FACING)
	    call UnitAddAbility(bj_lastCreatedUnit,'A05H')
	    call IssueTargetOrderById(bj_lastCreatedUnit,$D0062,u)
	    call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
	    call ShowUnitHide(bj_lastCreatedUnit)
	endif
	if (GetUnitAbilityLevel(u,'A0DN')!=0) then
	    call CreateNUnitsAtLoc(1,1697656881,p,loc,bj_UNIT_FACING)
	    call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',12.)
	endif
	if((GetUnitAbilityLevel(u,'A07U')!=0)and(GetUnitAbilityLevel(u,'A07F')!=0))then
	    call CreateNUnitsAtLoc(1,'e000',p,loc,bj_UNIT_FACING)
	    call ShowUnitHide(bj_lastCreatedUnit)
	    call UnitAddAbility(bj_lastCreatedUnit,1093678410)
	    call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D0271,loc2)
	    call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',6.)
	endif
	call WuGongShengChong(u,'A000',150.)
	call RemoveLocation(loc)
	call RemoveLocation(loc2)
	set u = null
	set p = null
	set loc = null
	set loc2 = null
endfunction
//大力金刚指
function zc takes nothing returns boolean
	return((GetSpellAbilityId()=='A05K')and(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function Ac takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit())))and(IsUnitAliveBJ(GetFilterUnit()))
endfunction
function ac takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local unit uc=GetEnumUnit()
	local location loc=GetUnitLoc(u)
	local location loc2=GetUnitLoc(uc)
	local real shxishu=1.
	local real shanghai=0.
	if((GetUnitAbilityLevel(u,'A06H')!=0))then
		set shxishu=shxishu+.8
	endif
	if((GetUnitAbilityLevel(u,'A0DN')!=0))then
		set shxishu=shxishu+.6
	endif
	if((GetUnitAbilityLevel(u,1093678930)!=0)and(GetUnitAbilityLevel(u,'A07P')!=0))then
		set shxishu=shxishu+1.
	endif
	if UnitHaveItem(u,'I0AL') then
		set shxishu=shxishu*8
	endif
	if((GetUnitAbilityLevel(u,'A07S')!=0))then
		set shanghai=ShangHaiGongShi(u,uc,200,200,shxishu*udg_baojishanghai[(1+GetPlayerId(GetOwningPlayer(u)))],'A05K')
		call WuGongShangHai(u,uc,shanghai)
	else
	    set shanghai=ShangHaiGongShi(u,uc,200,200,shxishu,'A05K')
		call WuGongShangHai(u,uc,shanghai)
	endif
	if((gengu[(1+GetPlayerId(GetOwningPlayer(u)))]>=20)and(UnitHasBuffBJ(uc,1110454328)==false))then
	    if((GetUnitAbilityLevel(u,'A06P')!=0))then
	        call WanBuff(u, uc, 12)
	    else
	    	call WanBuff(u, uc, 11)
	    endif
	endif
	if((GetUnitAbilityLevel(u,1093678930)!=0)and(GetUnitAbilityLevel(u,'A07P')!=0)and(UnitHasBuffBJ(uc,1113813619)==false))then
	    call WanBuff(u, uc, 10)
	endif
	call RemoveLocation(loc)
	call RemoveLocation(loc2)
	set u=null
	set uc=null
	set loc=null
	set loc2=null
endfunction
function Bc takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local unit uc=GetSpellTargetUnit()
	local real x=GetUnitX(uc)
	local real y=GetUnitY(uc)
	local group g=CreateGroup()
	call WuGongShengChong(u,'A05K',160.)
	if((GetUnitAbilityLevel(u,1093678932)!=0)and(GetUnitAbilityLevel(u,'A07O')!=0))then
	    call GroupEnumUnitsInRange(g,x,y,500,Condition(function Ac))
	else
	    call GroupAddUnit(g,uc)
	endif
	call ForGroupBJ(g,function ac)
	call GroupClear(g)
	call DestroyGroup(g)
	set u=null
	set uc=null
	set g=null
endfunction
//金钟罩
function Cc takes nothing returns boolean
	return((GetSpellAbilityId()=='A05O')and(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function cc takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	call DestroyEffect(E7[i])
	call UnitRemoveAbility(u,1110454320)
	set D7[i]=((5000.*I2R(yishu[i]))*I2R(GetUnitAbilityLevel(u,'A05O')))
	set ce[i]=(70*GetUnitAbilityLevel(u,'A05O'))
	call YDWEGeneralBounsSystemUnitSetBonus(u,2,0,(70*GetUnitAbilityLevel(u,'A05O')))
	if((gengu[i]>=20))then
		set D7[i]=(D7[i]*2.)
	endif
	call AddSpecialEffectTargetUnitBJ("chest",u,"war3mapImported\\DefensiveBarrierBig.mdx")
	call DisplayTextToPlayer(GetOwningPlayer(u),0,0,("|cff00ccff金钟罩效果总值："+I2S(R2I(D7[i]))))
	set E7[i]=bj_lastCreatedEffect
	call WuGongShengChong(u,'A05O',100.)
	set u=null
	set p=null
endfunction
function Ec takes nothing returns boolean
	return((UnitHasBuffBJ(GetTriggerUnit(),1110454320)))
endfunction
function Fc takes nothing returns boolean
	return(((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit())))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
function Gc takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local unit uc=GetEnumUnit()
	local location loc=GetUnitLoc(uc)
	local real shxishu=1.
	local real shanghai=0.
	if UnitHaveItem(u,'I0AL') then
		set shxishu=shxishu*8
	endif
	call AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl")
	call DestroyEffect(bj_lastCreatedEffect)
	call RemoveLocation(loc)
	set shanghai=ShangHaiGongShi(u,uc,400,400,shxishu,'A05O')
	call WuGongShangHai(u,uc,shanghai)
	set u=null
	set uc=null
	set loc=null
endfunction
function Hc takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local unit uc=GetEventDamageSource()
	local real shxishu=1.
	local real shanghai=0.
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	local location loc=GetUnitLoc(u)
	local location loc2=GetUnitLoc(uc)
	if UnitHaveItem(u,'I0AL') then
		set shxishu=shxishu*8
	endif
	if((GetEventDamage()<=D7[i]))then
	    set D7[i]=(D7[i]-GetEventDamage())
	    call SetWidgetLife(u,(GetUnitStateSwap(UNIT_STATE_LIFE,GetTriggerUnit())+GetEventDamage()))
	    //+化功大法
	    if((GetUnitAbilityLevel(u,'A07P')!=0))then
	        call AddSpecialEffectLocBJ(loc2,"Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl")
	        call DestroyEffect(bj_lastCreatedEffect)
	        call RemoveLocation(loc2)
	        set shanghai=ShangHaiGongShi(u,uc,20.,20.,shxishu,'A05O')
	        call WuGongShangHai(u,uc,shanghai)
	    endif
	else
	    call DestroyEffect(E7[i])
	    call YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(),2,1,ce[i])
	    //+易筋经
	    if((GetUnitAbilityLevel(u,'A09D')!=0))then
	        call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(600.,loc,Condition(function Fc)),function Gc)
	    endif
	    //+小无相
	    if((GetUnitAbilityLevel(u,'A083')!=0)and(GetRandomReal(0,100.)>=70.))then
	        set D7[i]=2500.*I2R(yishu[i])*I2R(GetUnitAbilityLevel(u,'A05O'))
	        set ce[i]=70*GetUnitAbilityLevel(u,'A05O')
	        call YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(),2,0,(70*GetUnitAbilityLevel(u,'A05O')))
	        if((gengu[(1+GetPlayerId(GetOwningPlayer(u)))]>=20))then
	            set D7[i]=(D7[i]*2.)
	        endif
	        call AddSpecialEffectTargetUnitBJ("chest",GetTriggerUnit(),"war3mapImported\\DefensiveBarrierBig.mdx")
	        call DisplayTextToPlayer(p,0,0,("|cff00ccff小无相重启金钟罩，效果总值："+I2S(R2I(D7[i]))))
	        set E7[i]=bj_lastCreatedEffect
	    else
	        call UnitRemoveAbility(GetTriggerUnit(),1110454320)
	    endif
	endif
	call RemoveLocation(loc)
	set u=null
	set uc=null
	set p=null
	set loc=null
	set loc2=null
endfunction
//降魔功
function lc takes nothing returns boolean
	return((GetUnitAbilityLevel(GetKillingUnit(),'S000')!=0))
endfunction
function Jc takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))
	if((jingmai[i]>=25))then
	    set F7[i]=(F7[i]+1)
	    if((F7[i]>=10))then
	        set F7[i]=(F7[i]-10)
	        call ModifyHeroStat(1,GetKillingUnit(),0,1)
	    endif
	endif
endfunction
function Lc takes nothing returns boolean
	return((GetUnitAbilityLevel(GetTriggerUnit(),'S000')!=0))
endfunction
function Mc takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	local location loc=GetUnitLoc(u)
	if((GetUnitAbilityLevel(GetTriggerUnit(),'A07X')!=0))then
	    set G7[i]=(G7[i]+1)
	    if((G7[i]>=10))then
	        set G7[i]=(G7[i]-10)
	        set H7=1
	        loop
	            exitwhen H7>18
	            call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(GetTriggerUnit()),loc,bj_UNIT_FACING)
	            call UnitAddAbility(bj_lastCreatedUnit,1093678416)
	            call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D00FA,pu(loc,256,((20.)*(I2R(H7)))))
	            call ShowUnitHide(bj_lastCreatedUnit)
	            call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
	            call RemoveLocation(pu(loc,256,((20.)*(I2R(H7)))))
	            set H7=H7+1
	        endloop
	        call RemoveLocation(loc)
	    endif
	endif
	if GetRandomReal(1,100) <= 15 + fuyuan[i]/5 then
	    call WuGongShengChong(GetTriggerUnit(),'S000',6000.)
	endif
	set u=null
	set p=null
	set loc=null
endfunction
function Oc takes nothing returns boolean
	return((GetUnitAbilityLevel(GetAttacker(),'S000')!=0))
endfunction
function Pc takes nothing returns nothing
	local unit u = GetAttacker()
	local unit ut = GetTriggerUnit()
	local location loc = null
	if (GetRandomInt(1,100)<=2 and GetUnitAbilityLevel(u,'A07S')!=0 and GetUnitAbilityLevel(u,'A0DN')!=0) then
		set loc = GetUnitLoc(ut)
		call CreateNUnitsAtLoc(1,1852862002,GetOwningPlayer(u),loc,bj_UNIT_FACING)
		call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',180.)
		call RemoveLocation(loc)
	endif
	if((GetUnitAbilityLevel(u,1395666994)!=0))then
		if (GetUnitState(ut,UNIT_STATE_LIFE)<=0.01*GetUnitState(ut,UNIT_STATE_MAX_LIFE)) then
			call SetWidgetLife(ut,1.)
		else
			call SetWidgetLife(ut,GetUnitState(ut,UNIT_STATE_LIFE)-0.01*GetUnitState(ut,UNIT_STATE_MAX_LIFE))
		endif
	endif
	set u = null
	set ut = null
	set loc = null
endfunction
function Rc takes nothing returns boolean
	return((GetEventDamage()==.18))
endfunction
function Sc takes nothing returns nothing
	local unit u=udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))]
	local unit uc=GetTriggerUnit()
	local real shxishu=1.
	local real shanghai=0.
	if UnitHaveItem(u,'I0AL') then
		set shxishu=shxishu*8
	endif
	set shanghai=ShangHaiGongShi(u,uc,13.5,13.5,shxishu,'S000')
	call WuGongShangHai(u,uc,shanghai)
	set u=null
	set uc=null
endfunction
//--------少林结束--------//
function ShaoLin_Trigger takes nothing returns nothing
	local trigger t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsWeiTuo))
	call TriggerAddAction(t,function WeiTuoGun)
	
	set t=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger(t)
	call TriggerAddCondition(t,Condition(function qc))
	call TriggerAddAction(t,function ucFunc)
	
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function wc))
	call TriggerAddAction(t,function xc)
	
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function zc))
	call TriggerAddAction(t,function Bc)
	
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function Cc))
	call TriggerAddAction(t,function cc)
	
	set t=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger(t)
	call TriggerAddCondition(t,Condition(function Ec))
	call TriggerAddAction(t,function Hc)
	
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(t,Condition(function lc))
	call TriggerAddAction(t,function Jc)
	
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function Lc))
	call TriggerAddAction(t,function Mc)
	
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function Oc))
	call TriggerAddAction(t,function Pc)
	
	set t=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger(t)
	call TriggerAddCondition(t,Condition(function Rc))
	call TriggerAddAction(t,function Sc)
endfunction
