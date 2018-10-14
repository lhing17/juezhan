
//------------江湖武功开始------------
//弹指神通
function IsTanZhi takes nothing returns boolean
	return((GetSpellAbilityId()=='A06H')and(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function TanZhi_Condition takes nothing returns boolean
	return IsUnitAliveBJ(GetFilterUnit())and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))
endfunction
function TanZhiShenTong takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local location loc = GetUnitLoc(u)
	local location loc2 = GetUnitLoc(GetSpellTargetUnit())
	local integer i = 1 + GetPlayerId(p)
	if (GetUnitAbilityLevel(u, 'A07U')>=1) then
		call CreateNUnitsAtLoc(1, 'e000', p, loc, bj_UNIT_FACING)
		call UnitAddAbility(bj_lastCreatedUnit, 'A06H')
		call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A06H', GetUnitAbilityLevel(u, 'A06H'))
		call IssueTargetOrderById(bj_lastCreatedUnit, $D0097, GroupPickRandomUnit(YDWEGetUnitsInRangeOfLocMatchingNull(300, loc2, Condition(function TanZhi_Condition))))
		call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
		call ShowUnitHide(bj_lastCreatedUnit)
	endif
	call WuGongShengChong(GetTriggerUnit(),'A06H',350.)
	call RemoveLocation(loc)
	call RemoveLocation(loc2)
	set u = null
	set p = null
	set loc = null
	set loc2 = null
endfunction
function IsTanZhiBeiDong takes nothing returns boolean
	return((GetUnitAbilityLevel(GetAttacker(),'A06H')>=1)and(GetUnitAbilityLevel(GetAttacker(),'A07S')>=1))
endfunction
function TanZhiBeiDong takes nothing returns nothing
	local unit u = GetAttacker()
	local unit ut = GetTriggerUnit()
	local location loc = GetUnitLoc(u)
	local player p = GetOwningPlayer(u)
	if GetRandomReal(0, 100) <= 8 then
		call CreateNUnitsAtLoc(1, 'e000', p, loc, bj_UNIT_FACING)
		call UnitAddAbility(bj_lastCreatedUnit, 'A06H')
		call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A06H', GetUnitAbilityLevel(u, 'A06H'))
		call IssueTargetOrderById(bj_lastCreatedUnit, $D0097, ut)
		call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
		call ShowUnitHide(bj_lastCreatedUnit)
	endif
	call RemoveLocation(loc)
	set u = null
	set ut = null
	set p = null
endfunction
function IsTanZhiShangHai takes nothing returns boolean
	return((GetEventDamage()==.21))
endfunction
function TanZhiShangHai_Conditiom takes nothing returns boolean
	return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetEventDamageSource()))and IsUnitAliveBJ(GetFilterUnit())
endfunction
function TanZhiShangHai_Action takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local unit u=udg_hero[i]
    local unit uc=GetEnumUnit()
    local real shxishu=1.
    local real shanghai=0.
    set shanghai=ShangHaiGongShi(u,uc,30.8,30.8,shxishu,'A06H')
    call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
function TanZhiShangHai takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local unit u=udg_hero[i]
    local unit uc=GetTriggerUnit()
    local real shxishu=1.
    local real shanghai=0.
    local location loc=GetUnitLoc(u)
    local location loc2=GetUnitLoc(uc)
    if((GetUnitAbilityLevel(u,'A06P')!=0))then
        set shxishu=shxishu+.6
    endif
    if((GetUnitAbilityLevel(u,'A085')!=0))then
        set shxishu=shxishu+.7
    endif
    if GetUnitAbilityLevel(u,'A085')!=0 and GetUnitAbilityLevel(u,'A06P')!=0 and GetUnitAbilityLevel(u,1093679152)!=0 and GetUnitAbilityLevel(u,1093679152)!=0 and GetUnitAbilityLevel(u,1395666994)!=0  and GetUnitAbilityLevel(u,'A07U')!=0 then
    	set shxishu=shxishu*6*2
	endif
    set shanghai=ShangHaiGongShi(u,uc,30.8,30.8,shxishu,'A06H')
    call WuGongShangHai(u,uc,shanghai)

    if((danpo[i]>=23)and(GetRandomReal(.0,100.)<=30.)and(UnitHasBuffBJ(uc,1110454328)==false))then
        call WanBuff(u, uc, 11)
    endif
    if((GetUnitAbilityLevel(u,1093679152)!=0)and(UnitHasBuffBJ(uc,'Bcri')==false))then
        call WanBuff(u, uc, 4)
    endif
    if((GetUnitAbilityLevel(u,1395666994)!=0))then
        call DestroyEffect(AddSpecialEffectLocBJ(loc2,"war3mapImported\\PsiWave.mdx"))
        call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(100.,loc2,Condition(function TanZhiShangHai_Conditiom)),function TanZhiShangHai_Action)
    endif
    call RemoveLocation(loc)
    call RemoveLocation(loc2)
    set u=null
    set uc=null
    set loc=null
    set loc2=null
endfunction
//冰魄银针
function dF takes nothing returns boolean
	return((GetSpellAbilityId()=='A07A')and(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function eF takes nothing returns nothing
    local unit uc=GetTriggerUnit()
    local location loc=GetUnitLoc(uc)
    local location array loc_bp
    local integer level = 0
    call WuGongShengChong(GetTriggerUnit(),'A07A',260.)
    set H7=1
    loop
        exitwhen H7>12
        set loc_bp[H7]=pu(loc,256,30.*I2R(H7))
        call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(GetTriggerUnit()),loc,bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit,1093678914)
        call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D00FA,loc_bp[H7])
        call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
        call RemoveLocation(loc_bp[H7])
        set loc_bp[H7]=null
        set H7=H7+1
    endloop
    set level = GetUnitAbilityLevel(uc, 'A07A')
    call YDWEPolledWaitNull(5.0)
    if chilian[1+GetPlayerId(GetOwningPlayer(uc))]==true then
	    call UnitRemoveAbility(uc, 'A07A')
	    call UnitAddAbility(uc, 'A07A')
	    call SetUnitAbilityLevel(uc, 'A07A', level)
	endif
    call RemoveLocation(loc)
    set uc=null
    set loc=null
endfunction
function gF takes nothing returns boolean
	return((GetEventDamage()==.24))
