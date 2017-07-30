
//天山折梅手
globals
	effect udg_zhemeieff = null
endglobals
function IsXinZheMei takes nothing returns boolean
	local integer i = 1
	loop
		exitwhen i > 5
		if udg_zhemei[i] == 0 and GetUnitAbilityLevel(udg_hero[i], 'A02B') >= 1 then
			set udg_zhemei[i] = 1
			call SaveInteger(YDHT, StringHash("折梅"), StringHash("折梅"), i)
			return true
		endif
		set i = i + 1
	endloop
	return false
endfunction
function XinZheMeiShou_1 takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	if GetUnitAbilityLevel(u, 'A02B') >= 1 then
		call UnitAddAbilityBJ( 'A02X', u )
    	call SetPlayerAbilityAvailableBJ( false, 'A02X', GetOwningPlayer(u) )
    	set udg_zhemeieff = AddSpecialEffectTargetUnitBJ("overhead",u, "Abilities\\Weapons\\Bolt\\BoltImpact.mdl")
	else
		call FlushChildHashtable(YDHT, GetHandleId(t))
		call PauseTimer(t)
		call DestroyTimer(t)
	endif
	set t = null
	set u = null
endfunction
function XinZheMeiShou takes nothing returns nothing
	local timer t = CreateTimer()
	local unit u = udg_hero[LoadInteger(YDHT, StringHash("折梅"), StringHash("折梅"))]
	call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	call TimerStart(t, 1., false, function XinZheMeiShou_1)
	set t = null
	set u = null
endfunction
function XinZheMeiShou_Condition takes nothing returns boolean
	return GetUnitAbilityLevel(GetAttacker(), 'A02W') >= 1 and UnitTypeNotNull(GetAttacker(),UNIT_TYPE_HERO) and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))
endfunction
function ZheMei_Condition takes nothing returns boolean
	//call BJDebugMsg("pos2")
	return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetAttacker())) and (IsUnitAliveBJ(GetFilterUnit()))
endfunction
function ZheMei_Action takes nothing returns nothing
	local unit uc=GetEnumUnit()
	local unit u=GetAttacker()
	local location loc=GetUnitLoc(uc)
	local real shxishu=1.
	local real shanghai=0.
	set shxishu = RMinBJ(1. + I2R(GetHeroInt(u, true))/600., 15.)
	if((GetUnitAbilityLevel(u,'A02C')!=0))then
	    set shxishu=shxishu+0.5
	endif
	if((GetUnitAbilityLevel(u,'A02H')!=0))then
	    set shxishu=shxishu+0.6
	endif
	if((GetUnitAbilityLevel(u,'A0D6')!=0))then
	    set shxishu=shxishu+0.7
	endif
	//call BJDebugMsg("pos3")
	call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl"))
	call RemoveLocation(loc)
	set shanghai=ShangHaiGongShi(u,uc,9,18,shxishu,'A02B')
	call WuGongShangHai(u,uc,shanghai)
	set u=null
	set uc=null
	set loc=null
endfunction
function XinZheMeiShou_Action takes nothing returns nothing
	local timer t = CreateTimer()
	local unit u=GetAttacker()
	local unit uc=GetTriggerUnit()
	local location loc=GetUnitLoc(u)
	local real shxishu=1.
	local integer i = 1 + GetPlayerId(GetOwningPlayer(u))
	local real j = RMaxBJ(7. - I2R(GetHeroAgi(u, true))/400., 0.5)
	local real range = 500. + 50. * GetUnitAbilityLevel(u, 'A02B') + I2R(GetHeroStr(u, true)) / 10.
	call UnitRemoveAbility(u, 'A02X')
	call DestroyEffect(udg_zhemeieff)
	set udg_zhemeieff = null
	call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	call TimerStart(t, j, false, function XinZheMeiShou_1)
	call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(range,loc,Condition(function ZheMei_Condition)),function ZheMei_Action)
	call WuGongShengChong(u,'A02B',450.)
	if (GetUnitAbilityLevel(u,'A02H')>=1) and GetRandomInt(1, 4) == 1 then
		call WanBuff(u, uc, 2)
	endif
	if (GetUnitAbilityLevel(u,'A07N')>=1) and GetRandomInt(1, 4) == 1 then
		call WanBuff(u, uc, 11)
	endif
	call RemoveLocation(loc)
endfunction

//月影舞步

function IsYueYing takes nothing returns boolean
	return (GetSpellAbilityId()=='A02C')
