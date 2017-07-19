//-----------------------
//游戏细节处理——一般情况下不需要修改
//-----------------------
function rx takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetOrderedUnit()))==MAP_CONTROL_USER)and((GetIssuedOrderId()==$D0012)or(GetIssuedOrderId()==$D0016)))
endfunction
//用移动模拟攻击、巡逻模拟移动 对地面
function sx takes nothing returns nothing
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
function uuxx takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetOrderedUnit()))==MAP_CONTROL_USER)and(IsPlayerAlly(GetOwningPlayer(GetOrderedUnit()),GetOwningPlayer(GetOrderTargetUnit())))and(GetIssuedOrderId()==$D0003))
endfunction
function vvxx takes nothing returns nothing
	set udg_loc1=GetUnitLoc(GetOrderTargetUnit())
	call IssuePointOrderByIdLoc(GetOrderedUnit(),$D0003,udg_loc1)
	call RemoveLocation(udg_loc1)
endfunction
//用移动模拟攻击 对点
function xx takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetOrderedUnit()))==MAP_CONTROL_USER)and(GetIssuedOrderId()==$D0012))
endfunction
function yx takes nothing returns nothing
	call IssueTargetOrderById(GetOrderedUnit(),$D000F,GetOrderTargetUnit())
endfunction
//优化速度加快
function Ax takes nothing returns nothing
	call Cheat("DooConV")
endfunction

//友方单位A基地
function Ux takes nothing returns boolean
	return((GetTriggerUnit()==udg_ZhengPaiWL)and(IsUnitAlly(GetAttacker(),Player(5))))
endfunction
function Vx takes nothing returns nothing
	call IssueImmediateOrderById(GetAttacker(),$D0004)
endfunction
function ga takes nothing returns nothing
	call IssuePointOrderByIdLoc(GetEnumUnit(),$D000F,v7[4])
endfunction
function ha takes nothing returns nothing
	call ForGroupBJ(w7,function ga)
endfunction

function GameDetail_trigger takes nothing returns nothing
	local trigger t = CreateTrigger()
	//用移动模拟攻击、巡逻模拟移动 对地面
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
	call TriggerAddCondition(t,Condition(function rx))
	call TriggerAddAction(t,function sx)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
	call TriggerAddCondition(t,Condition(function uuxx))
	call TriggerAddAction(t,function vvxx)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
	call TriggerAddCondition(t,Condition(function xx))
	call TriggerAddAction(t,function yx)
	// 友方单位A基地
	set ei=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ei,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(ei,Condition(function Ux))
	call TriggerAddAction(ei,function Vx)
	// 让怪A基地
	set kj=CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(kj,5.)
	call TriggerAddAction(kj,function ha)
	set t = null
endfunction
