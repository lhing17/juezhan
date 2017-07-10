
//------------绝世武功开始------------
//降龙十八掌
function WF takes nothing returns boolean
return((GetSpellAbilityId()=='A07E')and(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function XF takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,GetTriggerUnit())
call SaveInteger(YDHT,id*cx,-$2A41B3A3,'A07E')
call GroupAddUnit(j9,LoadUnitHandle(YDHT,id*cx,$59BEA0CB))
call WuGongShengChong(GetTriggerUnit(),'A07E',100.)
call YDWEWaitForLocalVariable(29.)
call GroupRemoveUnit(j9,LoadUnitHandle(YDHT,id*cx,$59BEA0CB))
call YDWELocalVariableEnd()
call FlushChildHashtable(YDHT,id*cx)
endfunction
function ZF takes nothing returns boolean
	return((CountUnitsInGroup(j9)>0))
endfunction
function dG takes nothing returns boolean
	local integer id=GetHandleId(GetTriggeringTrigger())
	return(((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB))))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
function eG takes nothing returns nothing
	local unit u=LoadUnitHandle(YDHT,GetHandleId(GetTriggeringTrigger())*LoadInteger(YDHT,GetHandleId(GetTriggeringTrigger()),-$1317DA19),$59BEA0CB)
	local unit uc=GetEnumUnit()
	local location loc=GetUnitLoc(uc)
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local real shxishu=jueXueXiShu(i)
	local real shanghai=0.
	call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl"))
    set shanghai=ShangHaiGongShi(u,uc,60.,60.,shxishu,'A07E')
  	call WuGongShangHai(u,uc,shanghai)
  	call RemoveLocation(loc)
    set u=null
    set uc=null
    set loc=null
endfunction
function fG takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	if((IsUnitDeadBJ(GetEnumUnit())))then
	else
	call SaveUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB,GetEnumUnit())
	call SaveLocationHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$72C3E060,GetUnitLoc(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB)))
	call SaveInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$2A41B3A3,'A07E')
	call SaveReal(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$2CEF3086,(((3.+I2R(juexuelingwu[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB))))]))+(I2R(GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB),LoadInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$2A41B3A3)))/2.))+(I2R(gengu[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB))))])*.06)))
	call SaveReal(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$1968F401,(10.+udg_shanghaijiacheng[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB))))]))
	call SaveReal(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$2CEF3086,(LoadReal(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$2CEF3086)*(LoadReal(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$1968F401)*2.5)))
	if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB),LoadInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$2A41B3A3))==9))then
	call SaveReal(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$2CEF3086,(LoadReal(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$2CEF3086)*10.))
	endif
	call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(700.,LoadLocationHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$72C3E060),Condition(function dG)),function eG)
	call RemoveLocation(LoadLocationHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$72C3E060))
	call RemoveLocation(LoadLocationHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$3348E012))
	call YDWELocalVariableEnd()
	endif
endfunction
function gG takes nothing returns nothing
	call ForGroupBJ(j9,function fG)
endfunction
//独孤九剑
function iG takes nothing returns boolean
	return((GetSpellAbilityId()=='A07F')and(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function jG takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,GetTriggerUnit())
call SaveInteger(YDHT,id*cx,-$2A41B3A3,'A07F')
call GroupAddUnit(k9,LoadUnitHandle(YDHT,id*cx,$59BEA0CB))
set m9=.0
set n9=.0
set o9[0]=GetUnitLoc(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))
set p9=1
loop
exitwhen p9>48
set m9=m9+18.
set o9[1]=pu(o9[0],400.,(I2R(p9)*28.))
call CreateNUnitsAtLoc(1,1747988531,GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)),o9[1],bj_UNIT_FACING)
set q9[p9]=bj_lastCreatedUnit
call RemoveLocation(o9[1])
call SetUnitAnimation(q9[p9],"birth")
call SetUnitFlyHeight(q9[p9],m9,100.)
set p9=p9+1
endloop
call RemoveLocation(o9[0])
call WuGongShengChong(GetTriggerUnit(),'A07F',120.)
call YDWEWaitForLocalVariable(15.)
call GroupRemoveUnit(k9,LoadUnitHandle(YDHT,id*cx,$59BEA0CB))
call YDWELocalVariableEnd()
call FlushChildHashtable(YDHT,id*cx)
endfunction
function mG takes nothing returns boolean
return((CountUnitsInGroup(k9)>0))
endfunction
function nG takes nothing returns boolean
local integer id=GetHandleId(GetTriggeringTrigger())
return(((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB))))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
function oG takes nothing returns nothing
	local unit u=LoadUnitHandle(YDHT,GetHandleId(GetTriggeringTrigger())*LoadInteger(YDHT,GetHandleId(GetTriggeringTrigger()),-$1317DA19),$59BEA0CB)
	local unit uc=GetEnumUnit()
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local real shxishu=jueXueXiShu(i)
	local real shanghai=0.
    set shanghai=ShangHaiGongShi(u,uc,4.,4.,shxishu,'A07F')
  	call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
function pG takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
if((IsUnitDeadBJ(GetEnumUnit())))then
else
call SaveUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB,GetEnumUnit())
call SaveLocationHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$72C3E060,GetUnitLoc(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB)))
set n9=(n9+12.)
set p9=1
loop
exitwhen p9>48
set o9[2]=pu(LoadLocationHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$72C3E060),450.,((I2R(p9)*16.)+n9))
call SetUnitPositionLoc(q9[p9],o9[2])
call RemoveLocation(o9[2])
set p9=p9+1
endloop
call SaveInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$2A41B3A3,'A07F')
call SaveReal(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$2CEF3086,(((1.+I2R(juexuelingwu[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB))))]))+(I2R(GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB),LoadInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$2A41B3A3)))/2.))+(I2R(wuxing[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB))))])*.06)))
call SaveReal(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$1968F401,(.2+udg_shanghaijiacheng[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB))))]))
call SaveReal(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$2CEF3086,(LoadReal(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$2CEF3086)*LoadReal(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$1968F401)))
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB),LoadInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$2A41B3A3))==9))then
call SaveReal(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$2CEF3086,(LoadReal(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$2CEF3086)*10.))
endif
call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(450.,LoadLocationHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$72C3E060),Condition(function nG)),function oG)
call RemoveLocation(LoadLocationHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$72C3E060))
call YDWELocalVariableEnd()
endif
endfunction
function qG takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call YDWELocalVariableInitiliation()
call ForGroupBJ(k9,function pG)
call FlushChildHashtable(YDHT,id*cx)
endfunction
//黯然销魂掌
function sG takes nothing returns boolean
return((GetSpellAbilityId()=='A07G')and(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function tG takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,GetTriggerUnit())
call SaveInteger(YDHT,id*cx,-$2A41B3A3,'A07G')
call WuGongShengChong(GetTriggerUnit(),'A07G',90.)
call YDWELocalVariableEnd()
call FlushChildHashtable(YDHT,id*cx)
endfunction
function vG takes nothing returns boolean
    return((GetEventDamage()==4.21))
endfunction
function wG takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local unit u=udg_hero[i]
    local unit uc=GetTriggerUnit()
    local real shxishu=jueXueXiShu(i)
    local real shanghai=0.
    local location loc=GetUnitLoc(uc)
    set shanghai=ShangHaiGongShi(u,uc,33.,33.,shxishu,'A07G')
    call WuGongShangHai(u,uc,shanghai)
    if((GetRandomInt(1,50)>=20)and(UnitHasBuffBJ(uc,1110454328)==false))then
        call WanBuff(u, uc, 11)
    endif
    call RemoveLocation(loc)
    set u=null
    set uc=null
    set loc=null
endfunction
//反两仪刀法
function yG takes nothing returns boolean
return((GetSpellAbilityId()=='A07H')and(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function zG takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,GetTriggerUnit())
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetUnitLoc(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)))
call SaveInteger(YDHT,id*cx,-$2A41B3A3,'A07H')
call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)),LoadLocationHandle(YDHT,id*cx,$5E83114F),bj_UNIT_FACING)
call UnitAddAbility(bj_lastCreatedUnit,1093681495)
call IssueTargetOrderById(bj_lastCreatedUnit,$D0062,LoadUnitHandle(YDHT,id*cx,$59BEA0CB))
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
call ShowUnitHide(bj_lastCreatedUnit)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call WuGongShengChong(GetTriggerUnit(),'A07H',90.)
call YDWELocalVariableEnd()
call FlushChildHashtable(YDHT,id*cx)
endfunction
function aG takes nothing returns boolean
return((GetEventDamage()==4.13))
endfunction
function BG takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local unit u=udg_hero[i]
    local unit uc=GetTriggerUnit()
    local real shxishu=jueXueXiShu(i)
    local real shanghai=0.
    set shanghai=ShangHaiGongShi(u,uc,50.,50.,shxishu,'A07H')
    call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