endfunction
function ZheMei_Condition2 takes nothing returns boolean
	//call BJDebugMsg("pos2")
	return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit())) and (IsUnitAliveBJ(GetFilterUnit()))
endfunction
function ZheMei_Action2 takes nothing returns nothing
	local unit uc=GetEnumUnit()
	local unit u=GetTriggerUnit()
	local location loc=GetUnitLoc(uc)
	local real shxishu=1.
	local real shanghai=0.
	set shxishu = RMinBJ(1. + I2R(GetHeroInt(u, true))/600., 15.)
	if((GetUnitAbilityLevel(u,'A02C')!=0))then
	    set shxishu=shxishu+0.5
	endif
	if((GetUnitAbilityLevel(u,'A02H')!=0))then
	    set shxishu=shxishu+0.6
	endif
	if((GetUnitAbilityLevel(u,'A0D6')!=0))then
	    set shxishu=shxishu+0.7
	endif
	//call BJDebugMsg("pos3")
	call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl"))
	call RemoveLocation(loc)
	set shanghai=ShangHaiGongShi(u,uc,9,18,shxishu,'A02B')
	call WuGongShangHai(u,uc,shanghai)
	set u=null
	set uc=null
	set loc=null
endfunction
function YueYingBu takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local real r = 5.
	local integer level = 1
	local location loc = GetUnitLoc(u)
	local location loc2 = GetSpellTargetLoc()
	if GetUnitAbilityLevel(u, 'A07S')>=1 then
		set r = r + 3.
	endif
	if GetUnitAbilityLevel(u, 'A02G')>=1 then
		set r = r + 3.
	endif
	call WuGongShengChong(u,'A02C',100.)
	call SaveInteger(YDHT, GetHandleId(u), 'A02C'*100, LoadInteger(YDHT, GetHandleId(u), 'A02C'*100)+1)
	//call BJDebugMsg("目前特效剩余值为"+I2S(LoadInteger(YDHT, GetHandleId(u), 'A02C'*100)))
	call UnitAddAbility(u, 'A006')
	if GetUnitAbilityLevel(u, 'A07Q')>=1 then
		call UnitAddAbilityBJ( 'A02T', u )
    	call SetPlayerAbilityAvailableBJ( false, 'A02T', GetOwningPlayer(u) )
		//call UnitAddAbility(u, 'ACes')
	endif
	if GetUnitAbilityLevel(u, 'A07O')>=1 then
		call UnitAddAbility(u, 'A02D')
	endif
	call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(300,loc,Condition(function ZheMei_Condition2)),function ZheMei_Action2)
	call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(300,loc2,Condition(function ZheMei_Condition2)),function ZheMei_Action2)
	call YDWEPolledWaitNull(1.)
	if GetUnitAbilityLevel(u,'A07U')>=1 and GetRandomInt(1,2)==1 then
        set level=GetUnitAbilityLevel(u,'A02C')
	     call UnitRemoveAbility(u,'A02C')
	     call UnitAddAbility(u,'A02C')
	     call SetUnitAbilityLevel(u,'A02C',level)
    endif
	//call BJDebugMsg("pos4")
	call YDWEPolledWaitNull(r-1)

	call SaveInteger(YDHT, GetHandleId(u), 'A02C'*100, LoadInteger(YDHT, GetHandleId(u), 'A02C'*100)-1)
	//call BJDebugMsg("目前特效剩余值为"+I2S(LoadInteger(YDHT, GetHandleId(u), 'A02C'*100)))
	if LoadInteger(YDHT, GetHandleId(u), 'A02C'*100) == 0 then
		call UnitRemoveAbility(u, 'A006')
		if GetUnitAbilityLevel(u, 'A07Q')>=1 then
			call UnitRemoveAbility(u, 'A02T')
		endif
		if GetUnitAbilityLevel(u, 'A07O')>=1 then
			call UnitRemoveAbility(u, 'A02D')
		endif
	endif
endfunction
function IsYueYingBeiDong takes nothing returns boolean
	return GetUnitAbilityLevel(GetAttacker(),'A02C')>=1 and  GetUnitAbilityLevel(GetAttacker(),'A02H')>=1 and GetRandomInt(1,100)<=15 and GetUnitAbilityLevel(GetAttacker(),'A02E')==0
endfunction
function YueYingBuBeiDong takes nothing returns nothing
	call UnitAddAbility(GetAttacker(),'A02E')
	call YDWEPolledWaitNull(5.)
	call UnitRemoveAbility(GetAttacker(),'A02E')
