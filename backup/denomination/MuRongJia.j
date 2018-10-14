
//家传剑法
function IsJiaChuanMaJia takes nothing returns boolean
	return (IsUnitAliveBJ(GetFilterUnit()) and IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, 10001, 10001))))
endfunction
function JiaChuanMaJia_1 takes nothing returns nothing
	local unit u = LoadUnitHandle(YDHT, 10001, 10001)
	local unit uc = GetEnumUnit()
	local real shxishu = 1.
	local real shanghai = 0.
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local location loc = GetUnitLoc(uc)
	if GetUnitAbilityLevel(u, 'A02R')>=1 then
	    set shxishu = shxishu + 1.
    endif
    if GetRandomInt(1, 4)==1 then
   		call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Other\\Charm\\CharmTarget.mdl"))
	endif
    set shanghai=ShangHaiGongShi(u,uc,12.,18.,shxishu,'A02K')
    call WuGongShangHai(u,uc,shanghai)
    if GetUnitAbilityLevel(u, 'A02V')>=1 and GetRandomInt(1,100)<=15+fuyuan[i]/5 then
	    call WanBuff(u, uc, 6)
    endif
    call RemoveLocation(loc)
    set u = null
    set uc = null
    set loc = null
endfunction
function JiaChuanMaJia takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local integer j = LoadInteger(YDHT, GetHandleId(t), 1)
	local real range = 550.
    local location loc=GetUnitLoc(u)
    local integer jmax = 17
    if GetUnitAbilityLevel(u,'A071')>=1 then
	    set range = range + 350.
    endif
    if GetUnitAbilityLevel(u,'A06J')>=1 then
	    set jmax = 25
    endif
    if j<jmax then
	    call SaveInteger(YDHT, GetHandleId(t), 1, j + 1)
	    call SaveUnitHandle(YDHT, 10001, 10001, u)
    	call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(range,loc,Condition(function IsJiaChuanMaJia)),function JiaChuanMaJia_1)
    else
    	call PauseTimer(t)
    	call DestroyTimer(t)
    	call FlushChildHashtable(YDHT, GetHandleId(t))
	endif
    call RemoveLocation(loc)
    set t = null
    set u=null
    set loc=null
endfunction
function IsJiaChuan takes nothing returns boolean
	return (GetSpellAbilityId()=='A02K')
endfunction
function JiaChuanJian takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local location loc = GetUnitLoc(u)
	local timer t = CreateTimer()
	call WuGongShengChong(GetTriggerUnit(),'A02K',140)
	call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(u),loc,bj_UNIT_FACING)
	call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddAbility(bj_lastCreatedUnit, 'A02L')
	if GetUnitAbilityLevel(u,'A071')>=1 then
		call SetUnitAbilityLevel(bj_lastCreatedUnit,'A02L',2)
	endif
	if GetUnitAbilityLevel(u,'A06J')>=1 then
		call SetUnitAbilityLevel(bj_lastCreatedUnit,'A02L',3)
	endif
	if GetUnitAbilityLevel(u,'A06J')>=1 and GetUnitAbilityLevel(u,'A071')>=1 then
		call SetUnitAbilityLevel(bj_lastCreatedUnit,'A02L',4)
	endif
	call IssueTargetOrderById(bj_lastCreatedUnit, $D008E, u)
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)

	call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	call TimerStart(t, 1, true, function JiaChuanMaJia)
	if GetUnitAbilityLevel(u, 'A07T')>=1 then
		call UnitAddAbility(u, 'A02D')
		call YDWEPolledWaitNull(4.)
		call UnitRemoveAbility(u, 'A02D')
	endif
	call RemoveLocation(loc)
	set u = null
	set loc = null
	set t = null
endfunction
//袖中指
function IsXiuZhong takes nothing returns boolean
	return GetUnitAbilityLevel(GetAttacker(),'A0CC')>=1 and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))