//野球拳
function CG takes nothing returns boolean
return((GetSpellAbilityId()=='A07I')and(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function cG takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,GetTriggerUnit())
call SaveInteger(YDHT,id*cx,-$2A41B3A3,'A07I')
call CreateNUnitsAtLoc(1,1697656904,GetOwningPlayer(GetTriggerUnit()),pu(GetUnitLoc(GetTriggerUnit()),325.,0),bj_UNIT_FACING)
call Yv(bj_lastCreatedUnit,GetTriggerUnit(),6.,.0,0,20.,.03)
call Gw(20.,bj_lastCreatedUnit)
call CreateNUnitsAtLoc(1,1697656904,GetOwningPlayer(GetTriggerUnit()),pu(GetUnitLoc(GetTriggerUnit()),325.,120.),bj_UNIT_FACING)
call Yv(bj_lastCreatedUnit,GetTriggerUnit(),6.,.0,0,20.,.03)
call Gw(20.,bj_lastCreatedUnit)
call CreateNUnitsAtLoc(1,1697656904,GetOwningPlayer(GetTriggerUnit()),pu(GetUnitLoc(GetTriggerUnit()),325.,240.),bj_UNIT_FACING)
call Yv(bj_lastCreatedUnit,GetTriggerUnit(),6.,.0,0,20.,.03)
call Gw(20.,bj_lastCreatedUnit)
call WuGongShengChong(GetTriggerUnit(),'A07I',90.)
call GroupAddUnit(r9,LoadUnitHandle(YDHT,id*cx,$59BEA0CB))
call YDWEWaitForLocalVariable(19.)
call GroupRemoveUnit(r9,LoadUnitHandle(YDHT,id*cx,$59BEA0CB))
call YDWELocalVariableEnd()
call FlushChildHashtable(YDHT,id*cx)
endfunction
function EG takes nothing returns boolean
return((CountUnitsInGroup(r9)>0))
endfunction
function FG takes nothing returns boolean
local integer id=GetHandleId(GetTriggeringTrigger())
return(((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB))))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
function GG takes nothing returns nothing
	local unit u=LoadUnitHandle(YDHT,GetHandleId(GetTriggeringTrigger())*LoadInteger(YDHT,GetHandleId(GetTriggeringTrigger()),-$1317DA19),$59BEA0CB)
	local unit uc=GetEnumUnit()
	local location loc=GetUnitLoc(uc)
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local real shxishu=jueXueXiShu(i)
	local real shanghai=0.
	call DestroyEffect(AddSpecialEffectLocBJ(loc,"war3mapImported\\CrimsonWake.mdx"))
    set shanghai=ShangHaiGongShi(u,uc,30,30,shxishu,'A07I')
  	call WuGongShangHai(u,uc,shanghai)
  	call RemoveLocation(loc)
    set u=null
    set uc=null
    set loc=null
endfunction
function HG takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
call SaveUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB,udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEnumUnit())))])
call SaveLocationHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$72C3E060,GetUnitLoc(GetEnumUnit()))
call SaveInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$2A41B3A3,'A07I')
call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(650.,LoadLocationHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$72C3E060),Condition(function FG)),function GG)
call RemoveLocation(LoadLocationHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$72C3E060))
endfunction
function IG takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call YDWELocalVariableInitiliation()
call ForGroupBJ(r9,function HG)
call FlushChildHashtable(YDHT,id*cx)
endfunction
//辟邪剑法
function JG takes nothing returns boolean
return((GetSpellAbilityId()=='A07J')and(UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function KG takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
set t9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=GetSpellTargetLoc()
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,GetTriggerUnit())
call SaveInteger(YDHT,id*cx,-$2A41B3A3,'A07J')
call WuGongShengChong(GetTriggerUnit(),'A07J',80.)
call GroupAddUnit(s9,LoadUnitHandle(YDHT,id*cx,$59BEA0CB))
call YDWEWaitForLocalVariable(20.)
call GroupRemoveUnit(s9,LoadUnitHandle(YDHT,id*cx,$59BEA0CB))
call RemoveLocation(t9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])
call YDWELocalVariableEnd()
call FlushChildHashtable(YDHT,id*cx)
endfunction
function MG takes nothing returns boolean
return((CountUnitsInGroup(s9)>0))
endfunction
function NG takes nothing returns boolean
local integer id=GetHandleId(GetTriggeringTrigger())
return(((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB))))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
function OG takes nothing returns nothing
	local unit u=LoadUnitHandle(YDHT,GetHandleId(GetTriggeringTrigger())*LoadInteger(YDHT,GetHandleId(GetTriggeringTrigger()),-$1317DA19),$59BEA0CB)
	local unit uc=GetEnumUnit()
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local real shxishu=jueXueXiShu(i)
	local real shanghai=0.
    set shanghai=ShangHaiGongShi(u,uc,43,43,shxishu,'A07J')
  	call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
function PG takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
if((IsUnitDeadBJ(GetEnumUnit())))then
else
call SaveUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB,udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEnumUnit())))])
call SaveLocationHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$72C3E060,t9[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB))))])
call SaveInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$2A41B3A3,'A07J')
call SaveReal(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$2CEF3086,(((1.7+I2R(juexuelingwu[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB))))]))+(I2R(GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB),LoadInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$2A41B3A3)))/2.))+(I2R(jingmai[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB))))])*.05)))
call SaveReal(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$1968F401,(8.5+udg_shanghaijiacheng[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB))))]))
call SaveReal(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$2CEF3086,(LoadReal(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$2CEF3086)*LoadReal(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$1968F401)))
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB),LoadInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$2A41B3A3))==9))then
call SaveReal(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$2CEF3086,(LoadReal(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$2CEF3086)*10.))
endif
call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(600.,LoadLocationHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$72C3E060),Condition(function NG)),function OG)
call YDWELocalVariableEnd()
endif
endfunction
function QG takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call YDWELocalVariableInitiliation()
call ForGroupBJ(s9,function PG)
call FlushChildHashtable(YDHT,id*cx)
endfunction
//胡家刀法
function SG takes nothing returns boolean
return((GetSpellAbilityId()=='A086'))
endfunction
function TG takes nothing returns boolean
return(((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB))))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
function UG takes nothing returns nothing
    local unit u=LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB)
	local unit uc=GetEnumUnit()
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local real shxishu=jueXueXiShu(i)
	local real shanghai=0.
    set shanghai=ShangHaiGongShi(u,uc,20,20,shxishu,'A086')
  	call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
function VG takes nothing returns nothing
if((LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$4DA64D97)>=500.))then
call FlushChildHashtable(YDHT,GetHandleId(GetExpiredTimer()))
call DestroyTimer(GetExpiredTimer())
else
call SaveReal(YDHT,GetHandleId(GetExpiredTimer()),-$4DA64D97,(LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$4DA64D97)+10.))
call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F,pu(GetUnitLoc(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB)),GetRandomReal(100.,350.),(GetRandomReal(0,360.))))
call CreateNUnitsAtLoc(1,1697656908,GetOwningPlayer(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB)),LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F),bj_UNIT_FACING)
call Gw(2.,bj_lastCreatedUnit)
call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(350.,LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F),Condition(function TG)),function UG)
endif
endfunction
function WG takes nothing returns nothing
local timer ky
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,GetTriggerUnit())
call SaveInteger(YDHT,id*cx,-$2A41B3A3,'A086')
call SaveReal(YDHT,id*cx,-$2CEF3086,(((2.+I2R(juexuelingwu[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))))]))+(I2R(GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),LoadInteger(YDHT,id*cx,-$2A41B3A3)))/2.))+(I2R(gengu[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))))])*.07)))
call SaveReal(YDHT,id*cx,$1968F401,(8.3+udg_shanghaijiacheng[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))))]))
call SaveReal(YDHT,id*cx,-$2CEF3086,(LoadReal(YDHT,id*cx,-$2CEF3086)*LoadReal(YDHT,id*cx,$1968F401)))
call SaveReal(YDHT,id*cx,-$2CEF3086,(LoadReal(YDHT,id*cx,-$2CEF3086)*1.8))
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),LoadInteger(YDHT,id*cx,-$2A41B3A3))==9))then
call SaveReal(YDHT,id*cx,-$2CEF3086,(LoadReal(YDHT,id*cx,-$2CEF3086)*10.))
endif
call SaveLocationHandle(YDHT,id*cx,-$72C3E060,GetUnitLoc(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)))
call WuGongShengChong(GetTriggerUnit(),'A086',100.)
set H7=1
loop
exitwhen H7>18
call SaveLocationHandle(YDHT,id*cx,-$3348E012,pu(LoadLocationHandle(YDHT,id*cx,-$72C3E060),256,((20.)*(I2R(H7)))))
call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,-$72C3E060),bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,1093679159)
call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D00FA,LoadLocationHandle(YDHT,id*cx,-$3348E012))
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
set H7=H7+1
endloop
set ky=CreateTimer()
call SaveUnitHandle(YDHT,GetHandleId(ky),$59BEA0CB,LoadUnitHandle(YDHT,id*cx,$59BEA0CB))
call SaveReal(YDHT,GetHandleId(ky),-$2CEF3086,LoadReal(YDHT,id*cx,-$2CEF3086))
call TimerStart(ky,.3,true,function VG)
call FlushChildHashtable(YDHT,id*cx)
set ky=null
endfunction
function YG takes nothing returns boolean
return((GetEventDamage()==4.22))
endfunction
function ZG takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local unit u=udg_hero[i]
    local unit uc=GetTriggerUnit()
    local real shxishu=jueXueXiShu(i)
    local real shanghai=0.
    set shanghai=ShangHaiGongShi(u,uc,16.6,16.6,shxishu,'A086')
    call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
