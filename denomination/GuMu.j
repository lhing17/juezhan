//--------古墓开始--------//
//美女拳
function EE takes nothing returns boolean
	return((GetUnitAbilityLevel(GetAttacker(),'A09E')>=1)and(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))))
endfunction
function FE takes nothing returns nothing
	local unit u=GetAttacker()
	local unit uc=GetTriggerUnit()
	local location loc=GetUnitLoc(uc)
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local real shxishu=1.
	local real shanghai=0.
    if(u==udg_hero[i])then
        if((GetUnitAbilityLevel(u,'A07U')!=0))then
            if((GetRandomReal(.0,100.)>=45.))then
            else
                if((GetUnitAbilityLevel(u,'A07S')!=0))then
                    set shxishu=shxishu+.6
                endif
                if((GetUnitAbilityLevel(u,'A07N')!=0))then
                    set shxishu=shxishu+.8
                endif
                if UnitHaveItem(u,'I09C') then
					set shxishu=shxishu*4
				endif
                call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl"))
                if((GetUnitAbilityLevel(u,'A07M')!=0)and(GetRandomReal(.0,100.)<=10.)and(UnitHasBuffBJ(uc,1110454328)==false))then
                    call WanBuff(u, uc, 11)
                endif
                set shanghai=ShangHaiGongShi(u,uc,28.,28.,shxishu,'A09E')
                call WuGongShangHai(u,uc,shanghai)
                call WuGongShengChong(GetAttacker(),'A09E',650)
            endif

        else
            if((GetRandomReal(.0,100.)>=30.))then
            else
                if((GetUnitAbilityLevel(u,'A07S')!=0))then
                    set shxishu=shxishu+.6
                endif
                if((GetUnitAbilityLevel(u,'A07N')!=0))then
                    set shxishu=shxishu+.8
                endif
                if UnitHaveItem(u,'I09C') then
					set shxishu=shxishu*4
				endif
                call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl"))
                if((GetUnitAbilityLevel(u,'A07M')!=0)and(GetRandomReal(.0,100.)<=10.)and(UnitHasBuffBJ(uc,1110454328)==false))then
                    call WanBuff(u, uc, 11)
                endif
                set shanghai=ShangHaiGongShi(u,uc,28.,28.,shxishu,'A09E')
                call WuGongShangHai(u,uc,shanghai)
                call WuGongShengChong(GetAttacker(),'A09E',1000)
            endif
        endif
    else
        if((GetUnitAbilityLevel(u,'A07S')!=0))then
            set shxishu=shxishu+.6
        endif
        if((GetUnitAbilityLevel(u,'A07N')!=0))then
            set shxishu=shxishu+.8
        endif
        if UnitHaveItem(u,'I09C') then
			set shxishu=shxishu*4
		endif
        call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl"))
        if((GetUnitAbilityLevel(u,'A07M')!=0)and(GetRandomReal(.0,100.)<=10.)and(UnitHasBuffBJ(uc,1110454328)==false))then
            call WanBuff(u, uc, 11)
        endif
        set shanghai=ShangHaiGongShi(udg_hero[i],uc,15,15,shxishu,'A09E')
        call WuGongShangHai(udg_hero[i],uc,shanghai)
    endif
    call RemoveLocation(loc)
    set u=null
    set uc=null
    set loc=null
endfunction
//玉蜂针
function HE takes nothing returns boolean
	return((GetSpellAbilityId()=='A09J'))
endfunction
function IE takes nothing returns boolean
	return (IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit())) and IsUnitAliveBJ(GetFilterUnit()) and GetFilterUnit()!=GetSpellTargetUnit())
endfunction
function lE takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local location loc = GetUnitLoc(u)
	call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(u),loc,bj_UNIT_FACING)
	call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddAbility(bj_lastCreatedUnit,1093679436)
	call IssueTargetOrderById(bj_lastCreatedUnit,$D022F,GetEnumUnit())
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
	call RemoveLocation(loc)
	set u = null
	set loc = null
