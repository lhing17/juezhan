//--------星宿开始--------//
//星宿逍遥掌
function p3 takes nothing returns boolean
return((GetUnitAbilityLevel(GetAttacker(),'A0BP')>=1)and(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))))
endfunction
function q3 takes nothing returns boolean
local integer id=GetHandleId(GetTriggeringTrigger())
return(((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB))))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
function r3 takes nothing returns nothing
	local unit u=GetAttacker()
	local unit uc=GetEnumUnit()
	local location loc=GetUnitLoc(uc)
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local real shxishu=1.
	local real shanghai=0.
    call  DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl"))
    if((GetUnitAbilityLevel(u,'A0BT')!=0)and(GetRandomReal(.0,100.)<=8.))then
        call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(u),loc,bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit,1093678900)
        call IssueTargetOrderById(bj_lastCreatedUnit,$D022F,uc)
        call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',3.)
    endif
    if((GetUnitAbilityLevel(u,'A0BV')!=0))then
        set shxishu=shxishu+.5
    endif
    if((GetUnitAbilityLevel(u,1093678930)!=0))then
        set shxishu=shxishu+.6
    endif
    if UnitHaveItem(u, 'I0AM') then
	    set shxishu = shxishu * 1.8
    endif
    set shanghai=ShangHaiGongShi(u,uc,10.3,10.3,shxishu,'A0BP')
    call WuGongShangHai(u,uc,shanghai)
    call RemoveLocation(loc)
    set u=null
    set uc=null
    set loc=null
endfunction
function s3 takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call YDWELocalVariableInitiliation()
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,GetAttacker())
call SaveLocationHandle(YDHT,id*cx,-$72C3E060,GetUnitLoc(GetTriggerUnit()))
call SaveLocationHandle(YDHT,id*cx,-$3348E012,GetUnitLoc(GetAttacker()))
call SaveInteger(YDHT,id*cx,-$2A41B3A3,'A0BP')
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A07P')!=0))then
call SaveReal(YDHT,id*cx,$2392447A,35.)
else
call SaveReal(YDHT,id*cx,$2392447A,23.)
endif
call SaveReal(YDHT,id*cx,$41713DA3,450.)
call SaveReal(YDHT,id*cx,-$2CEF3086,((1+(I2R(GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),LoadInteger(YDHT,id*cx,-$2A41B3A3)))/2.))+(I2R(danpo[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))))])*.05)))
call SaveReal(YDHT,id*cx,$1968F401,(.9+udg_shanghaijiacheng[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))))]))

call SaveReal(YDHT,id*cx,-$2CEF3086,(LoadReal(YDHT,id*cx,-$2CEF3086)*LoadReal(YDHT,id*cx,$1968F401)))
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),LoadInteger(YDHT,id*cx,-$2A41B3A3))==9))then
call SaveReal(YDHT,id*cx,-$2CEF3086,(LoadReal(YDHT,id*cx,-$2CEF3086)*10.))
endif
if((GetRandomReal(.0,100.)<=LoadReal(YDHT,id*cx,$2392447A)))then
call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(LoadReal(YDHT,id*cx,$41713DA3),LoadLocationHandle(YDHT,id*cx,-$72C3E060),Condition(function q3)),function r3)
call WuGongShengChong(GetAttacker(),'A0BP',1000.)
endif
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$72C3E060))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
call YDWELocalVariableEnd()
call FlushChildHashtable(YDHT,id*cx)
endfunction
//三阴蜈蚣爪
function u3 takes nothing returns boolean
	return((GetSpellAbilityId()=='A0BQ'))