//西毒杖法
function e6 takes nothing returns boolean
	return( GetSpellAbilityId()=='A089'and UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))
endfunction
function f6 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local location loc = GetUnitLoc(u)
	call CreateNUnitsAtLoc(1,'e00M',GetOwningPlayer(u),loc,bj_UNIT_FACING)
	call UnitAddAbility(bj_lastCreatedUnit,'A088')
	call IssueImmediateOrderById(bj_lastCreatedUnit,$D00D7)
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',31.)
	call RemoveLocation(loc)
	call WuGongShengChong(GetTriggerUnit(),'A089',100.)
	set u = null
	set loc = null
endfunction
function h6 takes nothing returns boolean
	return (GetEventDamage()==4.35)
endfunction
function i6 takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local unit u=udg_hero[i]
    local unit uc=GetTriggerUnit()
    local real shxishu=jueXueXiShu(i)
    local real shanghai=0.
    if UnitHaveItem(u,'I09B') then
	    set shxishu=shxishu*8
    endif
    set shanghai=ShangHaiGongShi(u,uc,45.,45.,shxishu,'A089')
    call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
//六脉神剑
function k6 takes nothing returns boolean
	return((GetSpellAbilityId()=='A085'))
endfunction
function m6 takes nothing returns boolean
	return(((IsUnitAliveBJ(GetFilterUnit()))and(IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),1))))))
endfunction
function o6 takes nothing returns nothing
	call GroupRemoveUnit(LoadGroupHandle(YDHT,GetHandleId(GetExpiredTimer()),6),GetEnumUnit())
endfunction
function p6 takes nothing returns nothing
	local unit u=LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),1)
	local unit uc=GetEnumUnit()
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local real shxishu=jueXueXiShu(i)
	local real shanghai=0.
	local location loc=GetUnitLoc(u)
	local location loc2=GetUnitLoc(uc)
	local location loc3=pu(loc2,GetRandomReal(5.,15.),AngleBetweenPoints(loc,loc2))
    call PauseUnit(uc,true)
    call SetUnitPositionLoc(uc,loc3)
    call Jw(1.,AddSpecialEffectTarget("Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl",uc,"chest"))
    set shanghai=ShangHaiGongShi(u,uc,19.,19.,shxishu,'A085')
  	call WuGongShangHai(u,uc,shanghai)
    call PauseUnit(uc,false)
    call RemoveLocation(loc)
    call RemoveLocation(loc2)
    call RemoveLocation(loc3)
    set u=null
    set uc=null
    set loc=null
    set loc2=null
    set loc3=null
endfunction
function q6 takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local location loc = GetUnitLoc(LoadUnitHandle(YDHT, GetHandleId(t), 1))
	local real r = LoadReal(YDHT, GetHandleId(t), 4)
	if (r>=500.) then
		call KillUnit(u)
		call RemoveLocation(loc)
		call FlushChildHashtable(YDHT,GetHandleId(t))
		call PauseTimer(t)
		call DestroyTimer(t)
	else
		call SaveReal(YDHT,GetHandleId(t),4,r+10.)
		call SetUnitPositionLoc(u, loc)
		call SaveGroupHandle(YDHT,GetHandleId(t),5,YDWEGetUnitsInRangeOfLocMatchingNull(r+20.,loc,Condition(function m6)))
		call SaveGroupHandle(YDHT,GetHandleId(t),6,YDWEGetUnitsInRangeOfLocMatchingNull(r+40.,loc,Condition(function m6)))
		call SetUnitScalePercent(u,r+10,r+10,r+10)
		call ForGroupBJ(LoadGroupHandle(YDHT,GetHandleId(t),5),function o6)
		call ForGroupBJ(LoadGroupHandle(YDHT,GetHandleId(t),6),function p6)
		call DestroyGroup(LoadGroupHandle(YDHT,GetHandleId(t),5))
		call DestroyGroup(LoadGroupHandle(YDHT,GetHandleId(t),6))
		call RemoveLocation(loc)
	endif
	set u = null
	set t = null
	set loc = null
endfunction
function MM6 takes nothing returns nothing
	local timer ky
	local integer i =1
	local location loc
	call WuGongShengChong(GetTriggerUnit(),'A085',100.)
	loop
		exitwhen i > 6
		set loc = GetUnitLoc(GetTriggerUnit())
		call Jw(1.,AddSpecialEffectLoc("war3mapImported\\DarkNova.mdx",loc))
		call CreateNUnitsAtLoc(1,'e00K',GetOwningPlayer(GetTriggerUnit()),loc,bj_UNIT_FACING)
		call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',1.)
		call SetUnitTimeScalePercent(bj_lastCreatedUnit,200.)
		set ky=CreateTimer()
		call SaveUnitHandle(YDHT,GetHandleId(ky),0,bj_lastCreatedUnit)
		call SaveUnitHandle(YDHT,GetHandleId(ky),1,GetTriggerUnit())
		call TimerStart(ky,0.02,true,function q6)
		call TriggerSleepAction(1.5)
		call RemoveLocation(loc)
		set i = i + 1
	endloop
	set ky = null
	set loc = null