endfunction
function hF takes nothing returns nothing
    local integer i=1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local unit u=udg_hero[i]
    local unit uc=GetTriggerUnit()
    local real shxishu=1.
    local real shanghai=0.
    local location loc=GetUnitLoc(uc)
    if((GetUnitAbilityLevel(u,1093678932)!=0))then
        set shxishu=shxishu+.6
    endif
    if((GetUnitAbilityLevel(u,'A083')!=0))then
        set shxishu=shxishu+2.0
    endif
    if GetUnitAbilityLevel(u,1093678932)!=0 and GetUnitAbilityLevel(u,'A083')!=0 and GetUnitAbilityLevel(u,'A07S')!=0 and GetUnitAbilityLevel(u,1093679154)!=0 then
    	set shxishu=shxishu*4*2
	endif
	if chilian[i] then
		set shxishu = shxishu * 5
	endif
    set shanghai=ShangHaiGongShi(u,uc,26,26,shxishu,'A07A')
    call WuGongShangHai(u,uc,shanghai)
    if((GetUnitAbilityLevel(u,'A07S')!=0))then
        call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(u),loc,bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit,1093678915)
        call IssueTargetOrderById(bj_lastCreatedUnit,$D0102,GetTriggerUnit())
        call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
    endif
    if((GetUnitAbilityLevel(u,1093679154)!=0)) or chilian[i] then
        call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(u),loc,bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit,1093678916)
        call IssueTargetOrderById(bj_lastCreatedUnit,$D00F1,GetTriggerUnit())
        call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
    endif
    call RemoveLocation(loc)
    set u=null
    set uc=null
    set loc=null
endfunction
function jF takes nothing returns boolean
	return((GetEventDamage()==.25))
endfunction
function kF takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local unit u=udg_hero[i]
    local unit uc=GetTriggerUnit()
    local real shxishu=1.
    local real shanghai=0.
    if((GetUnitAbilityLevel(u,1093678932)!=0))then
        set shxishu=shxishu+.6
    endif
    if((GetUnitAbilityLevel(u,'A083')!=0))then
        set shxishu=shxishu+2.0
    endif
    if GetUnitAbilityLevel(u,1093678932)!=0 and GetUnitAbilityLevel(u,'A083')!=0 and GetUnitAbilityLevel(u,'A07S')!=0 and GetUnitAbilityLevel(u,1093679154)!=0 then
    	set shxishu=shxishu*4*2
	endif
	if chilian[i] then
		set shxishu = shxishu * 5
	endif
    set shanghai=ShangHaiGongShi(u,uc,6,6,shxishu,'A07A')
    if chilian[i] then
	    set shanghai=ShangHaiGongShi(u,uc,26,26,shxishu,'A07A')
    endif
    call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