endfunction
function v3 takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,GetTriggerUnit())
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetSpellTargetUnit())
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetUnitLoc(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)))
call SaveLocationHandle(YDHT,id*cx,-$72C3E060,GetUnitLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0)))
call SaveInteger(YDHT,id*cx,-$2A41B3A3,'A0BQ')
call SaveLocationHandle(YDHT,id*cx,-$72C3E060,GetUnitLoc(GetTriggerUnit()))
call SaveLocationHandle(YDHT,id*cx,-$3348E012,pu(LoadLocationHandle(YDHT,id*cx,-$72C3E060),120.,GetRandomReal(0,360)))
call CreateNUnitsAtLoc(1,1969451827,GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,-$3348E012),bj_UNIT_FACING)
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A06P')!=0))then
call UnitAddAbility(bj_lastCreatedUnit,1095656040)
endif
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A07O')!=0))then
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',70.)
else
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',45.)
endif
call zw(bj_lastCreatedUnit,GetTriggerUnit(),1.,250.,1000.,1500.,75)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$72C3E060))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
call SaveLocationHandle(YDHT,id*cx,-$72C3E060,GetUnitLoc(GetTriggerUnit()))
call SaveLocationHandle(YDHT,id*cx,-$3348E012,pu(LoadLocationHandle(YDHT,id*cx,-$72C3E060),120.,GetRandomReal(0,360)))
call CreateNUnitsAtLoc(1,1969451827,GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,-$3348E012),bj_UNIT_FACING)
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A06P')!=0))then
call UnitAddAbility(bj_lastCreatedUnit,1095656040)
endif
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A07O')!=0))then
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',70.)
else
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',45.)
endif
call zw(bj_lastCreatedUnit,GetTriggerUnit(),1.,250.,1000.,1500.,75)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$72C3E060))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
call SaveLocationHandle(YDHT,id*cx,-$72C3E060,GetUnitLoc(GetTriggerUnit()))
call SaveLocationHandle(YDHT,id*cx,-$3348E012,pu(LoadLocationHandle(YDHT,id*cx,-$72C3E060),120.,GetRandomReal(0,360)))
call CreateNUnitsAtLoc(1,1969451827,GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,-$3348E012),bj_UNIT_FACING)
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A06P')!=0))then
call UnitAddAbility(bj_lastCreatedUnit,1095656040)
endif
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A07O')!=0))then
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',70.)
else
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',45.)
endif
call zw(bj_lastCreatedUnit,GetTriggerUnit(),1.,250.,1000.,1500.,75)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$72C3E060))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A07U')!=0))then
call SaveLocationHandle(YDHT,id*cx,-$72C3E060,GetUnitLoc(GetTriggerUnit()))
call SaveLocationHandle(YDHT,id*cx,-$3348E012,pu(LoadLocationHandle(YDHT,id*cx,-$72C3E060),120.,GetRandomReal(0,360)))
call CreateNUnitsAtLoc(1,1969451827,GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,-$3348E012),bj_UNIT_FACING)
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A06P')!=0))then
call UnitAddAbility(bj_lastCreatedUnit,1095656040)
endif
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A07O')!=0))then
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',70.)
else
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',45.)
endif
call zw(bj_lastCreatedUnit,GetTriggerUnit(),1.,250.,1000.,1500.,75)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$72C3E060))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
call SaveLocationHandle(YDHT,id*cx,-$72C3E060,GetUnitLoc(GetTriggerUnit()))
call SaveLocationHandle(YDHT,id*cx,-$3348E012,pu(LoadLocationHandle(YDHT,id*cx,-$72C3E060),120.,GetRandomReal(0,360)))
call CreateNUnitsAtLoc(1,1969451827,GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,-$3348E012),bj_UNIT_FACING)
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A06P')!=0))then
call UnitAddAbility(bj_lastCreatedUnit,1095656040)
endif
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A07O')!=0))then
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',70.)
else
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',45.)
endif
call zw(bj_lastCreatedUnit,GetTriggerUnit(),1.,250.,1000.,1500.,75)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$72C3E060))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
endif
call WuGongShengChong(GetTriggerUnit(),'A0BQ',100.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$72C3E060))
call FlushChildHashtable(YDHT,id*cx)
endfunction
function x3 takes nothing returns boolean
return((GetUnitTypeId(GetAttacker())==1969451827))
endfunction
function y3 takes nothing returns nothing
	local unit u=udg_hero[(1+GetPlayerId(GetOwningPlayer(GetAttacker())))]
	local unit uc=GetTriggerUnit()
	local location loc2=GetUnitLoc(uc)
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local real shxishu=1.
	local real shanghai=0.
    if((GetUnitAbilityLevel(u,'A07A')!=0)and(GetRandomReal(.0,100.)<=30.)and(UnitHasBuffBJ(uc,1110454344)==false))then
        call WanBuff(u, uc, 5)
    endif
    if((GetUnitAbilityLevel(u,'A07N')!=0)and(GetUnitAbilityLevel(u,'A089')!=0)and(GetRandomReal(.0,100.)<=20.))then
        call DestroyEffect(AddSpecialEffectLocBJ(loc2,"Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"))
        if((GetUnitAbilityLevel(u,'A0BV')!=0))then
            set shxishu=shxishu+.5
        endif
        if UnitHaveItem(u, 'I0AM') then
	    	set shxishu = shxishu * 1.8
    	endif
        set shanghai=ShangHaiGongShi(u,uc,8.,8.,shxishu,'A0BQ')
        call SetUnitLifePercentBJ(uc, GetUnitLifePercent(uc)*0.7)
      	call WuGongShangHai(u,uc,shanghai)
        call KillUnit(GetAttacker())
    else
        if((GetRandomReal(.0,100.)<=35.))then
            if((GetUnitAbilityLevel(u,'A0BV')!=0))then
                set shxishu=shxishu+.5
            endif
            if UnitHaveItem(u, 'I0AM') then
	    		set shxishu = shxishu * 1.8
    		endif
            set shanghai=ShangHaiGongShi(u,uc,10.,10.,shxishu,'A0BQ')
      	    call WuGongShangHai(u,uc,shanghai)

        endif
    endif
    call RemoveLocation(loc2)
    set u=null
    set uc=null
    set loc2=null