endfunction
function KE takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local location loc = GetUnitLoc(u)
	local location loc2 = GetUnitLoc(GetEnumUnit())
	call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(u),loc,bj_UNIT_FACING)
	call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddAbility(bj_lastCreatedUnit,1093679436)
	call IssueTargetOrderById(bj_lastCreatedUnit,$D022F,GetEnumUnit())
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
	call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(u),loc2,bj_UNIT_FACING)
	call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddAbility(bj_lastCreatedUnit,1093679435)
	call IssueTargetOrderById(bj_lastCreatedUnit,$D00DD,GetEnumUnit())
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
	call RemoveLocation(loc)
	call RemoveLocation(loc2)
	set u = null
	set loc = null
	set loc2 = null
endfunction
function LE takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local unit ut = GetSpellTargetUnit()
	local location loc = GetUnitLoc(ut)
	local real range = 0.
	if (GetUnitAbilityLevel(u,'A07S')!=0) then
		set range = 500
	else
		set range = 300
	endif
	if (GetUnitAbilityLevel(u,'A06L')!=0) then
	call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(range,loc,Condition(function IE)),function KE)
	else
	call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(range,loc,Condition(function IE)),function lE)
	endif
	call WuGongShengChong(u,'A09J',100.)
	call RemoveLocation(loc)
	set u = null
	set ut = null
	set loc = null
endfunction
function NE takes nothing returns boolean
	return((GetEventDamage()==.45))
endfunction
function OE takes nothing returns nothing
	local unit u=udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))]
    local unit uc=GetTriggerUnit()
    local real shxishu=1.
    local real shanghai=0.
    if((GetUnitAbilityLevel(u,'A07A')!=0))then
        set shxishu=shxishu+.8
    endif
    if((GetUnitAbilityLevel(u,1093678932)!=0))then
        set shxishu=shxishu+.6
    endif
    if((GetUnitAbilityLevel(u,1093678935)!=0))then
        set shxishu=shxishu+.5
    endif
    if UnitHaveItem(u,'I0AU') then
		set shxishu=shxishu*2
	endif
    if UnitHaveItem(u,'I09C') then
		set shxishu=shxishu*4
	endif
    set shanghai=ShangHaiGongShi(u,uc,46.,46.,shxishu,'A09J')
    call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
//天罗地网掌
function QE takes nothing returns boolean
	return (GetUnitAbilityLevel(GetAttacker(),'A09M')>=1 and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker())))
endfunction
function RE takes nothing returns boolean
	return (IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetAttacker())) and IsUnitAliveBJ(GetFilterUnit()))
endfunction
function SE takes nothing returns nothing
	local unit u=GetAttacker()
	local unit uc=GetEnumUnit()
	local location loc=GetUnitLoc(uc)
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local real shxishu=1.
	local real shanghai=0.
	if((GetUnitAbilityLevel(u,'A07N')!=0))then
        set shxishu=shxishu+.7
    endif
    if UnitHaveItem(u,'I09C') then
		set shxishu=shxishu*4
	endif
    set shanghai=ShangHaiGongShi(u,uc,22.,46.,shxishu,'A09M')
    call WuGongShangHai(u,uc,shanghai)
    if((GetUnitAbilityLevel(u,'A06P')!=0)and(UnitHasBuffBJ(uc,1110454328)==false)and(GetRandomReal(.0,100.)<=40.))then
        call WanBuff(u, uc, 11)
    endif
    if((GetUnitAbilityLevel(u,'A07M')!=0)and(UnitHasBuffBJ(uc,1110454326)==false)and(GetRandomReal(.0,100.)<=40.))then
        call WanBuff(u, uc, 6)
    endif
    call RemoveLocation(loc)
    set u=null
    set uc=null
    set loc=null