endfunction
//如意刀法
function IsRuYi takes nothing returns boolean
	return (GetSpellAbilityId()=='A02F')
endfunction
function RuYiDao takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local location loc = GetUnitLoc(u)
	local location loc2 = null
	call WuGongShengChong(GetTriggerUnit(),'A02F',200)
	call CreateNUnitsAtLoc(1,'h00H',GetOwningPlayer(u),loc,bj_UNIT_FACING)
	call SetUnitVertexColorBJ( bj_lastCreatedUnit, 100, 100, 100, 100 )
	call UnitAddAbility(bj_lastCreatedUnit,'Aloc')
	call UnitAddAbility(bj_lastCreatedUnit, 'A02J')
	if GetUnitAbilityLevel(u,'A07H')>=1 then
		call IncUnitAbilityLevel(bj_lastCreatedUnit,'A02J')
	endif
	call IssueImmediateOrderById(bj_lastCreatedUnit, $D00A0)
	call IssueTargetOrderById(bj_lastCreatedUnit, $D0012, u)
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',7.)
	if GetUnitAbilityLevel(u,'A07U')>=1 then
		set loc2 = pu(loc,256.,GetRandomReal(0,360.))
		call CreateNUnitsAtLoc(1,'h00H',GetOwningPlayer(u),loc2,bj_UNIT_FACING)
		call SetUnitVertexColorBJ( bj_lastCreatedUnit, 100, 100, 100, 100 )
		call UnitAddAbility(bj_lastCreatedUnit,'Aloc')
		call UnitAddAbility(bj_lastCreatedUnit, 'A02J')
		if GetUnitAbilityLevel(u,'A07H')>=1 then
			call IncUnitAbilityLevel(bj_lastCreatedUnit,'A02J')
		endif
		call IssueImmediateOrderById(bj_lastCreatedUnit, $D00A0)
		call IssueTargetOrderById(bj_lastCreatedUnit, $D0012, u)
		call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',7.)
	endif
	if GetUnitAbilityLevel(u,'A0DN')>=1 then
		call UnitAddAbility(u, 'A0CQ' )
   		call SetPlayerAbilityAvailable( GetOwningPlayer(u), 'A0CQ', false )
	endif
	call YDWEPolledWaitNull(7.)
	call UnitRemoveAbility(u, 'A0CQ')
	call RemoveLocation(loc)
	call RemoveLocation(loc2)
	set u = null
	set loc = null
	set loc2 = null
endfunction
function IsRuYiMaJia takes nothing returns boolean
	return GetUnitTypeId(GetEventDamageSource())=='h00H' and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))
endfunction
function RuYiMaJia takes nothing returns nothing
	local unit u=udg_hero[1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local unit uc=GetTriggerUnit()
	local real shxishu=1
    local real shanghai=0.
    if GetUnitAbilityLevel(u,'A02G')>=1 then
		set shxishu=shxishu+0.8
	endif
    set shanghai=ShangHaiGongShi(u,uc,48.,48.,shxishu,'A02F')
    call WuGongShangHai(u,uc,shanghai)
    if UnitHasBuffBJ(u,'B00Y') and GetUnitAbilityLevel(u,'A018')>=1 then
	    call WuGongShangHai(u,uc,shanghai*30)
    endif
    set u=null
    set uc=null
endfunction
function IsRuYiBeiDong takes nothing returns boolean
	return GetUnitAbilityLevel(GetAttacker(),'A02F')>=1 and GetUnitAbilityLevel(GetAttacker(),'A06M')>=1 and GetRandomInt(1, 100)<=8
endfunction
function RuYiBeiDong takes nothing returns nothing
	local unit u = GetAttacker()
	local location loc = GetUnitLoc(u)
	//call WuGongShengChong(GetTriggerUnit(),'A02F',1200)
	call CreateNUnitsAtLoc(1,'h00H',GetOwningPlayer(u),loc,bj_UNIT_FACING)
	call SetUnitVertexColorBJ( bj_lastCreatedUnit, 100, 100, 100, 100 )
	call UnitAddAbility(bj_lastCreatedUnit,'Aloc')
	call UnitAddAbility(bj_lastCreatedUnit, 'A02J')
	if GetUnitAbilityLevel(u,'A07H')>=1 then
		call IncUnitAbilityLevel(bj_lastCreatedUnit,'A02J')
	endif
	call IssueImmediateOrderById(bj_lastCreatedUnit, $D00A0)
	call IssueTargetOrderById(bj_lastCreatedUnit, $D0012, u)
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',7.)
	if GetUnitAbilityLevel(u,'A0DN')>=1 then
		call UnitAddAbility(u, 'A0CQ' )
   		call SetPlayerAbilityAvailable( GetOwningPlayer(u), 'A0CQ', false )
	endif
	call YDWEPolledWaitNull(7.)
	call UnitRemoveAbility(u, 'A0CQ')
	call RemoveLocation(loc)
	set u = null
	set loc = null
endfunction
//八荒六合唯我独尊功
function IsBaHuang takes nothing returns boolean
	return GetUnitAbilityLevel(GetAttacker(),'A02G')>=1
endfunction
function BaHuangGong_1 takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local integer j = LoadInteger(YDHT, GetHandleId(t), 0)
	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 1)
	local integer jishu = LoadInteger(YDHT, GetHandleId(t), 2)
	local integer level = LoadInteger(YDHT, GetHandleId(t), 3)
	call ModifyHeroStat(j, u, 1, jishu*level*6)
	call PauseTimer(t)
	call DestroyTimer(t)
	set t = null
	set u = null