//连城剑法
function nF takes nothing returns boolean
	return((GetSpellAbilityId()=='A06J')and(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function oF takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,GetTriggerUnit())
	call SaveInteger(YDHT,id*cx,-$2A41B3A3,'A06J')
	call SaveLocationHandle(YDHT,id*cx,-$72C3E060,GetUnitLoc(GetTriggerUnit()))
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetSpellTargetLoc())
	call SaveReal(YDHT,id*cx,-$60249D54,AngleBetweenPoints(LoadLocationHandle(YDHT,id*cx,-$72C3E060),LoadLocationHandle(YDHT,id*cx,$5E83114F)))
	call SaveLocationHandle(YDHT,id*cx,-$3348E012,pu(LoadLocationHandle(YDHT,id*cx,-$72C3E060),200.,((LoadReal(YDHT,id*cx,-$60249D54))+(120.))))
	call SaveLocationHandle(YDHT,id*cx,$247CC5E5,pu(LoadLocationHandle(YDHT,id*cx,-$3348E012),150.,((LoadReal(YDHT,id*cx,-$60249D54))+(.0))))
	call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)),LoadLocationHandle(YDHT,id*cx,-$3348E012),bj_UNIT_FACING)
	call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddAbility(bj_lastCreatedUnit,LoadInteger(YDHT,id*cx,-$2A41B3A3))
	call SetUnitAbilityLevel(bj_lastCreatedUnit,LoadInteger(YDHT,id*cx,-$2A41B3A3),GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),LoadInteger(YDHT,id*cx,-$2A41B3A3)))
	call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D00FA,LoadLocationHandle(YDHT,id*cx,$247CC5E5))
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$247CC5E5))
	call SaveLocationHandle(YDHT,id*cx,-$3348E012,pu(LoadLocationHandle(YDHT,id*cx,-$72C3E060),200.,((LoadReal(YDHT,id*cx,-$60249D54))+(240.))))
	call SaveLocationHandle(YDHT,id*cx,$247CC5E5,pu(LoadLocationHandle(YDHT,id*cx,-$3348E012),150.,((LoadReal(YDHT,id*cx,-$60249D54))+(.0))))
	call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)),LoadLocationHandle(YDHT,id*cx,-$3348E012),bj_UNIT_FACING)
	call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddAbility(bj_lastCreatedUnit,LoadInteger(YDHT,id*cx,-$2A41B3A3))
	call SetUnitAbilityLevel(bj_lastCreatedUnit,LoadInteger(YDHT,id*cx,-$2A41B3A3),GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),LoadInteger(YDHT,id*cx,-$2A41B3A3)))
	call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D00FA,LoadLocationHandle(YDHT,id*cx,$247CC5E5))
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$247CC5E5))
	if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),1093678932)!=0)and(GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A07F')!=0))then
	call SaveLocationHandle(YDHT,id*cx,-$3348E012,pu(LoadLocationHandle(YDHT,id*cx,-$72C3E060),550.,((LoadReal(YDHT,id*cx,-$60249D54))+(120.))))
	call SaveLocationHandle(YDHT,id*cx,$247CC5E5,pu(LoadLocationHandle(YDHT,id*cx,-$3348E012),150.,((LoadReal(YDHT,id*cx,-$60249D54))+(.0))))
	call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)),LoadLocationHandle(YDHT,id*cx,-$3348E012),bj_UNIT_FACING)
	call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddAbility(bj_lastCreatedUnit,LoadInteger(YDHT,id*cx,-$2A41B3A3))
	call SetUnitAbilityLevel(bj_lastCreatedUnit,LoadInteger(YDHT,id*cx,-$2A41B3A3),GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),LoadInteger(YDHT,id*cx,-$2A41B3A3)))
	call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D00FA,LoadLocationHandle(YDHT,id*cx,$247CC5E5))
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$247CC5E5))
	call SaveLocationHandle(YDHT,id*cx,-$3348E012,pu(LoadLocationHandle(YDHT,id*cx,-$72C3E060),550.,((LoadReal(YDHT,id*cx,-$60249D54))+(240.))))
	call SaveLocationHandle(YDHT,id*cx,$247CC5E5,pu(LoadLocationHandle(YDHT,id*cx,-$3348E012),150.,((LoadReal(YDHT,id*cx,-$60249D54))+(.0))))
	call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)),LoadLocationHandle(YDHT,id*cx,-$3348E012),bj_UNIT_FACING)
	call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddAbility(bj_lastCreatedUnit,LoadInteger(YDHT,id*cx,-$2A41B3A3))
	call SetUnitAbilityLevel(bj_lastCreatedUnit,LoadInteger(YDHT,id*cx,-$2A41B3A3),GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),LoadInteger(YDHT,id*cx,-$2A41B3A3)))
	call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D00FA,LoadLocationHandle(YDHT,id*cx,$247CC5E5))
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$247CC5E5))
	call SaveLocationHandle(YDHT,id*cx,-$3348E012,pu(LoadLocationHandle(YDHT,id*cx,-$72C3E060),400.,((LoadReal(YDHT,id*cx,-$60249D54))+(120.))))
	call SaveLocationHandle(YDHT,id*cx,$247CC5E5,pu(LoadLocationHandle(YDHT,id*cx,-$3348E012),150.,((LoadReal(YDHT,id*cx,-$60249D54))+(.0))))
	call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)),LoadLocationHandle(YDHT,id*cx,-$3348E012),bj_UNIT_FACING)
	call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddAbility(bj_lastCreatedUnit,LoadInteger(YDHT,id*cx,-$2A41B3A3))
	call SetUnitAbilityLevel(bj_lastCreatedUnit,LoadInteger(YDHT,id*cx,-$2A41B3A3),GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),LoadInteger(YDHT,id*cx,-$2A41B3A3)))
	call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D00FA,LoadLocationHandle(YDHT,id*cx,$247CC5E5))
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$247CC5E5))
	call SaveLocationHandle(YDHT,id*cx,-$3348E012,pu(LoadLocationHandle(YDHT,id*cx,-$72C3E060),400.,((LoadReal(YDHT,id*cx,-$60249D54))+(240.))))
	call SaveLocationHandle(YDHT,id*cx,$247CC5E5,pu(LoadLocationHandle(YDHT,id*cx,-$3348E012),150.,((LoadReal(YDHT,id*cx,-$60249D54))+(.0))))
	call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)),LoadLocationHandle(YDHT,id*cx,-$3348E012),bj_UNIT_FACING)
	call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddAbility(bj_lastCreatedUnit,LoadInteger(YDHT,id*cx,-$2A41B3A3))
	call SetUnitAbilityLevel(bj_lastCreatedUnit,LoadInteger(YDHT,id*cx,-$2A41B3A3),GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),LoadInteger(YDHT,id*cx,-$2A41B3A3)))
	call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D00FA,LoadLocationHandle(YDHT,id*cx,$247CC5E5))
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$247CC5E5))
	else
	if(((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),1093678932)!=0)or(GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A07F')!=0)))then
	call SaveLocationHandle(YDHT,id*cx,-$3348E012,pu(LoadLocationHandle(YDHT,id*cx,-$72C3E060),400.,((LoadReal(YDHT,id*cx,-$60249D54))+(120.))))
	call SaveLocationHandle(YDHT,id*cx,$247CC5E5,pu(LoadLocationHandle(YDHT,id*cx,-$3348E012),150.,((LoadReal(YDHT,id*cx,-$60249D54))+(.0))))
	call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)),LoadLocationHandle(YDHT,id*cx,-$3348E012),bj_UNIT_FACING)
	call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddAbility(bj_lastCreatedUnit,LoadInteger(YDHT,id*cx,-$2A41B3A3))
	call SetUnitAbilityLevel(bj_lastCreatedUnit,LoadInteger(YDHT,id*cx,-$2A41B3A3),GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),LoadInteger(YDHT,id*cx,-$2A41B3A3)))
	call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D00FA,LoadLocationHandle(YDHT,id*cx,$247CC5E5))
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$247CC5E5))
	call SaveLocationHandle(YDHT,id*cx,-$3348E012,pu(LoadLocationHandle(YDHT,id*cx,-$72C3E060),400.,((LoadReal(YDHT,id*cx,-$60249D54))+(240.))))
	call SaveLocationHandle(YDHT,id*cx,$247CC5E5,pu(LoadLocationHandle(YDHT,id*cx,-$3348E012),150.,((LoadReal(YDHT,id*cx,-$60249D54))+(.0))))
	call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)),LoadLocationHandle(YDHT,id*cx,-$3348E012),bj_UNIT_FACING)
	call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddAbility(bj_lastCreatedUnit,LoadInteger(YDHT,id*cx,-$2A41B3A3))
	call SetUnitAbilityLevel(bj_lastCreatedUnit,LoadInteger(YDHT,id*cx,-$2A41B3A3),GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),LoadInteger(YDHT,id*cx,-$2A41B3A3)))
	call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D00FA,LoadLocationHandle(YDHT,id*cx,$247CC5E5))
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$247CC5E5))
	endif
	endif
	call WuGongShengChong(GetTriggerUnit(),'A06J',350)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$72C3E060))
	call YDWELocalVariableEnd()
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function qF takes nothing returns boolean
    return((GetEventDamage()==.23))
endfunction
function rF takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local unit u=udg_hero[i]
    local unit uc=GetTriggerUnit()
    local real shxishu=1.
    local real shanghai=0.
    if((GetUnitAbilityLevel(u,'A07J')!=0))then
        set shxishu=shxishu+.7
    endif
    if((GetUnitAbilityLevel(u,'A07X')!=0))then
        set shxishu=shxishu+.8
    endif
    if GetUnitAbilityLevel(u,'A07J')!=0 and GetUnitAbilityLevel(u,'A07X')!=0 and GetUnitAbilityLevel(u,1093678932)!=0 and GetUnitAbilityLevel(u,'A07F')!=0 then
    	set shxishu=shxishu*4*2
	endif
    set shanghai=ShangHaiGongShi(u,uc, 53, 53,shxishu,'A06J')
    call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
//化骨绵掌
function tF takes nothing returns boolean
	return((GetSpellAbilityId()=='A06L')and(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function uF takes nothing returns boolean
	local integer id=GetHandleId(GetTriggeringTrigger())
	return(((UnitHasBuffBJ(GetFilterUnit(),1114467444)==false)and(IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB))))))