endfunction
//打狗棒法
function O6 takes nothing returns boolean
return((GetSpellAbilityId()=='A07L'))
endfunction
function P6 takes nothing returns boolean
return(((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(C9)))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
function Q6 takes nothing returns nothing
	local unit u=C9
	local unit uc=GetEnumUnit()
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local real shxishu=jueXueXiShu(i)
	local real shanghai=0.
	if UnitHaveItem(u,'I097') then
	    set shxishu=shxishu*8
    endif
    set shanghai=ShangHaiGongShi(u,uc,35.,35.,shxishu,'A07L')
	call WuGongShangHai(u,uc,shanghai)
	set u=null
	set uc=null
endfunction
function R6 takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call DisableTrigger(GetTriggeringTrigger())
set C9=GetTriggerUnit()
set c9=GetUnitLoc(GetTriggerUnit())
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,GetTriggerUnit())
call SaveInteger(YDHT,id*cx,-$2A41B3A3,'A07L')
call SaveReal(YDHT,id*cx,-$2CEF3086,(((1.8+I2R(juexuelingwu[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))))]))+(I2R(GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),LoadInteger(YDHT,id*cx,-$2A41B3A3)))/2.))+(I2R(gengu[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))))])*.06)))
call SaveReal(YDHT,id*cx,$1968F401,(9.+udg_shanghaijiacheng[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))))]))
call SaveReal(YDHT,id*cx,-$2CEF3086,(LoadReal(YDHT,id*cx,-$2CEF3086)*LoadReal(YDHT,id*cx,$1968F401)))
call SaveReal(YDHT,id*cx,-$2CEF3086,(LoadReal(YDHT,id*cx,-$2CEF3086)*1.5))
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),LoadInteger(YDHT,id*cx,-$2A41B3A3))==9))then
call SaveReal(YDHT,id*cx,-$2CEF3086,(LoadReal(YDHT,id*cx,-$2CEF3086)*10.))
endif
call WuGongShengChong(GetTriggerUnit(),'A07L',70.)
call TriggerSleepAction(.2)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call PauseUnit(C9,true)
call CreateNUnitsAtLoc(1,1747988532,GetOwningPlayer(C9),c9,bj_UNIT_FACING)
set D9=bj_lastCreatedUnit
call SetUnitPositionLocFacingLocBJ(C9,pu(c9,800.,135.),c9)
call SetUnitAnimation(C9,"ATTACK")
call SetUnitPositionLocFacingLocBJ(D9,GetUnitLoc(C9),GetUnitLoc(C9))
call TriggerSleepAction(.15)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SetUnitPositionLocFacingLocBJ(C9,pu(c9,800.,45.),c9)
call SetUnitAnimation(C9,"ATTACK")
call SetUnitPositionLocFacingLocBJ(D9,GetUnitLoc(C9),GetUnitLoc(C9))
call TriggerSleepAction(.15)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SetUnitPositionLocFacingLocBJ(C9,pu(c9,600.,225.),c9)
call SetUnitAnimation(C9,"ATTACK")
call SetUnitPositionLocFacingLocBJ(D9,GetUnitLoc(C9),GetUnitLoc(C9))
call TriggerSleepAction(.15)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SetUnitPositionLocFacingLocBJ(C9,pu(c9,900.,90.),c9)
call SetUnitAnimation(C9,"ATTACK")
call SetUnitPositionLocFacingLocBJ(D9,GetUnitLoc(C9),GetUnitLoc(C9))
call TriggerSleepAction(.15)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SetUnitPositionLocFacingLocBJ(C9,pu(c9,600.,315.),c9)
call SetUnitAnimation(C9,"ATTACK")
call SetUnitPositionLocFacingLocBJ(D9,GetUnitLoc(C9),GetUnitLoc(C9))
call TriggerSleepAction(.15)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SetUnitPositionLocFacingLocBJ(GetTriggerUnit(),pu(c9,800.,135.),c9)
call SetUnitAnimation(C9,"ATTACK")
call SetUnitPositionLocFacingLocBJ(D9,GetUnitLoc(C9),GetUnitLoc(C9))
call TriggerSleepAction(.15)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call AddLightningLoc("FORK",pu(c9,800.,135.),pu(c9,800.,45.))
set E9[1]=bj_lastCreatedLightning
call AddLightningLoc("FORK",pu(c9,800.,45.),pu(c9,600.,225.))
set E9[2]=bj_lastCreatedLightning
call AddLightningLoc("FORK",pu(c9,600.,225.),pu(c9,900.,90.))
set E9[3]=bj_lastCreatedLightning
call AddLightningLoc("FORK",pu(c9,900.,90.),pu(c9,600.,315.))
set E9[4]=bj_lastCreatedLightning
call AddLightningLoc("FORK",pu(c9,600.,315.),pu(c9,800.,135.))
set E9[5]=bj_lastCreatedLightning
call SetUnitPositionLocFacingLocBJ(C9,c9,c9)
call RemoveUnit(D9)
set F9=1
loop
exitwhen F9>12
call AddSpecialEffectLocBJ(pu(c9,100.,(30.*I2R(F9))),"Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl")
call DestroyEffect(bj_lastCreatedEffect)
call AddSpecialEffectLocBJ(pu(c9,300.,(30.*I2R(F9))),"Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl")
call DestroyEffect(bj_lastCreatedEffect)
call AddSpecialEffectLocBJ(pu(c9,500.,(30.*I2R(F9))),"Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl")
call DestroyEffect(bj_lastCreatedEffect)
set F9=F9+1
endloop
call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(600.,c9,Condition(function P6)),function Q6)
call TriggerSleepAction(1.)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call DestroyLightning(E9[1])
call DestroyLightning(E9[2])
call DestroyLightning(E9[3])
call DestroyLightning(E9[4])
call DestroyLightning(E9[5])
call PauseUnit(C9,false)
call ResetUnitAnimation(C9)
call EnableTrigger(jn)
call TriggerSleepAction(6.)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call DisableTrigger(jn)
call RemoveLocation(c9)
call EnableTrigger(in)
call FlushChildHashtable(YDHT,id*cx)
endfunction
function T6 takes nothing returns boolean
return(((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(C9)))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
function U6 takes nothing returns nothing
	local unit u=C9
	local unit uc=GetEnumUnit()
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local real shxishu=jueXueXiShu(i)
	local real shanghai=0.
    set shanghai=ShangHaiGongShi(u,uc,18.,18.,shxishu,'A07L')
	call WuGongShangHai(u,uc,shanghai)
	set u=null
	set uc=null
endfunction
function V6 takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,C9)
call SaveInteger(YDHT,id*cx,-$2A41B3A3,'A07L')
call SaveLocationHandle(YDHT,id*cx,$5E83114F,pu(GetUnitLoc(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)),GetRandomReal(100.,350.),(GetRandomReal(0,360.))))
call CreateNUnitsAtLoc(1,1697656905,GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)),LoadLocationHandle(YDHT,id*cx,$5E83114F),bj_UNIT_FACING)
call Gw(2.,bj_lastCreatedUnit)
call SaveReal(YDHT,id*cx,-$2CEF3086,(((1.8+I2R(juexuelingwu[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))))]))+(I2R(GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),LoadInteger(YDHT,id*cx,-$2A41B3A3)))/2.))+(I2R(gengu[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))))])*.06)))
call SaveReal(YDHT,id*cx,$1968F401,(9.*udg_shanghaijiacheng[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))))]))
call SaveReal(YDHT,id*cx,-$2CEF3086,(LoadReal(YDHT,id*cx,-$2CEF3086)*LoadReal(YDHT,id*cx,$1968F401)))
call SaveReal(YDHT,id*cx,-$2CEF3086,(LoadReal(YDHT,id*cx,-$2CEF3086)*1.5))
if((GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),LoadInteger(YDHT,id*cx,-$2A41B3A3))==9))then
call SaveReal(YDHT,id*cx,-$2CEF3086,(LoadReal(YDHT,id*cx,-$2CEF3086)*10.))
endif
call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(400.,LoadLocationHandle(YDHT,id*cx,$5E83114F),Condition(function T6)),function U6)
call FlushChildHashtable(YDHT,id*cx)
endfunction
//残章：辟邪剑法之流星赶月
function X6 takes nothing returns boolean
return((GetUnitAbilityLevel(GetAttacker(),'A07J')>=1)and(GetRandomReal(.0,100.)<=5.)and(Kd[(1+GetPlayerId(GetOwningPlayer(GetAttacker())))]>=1)and(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))))
endfunction
function Y6 takes nothing returns boolean
return(((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB))))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
function Z6 takes nothing returns nothing
	local unit u=LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB)
	local unit uc=GetEnumUnit()
	local location loc=GetUnitLoc(uc)
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local real shxishu=jueXueXiShu(i)
	local real shanghai=0.
	call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Items\\TomeOfRetraining\\TomeOfRetrainingCaster.mdl"))
    set shanghai=ShangHaiGongShi(u,uc,18.,18.,shxishu,'A07J')
	call WuGongShangHai(u,uc,shanghai)
	call RemoveLocation(loc)
	set u=null
	set uc=null
	set loc=null
endfunction
function dH takes nothing returns nothing
if((LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$4DA64D97)>=400.))then
call FlushChildHashtable(YDHT,GetHandleId(GetExpiredTimer()))
call DestroyTimer(GetExpiredTimer())
else
call SaveReal(YDHT,GetHandleId(GetExpiredTimer()),-$4DA64D97,(LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$4DA64D97)+11.))
call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F,GetUnitLoc(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),-$2EC5CBA0)))
call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(200.,LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F),Condition(function Y6)),function Z6)
call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F))
endif
endfunction
function eH takes nothing returns boolean
return(((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB))))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
function fH takes nothing returns nothing
	local unit u=LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB)
	local unit uc=GetEnumUnit()
	local location loc=GetUnitLoc(uc)
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local real shxishu=jueXueXiShu(i)
	local real shanghai=0.
	call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Items\\TomeOfRetraining\\TomeOfRetrainingCaster.mdl"))
    set shanghai=ShangHaiGongShi(u,uc,18.,18.,shxishu,'A07J')
	call WuGongShangHai(u,uc,shanghai)
	call RemoveLocation(loc)
	set u=null
	set uc=null
	set loc=null
endfunction
function gH takes nothing returns nothing
if((LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$4DA64D97)>=400.))then
call FlushChildHashtable(YDHT,GetHandleId(GetExpiredTimer()))
call DestroyTimer(GetExpiredTimer())
else
call SaveReal(YDHT,GetHandleId(GetExpiredTimer()),-$4DA64D97,(LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$4DA64D97)+11.))
call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F,GetUnitLoc(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),-$2EC5CBA0)))
call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(200.,LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F),Condition(function eH)),function fH)
call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$3348E012))
endif
endfunction
function hH takes nothing returns boolean
return(((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB))))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
function iH takes nothing returns nothing
	local unit u=LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB)
	local unit uc=GetEnumUnit()
	local location loc=GetUnitLoc(uc)
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local real shxishu=jueXueXiShu(i)
	local real shanghai=0.
	call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Items\\TomeOfRetraining\\TomeOfRetrainingCaster.mdl"))
    set shanghai=ShangHaiGongShi(u,uc,18.,18.,shxishu,'A07J')
	call WuGongShangHai(u,uc,shanghai)
	call RemoveLocation(loc)
	set u=null
	set uc=null
	set loc=null