endfunction
function BaHuangGong_2 takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 1)
	local integer jishu = LoadInteger(YDHT, GetHandleId(t), 2)
	local integer level = LoadInteger(YDHT, GetHandleId(t), 3)
	call ModifyHeroStat(0, u, 1, jishu*level)
	call ModifyHeroStat(1, u, 1, jishu*level)
	call ModifyHeroStat(2, u, 1, jishu*level)
	call PauseTimer(t)
	call DestroyTimer(t)
	set t = null
	set u = null
endfunction
function BaHuangGong_3 takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 1)
	local integer i = 1 + GetPlayerId(GetOwningPlayer(u))
	local integer jishu = LoadInteger(YDHT, GetHandleId(t), 2)
	local integer level = LoadInteger(YDHT, GetHandleId(t), 3)
	set juexuelingwu[i] = juexuelingwu[i] - level
	call PauseTimer(t)
	call DestroyTimer(t)
	set t = null
	set u = null
endfunction
function BaHuangGong takes nothing returns nothing
	local unit u = GetAttacker()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	local integer jishu = 8
	local integer level = GetUnitAbilityLevel(u, 'A02G')
	local location loc = GetUnitLoc(u)
	local integer j = GetRandomInt(0, 2)
	local timer t = null
	if GetUnitAbilityLevel(u, 'A07W')>=1 then
		set jishu = 15
	endif
	if GetRandomInt(1,100)<6+fuyuan[i]/3+GetUnitAbilityLevel(u, 'A085')*3 then
		call WuGongShengChong(u, 'A02G', 500-50*GetUnitAbilityLevel(u, 'A089'))
		if GetUnitAbilityLevel(u, 'A0D2')>=1 then
			call ModifyHeroStat(j, u, 0, jishu*level*6)
			set t = CreateTimer()
			call SaveInteger(YDHT, GetHandleId(t), 0, j)
			call SaveUnitHandle(YDHT, GetHandleId(t), 1, u)
			call SaveInteger(YDHT, GetHandleId(t), 2, jishu)
			call SaveInteger(YDHT, GetHandleId(t), 3, level)
			call TimerStart(t, 12., false, function BaHuangGong_1)
		else
			call ModifyHeroStat(0, u, 0, jishu*level)
			call ModifyHeroStat(1, u, 0, jishu*level)
			call ModifyHeroStat(2, u, 0, jishu*level)
			set t = CreateTimer()
			call SaveUnitHandle(YDHT, GetHandleId(t), 1, u)
			call SaveInteger(YDHT, GetHandleId(t), 2, jishu)
			call SaveInteger(YDHT, GetHandleId(t), 3, level)
			call TimerStart(t, 12., false, function BaHuangGong_2)
		endif
		call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl"))
		if GetUnitAbilityLevel(u, 'A083')>=1 then
			set juexuelingwu[i] = juexuelingwu[i] + level
			set t = CreateTimer()
			call SaveUnitHandle(YDHT, GetHandleId(t), 1, u)
			call SaveInteger(YDHT, GetHandleId(t), 2, jishu)
			call SaveInteger(YDHT, GetHandleId(t), 3, level)
			call TimerStart(t, 12., false, function BaHuangGong_3)
		endif
	endif
	call RemoveLocation(loc)
	set u = null
	set p = null
	set loc = null
	set t = null