endfunction
//化骨搭配
function HuaGuWuDi takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local integer j = LoadInteger(YDHT, GetHandleId(t), 1)
	local integer jmax = 40
	if UnitHasBuffBJ(u, 'Bmlc') and j < jmax then
		call SaveInteger(YDHT, GetHandleId(t), 1, j + 1)
	else
		call UnitRemoveAbility(u, 'A00S')
		call PauseTimer(t)
		call DestroyTimer(t)
		call FlushChildHashtable(YDHT, GetHandleId(t))
	endif
	set t = null
	set u = null
endfunction
function yF takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local unit uc = GetSpellTargetUnit()
	local unit ut
	local location loc=GetUnitLoc(u)
	local player p=GetOwningPlayer(u)
	local location loc2
	local timer t = null
	if((GetUnitAbilityLevel(u,'A07Q')!=0))then
		set loc2 = GetUnitLoc(uc)
		set ut = GroupPickRandomUnit(YDWEGetUnitsInRangeOfLocMatchingNull(1000.,loc2,Condition(function uF)))
		call CreateNUnitsAtLoc(1,'e000',p,loc2,bj_UNIT_FACING)
		call ShowUnitHide(bj_lastCreatedUnit)
		call UnitAddAbility(bj_lastCreatedUnit,'A06L')
		call SetUnitAbilityLevel(bj_lastCreatedUnit,'A06L',GetUnitAbilityLevel(u,'A06L'))
		call IssueTargetOrderById(bj_lastCreatedUnit,$D0200,ut)
		call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',10.)
		call RemoveLocation(loc2)

		set loc2 = GetUnitLoc(ut)
		set ut = GroupPickRandomUnit(YDWEGetUnitsInRangeOfLocMatchingNull(1000.,loc2,Condition(function uF)))
		call CreateNUnitsAtLoc(1,'e000',p,loc2,bj_UNIT_FACING)
		call ShowUnitHide(bj_lastCreatedUnit)
		call UnitAddAbility(bj_lastCreatedUnit,'A06L')
		call SetUnitAbilityLevel(bj_lastCreatedUnit,'A06L',GetUnitAbilityLevel(u,'A06L'))
		call IssueTargetOrderById(bj_lastCreatedUnit,$D0200,ut)
		call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',10.)
		call RemoveLocation(loc2)

		set loc2 = GetUnitLoc(ut)
		set ut = GroupPickRandomUnit(YDWEGetUnitsInRangeOfLocMatchingNull(1000.,loc2,Condition(function uF)))
		call CreateNUnitsAtLoc(1,'e000',p,loc2,bj_UNIT_FACING)
		call ShowUnitHide(bj_lastCreatedUnit)
		call UnitAddAbility(bj_lastCreatedUnit,'A06L')
		call SetUnitAbilityLevel(bj_lastCreatedUnit,'A06L',GetUnitAbilityLevel(u,'A06L'))
		call IssueTargetOrderById(bj_lastCreatedUnit,$D0200,ut)
		call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',10.)
		call RemoveLocation(loc2)

		set loc2 = GetUnitLoc(ut)
		set ut = GroupPickRandomUnit(YDWEGetUnitsInRangeOfLocMatchingNull(1000.,loc2,Condition(function uF)))
		call CreateNUnitsAtLoc(1,'e000',p,loc2,bj_UNIT_FACING)
		call ShowUnitHide(bj_lastCreatedUnit)
		call UnitAddAbility(bj_lastCreatedUnit,'A06L')
		call SetUnitAbilityLevel(bj_lastCreatedUnit,'A06L',GetUnitAbilityLevel(u,'A06L'))
		call IssueTargetOrderById(bj_lastCreatedUnit,$D0200,ut)
		call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',10.)
		call RemoveLocation(loc2)
	endif
	if((GetUnitAbilityLevel(u,'A07X')!=0))then
		set t = CreateTimer()
		call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
		call UnitAddAbility(u, 'A00S')
		call TimerStart(t, 0.5, true, function HuaGuWuDi)
	endif
	call WuGongShengChong(u,'A06L',200.)
	call RemoveLocation(loc)
	set u=null
	set uc = null
	set ut = null
	set p=null
	set loc=null
	set loc2 = null
endfunction
//化骨伤害
function AF takes nothing returns boolean
	return((GetEventDamage()==.26))
endfunction
function aF takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local unit u=udg_hero[i]
    local unit uc=GetTriggerUnit()
    local real shxishu=1.+jingmai[i]/20
    local real shanghai=0.
    if((GetUnitAbilityLevel(u,'A07P')!=0))then
        set shxishu=shxishu+.7
    endif
    if((GetUnitAbilityLevel(u,'A07G')!=0))then
        set shxishu=shxishu+.7
    endif
    if((GetUnitAbilityLevel(u,'A084')!=0))then
        set shxishu=shxishu+.8
    endif
    if GetUnitAbilityLevel(u,'A07P')!=0 and GetUnitAbilityLevel(u,'A07G')!=0 and GetUnitAbilityLevel(u,'A084')!=0 and GetUnitAbilityLevel(u,'A07Q')!=0 and GetUnitAbilityLevel(u,'A07X')!=0 and GetUnitAbilityLevel(u,'A07R')!=0 then
    	set shxishu=shxishu*6*2
	endif
    set shanghai=ShangHaiGongShi(u,uc,80.,80.,shxishu,'A06L')
    call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