endfunction
globals
	boolean array isproducing
endglobals
//神木王鼎+三阴
function IsShenDingSanYin takes nothing returns boolean
	return GetItemTypeId(GetManipulatedItem())=='I0AM' and GetUnitAbilityLevel(GetTriggerUnit(),'A0BQ')>=1 and isproducing[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]==false
endfunction
function ShenDingSanYin_1 takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	local location loc = GetUnitLoc(u)
	local location loc2 = pu(loc, 120, GetRandomReal(0, 360))
	set isproducing[i]=false
	if UnitHaveItem(u, 'I0AM') then
		call CreateNUnitsAtLoc(1,1969451827,p,loc2,bj_UNIT_FACING)
		if (GetUnitAbilityLevel(u,'A06P')!=0) then
			call UnitAddAbility(bj_lastCreatedUnit,1095656040)
		endif
		if (GetUnitAbilityLevel(u,'A07O')!=0) then
			call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',70.)
		else
			call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',45.)
		endif
		call zw(bj_lastCreatedUnit,u,1.,250.,1000.,1500.,75)
	endif
	call RemoveLocation(loc)
	call RemoveLocation(loc2)
endfunction
function ShenDingSanYin takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local timer t = CreateTimer()
	call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	set isproducing[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]=true
	call TimerStart(t, 15, true, function ShenDingSanYin_1)
	set u = null
	set t = null
