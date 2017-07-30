//===========================================================================
globals
	trigger gg_trg_Number14_0 = null
	trigger gg_trg_Number14_1 = null
endglobals
//===========================================================================
//天柱云气
function IsTianZhu takes nothing returns boolean
	return (GetUnitAbilityLevel(GetAttacker(),'A04M')>=1 or GetUnitAbilityLevel(GetTriggerUnit(),'A04M')>=1) and (IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker())))
endfunction
function TianZhu_Condition takes nothing returns boolean
	if GetUnitAbilityLevel(GetAttacker(),'A04M')>=1 then
    	return(IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetAttacker()))==true) and IsUnitAliveBJ(GetFilterUnit())
    else
    	return(IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))==true) and IsUnitAliveBJ(GetFilterUnit())
	endif
endfunction
function TianZhu_Action takes nothing returns nothing
	local unit u = null
	local unit ut = GetEnumUnit()
    local player p = null
    local integer i = 1
    local real shanghai=0.
    local real shxishu=1.
    if GetUnitAbilityLevel(GetAttacker(),'A04M')>=1 then
		set u = GetAttacker()
	else
		set u = GetTriggerUnit()
	endif
	set p = GetOwningPlayer(u)
	set i = 1 + GetPlayerId(p)
    if GetUnitAbilityLevel(u,'A071')>=1 then
	    set shxishu=shxishu+0.8
    endif
    if GetUnitAbilityLevel(u,'A06J')>=1 then
	    set shxishu=shxishu+0.9
    endif
    if UnitHaveItem(u, 'I01L') or UnitHaveItem(u, 'I00C') or UnitHaveItem(u, 'I00B') or UnitHaveItem(u, 'I099') or UnitHaveItem(u, 'I09A') or UnitHaveItem(u, 'I09C') then
    	set shxishu = shxishu * 2
	endif
    set shanghai=ShangHaiGongShi(u,ut, 25, 6, shxishu,'A04M')
    call WuGongShangHai(u,ut,shanghai)
    if GetUnitAbilityLevel(u,'A07F')>=1 then
	    call WanBuff(u, ut, 2)
    endif
    set p = null
    set u = null
    set ut = null
endfunction
function TianZhuYunQi takes nothing returns nothing
	local unit u=null
	local player p = null
	local real angle = 0.
	local location loc = null
	local location loc2 = null
	local location loc3 =null
	local group g = CreateGroup()
	local integer i = 1
	local integer j = 1
	if GetUnitAbilityLevel(GetAttacker(),'A04M')>=1 then
		set u = GetAttacker()
	else
		set u = GetTriggerUnit()
	endif
	set angle = GetUnitFacing(u)
	set p = GetOwningPlayer(u)
	set i =1 + GetPlayerId(p)
	set loc = GetUnitLoc(u)
	set loc2 = PolarProjectionBJ(loc, GetRandomReal(100,300), angle)
	set loc3 = PolarProjectionBJ(loc, GetRandomReal(100,300), 180+angle)
	if (GetRandomReal(.0,100.)<=15+fuyuan[i]/5)then
		call WuGongShengChong(u,'A04M',900.)
		call DestroyEffect(AddSpecialEffectLocBJ(loc2, "war3mapImported\\aquaspike.mdl" ))
		call GroupEnumUnitsInRangeOfLoc(g,loc2,500,Condition(function TianZhu_Condition))
		if GetUnitAbilityLevel(u,'A07U')>=1 then
			call DestroyEffect(AddSpecialEffectLocBJ(loc3, "war3mapImported\\aquaspike.mdl" ))
			call GroupEnumUnitsInRangeOfLoc(g,loc3,500,Condition(function TianZhu_Condition))
		endif

		call ForGroupBJ(g,function TianZhu_Action)

		//call PolledWait(0.15)
		//set j = 1
		//loop
		//	exitwhen j > 4
		//	set loc3[j] = PolarProjectionBJ(loc2, 300, angle - 90 + 90 * j)
		//	call DestroyEffect(AddSpecialEffectLocBJ(loc3[j], "war3mapImported\\aquaspike.mdl" ))
		//	call RemoveLocation(loc3[j])
		//	set loc3[j] = null
		//	call PolledWait(0.15)
		//	set j = j + 1
		//endloop
	endif
    call GroupClear(g)
    call RemoveLocation(loc)
    call RemoveLocation(loc2)
    call RemoveLocation(loc3)
    set g = null
    set u=null
    set p=null
    set loc=null
    set loc2=null
    set loc3 = null