//四门刀法
function bF takes nothing returns boolean
return((GetSpellAbilityId()=='A06M')and(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function CF takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,GetTriggerUnit())
call SaveInteger(YDHT,id*cx,-$2A41B3A3,'A06M')
call SaveLocationHandle(YDHT,id*cx,-$72C3E060,GetUnitLoc(GetTriggerUnit()))
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A07H')!=0))then
set H7=1
loop
exitwhen H7>4
call SaveLocationHandle(YDHT,id*cx,-$3348E012,pu(LoadLocationHandle(YDHT,id*cx,-$72C3E060),300.,((90.)*(I2R(H7)))))
call CreateNUnitsAtLoc(1,1697656883,GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,-$3348E012),bj_UNIT_FACING)
call IssueImmediateOrderById(bj_lastCreatedUnit,$D00A0)
call Gw(20.,bj_lastCreatedUnit)
call CreateNUnitsAtLoc(1,1697656884,GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,-$3348E012),bj_UNIT_FACING)
call Gw(20.,bj_lastCreatedUnit)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
set H7=H7+1
endloop
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A086')!=0)and(GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A07X')!=0))then
set H7=1
loop
exitwhen H7>8
call SaveLocationHandle(YDHT,id*cx,-$3348E012,pu(LoadLocationHandle(YDHT,id*cx,-$72C3E060),650.,((45.)*(I2R(H7)))))
call CreateNUnitsAtLoc(1,1697656883,GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,-$3348E012),bj_UNIT_FACING)
call IssueImmediateOrderById(bj_lastCreatedUnit,$D00A0)
call Gw(20.,bj_lastCreatedUnit)
call CreateNUnitsAtLoc(1,1697656884,GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,-$3348E012),bj_UNIT_FACING)
call Gw(20.,bj_lastCreatedUnit)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
set H7=H7+1
endloop
endif
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),1093678935)!=0))then
call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,-$72C3E060),bj_UNIT_FACING)
call UnitAddAbility(bj_lastCreatedUnit,1093678670)
call Gw(20.,bj_lastCreatedUnit)
call ShowUnit(bj_lastCreatedUnit,false)
endif
else
set H7=1
loop
exitwhen H7>4
call SaveLocationHandle(YDHT,id*cx,-$3348E012,pu(LoadLocationHandle(YDHT,id*cx,-$72C3E060),300.,((90.)*(I2R(H7)))))
call CreateNUnitsAtLoc(1,1697656883,GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,-$3348E012),bj_UNIT_FACING)
call IssueImmediateOrderById(bj_lastCreatedUnit,$D00A0)
call Gw(10.,bj_lastCreatedUnit)
call CreateNUnitsAtLoc(1,1697656884,GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,-$3348E012),bj_UNIT_FACING)
call Gw(10.,bj_lastCreatedUnit)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
set H7=H7+1
endloop
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A086')!=0)and(GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A07X')!=0))then
set H7=1
loop
exitwhen H7>8
call SaveLocationHandle(YDHT,id*cx,-$3348E012,pu(LoadLocationHandle(YDHT,id*cx,-$72C3E060),650.,((45.)*(I2R(H7)))))
call CreateNUnitsAtLoc(1,1697656883,GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,-$3348E012),bj_UNIT_FACING)
call IssueImmediateOrderById(bj_lastCreatedUnit,$D00A0)
call Gw(10.,bj_lastCreatedUnit)
call CreateNUnitsAtLoc(1,1697656884,GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,-$3348E012),bj_UNIT_FACING)
call Gw(10.,bj_lastCreatedUnit)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
set H7=H7+1
endloop
endif
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),1093678935)!=0))then
call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,-$72C3E060),bj_UNIT_FACING)
call UnitAddAbility(bj_lastCreatedUnit,1093678670)
call Gw(10.,bj_lastCreatedUnit)
call ShowUnit(bj_lastCreatedUnit,false)
endif
endif
call WuGongShengChong(GetTriggerUnit(),'A06M',250.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$72C3E060))
call YDWELocalVariableEnd()
call FlushChildHashtable(YDHT,id*cx)
endfunction
function DF takes nothing returns boolean
return((GetEventDamage()==.27))
endfunction
function EF takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local unit u=udg_hero[i]
    local unit uc=GetTriggerUnit()
    local real shxishu=1.
    local real shanghai=0.
    if((GetUnitAbilityLevel(u,'A07P')!=0))then
        set shxishu=shxishu+.6
    endif
    if((GetUnitAbilityLevel(u,'A086')!=0)) and (GetUnitAbilityLevel(u,'A07X')!=0)  then
        set shxishu=shxishu+1.5
    endif
    if GetUnitAbilityLevel(u,'A07P')!=0 and GetUnitAbilityLevel(u,'A086')!=0 and GetUnitAbilityLevel(u,'A07X')!=0 and GetUnitAbilityLevel(u,1093678935)!=0 and GetUnitAbilityLevel(u,'A07H')!=0 then
    	set shxishu=shxishu*5*2
	endif
    set shanghai=ShangHaiGongShi(u,uc,7.2,7.2,shxishu,'A06M')
    call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
//一阳指
function GF takes nothing returns boolean
	return((GetSpellAbilityId()=='A06P')and(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function HF takes nothing returns nothing
	local location loc = GetUnitLoc(GetTriggerUnit())
	local location loc2 = null
	local integer i = 1
	if((GetUnitAbilityLevel(GetTriggerUnit(),1093679152)!=0)and(GetRandomInt(1,100)<=40))then
	    call SetUnitManaBJ(GetTriggerUnit(),(GetUnitState(GetTriggerUnit(),UNIT_STATE_MANA)+80.))
	endif
	call WuGongShengChong(GetTriggerUnit(),'A06P',250.)
	if (GetUnitAbilityLevel(GetTriggerUnit(),'A09D')!=0 and GetUnitAbilityLevel(GetTriggerUnit(),'A085')!=0) then
		loop
			exitwhen i >= 6
    		set loc2=pu(loc,200.,60.*i)
        	call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(GetTriggerUnit()),loc,bj_UNIT_FACING)
        	call ShowUnitHide(bj_lastCreatedUnit)
        	call UnitAddAbility(bj_lastCreatedUnit,'A06P')
        	call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D009D,loc2)
        	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
        	call RemoveLocation(loc2)
        	set i = i + 1
    	endloop
    endif
    call RemoveLocation(loc)
    set loc = null
    set loc2 = null
endfunction
//一阳指伤害
function lF takes nothing returns boolean
	return((GetEventDamage()==.29)) and IsUnitAliveBJ(GetTriggerUnit())
endfunction
function JF takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local unit u=udg_hero[i]
    local unit uc=GetTriggerUnit()
    local real shxishu=1.
    local real shanghai=0.
    local location loc=GetUnitLoc(uc)
    local location loc2=null
    if((GetUnitAbilityLevel(u,'A07O')!=0))then
        set shxishu=shxishu+.6
    endif
    if((GetUnitAbilityLevel(u,'A0DN')!=0))   then
        set shxishu=shxishu+.7
    endif
    if GetUnitAbilityLevel(u,'A07O')!=0 and GetUnitAbilityLevel(u,'A0DN')!=0 and GetUnitAbilityLevel(u,'A07U')!=0 and GetUnitAbilityLevel(u,'A09D')!=0 and GetUnitAbilityLevel(u,'A085')!=0 and GetUnitAbilityLevel(u,1093679152)!=0 then
    	set shxishu=shxishu*6*2
	endif
    set shanghai=ShangHaiGongShi(u,uc,40.,40.,shxishu,'A06P')
    call WuGongShangHai(u,uc,shanghai)
    if((GetUnitAbilityLevel(u,'A07U')!=0)and(UnitTypeNotNull(u,UNIT_TYPE_HERO)) and IsUnitMonster(uc) == false)then
        if((GetUnitState(uc,UNIT_STATE_LIFE)<=(.05*(1.*GetUnitState(uc,UNIT_STATE_MAX_LIFE)))))then
	        call WuDi(uc)
            call SetWidgetLife(uc,1.)
        else
            call SetWidgetLife(uc,(GetUnitState(uc,UNIT_STATE_LIFE)-(.05*(1.*GetUnitState(uc,UNIT_STATE_MAX_LIFE)))))
        endif
    endif
    if((gengu[(1+GetPlayerId(GetOwningPlayer(u)))]>=30)and(UnitTypeNotNull(GetEventDamageSource(),UNIT_TYPE_HERO)))then
        call WanBuff(u, uc, 12)
    endif
    call RemoveLocation(loc)
    set u=null
    set uc=null
    set loc=null
    set loc2=null