endfunction
function jH takes nothing returns nothing
if((LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$4DA64D97)>=400.))then
call FlushChildHashtable(YDHT,GetHandleId(GetExpiredTimer()))
call DestroyTimer(GetExpiredTimer())
else
call SaveReal(YDHT,GetHandleId(GetExpiredTimer()),-$4DA64D97,(LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$4DA64D97)+11.))
call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F,GetUnitLoc(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),-$2EC5CBA0)))
call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(200.,LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F),Condition(function hH)),function iH)
call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$3348E012))
endif
endfunction
function kH takes nothing returns nothing
local timer ky
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call YDWELocalVariableInitiliation()
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,GetAttacker())
call SaveInteger(YDHT,id*cx,-$2A41B3A3,'A07J')
call SaveReal(YDHT,id*cx,-$2CEF3086,(((1.6+I2R(juexuelingwu[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))))]))+(I2R(GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),LoadInteger(YDHT,id*cx,-$2A41B3A3)))/2.))+(I2R(gengu[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))))])*.07)))
call SaveReal(YDHT,id*cx,$1968F401,(8.3+udg_shanghaijiacheng[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))))]))
call SaveReal(YDHT,id*cx,-$2CEF3086,(LoadReal(YDHT,id*cx,-$2CEF3086)*(LoadReal(YDHT,id*cx,$1968F401)*3.)))
call SaveLocationHandle(YDHT,id*cx,-$6923AD87,GetUnitLoc(GetAttacker()))
call CreateTextTagLocBJ("辟邪剑法之流星赶月",LoadLocationHandle(YDHT,id*cx,-$6923AD87),0,14.,90.,21.,15.,.0)
call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,(GetRandomReal(80.,100.)))
call Nw(4.,bj_lastCreatedTextTag)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$6923AD87))
call SaveLocationHandle(YDHT,id*cx,-$72C3E060,GetUnitLoc(GetTriggerUnit()))
call CreateNUnitsAtLoc(1,1697656910,GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)),LoadLocationHandle(YDHT,id*cx,-$72C3E060),bj_UNIT_FACING)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,bj_lastCreatedUnit)
call zw(bj_lastCreatedUnit,GetAttacker(),.5,600.,1500.,2000.,100)
call Gw(20.,bj_lastCreatedUnit)
set ky=CreateTimer()
call SaveUnitHandle(YDHT,GetHandleId(ky),$59BEA0CB,LoadUnitHandle(YDHT,id*cx,$59BEA0CB))
call SaveUnitHandle(YDHT,GetHandleId(ky),-$2EC5CBA0,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call SaveReal(YDHT,GetHandleId(ky),-$2CEF3086,LoadReal(YDHT,id*cx,-$2CEF3086))
call TimerStart(ky,.5,true,function dH)
call YDWEPolledWaitNull(1.)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call CreateNUnitsAtLoc(1,1697656910,GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)),LoadLocationHandle(YDHT,id*cx,-$72C3E060),bj_UNIT_FACING)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,bj_lastCreatedUnit)
call zw(bj_lastCreatedUnit,GetAttacker(),.5,600.,1500.,2000.,100)
call Gw(25.,bj_lastCreatedUnit)
set ky=CreateTimer()
call SaveUnitHandle(YDHT,GetHandleId(ky),$59BEA0CB,LoadUnitHandle(YDHT,id*cx,$59BEA0CB))
call SaveUnitHandle(YDHT,GetHandleId(ky),-$2EC5CBA0,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call SaveReal(YDHT,GetHandleId(ky),-$2CEF3086,LoadReal(YDHT,id*cx,-$2CEF3086))
call TimerStart(ky,.5,true,function gH)
call YDWEPolledWaitNull(1.)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call CreateNUnitsAtLoc(1,1697656910,GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)),LoadLocationHandle(YDHT,id*cx,-$72C3E060),bj_UNIT_FACING)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,bj_lastCreatedUnit)
call zw(bj_lastCreatedUnit,GetAttacker(),.5,600.,1500.,2000.,100)
call Gw(25.,bj_lastCreatedUnit)
set ky=CreateTimer()
call SaveUnitHandle(YDHT,GetHandleId(ky),$59BEA0CB,LoadUnitHandle(YDHT,id*cx,$59BEA0CB))
call SaveUnitHandle(YDHT,GetHandleId(ky),-$2EC5CBA0,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call SaveReal(YDHT,GetHandleId(ky),-$2CEF3086,LoadReal(YDHT,id*cx,-$2CEF3086))
call TimerStart(ky,.5,true,function jH)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$72C3E060))
call YDWELocalVariableEnd()
call FlushChildHashtable(YDHT,id*cx)
set ky=null
endfunction
//残章：打狗棒法之恶狗拦路
function nH takes nothing returns boolean
return((GetUnitAbilityLevel(GetAttacker(),'A07L')>=1)and(GetRandomReal(.0,100.)<=6.)and(Qd[(1+GetPlayerId(GetOwningPlayer(GetAttacker())))]>=1)and(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))))
endfunction
function oH takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,-$6923AD87,GetUnitLoc(GetAttacker()))
call CreateTextTagLocBJ("打狗棒法之恶狗拦路",LoadLocationHandle(YDHT,id*cx,-$6923AD87),0,14.,90.,21.,15.,.0)
call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,(GetRandomReal(80.,100.)))
call Nw(4.,bj_lastCreatedTextTag)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$6923AD87))
call SaveLocationHandle(YDHT,id*cx,-$72C3E060,GetUnitLoc(GetTriggerUnit()))
call SaveLocationHandle(YDHT,id*cx,-$3348E012,pu(LoadLocationHandle(YDHT,id*cx,-$72C3E060),256,((GetUnitPropWindowBJ(GetTriggerUnit()))+(90.))))
call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(GetAttacker()),LoadLocationHandle(YDHT,id*cx,-$72C3E060),bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,1093678938)
call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D0271,LoadLocationHandle(YDHT,id*cx,-$3348E012))
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',12.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$72C3E060))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
call FlushChildHashtable(YDHT,id*cx)
endfunction
function qH takes nothing returns boolean
return((GetEventDamage()==4.51))
endfunction
function rH takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local unit u=udg_hero[i]
    local unit uc=GetTriggerUnit()
    local real shxishu=jueXueXiShu(i)
    local real shanghai=0.
    set shanghai=ShangHaiGongShi(u,uc,35.,35.,shxishu,'A07L')
    call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
//残章：降龙第一式、第二式
function tH takes nothing returns boolean
	return((GetUnitAbilityLevel(GetAttacker(),'A07E')>=1)and(GetRandomReal(.0,100.)<=8.)and(Nd[(1+GetPlayerId(GetOwningPlayer(GetAttacker())))]>=1)and(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))))
endfunction
function uH takes nothing returns boolean
	return(((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB))))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
function vH takes nothing returns nothing
	local unit u=LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB)
	local unit uc=GetEnumUnit()
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local real shxishu=jueXueXiShu(i)
	local real shanghai=0.
    set shanghai=ShangHaiGongShi(u,uc,70.,70.,shxishu,'A07E')
	call WuGongShangHai(u,uc,shanghai)
	set u=null
	set uc=null
endfunction
function wH takes nothing returns nothing
	local timer t=GetExpiredTimer()
	local integer p=GetHandleId(t)
	local location loc=GetUnitLoc(LoadUnitHandle(YDHT,p,$59BEA0CB))
	if((LoadReal(YDHT,p,-$4DA64D97)>=600.))then
		call FlushChildHashtable(YDHT,p)
		call PauseTimer(t)
		call DestroyTimer(t)
	else
		call SaveReal(YDHT,p,-$4DA64D97,(LoadReal(YDHT,p,-$4DA64D97)+10.))
		call SaveLocationHandle(YDHT,p,$50525CFC,GetUnitLoc(LoadUnitHandle(YDHT,p,$59BEA0CB)))
		call SaveLocationHandle(YDHT,p,-$2103C000,pu(loc,GetRandomReal(50.,600.),(GetRandomReal(0,360.))))
		call AddSpecialEffectLocBJ(LoadLocationHandle(YDHT,p,-$2103C000),"war3mapImported\\FireStomp.mdx")
		call DestroyEffect(bj_lastCreatedEffect)
		call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(300.,LoadLocationHandle(YDHT,p,-$2103C000),Condition(function uH)),function vH)
		call RemoveLocation(LoadLocationHandle(YDHT,p,$50525CFC))
		call RemoveLocation(LoadLocationHandle(YDHT,p,-$2103C000))
	endif
	call RemoveLocation(loc)
	set loc=null
	set t=null