endfunction
function TE takes nothing returns nothing
	local unit u = GetAttacker()
	local unit ut = null
	local location loc = GetUnitLoc(u)
	local location loc2 = null
	local location loc3 = null
	local integer imax = 4
	local real r = 0.
	local real r2 = 0.
	local group g = CreateGroup()
	if GetRandomInt(1, 100)<=15+fuyuan[1+GetPlayerId(GetOwningPlayer(u))]/5 then
		call GroupEnumUnitsInRangeOfLoc(g, loc, 800, Condition(function RE))
		if (GetUnitAbilityLevel(u,'A07Q')!=0) then
			set imax = 7
		endif
		set Xd=1
		loop
			exitwhen Xd>imax
			set r = r +100
			set Yd=1
			loop
				exitwhen Yd>8
				set r2 = r2 + 45
				set loc2 = pu(loc, r, r2)
				call CreateNUnitsAtLoc(1,'e00O',GetOwningPlayer(u),loc2,bj_UNIT_FACING)
				call Gw(1.5,bj_lastCreatedUnit)
				//天罗地网阵
				if (GetUnitAbilityLevel(u,'A03F')!=0) and GetRandomInt(1,3)==1 then
					set ut = GroupPickRandomUnit(g)
					set loc3 = GetUnitLoc(ut)
					call SetWidgetLife(ut, GetWidgetLife(ut)*0.8)
					call DestroyEffect(AddSpecialEffectLocBJ(loc3, "war3mapImported\\blue quick.mdx"))
					call CreateNUnitsAtLoc(1,'o02E',GetOwningPlayer(u),loc2,bj_UNIT_FACING)
					call UnitAddAbility(bj_lastCreatedUnit, 'A03D')
					call ShowUnitHide(bj_lastCreatedUnit)
					call IssueTargetOrderById(bj_lastCreatedUnit, $D008A, ut)
					call Gw(3,bj_lastCreatedUnit)
					call RemoveLocation(loc3)
					set loc3 = null
				endif
				call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(100., loc2, Condition(function RE)),function SE)
				call RemoveLocation(loc2)
				set Yd=Yd+1
			endloop
			set Xd=Xd+1
		endloop
		call WuGongShengChong(GetAttacker(),'A09M',1000.)
	endif
	call RemoveLocation(loc)
	call DestroyGroup(g)
	set g = null
	set u = null
	set loc = null
	set loc2 = null
	set ut = null
endfunction
//玉女心经
function VE takes nothing returns boolean
	return((GetUnitAbilityLevel(GetAttacker(),'A09U')>=1)and(GetRandomReal(0,1.)<=(.1+(.01*I2R(GetUnitAbilityLevel(GetAttacker(),'A09U')))))and(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))))