endfunction
//唐诗剑法
function LF takes nothing returns boolean
return((GetEventDamage()==.31))
endfunction
function MF takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local unit u=udg_hero[i]
    local unit uc=GetTriggerUnit()
    local real shxishu=1.
    local real shanghai=0.
    local location loc=GetUnitLoc(uc)
    if((GetUnitAbilityLevel(u,'A06J')!=0))then
        set shxishu=shxishu+.6
    endif
    if((GetUnitAbilityLevel(u,'A07F')!=0))then
        set shxishu=shxishu+.8
    endif
    if((GetUnitAbilityLevel(u,'A07X')!=0))then
        set shxishu=shxishu+1.
    endif
    if GetUnitAbilityLevel(u,'A06J')!=0 and GetUnitAbilityLevel(u,'A07F')!=0 and GetUnitAbilityLevel(u,'A07X')!=0 and GetUnitAbilityLevel(u,'A06M')!=0 and GetUnitAbilityLevel(u,1093678935)!=0 and GetUnitAbilityLevel(u,'A084')!=0 and GetUnitAbilityLevel(u,1093678930)!=0 then
    	set shxishu=shxishu*7*2
	endif
    set shanghai=ShangHaiGongShi(u,uc,75, 75,shxishu,'A071')
    call WuGongShangHai(u,uc,shanghai)
    if((GetUnitAbilityLevel(u,'A06M')!=0)and(GetRandomInt(1,$A)<5)and(UnitHasBuffBJ(uc,1110454323)==false))then
         call WanBuff(u, uc, 3)
    endif
    if((GetUnitAbilityLevel(u,1093678935)!=0)and(GetRandomInt(1,$A)<5)and(UnitHasBuffBJ(uc,'Bcri')==false))then
        call WanBuff(u, uc, 4)
    endif
    if((GetUnitAbilityLevel(u,'A084')!=0)and(GetRandomInt(1,$A)<5)and(UnitHasBuffBJ(uc,1110454324)==false))then
        call WanBuff(u, uc, 7)
    endif
    if((GetUnitAbilityLevel(u,1093678930)!=0))then
        call SetWidgetLife(u,(GetUnitState(u,UNIT_STATE_LIFE)+(shanghai*.02)))
    endif
    call WuGongShengChong(GetEventDamageSource(),'A071',950.)
    call RemoveLocation(loc)
    set u=null
    set uc=null
    set loc=null
endfunction
//七伤拳
function OF takes nothing returns boolean
return((GetUnitAbilityLevel(GetAttacker(),'A07M')>=1)and(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))))
endfunction
function PF takes nothing returns boolean
local integer id=GetHandleId(GetTriggeringTrigger())
return(((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB))))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
function QF takes nothing returns nothing
	local unit u=GetAttacker()
	local unit uc=GetEnumUnit()
	local location loc=GetUnitLoc(uc)
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local real shxishu=1.
	local real shanghai=0.
	call DestroyEffect(AddSpecialEffectLocBJ(loc,"war3mapImported\\PhoenixAttack.mdx"))
	if GetUnitAbilityLevel(u,'A07P')!=0 and GetUnitAbilityLevel(u,'A07G')!=0 and GetUnitAbilityLevel(u,'A084')!=0 and GetUnitAbilityLevel(u,'A07X')!=0 and GetUnitAbilityLevel(u,'A07U')!=0 and GetUnitAbilityLevel(u,1395666994)!=0 and GetUnitAbilityLevel(u,'A06P')!=0 then
    	set shxishu=shxishu*7*2
	endif
    set shanghai=ShangHaiGongShi(u,uc,12.,16.,shxishu,'A07M')
  	call WuGongShangHai(u,uc,shanghai)
    if((GetUnitAbilityLevel(u,'A07P')!=0)and(GetRandomReal(.0,100.)<=5.)and(UnitHasBuffBJ(uc,'B002')==false))then
        call WanBuff(u, uc, 1)
    endif
    if((GetUnitAbilityLevel(u,'A07G')!=0)and(GetRandomReal(.0,100.)<=10.)and(UnitHasBuffBJ(uc,1111844210)==false))then
        call WanBuff(u, uc, 8)
    endif
    if((GetUnitAbilityLevel(u,'A084')!=0)and(GetRandomReal(.0,100.)<=10.)and(UnitHasBuffBJ(uc,1111847784)==false))then
        call WanBuff(u, uc, 13)
    endif
    if((GetUnitAbilityLevel(u,'A07X')!=0)and(GetRandomReal(.0,100.)<=10.)and(UnitHasBuffBJ(uc,1110454323)==false))then
        call WanBuff(u, uc, 3)
    endif
    if((GetUnitAbilityLevel(u,'A07U')!=0)and(GetRandomReal(.0,100.)<=10.)and(UnitHasBuffBJ(uc,'Bcri')==false))then
        call WanBuff(u, uc, 4)
    endif
    if((GetUnitAbilityLevel(u,1395666994)!=0)and(GetRandomReal(.0,100.)<=10.)and(UnitHasBuffBJ(uc,1110454326)==false))then
        call WanBuff(u, uc, 6)
    endif
    if((GetUnitAbilityLevel(u,'A06P')!=0)and(GetRandomReal(.0,100.)<=10.)and(UnitHasBuffBJ(uc,1110454328)==false))then
        call WanBuff(u, uc, 11)
    endif
  	call RemoveLocation(loc)
    set u=null
    set uc=null
    set loc=null