endfunction
//天山六阳掌
function IsLiuYang takes nothing returns boolean
	return (GetSpellAbilityId()=='A02H')
endfunction
function LiuYangZhang takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local location loc = GetUnitLoc(u)
	call WuGongShengChong(GetTriggerUnit(),'A02H',190)
	call CreateNUnitsAtLoc(1,'e012',GetOwningPlayer(u),loc,bj_UNIT_FACING)
	call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddAbility(bj_lastCreatedUnit, 'A02I')
	if GetUnitAbilityLevel(u,'A0DN')>=1 then
		call IncUnitAbilityLevel(bj_lastCreatedUnit,'A02I')
	endif
	call IssuePointOrderByIdLoc(bj_lastCreatedUnit, $D010E, loc)
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',15.)
	call RemoveLocation(loc)
	set u = null
	set loc = null
endfunction
function IsLiuYangMaJia takes nothing returns boolean
	return GetUnitTypeId(GetEventDamageSource())=='e012' and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))
endfunction
function LiuYangMaJia takes nothing returns nothing
	local unit u=udg_hero[1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local unit uc=GetTriggerUnit()
	local real shxishu=1
    local real shanghai=0.
    if GetUnitAbilityLevel(u,'A07I')>=1 then
		set shxishu=shxishu+1
	endif
    set shanghai=ShangHaiGongShi(u,uc,84,48,shxishu,'A02H')
    call WuGongShangHai(u,uc,shanghai)
    if GetUnitAbilityLevel(u,'A07M')>=1 then
	    call WanBuff(u, uc, 2)
    endif
    if GetUnitAbilityLevel(u,'A082')>=1 then
	    call WanBuff(u, uc, 6)
    endif
    set u=null
    set uc=null
endfunction
function IsLiuYangBeiDong takes nothing returns boolean
	return GetUnitAbilityLevel(GetAttacker(),'A02H')>=1 and GetUnitAbilityLevel(GetAttacker(),'A0D8')>=1 and  GetUnitAbilityLevel(GetAttacker(),'A07H')>=1 and GetRandomInt(1, 100)<=5
endfunction
function LiuYangBeiDong takes nothing returns nothing
	local unit u = GetAttacker()
	local location loc = GetUnitLoc(u)
	call CreateNUnitsAtLoc(1,'e012',GetOwningPlayer(u),loc,bj_UNIT_FACING)
	call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddAbility(bj_lastCreatedUnit, 'A02I')
	if GetUnitAbilityLevel(u,'A0DN')>=1 then
		call IncUnitAbilityLevel(bj_lastCreatedUnit,'A02I')
	endif
	call IssuePointOrderByIdLoc(bj_lastCreatedUnit, $D010E, loc)
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',15.)
	call RemoveLocation(loc)
	set u = null
	set loc = null
endfunction
function LingJiuGong_Trigger takes nothing returns nothing
	local trigger t=CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(t, 1.)
	call TriggerAddCondition(t,Condition(function IsXinZheMei))
	call TriggerAddAction(t,function XinZheMeiShou)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function XinZheMeiShou_Condition))
	call TriggerAddAction(t,function XinZheMeiShou_Action)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsYueYing))
	call TriggerAddAction(t,function YueYingBu)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsYueYingBeiDong))
	call TriggerAddAction(t,function YueYingBuBeiDong)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsBaHuang))
	call TriggerAddAction(t,function BaHuangGong)
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t, Condition(function IsLiuYang))
	call TriggerAddAction(t, function LiuYangZhang)
	set t = CreateTrigger()
    call YDWESyStemAnyUnitDamagedRegistTrigger( t )
    call TriggerAddCondition(t, Condition(function IsLiuYangMaJia))
    call TriggerAddAction(t, function LiuYangMaJia)
    set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsLiuYangBeiDong))
	call TriggerAddAction(t,function LiuYangBeiDong)
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t, Condition(function IsRuYi))
	call TriggerAddAction(t, function RuYiDao)
	set t = CreateTrigger()
    call YDWESyStemAnyUnitDamagedRegistTrigger( t )
    call TriggerAddCondition(t, Condition(function IsRuYiMaJia))
    call TriggerAddAction(t, function RuYiMaJia)
    set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsRuYiBeiDong))
	call TriggerAddAction(t,function RuYiBeiDong)
	set t =null
endfunction