endfunction
//天山杖法
function A3 takes nothing returns boolean
return((GetEventDamage()==.51))
endfunction
function a3 takes nothing returns nothing
    local unit u=udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))]
    local unit uc=GetTriggerUnit()
    local real shxishu=1.
    local real shanghai=0.
    local location loc=GetUnitLoc(uc)
    if((GetUnitAbilityLevel(u,'A0DN')!=0))then
        set shxishu=shxishu+.6
    endif
    if((GetUnitAbilityLevel(u,'A07S')!=0))then
        set shxishu=shxishu+.7
    endif
    if((GetUnitAbilityLevel(u,'A084')!=0))then
        set shxishu=shxishu+.8
    endif
    if UnitHaveItem(u, 'I0AM') then
	    set shxishu = shxishu * 1.8
    endif
    call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl"))
    set shanghai=ShangHaiGongShi(u,uc,78,78,shxishu,'A0BS')
    call WuGongShangHai(u,uc,shanghai)
    if((GetUnitAbilityLevel(u,'A07P')!=0)and(GetRandomReal(.0,100.)<=10.)and(UnitHasBuffBJ(uc,1111844210)==false))then
        call WanBuff(u, uc, 8)
    endif
    if((GetUnitAbilityLevel(u,1093678932)!=0)and(GetRandomReal(.0,100.)<=10.)and(UnitHasBuffBJ(uc,1110454344)==false))then
        call WanBuff(u, uc, 5)
    endif
    call RemoveLocation(loc)
    call WuGongShengChong(u,'A0BS',300.)
    set u=null
    set uc=null
    set loc=null
endfunction
//万毒噬骨术
function b3 takes nothing returns boolean
return((GetEventDamage()==.52))
endfunction
function C3 takes nothing returns nothing
	local unit u=udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))]
    local unit uc=GetTriggerUnit()
    local real shxishu=1.
    local real shanghai=0.
    local location loc=GetUnitLoc(uc)
    if((GetUnitAbilityLevel(u,'A07M')!=0))then
        set shxishu=shxishu+.6
    endif
    if((GetUnitAbilityLevel(u,1093678930)!=0))then
        set shxishu=shxishu+.7
    endif
    if UnitHaveItem(u, 'I0AM') then
	    set shxishu = shxishu * 1.8
    endif
    if((GetUnitAbilityLevel(u,'A07P')!=0)and(GetUnitAbilityLevel(u,'A06L')!=0)and(UnitHasBuffBJ(uc,1110454324)==false)and(GetRandomReal(.0,100.)<=3.))then
        call WanBuff(u, uc, 7)
    endif
    call WuGongShengChong(u,'A0BT',3500.)
    call YDWEPolledWaitNull(.1)
    set shanghai=ShangHaiGongShi(u,uc,5.4,5.4,shxishu,'A0BT')
    call WuGongShangHai(u,uc,shanghai)
    call RemoveLocation(loc)
    set u=null
    set uc=null
    set loc=null