endfunction
function RF takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call YDWELocalVariableInitiliation()
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,GetAttacker())
call SaveLocationHandle(YDHT,id*cx,-$72C3E060,GetUnitLoc(GetTriggerUnit()))
call SaveLocationHandle(YDHT,id*cx,-$3348E012,GetUnitLoc(GetAttacker()))
call SaveInteger(YDHT,id*cx,-$2A41B3A3,'A07M')
call SaveReal(YDHT,id*cx,$2392447A,25.)
call SaveReal(YDHT,id*cx,$41713DA3,500.)
call SaveReal(YDHT,id*cx,-$2CEF3086,((3.+(I2R(GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),LoadInteger(YDHT,id*cx,-$2A41B3A3)))/2.))+(I2R(danpo[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))))])*.06)))
call SaveReal(YDHT,id*cx,$1968F401,(1.5+udg_shanghaijiacheng[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))))]))
call SaveReal(YDHT,id*cx,-$2CEF3086,(LoadReal(YDHT,id*cx,-$2CEF3086)*LoadReal(YDHT,id*cx,$1968F401)))
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),LoadInteger(YDHT,id*cx,-$2A41B3A3))==9))then
call SaveReal(YDHT,id*cx,-$2CEF3086,(LoadReal(YDHT,id*cx,-$2CEF3086)*10.))
endif
if((GetRandomReal(.0,100.)<=LoadReal(YDHT,id*cx,$2392447A)))then
call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(LoadReal(YDHT,id*cx,$41713DA3),LoadLocationHandle(YDHT,id*cx,-$72C3E060),Condition(function PF)),function QF)
call WuGongShengChong(GetAttacker(),'A07M',2000.)
endif
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$72C3E060))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
call YDWELocalVariableEnd()
call FlushChildHashtable(YDHT,id*cx)
endfunction
//九阴白骨爪
function TF takes nothing returns boolean
	return((GetEventDamage()==.35))
endfunction
function UF takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local unit u=udg_hero[i]
    local unit uc=GetTriggerUnit()
    local real shxishu=1.
    local real shanghai=0.
    if((GetUnitAbilityLevel(u,1093678930)!=0))then
        set shxishu=shxishu+.5
    endif
    if((GetUnitAbilityLevel(u,'A06H')!=0))then
        set shxishu=shxishu+.6
    endif
    if((GetUnitAbilityLevel(u,'A089')!=0))then
        set shxishu=shxishu+.7
    endif
    if((GetUnitAbilityLevel(u,'A07S')!=0))then
        set shxishu=shxishu+.8
    endif
    if((GetUnitAbilityLevel(u,1093679154)!=0))then
        set shxishu=shxishu+.6
    endif
    if udg_whichzhangmen[1+GetPlayerId(GetOwningPlayer(u))]==11 then
	        set shxishu=shxishu*20
    endif
    if GetUnitAbilityLevel(u,1093678930)!=0 and GetUnitAbilityLevel(u,'A06H')!=0 and GetUnitAbilityLevel(u,'A089')!=0 and GetUnitAbilityLevel(u,'A07S')!=0 and GetUnitAbilityLevel(u,1093679154)!=0 then
    	set shxishu=shxishu*5*2
	endif
    set shanghai=ShangHaiGongShi(u,uc,36,36,shxishu,'A07N')
    call WuGongShangHai(u,uc,shanghai)
    call WuGongShengChong(GetEventDamageSource(),'A07N',3000.)
    set u=null
    set uc=null
endfunction
//-------空明拳开始-------//
function IsKongMing takes nothing returns boolean
	return GetUnitAbilityLevel(GetAttacker(),'A017')>=1 and GetRandomReal(.0,100.)<=15.+I2R(fuyuan[1+GetPlayerId(GetOwningPlayer(GetAttacker()))])/5.
endfunction
function KongMing_Condition takes nothing returns boolean
	return (IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetAttacker()))) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function KongMing_Action takes nothing returns nothing
	local unit u=GetAttacker()
    local unit uc=GetEnumUnit()
    local real hujia=GetUnitState(uc, ConvertUnitState(0x20))
	local real shengming=GetUnitState(uc,UNIT_STATE_MAX_LIFE)
    local real shxishu=1.+shengming/500000000+hujia/2000
    local real shanghai=0.
    local integer i=1+GetPlayerId(GetOwningPlayer(u))
    local location loc=GetUnitLoc(uc)
    if GetUnitAbilityLevel(u,'A07S')>=1 then
	    set shxishu=shxishu+.6
    endif
    if GetUnitAbilityLevel(u,'A0D1')>=1 then
	    set shxishu=shxishu+.8
    endif
    if GetUnitAbilityLevel(u,'A07S')>=1 and GetUnitAbilityLevel(u,'A0D1')>=1 and GetUnitAbilityLevel(u,'A06P')!=0 and GetUnitAbilityLevel(u,'A07U')!=0 and GetUnitAbilityLevel(GetTriggerUnit(),'A018')!=0 then
    	set shxishu=shxishu*5*2
	endif
    set shanghai=ShangHaiGongShi(u,uc,10,8,shxishu,'A017')
    call WuGongShangHai(u,uc,shanghai)
    call DestroyEffect(AddSpecialEffectTarget("Units\\NightElf\\Wisp\\WispExplode.mdl",uc,"overhead"))
    if((GetUnitAbilityLevel(u,'A06P')!=0)and(GetRandomInt(1,$A)<5)and(UnitHasBuffBJ(uc,'Bcri')==false))then
        call WanBuff(u, uc, 4)
    endif
    call RemoveLocation(loc)
    set loc=null
    set u=null
    set uc=null
endfunction
function KongMingQuan takes nothing returns nothing
	local unit u=GetAttacker()
	local unit uc=GetTriggerUnit()
	local location loc=GetUnitLoc(uc)
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	local group g=CreateGroup()
    call WuGongShengChong(u,'A017',1200.)
    if GetUnitAbilityLevel(u,'A07U')!=0 then
	    call GroupEnumUnitsInRangeOfLoc(g,loc,400,Condition(function KongMing_Condition))
	else
	    call GroupAddUnit(g,uc)
    endif
        call ForGroupBJ(g,function KongMing_Action)
    call GroupClear(g)
    call DestroyGroup(g)
    call RemoveLocation(loc)
    set u=null
    set uc=null
    set loc=null
    set p=null
    set g=null
endfunction
function IsKongMingBeiDa takes nothing returns boolean
	return UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER) and GetUnitAbilityLevel(GetTriggerUnit(),'A017')>=1 and GetUnitAbilityLevel(GetTriggerUnit(),'A018')>=1
endfunction
function KongMingBeiDa takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	if aidacishu[i]>=100 then
		set aidacishu[i]=0
		call unitadditembyidswapped('rsps',GetTriggerUnit())
	else
		set aidacishu[i]=aidacishu[i]+1
	endif
endfunction
//-------空明拳结束-------//
//-------碧海潮生曲开始-------//
function IsBiHai takes nothing returns boolean
	return(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)) and GetSpellAbilityId()=='A018'