endfunction
function XiuZhongZhi takes nothing returns nothing
	local unit u = GetAttacker()
	local unit uc = GetTriggerUnit()
	local location loc = GetUnitLoc(uc)
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	local real shxishu = 1.
	local real shanghai = 0.
	if GetUnitAbilityLevel(u, 'A071') >= 1 then
		set shxishu = shxishu + 0.8
	endif
	set shanghai=ShangHaiGongShi(u,uc,40.,60.,shxishu,'A0CC')
	if GetRandomInt(1, 100) <= 15 + fuyuan[i]/6 + GetUnitAbilityLevel(u, 'A0CC') * 2 then
		if GetUnitAbilityLevel(u, 'A06P') >= 1 then
			call WanBuff(u, uc, 12)
		else
			call WanBuff(u, uc, 11)
		endif
		call WuGongShangHai(u, uc, shanghai)
		call WuGongShengChong(u, 'A0CC', 600)
		call SetUnitAnimation(u, "attack, slam")
		call DestroyEffect(AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Other\\Charm\\CharmTarget.mdl"))
		if GetUnitAbilityLevel(u, 'A02R') >= 1 then
			call ModifyHeroStat(1, u, 0, 20 * GetUnitAbilityLevel(u, 'A0CC'))
			call YDWEPolledWaitNull(15. + 2 * GetUnitAbilityLevel(u, 'A0CC'))
			call ModifyHeroStat(1, u, 1, 20 * GetUnitAbilityLevel(u, 'A0CC'))
		endif
	endif
	call RemoveLocation(loc)
	set u = null
	set uc = null
	set p = null
	set loc = null
endfunction
//参合指
function IsCanHe takes nothing returns boolean
	return (GetSpellAbilityId()=='A02M')
endfunction
function CanHeZhi takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local unit uc = GetSpellTargetUnit()
	local location loc = GetUnitLoc(uc)
	call WuGongShengChong(GetTriggerUnit(),'A02M',200)
	call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(u),loc,bj_UNIT_FACING)
	call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddAbility(bj_lastCreatedUnit, 'A02O')
	if GetUnitAbilityLevel(u, 'A06H') >= 1 then
		call IncUnitAbilityLevel(bj_lastCreatedUnit, 'A02O')
	endif
	call IssueTargetOrderById(bj_lastCreatedUnit, $D0097, uc)
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
	call RemoveLocation(loc)
	set u = null
	set uc = null
	set loc = null
endfunction
function IsCanHeMaJia takes nothing returns boolean
	return GetEventDamage()==5.15
endfunction
function CanHeMaJia takes nothing returns nothing
	local unit u = udg_hero[1+GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local unit uc = GetTriggerUnit()
	local location loc = GetUnitLoc(uc)
	local real shxishu = 1.
	local real shanghai = 0.
	set shanghai=ShangHaiGongShi(u,uc,90.,50.,shxishu,'A02M')
	call WuGongShangHai(u, uc, shanghai)
	call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(u),loc,bj_UNIT_FACING)
	call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddAbility(bj_lastCreatedUnit, 'A02P')
	if GetUnitAbilityLevel(u, 'A0DN') >= 1 then
		call IncUnitAbilityLevel(bj_lastCreatedUnit, 'A02P')
	endif
	call UnitAddAbility(bj_lastCreatedUnit, 'A02Q')
	if GetUnitAbilityLevel(u, 'A07T') >= 1 then
		call IncUnitAbilityLevel(bj_lastCreatedUnit, 'A02Q')
	endif
	call IssueTargetOrderById(bj_lastCreatedUnit, $D00DD, uc)
	call IssueTargetOrderById(bj_lastCreatedUnit, $D00B5, uc)
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',4.)
	call RemoveLocation(loc)
	set u = null
	set uc = null
	set loc = null
endfunction
function IsCanHeBeiDong takes nothing returns boolean
	return GetUnitAbilityLevel(GetAttacker(), 'A02V')>=1 and GetUnitAbilityLevel(GetAttacker(), 'A02M')>=1
endfunction
function CanHeBeiDong takes nothing returns nothing
	local unit u = GetAttacker()
	local unit uc = GetTriggerUnit()
	local location loc = GetUnitLoc(uc)
	if GetRandomInt(1, 100)<=10 then
		call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(u),loc,bj_UNIT_FACING)
		call ShowUnitHide(bj_lastCreatedUnit)
		call UnitAddAbility(bj_lastCreatedUnit, 'A02O')
		if GetUnitAbilityLevel(u, 'A06H') >= 1 then
			call IncUnitAbilityLevel(bj_lastCreatedUnit, 'A02O')
		endif
		call IssueTargetOrderById(bj_lastCreatedUnit, $D0097, uc)
		call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
	endif
	call RemoveLocation(loc)
	set u = null
	set uc = null
	set loc = null
endfunction
//真·星移斗转
function IsXingYi takes nothing returns boolean
	return GetSpellAbilityId()=='A02R'