endfunction
function D3 takes nothing returns boolean
return((GetUnitAbilityLevel(GetKillingUnit(),'A0BT')!=0))
endfunction
function E3 takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,udg_hero[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))])
call SaveUnitHandle(YDHT,id*cx,$1168A3EE,GetTriggerUnit())
call SaveInteger(YDHT,id*cx,-$2A41B3A3,'A0BT')
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),1395666994)!=0)and(GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A07A')!=0)and(GetRandomReal(.0,100.)<=3.))then
call SaveLocationHandle(YDHT,id*cx,-$72C3E060,GetUnitLoc(LoadUnitHandle(YDHT,id*cx,$1168A3EE)))
call CreateNUnitsAtLoc(1,1969451827,GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)),LoadLocationHandle(YDHT,id*cx,-$72C3E060),bj_UNIT_FACING)
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A06P')!=0))then
call UnitAddAbility(bj_lastCreatedUnit,1095656040)
endif
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A07O')!=0))then
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',70.)
else
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',45.)
endif
call zw(bj_lastCreatedUnit,LoadUnitHandle(YDHT,id*cx,$59BEA0CB),1.,250.,1000.,1500.,75)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$72C3E060))
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
//星宿心法
function G3 takes nothing returns boolean
return((GetSpellAbilityId()=='A0BV'))
endfunction
function H3 takes nothing returns nothing
if((LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$4DA64D97)>=500.))then
call FlushChildHashtable(YDHT,GetHandleId(GetExpiredTimer()))
call DestroyTimer(GetExpiredTimer())
else
call SaveReal(YDHT,GetHandleId(GetExpiredTimer()),-$4DA64D97,(LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$4DA64D97)+47.))
if((UnitHasBuffBJ(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB),1112504171))and(GetUnitAbilityLevel(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB),1093678935)!=0)and(GetRandomInt(1,$A)<=5))then
call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F,GetUnitLoc(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB)))
if((GetUnitTypeId(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB))=='O004'))then
call SaveInteger(YDHT,GetHandleId(GetExpiredTimer()),-$2A11C165,1747988533)
elseif((GetUnitTypeId(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB))=='O001'))then
call SaveInteger(YDHT,GetHandleId(GetExpiredTimer()),-$2A11C165,1747988535)
elseif((GetUnitTypeId(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB))=='O002'))then
call SaveInteger(YDHT,GetHandleId(GetExpiredTimer()),-$2A11C165,1747988536)
elseif((GetUnitTypeId(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB))=='O003'))then
call SaveInteger(YDHT,GetHandleId(GetExpiredTimer()),-$2A11C165,1747988537)
elseif((GetUnitTypeId(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB))=='O000'))then
call SaveInteger(YDHT,GetHandleId(GetExpiredTimer()),-$2A11C165,1747988534)
elseif((GetUnitTypeId(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB))=='O023') or (GetUnitTypeId(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB))=='O02H') or (GetUnitTypeId(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB))=='O02I'))then
call SaveInteger(YDHT,GetHandleId(GetExpiredTimer()),-$2A11C165,'h00I')
elseif((GetUnitTypeId(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB))=='O02J'))then
call SaveInteger(YDHT,GetHandleId(GetExpiredTimer()),-$2A11C165,'h00K')
endif

call CreateNUnitsAtLoc(1,LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$2A11C165),GetOwningPlayer(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB)),LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F),bj_UNIT_FACING)
call GroupAddUnit(Fe,bj_lastCreatedUnit)
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',5.)
call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F))
endif
endif
endfunction
function I3 takes nothing returns nothing
local timer ky
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,GetTriggerUnit())
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetUnitLoc(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)))
call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)),LoadLocationHandle(YDHT,id*cx,$5E83114F),bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,'A0BW')
call IssueTargetOrderById(bj_lastCreatedUnit,$D0065,LoadUnitHandle(YDHT,id*cx,$59BEA0CB))
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
call SaveInteger(YDHT,id*cx,-$2A41B3A3,'A0BV')
if((GetUnitTypeId(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))=='O004'))then
call SaveInteger(YDHT,id*cx,-$2A11C165,1747988533)
elseif((GetUnitTypeId(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))=='O001'))then
call SaveInteger(YDHT,id*cx,-$2A11C165,1747988535)
elseif((GetUnitTypeId(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))=='O002'))then
call SaveInteger(YDHT,id*cx,-$2A11C165,1747988536)
elseif((GetUnitTypeId(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))=='O003'))then
call SaveInteger(YDHT,id*cx,-$2A11C165,1747988537)
elseif((GetUnitTypeId(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))=='O000'))then
call SaveInteger(YDHT,id*cx,-$2A11C165,1747988534)
elseif((GetUnitTypeId(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))=='O023') or (GetUnitTypeId(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))=='O02H') or (GetUnitTypeId(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))=='O02I'))then
call SaveInteger(YDHT,id*cx,-$2A11C165,'h00I')
elseif((GetUnitTypeId(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))=='O02J'))then
call SaveInteger(YDHT,id*cx,-$2A11C165,'h00K')
endif
call CreateNUnitsAtLoc(1,LoadInteger(YDHT,id*cx,-$2A11C165),GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),bj_UNIT_FACING)
call GroupAddUnit(Fe,bj_lastCreatedUnit)
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',5.)
call WuGongShengChong(GetTriggerUnit(),'A0BV',100.)
set ky=CreateTimer()
call SaveUnitHandle(YDHT,GetHandleId(ky),$59BEA0CB,LoadUnitHandle(YDHT,id*cx,$59BEA0CB))
call TimerStart(ky,1.,true,function H3)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call FlushChildHashtable(YDHT,id*cx)
set ky=null
endfunction
function J3 takes nothing returns boolean
return((IsUnitInGroup(GetTriggerUnit(),Fe)))
endfunction
function K3 takes nothing returns boolean
local integer id=GetHandleId(GetTriggeringTrigger())
return(((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB))))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
function L3 takes nothing returns nothing
	local unit u=udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]
	local unit uc=GetEnumUnit()
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local real shxishu=1.
	local real shanghai=0.
	if((GetUnitAbilityLevel(u,'A07P')!=0))then
        set shxishu=shxishu+.7
    endif
    if((GetUnitAbilityLevel(u,1093678932)!=0))then
        set shxishu=shxishu+.8
    endif
    if UnitHaveItem(u, 'I0AM') then
	    set shxishu = shxishu * 1.8
    endif
    set shanghai=ShangHaiGongShi(u,uc,36.,36.,shxishu,'A0BV')
  	call WuGongShangHai(u,uc,shanghai)
  	set u=null
    set uc=null