endfunction
function WE takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,udg_hero[(1+GetPlayerId(GetOwningPlayer(GetAttacker())))])
call SaveInteger(YDHT,id*cx,-$2A41B3A3,'A09U')
call YDWESetLocalVariableLocation("jn1",GetUnitLoc(GetAttacker()))
call YDWESetLocalVariableLocation("jn2",pu(YDWEGetLocalVariableLocation("jn1"),GetRandomReal(200.,400.),GetRandomReal(0,360.)))
if((GetUnitTypeId(GetAttacker())=='O004'))then
call SaveInteger(YDHT,id*cx,-$2A11C165,1747988533)
elseif((GetUnitTypeId(GetAttacker())=='O001'))then
call SaveInteger(YDHT,id*cx,-$2A11C165,1747988535)
elseif((GetUnitTypeId(GetAttacker())=='O002'))then
call SaveInteger(YDHT,id*cx,-$2A11C165,1747988536)
elseif((GetUnitTypeId(GetAttacker())=='O003'))then
call SaveInteger(YDHT,id*cx,-$2A11C165,1747988537)
elseif((GetUnitTypeId(GetAttacker())=='O000'))then
call SaveInteger(YDHT,id*cx,-$2A11C165,1747988534)
elseif((GetUnitTypeId(GetAttacker())=='O023' or GetUnitTypeId(GetAttacker())=='O02H' or GetUnitTypeId(GetAttacker())=='O02I'))then
call SaveInteger(YDHT,id*cx,-$2A11C165,'h00I')
elseif((GetUnitTypeId(GetAttacker())=='O02J'))then
call SaveInteger(YDHT,id*cx,-$2A11C165,'h00K')
endif
call CreateNUnitsAtLoc(1,LoadInteger(YDHT,id*cx,-$2A11C165),GetOwningPlayer(GetAttacker()),YDWEGetLocalVariableLocation("jn2"),bj_UNIT_FACING)
call SetUnitVertexColorBJ(bj_lastCreatedUnit,GetRandomReal(20.,80.),GetRandomReal(20.,80.),GetRandomReal(20.,80.),GetRandomReal(20.,60.))
call UnitAddAbility(bj_lastCreatedUnit,'Aloc')
call UnitAddAbility(bj_lastCreatedUnit,'A09E')
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),1093678935)!=0))then
call zw(bj_lastCreatedUnit,GetAttacker(),1.,250.,1000.,1500.,75)
endif
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A06J')!=0))then
call UnitAddAbility(bj_lastCreatedUnit,'A09V')
endif
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A07S')!=0))then
call Gw(20.,bj_lastCreatedUnit)
else
call Gw(10.,bj_lastCreatedUnit)
endif
call RemoveLocation(YDWEGetLocalVariableLocation("jn1"))
call RemoveLocation(YDWEGetLocalVariableLocation("jn2"))
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A07U')!=0))then
call YDWESetLocalVariableLocation("jn1",GetUnitLoc(GetAttacker()))
call YDWESetLocalVariableLocation("jn2",pu(YDWEGetLocalVariableLocation("jn1"),GetRandomReal(200.,400.),GetRandomReal(0,360.)))
call CreateNUnitsAtLoc(1,GetUnitTypeId(GetAttacker()),GetOwningPlayer(GetAttacker()),YDWEGetLocalVariableLocation("jn2"),bj_UNIT_FACING)
call SetUnitVertexColorBJ(bj_lastCreatedUnit,GetRandomReal(20.,80.),GetRandomReal(20.,80.),GetRandomReal(20.,80.),GetRandomReal(20.,60.))
call UnitAddAbility(bj_lastCreatedUnit,'Aloc')
call UnitAddAbility(bj_lastCreatedUnit,'A09E')
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),1093678935)!=0))then
call zw(bj_lastCreatedUnit,LoadUnitHandle(YDHT,id*cx,$59BEA0CB),1.,250.,1000.,1500.,75)
endif
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A07S')!=0))then
call Gw(20.,bj_lastCreatedUnit)
else
call Gw(10.,bj_lastCreatedUnit)
endif
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),'A06J')!=0))then
call UnitAddAbility(bj_lastCreatedUnit,'A09V')
endif
call RemoveLocation(YDWEGetLocalVariableLocation("jn1"))
call RemoveLocation(YDWEGetLocalVariableLocation("jn2"))
endif
call WuGongShengChong(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetAttacker())))],'A09U',650.)
call FlushChildHashtable(YDHT,id*cx)
endfunction
function YE takes nothing returns boolean
return((GetUnitAbilityLevel(GetAttacker(),'A09V')>=1)and(GetRandomReal(0,1.)<=.13)and(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))))
endfunction
function ZE takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,udg_hero[(1+GetPlayerId(GetOwningPlayer(GetAttacker())))])
call SaveInteger(YDHT,id*cx,-$2A41B3A3,'A06J')
call SaveLocationHandle(YDHT,id*cx,-$72C3E060,GetUnitLoc(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)))
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetUnitLoc(GetTriggerUnit()))
call SaveReal(YDHT,id*cx,-$60249D54,AngleBetweenPoints(LoadLocationHandle(YDHT,id*cx,-$72C3E060),LoadLocationHandle(YDHT,id*cx,$5E83114F)))
call SaveLocationHandle(YDHT,id*cx,-$3348E012,pu(LoadLocationHandle(YDHT,id*cx,-$72C3E060),200.,((LoadReal(YDHT,id*cx,-$60249D54))+(180.))))
call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)),LoadLocationHandle(YDHT,id*cx,-$3348E012),bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,LoadInteger(YDHT,id*cx,-$2A41B3A3))
call SetUnitAbilityLevel(bj_lastCreatedUnit,LoadInteger(YDHT,id*cx,-$2A41B3A3),GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),LoadInteger(YDHT,id*cx,-$2A41B3A3)))
call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D00FA,LoadLocationHandle(YDHT,id*cx,$5E83114F))
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$72C3E060))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//古墓清心诀
function e3 takes nothing returns boolean
	return(GetSpellAbilityId()=='A09T' and UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))