endfunction
//===========================================================================
//鹤翔紫盖
function IsHeXiangZiGai takes nothing returns boolean
    return GetSpellAbilityId()=='A04N' and (IsUnitEnemy(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit())))
endfunction
function HeXiangJianFa takes nothing returns nothing
    local unit u=GetTriggerUnit()
    local unit uc=GetSpellTargetUnit()
    local unit ut = null
    local unit uttt = null
    local location loc=GetUnitLoc(uc)
    local location loc2 = GetUnitLoc(u)
    local group g=CreateGroup()
    local real shanghai=0.
    local real shxishu=1.
    local integer id = 0
    if GetUnitAbilityLevel(u,'A0DN')>=1 then
		if((GetUnitTypeId(u)=='O004'))then
			set id = 1747988533
		elseif((GetUnitTypeId(u)=='O001'))then
			set id = 1747988535
		elseif((GetUnitTypeId(u)=='O002'))then
			set id = 1747988536
		elseif((GetUnitTypeId(u)=='O003'))then
			set id = 1747988537
		elseif((GetUnitTypeId(u)=='O000'))then
			set id = 1747988534
		elseif((GetUnitTypeId(u)=='O023' or GetUnitTypeId(u)=='O02H' or GetUnitTypeId(u)=='O02I'))then
			set id = 'h00I'
		elseif((GetUnitTypeId(u)=='O02J'))then
			set id = 'h00K'
		endif
		call CreateNUnitsAtLoc(1,id,GetOwningPlayer(u),loc2,bj_UNIT_FACING)
		call UnitApplyTimedLife(bj_lastCreatedUnit,1112045413,2.)
		set uttt = bj_lastCreatedUnit
	else
		set uttt = u
	endif
    call WuGongShengChong(u,'A04N',200)
    call SetUnitTimeScale(uttt, 0.3)
    call YDWETimerDestroyEffect( 2, AddSpecialEffectTarget("Abilities\\Spells\\Items\\StaffOfSanctuary\\Staff_Sanctuary_Target.mdl",uttt,"chest"))
    call YDWEJumpTimer( uttt, AngleBetweenPoints(loc2, loc), 2*DistanceBetweenPoints(loc2, loc), 2, 0.01, 400.)
    call PolledWait(1.0)
	call CreateNUnitsAtLoc(1,'e01A',GetOwningPlayer(u),loc,bj_UNIT_FACING)
	set ut=bj_lastCreatedUnit
	call UnitAddAbility(ut,'A04O')
	call UnitApplyTimedLife(ut,1112045413,2.)
    call ShowUnitHide(ut)
	call IssueTargetOrderById(ut,$D0097,uc)
	if GetUnitAbilityLevel(u,'A06J')>=1 then
	    set shxishu=shxishu+0.9
    endif
    if GetUnitAbilityLevel(u,'A071')>=1 then
	    set shxishu=shxishu+0.9
    endif
    if GetUnitAbilityLevel(u,'A07J')>=1 then
	    set shxishu=shxishu+1.5
    endif
    if UnitHaveItem(u, 'I01L') or UnitHaveItem(u, 'I00C') or UnitHaveItem(u, 'I00B') or UnitHaveItem(u, 'I099') or UnitHaveItem(u, 'I09A') or UnitHaveItem(u, 'I09C') then
    	set shxishu = shxishu * 2
	endif
    if GetUnitAbilityLevel(u,'A07R')>=1 then
	    call WanBuff(u, uc, 12)
    endif
    set shanghai=ShangHaiGongShi(u,uc, 300, 100, shxishu,'A04N')
    call WuGongShangHai(u,uc,shanghai)
    call RemoveLocation(loc)
    call RemoveLocation(loc2)
    call PolledWait(1.0)
    call SetUnitTimeScale(uttt, 1.0)
    set u=null
    set uc=null
    set loc=null
    set loc2=null
    set ut = null
    set uttt = null
    set g=null
endfunction
//===========================================================================
//石廪书声
function IsShiLin takes nothing returns boolean
	return (GetUnitAbilityLevel(GetAttacker(),'A04P')>=1 and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker())))