endfunction
function XingYiDouZhuan_1 takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local unit uc = LoadUnitHandle(YDHT, GetHandleId(t), 1)
	local real r = 5.
	local real percent = GetUnitLifePercent(uc)
	if GetUnitAbilityLevel(u, 'A07Q')>=1 then
		set r = 10.
	endif
	if LoadBoolean(YDHT, GetHandleId(u), 10002) then
		if GetUnitLifePercent(u) <= percent - r then
			//call WuDi(uc)
			call SetUnitLifePercentBJ(uc, percent - r)
		else
			if GetUnitLifePercent(u) <= percent then
				//call WuDi(uc)
				if percent > r/2 then
					call SetUnitLifePercentBJ(uc, RMinBJ(GetUnitLifePercent(u), percent - r/2))
				else
					call SetWidgetLife(uc, 1.)
				endif
			else
				//call WuDi(uc)
				if percent > 2. then
					call SetUnitLifePercentBJ(uc, percent - 2.)
				else
					call SetWidgetLife(uc, 1.)
				endif
			endif
		endif
	else
		call UnitRemoveAbility(u, 'A02T')
		call PauseTimer(t)
		call DestroyTimer(t)
		call FlushChildHashtable(YDHT, GetHandleId(t))
	endif
	set t = null
	set u = null
	set uc = null
endfunction
function XingYiDouZhuan takes nothing returns nothing
	local timer t = CreateTimer()
	call WuGongShengChong(GetTriggerUnit(),'A02R',120)
	call SaveBoolean(YDHT, GetHandleId(GetTriggerUnit()), 10002, true)
	call SaveUnitHandle(YDHT, GetHandleId(t), 0, GetTriggerUnit())
	call SaveUnitHandle(YDHT, GetHandleId(t), 1, GetSpellTargetUnit())
	call TimerStart(t, 0.3, true, function XingYiDouZhuan_1)
	if GetUnitAbilityLevel(GetTriggerUnit(), 'A07Q')>=1 then
		call UnitAddAbilityBJ( 'A02T', GetTriggerUnit() )
    	call SetPlayerAbilityAvailableBJ( false, 'A02T', GetOwningPlayer(GetTriggerUnit()) )
	endif
	set t = null
endfunction
function IsXingYi_2 takes nothing returns boolean
	return GetSpellAbilityId()=='A02R'
endfunction
function XingYiDouZhuan_2 takes nothing returns nothing
	//call BJDebugMsg("到这了")
	call SaveBoolean(YDHT, GetHandleId(GetTriggerUnit()), 10002, false)
endfunction
function IsXingYiBeiDong takes nothing returns boolean
	return LoadBoolean(YDHT, GetHandleId(GetTriggerUnit()), 10002)
endfunction
function XingYiBeiDong takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local unit uc = GetAttacker()
	local location loc = GetUnitLoc(uc)
	local real shxishu = 1.
	local real shanghai = 0.
	if GetUnitAbilityLevel(u, 'A07W') >= 1 then
		call AddSpecialEffectLocBJ(loc,"Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl")
		call DestroyEffect(bj_lastCreatedEffect)
		set shanghai=ShangHaiGongShi(u,uc,50.,50.,shxishu,'A02R')
		call WuGongShangHai(u,uc,shanghai)
	endif
	if GetUnitAbilityLevel(u, 'A071') >= 1 then
		call WanBuff(u, uc, 1)
	endif
	call RemoveLocation(loc)
	set u = null
	set uc = null
	set loc = null
endfunction

//慕容家训
function IsJiaXun takes nothing returns boolean
	return GetSpellAbilityId()=='A02V'
endfunction
function JiaXun takes nothing returns nothing
	call WuGongShengChong(GetTriggerUnit(), 'A02V', 300)
endfunction
function MuRongJia_Trigger takes nothing returns nothing
	local trigger t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsJiaChuan))
	call TriggerAddAction(t,function JiaChuanJian)
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t, Condition(function IsXiuZhong))
	call TriggerAddAction(t,function XiuZhongZhi)
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsCanHe))
	call TriggerAddAction(t,function CanHeZhi)
	set t = CreateTrigger()
    call YDWESyStemAnyUnitDamagedRegistTrigger( t )
    call TriggerAddCondition(t, Condition(function IsCanHeMaJia))
    call TriggerAddAction(t, function CanHeMaJia)
    set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t, Condition(function IsCanHeBeiDong))
	call TriggerAddAction(t,function CanHeBeiDong)
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsXingYi))
	call TriggerAddAction(t,function XingYiDouZhuan)
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_ENDCAST)
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_FINISH)
	call TriggerAddCondition(t,Condition(function IsXingYi_2))
	call TriggerAddAction(t,function XingYiDouZhuan_2)
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t, Condition(function IsXingYiBeiDong))
	call TriggerAddAction(t,function XingYiBeiDong)
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsJiaXun))
	call TriggerAddAction(t,function JiaXun)
	set t =null
endfunction