endfunction
function f3 takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local integer p = GetHandleId(t)
	local real j = LoadReal(YDHT, p, 0)
	local integer i = LoadInteger(YDHT, p, 3)
	local integer imax = 15
	local unit u = LoadUnitHandle(YDHT, p, 1)
	local unit uc = LoadUnitHandle(YDHT, p, 2)
	if GetUnitAbilityLevel(udg_hero[1+GetPlayerId(GetOwningPlayer(uc))], 'A07U') >= 1 then
		set imax = 30
	endif
	if (i >= imax) then
		call FlushChildHashtable(YDHT, p)
		call PauseTimer(t)
		call DestroyTimer(t)
	else
		call SaveInteger(YDHT, p, 3, i + 1)
		call SetWidgetLife(uc, GetWidgetLife(uc) + GetUnitState(uc,UNIT_STATE_MAX_LIFE)*(j + I2R(yishu[1+GetPlayerId(GetOwningPlayer(uc))])) / 200.)
	endif
	set t = null
	set u = null
	set uc = null
endfunction
function g3 takes nothing returns boolean
	return (IsUnitAlly(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit())) and IsUnitAliveBJ(GetFilterUnit()) and UnitTypeNotNull(GetFilterUnit(),UNIT_TYPE_HERO))
endfunction
function i3 takes nothing returns nothing
	local timer t
	local location loc = GetUnitLoc(GetEnumUnit())
	call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(GetTriggerUnit()),loc,bj_UNIT_FACING)
	call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddAbility(bj_lastCreatedUnit,'A09T')
	call IssueTargetOrderById(bj_lastCreatedUnit,$D00C0,GetEnumUnit())
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
	set t=CreateTimer()
	if (GetUnitAbilityLevel(udg_hero[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))],'A07P')!=0) then
		call SaveReal(YDHT,GetHandleId(t), 0, 40.)
	else
		call SaveReal(YDHT,GetHandleId(t), 0, 25.)
	endif
	call SaveUnitHandle(YDHT,GetHandleId(t),1,GetTriggerUnit())
	call SaveUnitHandle(YDHT,GetHandleId(t),2,GetEnumUnit())
	call TimerStart(t,1.,true,function f3)
	call RemoveLocation(loc)
	set t = null
	set loc = null
endfunction
function j3 takes nothing returns nothing
	local timer t
	local unit u = GetTriggerUnit()
	local unit uc = GetSpellTargetUnit()
	local location loc = GetUnitLoc(u)
	local real j = 0.
	if (GetUnitAbilityLevel(u,'A07P')!=0) then
		set j = 40
	else
		set j = 25
	endif
	if (GetUnitAbilityLevel(u,'A083')!=0) then
		call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(500., loc, Condition(function g3)), function i3)
	else
		set t=CreateTimer()
		call SaveReal(YDHT,GetHandleId(t),0,j)
		call SaveUnitHandle(YDHT,GetHandleId(t),1,u)
		call SaveUnitHandle(YDHT,GetHandleId(t),2,uc)
		call TimerStart(t,1.,true,function f3)
	endif
	call WuGongShengChong(GetTriggerUnit(),'A09T',100.)
	call RemoveLocation(loc)
	set t = null
	set u = null
	set uc = null
	set loc = null
endfunction
function m3 takes nothing returns boolean
	return((UnitHasBuffBJ(GetTriggerUnit(),1110454340))and(GetUnitAbilityLevel(GetTriggerUnit(),'A07Q')!=0))
endfunction
function nn3 takes nothing returns nothing
	call UnitDamageTarget(GetTriggerUnit(),GetEventDamageSource(),(GetEventDamage()*10.),true,false,ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL,WEAPON_TYPE_WHOKNOWS)
endfunction
//--------古墓结束--------//