endfunction
function XLES_Condition takes nothing returns boolean
	return(((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),0))))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
function XLES_Action takes nothing returns nothing
	local unit u=LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),0)
	local unit uc=GetEnumUnit()
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local real shxishu=jueXueXiShu(i)
	local real shanghai=0.
    set shanghai=ShangHaiGongShi(u,uc,80.,80.,shxishu,'A07E')
	call WuGongShangHai(u,uc,shanghai)
	set u=null
	set uc=null
endfunction
function XiangLongErShi takes nothing returns nothing
	local timer t=GetExpiredTimer()
	local integer p=GetHandleId(t)
	local unit u=LoadUnitHandle(YDHT,p,0)
	local location loc=GetUnitLoc(u)
	local location loc2=pu(loc,GetRandomReal(50.,600.),(GetRandomReal(0,360.)))
	if((LoadReal(YDHT,p,1)>=600.))then
		call FlushChildHashtable(YDHT,p)
		call PauseTimer(t)
		call DestroyTimer(t)
	else
		call SaveReal(YDHT,p,1,LoadReal(YDHT,p,1)+10.)
		call DestroyEffect(AddSpecialEffectLocBJ(loc2,"war3mapImported\\ChaosExplosion.mdl"))
		call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(300.,loc2,Condition(function XLES_Condition)),function XLES_Action)
	endif
	call RemoveLocation(loc)
	call RemoveLocation(loc2)
	set t=null
	set u=null
	set loc=null
	set loc2=null
endfunction
function xH takes nothing returns nothing
	local timer t=null
	local unit u=GetAttacker()
	local unit uc=GetTriggerUnit()
	local location loc=GetUnitLoc(u)
	local location loc2=GetUnitLoc(uc)
	if Nd[1+GetPlayerId(GetOwningPlayer(u))]==2 and GetRandomInt(1,3)==1 then
		set t=CreateTimer()
		call CreateTextTagLocBJ("降龙十八掌之亢龙有悔",loc,0,14.,21.,15.,90.,.0)
		call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,(GetRandomReal(80.,100.)))
		call Nw(4.,bj_lastCreatedTextTag)
		call SaveUnitHandle(YDHT,GetHandleId(t),0,u)
		call TimerStart(t,.3,true,function XiangLongErShi)
	else
		set t=CreateTimer()
		call CreateTextTagLocBJ("降龙十八掌之神龙摆尾",loc,0,14.,90.,21.,15.,.0)
		call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,(GetRandomReal(80.,100.)))
		call Nw(4.,bj_lastCreatedTextTag)
		call SaveUnitHandle(YDHT,GetHandleId(t),$59BEA0CB,u)
		call TimerStart(t,.3,true,function wH)
	endif
	call RemoveLocation(loc)
	call RemoveLocation(loc2)
	set t=null
	set u=null
	set uc=null
	set loc=null
	set loc2=null
endfunction
//残章：胡家刀法之八方藏刀式
function zH takes nothing returns boolean
return((GetUnitAbilityLevel(GetAttacker(),'A086')>=1)and(GetRandomReal(.0,100.)<=8.)and(Od[(1+GetPlayerId(GetOwningPlayer(GetAttacker())))]>=1)and(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))))
endfunction
function IsKongJun takes nothing returns boolean
	return(IsUnitType(GetFilterUnit(),UNIT_TYPE_FLYING))
endfunction
function HuJiaKongJun takes nothing returns nothing
	call WuGongShangHai(GetAttacker(),GetEnumUnit(),4.53)
endfunction
function AH takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
local unit u=GetAttacker()
local group g=CreateGroup()
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call YDWELocalVariableInitiliation()
call SaveLocationHandle(YDHT,id*cx,-$6923AD87,GetUnitLoc(GetAttacker()))
call CreateTextTagLocBJ("胡家刀法之八方藏刀式",LoadLocationHandle(YDHT,id*cx,-$6923AD87),0,14.,90.,21.,15.,.0)
call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,(GetRandomReal(80.,100.)))
call Nw(4.,bj_lastCreatedTextTag)
set H7=1
loop
exitwhen H7>8
call SaveLocationHandle(YDHT,id*cx,-$3348E012,pu(LoadLocationHandle(YDHT,id*cx,-$6923AD87),256,((45.)*(I2R(H7)))))
call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(GetAttacker()),LoadLocationHandle(YDHT,id*cx,-$6923AD87),bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,1093679430)
call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D024B,LoadLocationHandle(YDHT,id*cx,-$3348E012))
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
set H7=H7+1
endloop
call GroupEnumUnitsInRangeOfLoc(g,LoadLocationHandle(YDHT,id*cx,-$6923AD87),700,Condition(function IsKongJun))
call ForGroupBJ(g,function HuJiaKongJun)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$6923AD87))
call YDWELocalVariableEnd()
call FlushChildHashtable(YDHT,id*cx)
call DestroyGroup(g)
set u=null
set g=null
endfunction
//八方藏刀式伤害
function BH takes nothing returns boolean
	return((GetEventDamage()==4.53))
endfunction
function bH takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local unit u=udg_hero[i]
    local unit uc=GetTriggerUnit()
    local real shxishu=jueXueXiShu(i)
    local real shanghai=0.
    local location loc=GetUnitLoc(uc)
    call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Other\\Charm\\CharmTarget.mdl"))
    set shanghai=ShangHaiGongShi(u,uc,500.,500.,shxishu,'A086')
    call WuGongShangHai(u,uc,shanghai)
    call RemoveLocation(loc)
    set u=null
    set uc=null
    set loc=null
endfunction
//残章：西毒棍法之蛇盘青竹
function cH takes nothing returns boolean
return((GetUnitAbilityLevel(GetAttacker(),'A089')>=1)and(GetRandomReal(.0,100.)<=5.)and(Pd[(1+GetPlayerId(GetOwningPlayer(GetAttacker())))]>=1)and(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))))
endfunction
function DH takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call YDWELocalVariableInitiliation()
call SaveLocationHandle(YDHT,id*cx,-$6923AD87,GetUnitLoc(GetAttacker()))
call CreateTextTagLocBJ("西毒棍法之蛇盘青竹",LoadLocationHandle(YDHT,id*cx,-$6923AD87),0,14.,90.,21.,15.,.0)
call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,(GetRandomReal(80.,100.)))
call Nw(4.,bj_lastCreatedTextTag)
set H7=1
loop
exitwhen H7>12
call SaveLocationHandle(YDHT,id*cx,-$3348E012,pu(LoadLocationHandle(YDHT,id*cx,-$6923AD87),350.,((30.)*(I2R(H7)))))
call CreateNUnitsAtLoc(1,1869836340,GetOwningPlayer(GetAttacker()),LoadLocationHandle(YDHT,id*cx,-$3348E012),bj_UNIT_FACING)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
set H7=H7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$6923AD87))
call YDWELocalVariableEnd()
call FlushChildHashtable(YDHT,id*cx)
endfunction
function FH takes nothing returns boolean
return((GetEventDamage()==4.54))
endfunction
function GH takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local unit u=udg_hero[i]
    local unit uc=GetTriggerUnit()
    local real shxishu=jueXueXiShu(i)
    local real shanghai=0.
    set shanghai=ShangHaiGongShi(u,uc,42.,42.,shxishu,'A089')
    call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
//残章：反两仪刀法之行气如虹
function IH takes nothing returns boolean
return((GetUnitAbilityLevel(GetAttacker(),'A07H')>=1)and(GetRandomReal(.0,100.)<=10.)and(Jd[(1+GetPlayerId(GetOwningPlayer(GetAttacker())))]>=1)and(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))))
endfunction
function lH takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
call SetUnitFlyHeight(GetEnumUnit(),600.,200.)
call IssuePointOrderByIdLoc(GetEnumUnit(),$D0012,LoadLocationHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$6923AD87))
endfunction
function JH takes nothing returns nothing
call RemoveUnit(GetEnumUnit())
endfunction
function KH takes nothing returns boolean
local integer id=GetHandleId(GetTriggeringTrigger())
return(((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB))))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
function LH takes nothing returns nothing
	local unit u=GetAttacker()
	local unit uc=GetEnumUnit()
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local real shxishu=jueXueXiShu(i)
	local real shanghai=0.
    set shanghai=ShangHaiGongShi(u,uc,40.,40.,shxishu,'A07H')
	call WuGongShangHai(u,uc,shanghai)
	set u=null
	set uc=null