endfunction
function ShiLinShuSheng takes nothing returns nothing
	local unit u=GetAttacker()
	local unit uc=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	local integer id='o02K'
	local location loc1=GetUnitLoc(u)
	local location loc2=GetUnitLoc(uc)
	local real angle = AngleBetweenPoints(loc1, loc2)
	if (GetRandomReal(.0,100.)<=15+fuyuan[i]/5)then
		call CreateNUnitsAtLocFacingLocBJ(1,id,p,PolarProjectionBJ(loc1, 300, 180+angle),loc2)
		call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe', 5. +5. * GetUnitAbilityLevel(u, 'S002'))
		if GetUnitAbilityLevel(u,'A06J')>=1 then
	    	call UnitAddAbility(bj_lastCreatedUnit, 'A03M')
    	endif
    	if GetUnitAbilityLevel(u,'A07J')>=1 then
		    call UnitAddAbility(bj_lastCreatedUnit, 'A03O')
    	endif
    	call WuGongShengChong(u,'A04P',600.)
    	call RemoveLocation(loc1)
    	call RemoveLocation(loc2)
	endif
    set loc1=null
    set loc2=null
	set p=null
	set u=null
	set uc=null
endfunction
function IsShiLinShu takes nothing returns boolean
	return GetUnitTypeId(GetEventDamageSource())=='o02K'
endfunction
function ShiLinShu takes nothing returns nothing
	local player p=GetOwningPlayer(GetEventDamageSource())
	local integer i=1+GetPlayerId(p)
	local unit u=udg_hero[i]
	local unit uc=GetTriggerUnit()
	local real shanghai=0.
	local real shxishu=1.
	if GetUnitAbilityLevel(u,'A071')>=1 then
	    set shxishu=shxishu+0.7
    endif
    if GetUnitAbilityLevel(u,'A07F')>=1 then
	    set shxishu=shxishu+1.6
    endif
    if UnitHaveItem(u, 'I01L') or UnitHaveItem(u, 'I00C') or UnitHaveItem(u, 'I00B') or UnitHaveItem(u, 'I099') or UnitHaveItem(u, 'I09A') or UnitHaveItem(u, 'I09C') then
    	set shxishu = shxishu * 2
	endif
	set shanghai=ShangHaiGongShi(u,uc,50.,28.,shxishu,'A04P')
	call WuGongShangHai(u,uc,shanghai)
	set uc=null
	set u=null
	set p=null
endfunction
//===========================================================================
//雁回祝融
function IsYanHui takes nothing returns boolean
	return (GetUnitAbilityLevel(GetAttacker(),'A04R')>=1 and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker())))
endfunction
function YanHuiZhuRong takes nothing returns nothing
	local unit u=GetAttacker()
	local unit uc=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	local integer id='h00L'
	local location loc1=GetUnitLoc(u)
	local location loc2=GetUnitLoc(uc)
	if (GetRandomReal(.0,100.)<=15+fuyuan[i]/5)then
		call CreateNUnitsAtLocFacingLocBJ(1,id,p,loc1,loc2)
		call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',6. + 6. * GetUnitAbilityLevel(u, 'A083'))
		call WuGongShengChong(u,'A04R',600.)
    	call RemoveLocation(loc1)
    	call RemoveLocation(loc2)
	endif
    set loc1=null
    set loc2=null
	set p=null
	set u=null
	set uc=null
endfunction
function IsYanHuiJian takes nothing returns boolean
	return GetUnitTypeId(GetEventDamageSource())=='h00L'
endfunction
function YanHuiJianFa takes nothing returns nothing
	local player p=GetOwningPlayer(GetEventDamageSource())
	local integer i=1+GetPlayerId(p)
	local unit u=udg_hero[i]
	local unit uc=GetTriggerUnit()
	local real shanghai=0.
	local real shxishu=1.
	local location loc = GetUnitLoc(uc)
	if GetUnitAbilityLevel(u,'A06J')>=1 then
	    set shxishu=shxishu+0.6
    endif
    if UnitHaveItem(u, 'I01L') or UnitHaveItem(u, 'I00C') or UnitHaveItem(u, 'I00B') or UnitHaveItem(u, 'I099') or UnitHaveItem(u, 'I09A') or UnitHaveItem(u, 'I09C') then
    	set shxishu = shxishu * 2
	endif
	set shanghai=ShangHaiGongShi(u,uc,200.,80.,shxishu,'A04R')
	call WuGongShangHai(u,uc,shanghai)
	if GetUnitAbilityLevel(u,'A07P')>=1 then
		call WanBuff(u, uc, 7)
    endif
	if (GetRandomReal(.0,100.)<=15+fuyuan[i]/5+GetUnitAbilityLevel(u,'A07U')*21)then
		call CreateNUnitsAtLoc(1,'e000', p, loc,bj_UNIT_FACING)
    	call ShowUnitHide(bj_lastCreatedUnit)
		call UnitAddAbility(bj_lastCreatedUnit, 'A04Q')
		if GetUnitAbilityLevel(u,'A07J')>=1 then
	    	call IncUnitAbilityLevel(bj_lastCreatedUnit,'A04Q')
   		endif
    	call IssueTargetOrderById(bj_lastCreatedUnit, $D00CB, uc)
    	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
	endif
	call RemoveLocation(loc)
	set uc=null
	set u=null
	set p=null
	set loc = null
