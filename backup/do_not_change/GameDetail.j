//----------------------------------------------
//游戏细节处理——一般情况下不需要修改
//----------------------------------------------


function IsOrderMoveOrPatrol takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetOrderedUnit()))==MAP_CONTROL_USER)and((GetIssuedOrderId()==$D0012)or(GetIssuedOrderId()==$D0016)))
endfunction
//用移动模拟攻击、巡逻模拟移动 对地面
function ImitateAttackAndMove takes nothing returns nothing
	set udg_loc1=GetOrderPointLoc()
	if((GetIssuedOrderId()==$D0012))then
		call IssuePointOrderByIdLoc(GetOrderedUnit(),$D000F,udg_loc1)
	else
		if((GetIssuedOrderId()==$D0016))then
			call IssuePointOrderByIdLoc(GetOrderedUnit(),$D0012,udg_loc1)
		endif
	endif
	call RemoveLocation(udg_loc1)
endfunction
//右键点击己方单位
function IsRightClickOnAlly takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetOrderedUnit()))==MAP_CONTROL_USER)and(IsPlayerAlly(GetOwningPlayer(GetOrderedUnit()),GetOwningPlayer(GetOrderTargetUnit())))and(GetIssuedOrderId()==$D0003))
endfunction
function GiveUpAttack takes nothing returns nothing
	set udg_loc1=GetUnitLoc(GetOrderTargetUnit())
	call IssuePointOrderByIdLoc(GetOrderedUnit(),$D0003,udg_loc1)
	call RemoveLocation(udg_loc1)
endfunction
//用移动模拟攻击 对点
function IsOrderMoveToPoint takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetOrderedUnit()))==MAP_CONTROL_USER)and(GetIssuedOrderId()==$D0012))
endfunction
function ImitateAttackToPoint takes nothing returns nothing
	call IssueTargetOrderById(GetOrderedUnit(),$D000F,GetOrderTargetUnit())
endfunction
//优化速度加快
function Optimize takes nothing returns nothing
	call Cheat("DooConV")
endfunction

//友方单位A基地
function IsAttackBasement takes nothing returns boolean
	return((GetTriggerUnit()==udg_ZhengPaiWL)and(IsUnitAlly(GetAttacker(),Player(5))))
endfunction
function GiveUpAttackBasement takes nothing returns nothing
	call IssueImmediateOrderById(GetAttacker(),$D0004)
endfunction
function ForceAnAttackerAttackBasement takes nothing returns nothing
	call IssuePointOrderByIdLoc(GetEnumUnit(),$D000F,v7[4])
endfunction
function ForceAttackersAttackBasement takes nothing returns nothing
	call ForGroupBJ(w7,function ForceAnAttackerAttackBasement)
endfunction

function GameDetail_Trigger takes nothing returns nothing
	local trigger t = CreateTrigger()
	//用移动模拟攻击、巡逻模拟移动 对地面
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
	call TriggerAddCondition(t,Condition(function IsOrderMoveOrPatrol))
	call TriggerAddAction(t,function ImitateAttackAndMove)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
	call TriggerAddCondition(t,Condition(function IsRightClickOnAlly))
	call TriggerAddAction(t,function GiveUpAttack)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
	call TriggerAddCondition(t,Condition(function IsOrderMoveToPoint))
	call TriggerAddAction(t,function ImitateAttackToPoint)
	// 友方单位A基地
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsAttackBasement))
	call TriggerAddAction(t,function GiveUpAttackBasement)
	// 让怪A基地
	set t=CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(t,5.)
	call TriggerAddAction(t,function ForceAttackersAttackBasement)
	// 游戏优化
	set t=CreateTrigger()
	call TriggerRegisterTimerEventSingle(t,.0)
	call TriggerAddAction(t,function Optimize)
	set t = null
endfunction