endfunction
function MH takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call YDWELocalVariableInitiliation()
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,GetAttacker())
call SaveInteger(YDHT,id*cx,-$2A41B3A3,'A07H')
call SaveLocationHandle(YDHT,id*cx,-$6923AD87,GetUnitLoc(GetAttacker()))
call CreateTextTagLocBJ("反两仪刀法之行气如虹",LoadLocationHandle(YDHT,id*cx,-$6923AD87),0,14.,90.,21.,15.,.0)
call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,(GetRandomReal(80.,100.)))
call Nw(4.,bj_lastCreatedTextTag)
call SaveGroupHandle(YDHT,id*cx,$312C4181,CreateGroup())
set H7=1
loop
exitwhen H7>9
call SaveReal(YDHT,id*cx,-$6329FB8A,(LoadReal(YDHT,id*cx,-$6329FB8A)+45.))
call SaveLocationHandle(YDHT,id*cx,-$3348E012,pu(LoadLocationHandle(YDHT,id*cx,-$6923AD87),700.,LoadReal(YDHT,id*cx,-$6329FB8A)))
call CreateNUnitsAtLoc(1,1747988528,GetOwningPlayer(GetAttacker()),LoadLocationHandle(YDHT,id*cx,-$6923AD87),bj_UNIT_FACING)
call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D0012,LoadLocationHandle(YDHT,id*cx,-$3348E012))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
call GroupAddUnit(LoadGroupHandle(YDHT,id*cx,$312C4181),bj_lastCreatedUnit)
set H7=H7+1
endloop
call TriggerSleepAction(3.)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call ForGroupBJ(LoadGroupHandle(YDHT,id*cx,$312C4181),function lH)
call TriggerSleepAction(3.)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call ForGroupBJ(LoadGroupHandle(YDHT,id*cx,$312C4181),function JH)
call CreateNUnitsAtLoc(1,1747988529,GetOwningPlayer(GetAttacker()),LoadLocationHandle(YDHT,id*cx,-$6923AD87),bj_UNIT_FACING)
call SaveUnitHandle(YDHT,id*cx,$197A3E5D,bj_lastCreatedUnit)
call DestroyGroup(LoadGroupHandle(YDHT,id*cx,$312C4181))
call TriggerSleepAction(.5)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call AddSpecialEffectLocBJ(LoadLocationHandle(YDHT,id*cx,-$6923AD87),"war3mapImported\\LightningWrath.mdx")
call DestroyEffect(bj_lastCreatedEffect)
call TriggerSleepAction(.3)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call RemoveUnit(LoadUnitHandle(YDHT,id*cx,$197A3E5D))
call AddSpecialEffectLocBJ(LoadLocationHandle(YDHT,id*cx,-$6923AD87),"war3mapImported\\FrostNova.mdx")
call DestroyEffect(bj_lastCreatedEffect)
call SaveReal(YDHT,id*cx,-$2CEF3086,(((2.5+I2R(juexuelingwu[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))))]))+(I2R(GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),LoadInteger(YDHT,id*cx,-$2A41B3A3)))/2.))+(I2R(jingmai[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))))])*.05)))
call SaveReal(YDHT,id*cx,$1968F401,(8.+udg_shanghaijiacheng[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))))]))
call SaveReal(YDHT,id*cx,-$2CEF3086,(LoadReal(YDHT,id*cx,-$2CEF3086)*(LoadReal(YDHT,id*cx,$1968F401)*6.)))
call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(800.,LoadLocationHandle(YDHT,id*cx,-$6923AD87),Condition(function KH)),function LH)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$6923AD87))
call YDWELocalVariableEnd()
call FlushChildHashtable(YDHT,id*cx)
endfunction
function OH takes nothing returns boolean
return((GetEventDamage()==4.55))
endfunction
function PH takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local unit u=udg_hero[i]
    local unit uc=GetTriggerUnit()
    local real shxishu=jueXueXiShu(i)
    local real shanghai=0.
    set shanghai=ShangHaiGongShi(u,uc,20.,20.,shxishu,'A07H')
    call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
//残章：黯然销魂掌之无中生有
function RH takes nothing returns boolean
return((GetUnitAbilityLevel(GetAttacker(),'A07G')>=1)and(GetRandomReal(.0,100.)<=6.)and(Md[(1+GetPlayerId(GetOwningPlayer(GetAttacker())))]>=1)and(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))))
endfunction
function SH takes nothing returns nothing
if((LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$4DA64D97)>=2400.))then
call FlushChildHashtable(YDHT,GetHandleId(GetExpiredTimer()))
call DestroyTimer(GetExpiredTimer())
else
call SaveReal(YDHT,GetHandleId(GetExpiredTimer()),-$4DA64D97,(LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$4DA64D97)+20.))
call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$50525CFC,GetUnitLoc(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB)))
call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$3348E012,pu(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$50525CFC),256,LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$4DA64D97)))
call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB)),LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$50525CFC),bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,1093677131)
call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D00FA,LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$3348E012))
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$50525CFC))
call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$3348E012))
endif
endfunction
function TH takes nothing returns nothing
local timer ky
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call YDWELocalVariableInitiliation()
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,GetAttacker())
call SaveInteger(YDHT,id*cx,-$2A41B3A3,'A07G')
call SaveLocationHandle(YDHT,id*cx,-$6923AD87,GetUnitLoc(GetAttacker()))
call CreateTextTagLocBJ("黯然销魂掌之无中生有",LoadLocationHandle(YDHT,id*cx,-$6923AD87),0,14.,90.,21.,15.,.0)
call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,(GetRandomReal(80.,100.)))
call Nw(4.,bj_lastCreatedTextTag)
set ky=CreateTimer()
call SaveUnitHandle(YDHT,GetHandleId(ky),$59BEA0CB,LoadUnitHandle(YDHT,id*cx,$59BEA0CB))
call TimerStart(ky,.1,true,function SH)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$6923AD87))
call YDWELocalVariableEnd()
call FlushChildHashtable(YDHT,id*cx)
set ky=null
endfunction
function VH takes nothing returns boolean
return((GetEventDamage()==4.56))
endfunction
function WH takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local unit u=udg_hero[i]
    local unit uc=GetTriggerUnit()
    local real shxishu=jueXueXiShu(i)
    local real shanghai=0.
    set shanghai=ShangHaiGongShi(u,uc,36.,36.,shxishu,'A07G')
    call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
//残章：独孤九剑奥义之破剑式
function YH takes nothing returns boolean
return((GetUnitAbilityLevel(GetAttacker(),'A07F')>=1)and(GetRandomReal(.0,100.)<=10.)and(ld[(1+GetPlayerId(GetOwningPlayer(GetAttacker())))]>=1)and(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))))
endfunction
function ZH takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call YDWELocalVariableInitiliation()
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,GetAttacker())
call SaveInteger(YDHT,id*cx,-$2A41B3A3,'A07F')
call SaveLocationHandle(YDHT,id*cx,-$6923AD87,GetUnitLoc(GetAttacker()))
call CreateTextTagLocBJ("独孤九剑奥义之破剑式",LoadLocationHandle(YDHT,id*cx,-$6923AD87),0,14.,90.,21.,15.,.0)
call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,(GetRandomReal(80.,100.)))
call Nw(4.,bj_lastCreatedTextTag)
call SaveLocationHandle(YDHT,id*cx,$5E83114F,pu(LoadLocationHandle(YDHT,id*cx,-$6923AD87),500.,((GetUnitFacing(GetAttacker()))+(180.))))
call CreateNUnitsAtLoc(1,1747988530,GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)),LoadLocationHandle(YDHT,id*cx,$5E83114F),GetUnitFacing(GetAttacker()))
call Gw(4.,bj_lastCreatedUnit)
call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D02AC,LoadLocationHandle(YDHT,id*cx,-$6923AD87))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$6923AD87))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call YDWELocalVariableEnd()
call FlushChildHashtable(YDHT,id*cx)
endfunction
function eI takes nothing returns boolean
return((GetEventDamage()==4.57))
endfunction
function fI takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local unit u=udg_hero[i]
    local unit uc=GetTriggerUnit()
    local real shxishu=jueXueXiShu(i)
    local real shanghai=0.
    set shanghai=ShangHaiGongShi(u,uc,44.,44.,shxishu,'A07F')
    call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