endfunction
function MM3 takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call GroupRemoveUnit(Fe,GetTriggerUnit())
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))])
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call SaveLocationHandle(YDHT,id*cx,-$72C3E060,GetUnitLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0)))
call SaveInteger(YDHT,id*cx,-$2A41B3A3,'A0BV')
call SaveReal(YDHT,id*cx,-$2CEF3086,((.8+(I2R(GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),LoadInteger(YDHT,id*cx,-$2A41B3A3)))/2.))+1.))
call SaveReal(YDHT,id*cx,$1968F401,(1.5+udg_shanghaijiacheng[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))))]))
call AddSpecialEffectLocBJ(LoadLocationHandle(YDHT,id*cx,-$72C3E060),"war3mapImported\\DivineRing.mdx")
call DestroyEffect(bj_lastCreatedEffect)
call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(350.,LoadLocationHandle(YDHT,id*cx,-$72C3E060),Condition(function K3)),function L3)
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A083')!=0)and(GetRandomInt(1,100)<=80))then
if((GetUnitTypeId(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))=='O004'))then
call SaveInteger(YDHT,id*cx,-$2A11C165,1747988533)
elseif((GetUnitTypeId(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))=='O001'))then
call SaveInteger(YDHT,id*cx,-$2A11C165,1747988535)
elseif((GetUnitTypeId(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))=='O002'))then
call SaveInteger(YDHT,id*cx,-$2A11C165,1747988536)
elseif((GetUnitTypeId(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))=='O003'))then
call SaveInteger(YDHT,id*cx,-$2A11C165,1747988537)
elseif((GetUnitTypeId(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))=='O000'))then
call SaveInteger(YDHT,id*cx,-$2A11C165,1747988534)
elseif((GetUnitTypeId(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))=='O023') or (GetUnitTypeId(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))=='O02H') or (GetUnitTypeId(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))=='O02I'))then
call SaveInteger(YDHT,id*cx,-$2A11C165,'h00I')
elseif((GetUnitTypeId(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))=='O02J'))then
call SaveInteger(YDHT,id*cx,-$2A11C165,'h00K')
endif
call CreateNUnitsAtLoc(1,LoadInteger(YDHT,id*cx,-$2A11C165),GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,-$72C3E060),bj_UNIT_FACING)
call GroupAddUnit(Fe,bj_lastCreatedUnit)
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',5.)
endif
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$72C3E060))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//--------星宿结束--------//