endfunction
function IsYanHuiDamage takes nothing returns boolean
	return (GetEventDamage()==6.28) and (GetUnitAbilityLevel(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))], 'A04R')>=1 )
endfunction
function YanHuiDamage takes nothing returns nothing
	local unit u=udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))]
    local unit uc=GetTriggerUnit()
    local real shxishu=1.
    local real shanghai=0.
    if GetUnitAbilityLevel(u,'A06J')>=1 then
	    set shxishu=shxishu+0.6
    endif
    if UnitHaveItem(u, 'I01L') or UnitHaveItem(u, 'I00C') or UnitHaveItem(u, 'I00B') or UnitHaveItem(u, 'I099') or UnitHaveItem(u, 'I09A') or UnitHaveItem(u, 'I09C') then
    	set shxishu = shxishu * 2
	endif
   	set shanghai=ShangHaiGongShi(u,uc,250,160,shxishu,'A04R')
    call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
//===========================================================================
//泉鸣芙蓉
function QuanMing_Conditions takes nothing returns boolean
    return ((GetSpellAbilityId() == 'A026'))
endfunction

function QuanMing_Actions takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local location loc=GetSpellTargetLoc()
	local location loc2=null
	local unit ut=null
	local integer i=0
	call WuGongShengChong(u, 'A026', 100)
	call SaveUnitHandle(YDHT,StringHash("泉鸣"),1,u)
	call SaveLocationHandle(YDHT,StringHash("泉鸣"),0,loc)
    call TerrainDeformationCraterBJ( 15.80, false, loc, 400.00, 400.00 )
    call CreateNUnitsAtLoc( 1, 'e00Z', GetOwningPlayer(u), loc, bj_UNIT_FACING )
    set ut = bj_lastCreatedUnit
    set i = 1
    loop
        exitwhen i > 16
        call CreateNUnitsAtLocFacingLocBJ( 1, 'e011', GetOwningPlayer(GetTriggerUnit()), PolarProjectionBJ(loc, 350.00, ( 22.50 * i )), loc )
        call UnitApplyTimedLifeBJ( 13.50, 'BTLF', GetLastCreatedUnit() )
        call DestroyEffect(AddSpecialEffectLocBJ( PolarProjectionBJ(loc, 350.00,  22.50 * I2R(i)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl" ))
        set i = i + 1
    endloop
    set i = 1
    loop
        exitwhen i > 30
        set loc2 = GetRandomLocInRect(RectFromCenterSizeBJ(loc, 350.00, 350.00))
        call CreateNUnitsAtLoc( 1, 'e010', GetOwningPlayer(u), loc2, bj_UNIT_FACING )
        call UnitApplyTimedLifeBJ( 15.00, 'BTLF', GetLastCreatedUnit() )
        call RemoveLocation(loc2)
        set i = i + 1
    endloop
    call TriggerSleepAction(1.50)
    call EnableTrigger( gg_trg_Number14_1 )
    call TriggerSleepAction(13.50)
    call DisableTrigger( gg_trg_Number14_1 )
    call TriggerSleepAction(0.50)
    set i = 1
    loop
        exitwhen i > 16
        call DestroyEffect(AddSpecialEffectLocBJ( PolarProjectionBJ(loc, 350.00,  22.50 * I2R(i)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl" ))
        set i = i + 1
    endloop
    call RemoveUnit(ut)
    call RemoveLocation(loc)
    set u=null
    set ut=null
    set loc=null
    set loc2=null
endfunction

function Trig_Number14_1Func001001003 takes nothing returns boolean
    return (UnitHasBuffBJ(GetFilterUnit(), 'Basl') == true)
endfunction

function Trig_Number14_1Func001A takes nothing returns nothing
	local location loc=LoadLocationHandle(YDHT,StringHash("泉鸣"),0)
	local unit u = LoadUnitHandle(YDHT,StringHash("泉鸣"),1)
	local real shxishu=1.
    local real shanghai=0.
    if GetUnitAbilityLevel(u,'A06J')>=1 then
	    set shxishu=shxishu+0.5
    endif
    if GetUnitAbilityLevel(u,'A071')>=1 then
	    set shxishu=shxishu+0.5
    endif
    if GetUnitAbilityLevel(u,'A07F')>=1 then
	    set shxishu=shxishu+0.8
    endif
    if GetUnitAbilityLevel(u,'A07J')>=1 then
	    set shxishu=shxishu+0.8
    endif
    if GetUnitAbilityLevel(u,'A06J')>=1 and GetUnitAbilityLevel(u,'A071')>=1 and GetUnitAbilityLevel(u,'A07F')>=1 and GetUnitAbilityLevel(u,'A07J')>=1then
	    set shxishu=shxishu+4
    endif
    if UnitHaveItem(u, 'I01L') or UnitHaveItem(u, 'I00C') or UnitHaveItem(u, 'I00B') or UnitHaveItem(u, 'I099') or UnitHaveItem(u, 'I09A') or UnitHaveItem(u, 'I09C') then
    	set shxishu = shxishu * 2
	endif
   	set shanghai=ShangHaiGongShi(u,GetEnumUnit(),60,95,shxishu,'A026')

    if (IsUnitEnemy(GetEnumUnit(), GetOwningPlayer(u))) then
	    call SetUnitPositionLoc( GetEnumUnit(), loc)
   		call WuGongShangHai(u,GetEnumUnit(),shanghai)
	endif
    set loc=null
    //call FlushChildHashtable(YDHT,StringHash("泉鸣"))
endfunction

function Trig_Number14_1Actions takes nothing returns nothing
    local location loc=LoadLocationHandle(YDHT,StringHash("泉鸣"),0)
    local integer i=0
    call ForGroupBJ( GetUnitsInRangeOfLocMatching(470.00, loc, Condition(function Trig_Number14_1Func001001003)), function Trig_Number14_1Func001A )
    set i = 1
    loop
        exitwhen i > 7
        call DestroyEffect(AddSpecialEffectLocBJ( GetRandomLocInRect(RectFromCenterSizeBJ(loc, 350.00, 350.00)), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl" ))
        set i = i + 1
    endloop
    set loc=null
endfunction

//===========================================================================
function HengShan2_Trigger takes nothing returns nothing
	local trigger t = CreateTrigger()
	//天柱云气
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsTianZhu))
	call TriggerAddAction(t,function TianZhuYunQi)
	//鹤翔紫盖
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsHeXiangZiGai))
    call TriggerAddAction(t,function HeXiangJianFa)
    //石廪书声
    set t=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsShiLin))
	call TriggerAddAction(t,function ShiLinShuSheng)
	set t=CreateTrigger()
	call Ov(t)
	call TriggerAddCondition(t,Condition(function IsShiLinShu))
	call TriggerAddAction(t,function ShiLinShu)
	//雁回祝融
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsYanHui))
	call TriggerAddAction(t,function YanHuiZhuRong)
	set t=CreateTrigger()
	call Ov(t)
	call TriggerAddCondition(t,Condition(function IsYanHuiJian))
	call TriggerAddAction(t,function YanHuiJianFa)
	set t=CreateTrigger()
	call Ov(t)
	call TriggerAddCondition(t,Condition(function IsYanHuiDamage))
	call TriggerAddAction(t,function YanHuiDamage)
	//泉鸣芙蓉
    set gg_trg_Number14_1 = CreateTrigger()
    call DisableTrigger(gg_trg_Number14_1)
    call TriggerRegisterTimerEventPeriodic( gg_trg_Number14_1, 1.00 )
    call TriggerAddAction(gg_trg_Number14_1, function Trig_Number14_1Actions)

    set gg_trg_Number14_0 = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ( gg_trg_Number14_0, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddCondition(gg_trg_Number14_0, Condition(function QuanMing_Conditions))
    call TriggerAddAction(gg_trg_Number14_0, function QuanMing_Actions)
endfunction