endfunction
function BiHai_Condition takes nothing returns boolean
	return (IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function BiHai_Action takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local unit uc=GetEnumUnit()
	local location loc=GetUnitLoc(uc)
	local integer i=GetRandomInt(1,5)
	local integer j=5
	local real shxishu=1.
	local real shanghai=0.
	local string array yinlv
	set yinlv[1]="宫!"
	set yinlv[2]="商!"
	set yinlv[3]="角!"
	set yinlv[4]="徵!"
	set yinlv[5]="羽!"
	if GetUnitAbilityLevel(u,'A06H')>=1 then
	    set j=3
    endif
    if GetUnitAbilityLevel(u,'A0D3')>=1 then
	    set j=GetRandomInt(2,5)
    endif
    if GetUnitAbilityLevel(u,'A07N')>=1 then
	    set shxishu=shxishu+1
    endif
    if GetUnitAbilityLevel(u,'A06H')>=1 and GetUnitAbilityLevel(u,'A0D3')>=1 and GetUnitAbilityLevel(u,'A07N')>=1 and GetUnitAbilityLevel(u,'A084')>=1 then
    	set shxishu=shxishu*4*2
	endif
    if UnitHaveItem(u,'I09D') then
	    set shxishu=shxishu*8
    endif
    if GetUnitAbilityLevel(u,'A084')>=1 and UnitHasBuffBJ(u,'B00Y') then
	    set i=5
    endif
	call CreateTextTagLocBJ(yinlv[i],loc,40.,14.,10.,60.,30.,0)
    call Nw(1.5,bj_lastCreatedTextTag)
    call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,90)
    if i==1 then
        call WanBuff(u, uc, 1)
	elseif i==2 then
		call WanBuff(u, uc, 9)
	elseif i==3 then
		set shanghai=ShangHaiGongShi(u,uc,20,30,shxishu,'A018')
		call WuGongShangHai(u,uc,shanghai)
		call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Items\\AIil\\AIilTarget.mdl"))
	elseif i==4 then
		call WanBuff(u, uc, 4)
	elseif i==5 then
		if UnitHasBuffBJ(u,'B00Y')==false then
			set bihai[1+GetPlayerId(GetOwningPlayer(u))]=1
			call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(u),loc,bj_UNIT_FACING)
        	call ShowUnitHide(bj_lastCreatedUnit)
        	call UnitAddAbility(bj_lastCreatedUnit,'A01A')
        	call IssueTargetOrderById(bj_lastCreatedUnit,$D006B,uc)
        	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
        else
        	set bihai[1+GetPlayerId(GetOwningPlayer(u))]=bihai[1+GetPlayerId(GetOwningPlayer(u))]+1
        	call UnitRemoveBuffBJ('B00Y',u)
        	call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(u),loc,bj_UNIT_FACING)
        	call ShowUnitHide(bj_lastCreatedUnit)
        	call UnitAddAbility(bj_lastCreatedUnit,'A01A')
        	call IssueTargetOrderById(bj_lastCreatedUnit,$D006B,uc)
        	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
    	endif
    	if bihai[1+GetPlayerId(GetOwningPlayer(u))]>=j then
	    	call UnitRemoveBuffBJ('B00Y',u)
	    	call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Items\\AIil\\AIilTarget.mdl"))
	    	set shanghai=ShangHaiGongShi(u,uc,800,1600,shxishu,'A018')
			call WuGongShangHai(u,uc,shanghai)
		endif
	endif
	call RemoveLocation(loc)
    set u=null
    set uc=null
    set loc=null
endfunction
function BiHaiChaoSheng takes nothing returns nothing
	local group g=CreateGroup()
	local unit u=GetTriggerUnit()
	local location loc=GetUnitLoc(u)
	local sound sd=CreateSound("Sound\\Music\\mp3Music\\UndeadVictory.mp3",false,false,false,$A,$A,"DefaultEAXON")
	call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Human\\Brilliance\\Brilliance.mdl"))
	//call PlaySoundOnUnitBJ(sd,100,u)
	call WuGongShengChong(u,'A018',700.)
	call GroupEnumUnitsInRangeOfLoc(g,loc,500,Condition(function BiHai_Condition))
	call ForGroupBJ(g,function BiHai_Action)
    call GroupClear(g)
    call DestroyGroup(g)
    call RemoveLocation(loc)
    set u=null
    set g=null
    set loc=null
endfunction
//-------碧海潮生曲结束-------//
//------------江湖武功结束------------
function JiangHuWuGong_Trigger takes nothing returns nothing
	local trigger t = CreateTrigger()
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsTanZhi))
	call TriggerAddAction(t,function TanZhiShenTong)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsTanZhiBeiDong))
	call TriggerAddAction(t,function TanZhiBeiDong)
	set t=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger(t)
	call TriggerAddCondition(t,Condition(function IsTanZhiShangHai))
	call TriggerAddAction(t,function TanZhiShangHai)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function dF))
	call TriggerAddAction(t,function eF)
	set t=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger(t)
	call TriggerAddCondition(t,Condition(function gF))
	call TriggerAddAction(t,function hF)
	set t=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger(t)
	call TriggerAddCondition(t,Condition(function jF))
	call TriggerAddAction(t,function kF)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function nF))
	call TriggerAddAction(t,function oF)
	set t=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger(t)
	call TriggerAddCondition(t,Condition(function qF))
	call TriggerAddAction(t,function rF)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function tF))
	call TriggerAddAction(t,function yF)
	set t=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger(t)
	call TriggerAddCondition(t,Condition(function AF))
	call TriggerAddAction(t,function aF)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function bF))
	call TriggerAddAction(t,function CF)
	set t=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger(t)
	call TriggerAddCondition(t,Condition(function DF))
	call TriggerAddAction(t,function EF)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function GF))
	call TriggerAddAction(t,function HF)
	set t=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger(t)
	call TriggerAddCondition(t,Condition(function lF))
	call TriggerAddAction(t,function JF)
	set t=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger(t)
	call TriggerAddCondition(t,Condition(function LF))
	call TriggerAddAction(t,function MF)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function OF))
	call TriggerAddAction(t,function RF)
	set t=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger(t)
	call TriggerAddCondition(t,Condition(function TF))
	call TriggerAddAction(t,function UF)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsKongMingBeiDa))
	call TriggerAddAction(t,function KongMingBeiDa)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsKongMing))
	call TriggerAddAction(t,function KongMingQuan)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsBiHai))
	call TriggerAddAction(t,function BiHaiChaoSheng)
	set t = null
endfunction