//残章：六脉神剑之少商剑
function hI takes nothing returns boolean
return((GetUnitAbilityLevel(GetAttacker(),'A085')>=1)and(GetRandomReal(.0,100.)<=10.)and(Id[(1+GetPlayerId(GetOwningPlayer(GetAttacker())))]>=1)and(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))))
endfunction
function iI takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call YDWELocalVariableInitiliation()
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,GetAttacker())
call SaveInteger(YDHT,id*cx,-$2A41B3A3,'A085')
call SaveLocationHandle(YDHT,id*cx,-$6923AD87,GetUnitLoc(GetAttacker()))
call CreateTextTagLocBJ("六脉神剑之少商剑",LoadLocationHandle(YDHT,id*cx,-$6923AD87),0,14.,90.,21.,15.,.0)
call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,(GetRandomReal(80.,100.)))
call Nw(4.,bj_lastCreatedTextTag)
call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)),LoadLocationHandle(YDHT,id*cx,-$6923AD87),GetUnitFacing(GetAttacker()))
call ShowUnitHide(bj_lastCreatedUnit)
call Gw(4.,bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,1093679439)
call IssueTargetOrderById(bj_lastCreatedUnit,$D0097,GetTriggerUnit())
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$6923AD87))
call YDWELocalVariableEnd()
call FlushChildHashtable(YDHT,id*cx)
endfunction
function kI takes nothing returns boolean
return((GetEventDamage()==4.58))
endfunction
function mI takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local unit u=udg_hero[i]
    local unit uc=GetTriggerUnit()
    local real shxishu=jueXueXiShu(i)
    local real shanghai=0.
    set shanghai=ShangHaiGongShi(u,uc,300.,300.,shxishu,'A085')
    call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
//残章：野球拳第一式
function oI takes nothing returns boolean
return((GetUnitAbilityLevel(GetAttacker(),'A07I')>=1)and(GetRandomReal(.0,100.)<=10.)and(Ld[(1+GetPlayerId(GetOwningPlayer(GetAttacker())))]>=1)and(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))))
endfunction
function pI takes nothing returns boolean
return(((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),$59BEA0CB))))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
function qI takes nothing returns nothing
	local timer t=GetExpiredTimer()
	local unit u=LoadUnitHandle(YDHT,GetHandleId(t),$59BEA0CB)
	local unit uc=GetEnumUnit()
	local location loc=GetUnitLoc(uc)
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local real shxishu=jueXueXiShu(i)
	local real shanghai=0.
	call  DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"))
	set shanghai=ShangHaiGongShi(u,uc,44.,44.,shxishu,'A07I')
	call WuGongShangHai(u,uc,shanghai)
	call RemoveLocation(loc)
	set t=null
	set u=null
	set uc=null
	set loc=null
endfunction
function rI takes nothing returns nothing
    if((LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$4DA64D97)>=420.))then
        call FlushChildHashtable(YDHT,GetHandleId(GetExpiredTimer()))
        call DestroyTimer(GetExpiredTimer())
    else
        call SaveReal(YDHT,GetHandleId(GetExpiredTimer()),-$4DA64D97,(LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$4DA64D97)+11.))
        call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F,GetUnitLoc(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),-$2EC5CBA0)))
        call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(250.,LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F),Condition(function pI)),function qI)
        call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F))
    endif
endfunction
function sI takes nothing returns nothing
local timer ky
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,GetAttacker())
call SaveInteger(YDHT,id*cx,-$2A41B3A3,'A07I')
call SaveLocationHandle(YDHT,id*cx,-$6923AD87,GetUnitLoc(GetAttacker()))
call CreateTextTagLocBJ("野球拳之翻肘裂捶",LoadLocationHandle(YDHT,id*cx,-$6923AD87),0,14.,90.,21.,15.,.0)
call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,(GetRandomReal(80.,100.)))
call Nw(4.,bj_lastCreatedTextTag)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$6923AD87))
call SaveLocationHandle(YDHT,id*cx,-$72C3E060,GetUnitLoc(GetTriggerUnit()))
call CreateNUnitsAtLoc(1,1697656912,GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)),LoadLocationHandle(YDHT,id*cx,-$72C3E060),bj_UNIT_FACING)
call zw(bj_lastCreatedUnit,GetAttacker(),.5,600.,1500.,2000.,100)
call Gw(20.,bj_lastCreatedUnit)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,bj_lastCreatedUnit)
call CreateNUnitsAtLoc(1,1697656913,GetOwningPlayer(GetAttacker()),pu(GetUnitLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0)),250.,0),bj_UNIT_FACING)
call Yv(bj_lastCreatedUnit,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),6.,.0,0,20.,.03)
call Gw(20.,bj_lastCreatedUnit)
call CreateNUnitsAtLoc(1,1697656913,GetOwningPlayer(GetAttacker()),pu(GetUnitLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0)),250.,90.),bj_UNIT_FACING)
call Yv(bj_lastCreatedUnit,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),6.,.0,0,20.,.03)
call Gw(20.,bj_lastCreatedUnit)
call CreateNUnitsAtLoc(1,1697656913,GetOwningPlayer(GetAttacker()),pu(GetUnitLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0)),250.,180.),bj_UNIT_FACING)
call Yv(bj_lastCreatedUnit,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),6.,.0,0,20.,.03)
call Gw(20.,bj_lastCreatedUnit)
call CreateNUnitsAtLoc(1,1697656913,GetOwningPlayer(GetAttacker()),pu(GetUnitLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0)),250.,270.),bj_UNIT_FACING)
call Yv(bj_lastCreatedUnit,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),6.,.0,0,20.,.03)
call Gw(20.,bj_lastCreatedUnit)
call SaveReal(YDHT,id*cx,-$2CEF3086,(((3.+I2R(juexuelingwu[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))))]))+(I2R(GetUnitAbilityLevel(LoadUnitHandle(YDHT,id*cx,$59BEA0CB),LoadInteger(YDHT,id*cx,-$2A41B3A3)))/2.))+(I2R(danpo[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))))])*.07)))
call SaveReal(YDHT,id*cx,$1968F401,(11.+udg_shanghaijiacheng[(1+GetPlayerId(GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB))))]))
call SaveReal(YDHT,id*cx,-$2CEF3086,(LoadReal(YDHT,id*cx,-$2CEF3086)*(LoadReal(YDHT,id*cx,$1968F401)*3.)))
set ky=CreateTimer()
call SaveUnitHandle(YDHT,GetHandleId(ky),$59BEA0CB,LoadUnitHandle(YDHT,id*cx,$59BEA0CB))
call SaveUnitHandle(YDHT,GetHandleId(ky),-$2EC5CBA0,LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))
call SaveReal(YDHT,GetHandleId(ky),-$2CEF3086,LoadReal(YDHT,id*cx,-$2CEF3086))
call TimerStart(ky,.5,true,function rI)
call FlushChildHashtable(YDHT,id*cx)
set ky=null
endfunction

//九阳真经残卷
function isJiuYangCanJuanAct takes nothing returns boolean
	return((GetUnitAbilityLevel(GetAttacker(),'A0DN')>=1)and(GetRandomReal(.0,100.)<=10.)and(JYd[(1+GetPlayerId(GetOwningPlayer(GetAttacker())))]>=1)and(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))))
endfunction
function isJiuYangEnemy takes nothing returns boolean
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetAttacker())) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function jiuYangCanJuanAction takes nothing returns nothing
	local unit u=GetAttacker()
	local unit uc=GetEnumUnit()
	local location loc=GetUnitLoc(uc)
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local real shxishu=jueXueXiShu(i)+5*GetUnitAbilityLevel(u, 'A06S')
	local real shanghai=0.
	call  DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"))
	set shanghai=ShangHaiGongShi(u,uc,132.,132.,shxishu,'A0DN')
	call WuGongShangHai(u,uc,shanghai)
	call RemoveLocation(loc)
	set u=null
	set uc=null
	set loc=null
endfunction
function jiuYangCanJuanAct takes nothing returns nothing
	local unit u = GetAttacker()
	local location loc = GetUnitLoc(u)
	local integer i = 0
	local integer j = 0
	local location loc1 = null
	local location loc2 = null
	local group g = null
	call CreateTextTagLocBJ("九阳真经残卷",loc,0,14.,90.,21.,15.,.0)
	call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,(GetRandomReal(80.,100.)))
	call Nw(4.,bj_lastCreatedTextTag)
	set j = 0
	loop
		exitwhen j >= 5
		set loc2 = PolarProjectionBJ(loc, GetRandomReal(300, 1000), GetRandomReal(0, 360))
		call DestroyEffect(AddSpecialEffectLoc("Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl", loc2))
		set i = 0
		loop
			exitwhen i >= 8
			set loc1 = PolarProjectionBJ(loc2, 400, 45*i)
			call DestroyEffect(AddSpecialEffectLoc("Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl", loc1))
			call RemoveLocation(loc1)
			set i = i + 1
		endloop
		set g = CreateGroup()
		call GroupEnumUnitsInRangeOfLoc(g, loc2, 575, Condition(function isJiuYangEnemy))
		call ForGroupBJ(g, function jiuYangCanJuanAction)
		call DestroyGroup(g)
		call RemoveLocation(loc2)
		call PolledWait(0.8)
		set j = j + 1
	endloop


	call RemoveLocation(loc)
	set g = null
	set u = null
	set loc = null
	set loc1 = null
	set loc2 = null
endfunction
//------------绝世武功结束------------
