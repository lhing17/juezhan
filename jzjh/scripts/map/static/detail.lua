------------------------------------------------
--游戏细节处理——一般情况下不需要修改
------------------------------------------------
function IsOrderMoveOrPatrol()
	return GetPlayerController(GetOwningPlayer(GetOrderedUnit())) == MAP_CONTROL_USER and (GetIssuedOrderId() == 851986 or GetIssuedOrderId() == 851990)
end
--用移动模拟攻击、巡逻模拟移动 对地面
function ImitateAttackAndMove()
	udg_loc1 = GetOrderPointLoc()
	if GetIssuedOrderId() == 851986 then
		IssuePointOrderByIdLoc(GetOrderedUnit(), 851983, udg_loc1)
	else
		if GetIssuedOrderId() == 851990 then
			IssuePointOrderByIdLoc(GetOrderedUnit(), 851986, udg_loc1)
		end
	end
	RemoveLocation(udg_loc1)
end
--右键点击己方单位
function IsRightClickOnAlly()
	return GetPlayerController(GetOwningPlayer(GetOrderedUnit())) == MAP_CONTROL_USER and IsPlayerAlly(GetOwningPlayer(GetOrderedUnit()), GetOwningPlayer(GetOrderTargetUnit())) and GetIssuedOrderId() == 851971
end
function GiveUpAttack()
	udg_loc1 = GetUnitLoc(GetOrderTargetUnit())
	IssuePointOrderByIdLoc(GetOrderedUnit(), 851971, udg_loc1)
	RemoveLocation(udg_loc1)
end
--用移动模拟攻击 对点
function IsOrderMoveToPoint()
	return GetPlayerController(GetOwningPlayer(GetOrderedUnit())) == MAP_CONTROL_USER and GetIssuedOrderId() == 851986
end
function ImitateAttackToPoint()
	IssueTargetOrderById(GetOrderedUnit(), 851983, GetOrderTargetUnit())
end
--优化速度加快
function Optimize()
	Cheat("DooConV")
	print("优化执行了一次")
end
--友方单位A基地
function IsAttackBasement()
	return GetTriggerUnit() == udg_ZhengPaiWL and IsUnitAlly(GetAttacker(), Player(5))
end
function GiveUpAttackBasement()
	IssueImmediateOrderById(GetAttacker(), 851972)
end
function ForceAnAttackerAttackBasement()
	IssuePointOrderByIdLoc(GetEnumUnit(), 851983, v7[4])
end
function ForceAttackersAttackBasement()
	ForGroupBJ(w7, ForceAnAttackerAttackBasement)
end
function GameDetail_Trigger()
	local t = CreateTrigger()
	--用移动模拟攻击、巡逻模拟移动 对地面
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
	TriggerAddCondition(t, Condition(IsOrderMoveOrPatrol))
	TriggerAddAction(t, ImitateAttackAndMove)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
	TriggerAddCondition(t, Condition(IsRightClickOnAlly))
	TriggerAddAction(t, GiveUpAttack)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
	TriggerAddCondition(t, Condition(IsOrderMoveToPoint))
	TriggerAddAction(t, ImitateAttackToPoint)
	-- 友方单位A基地
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsAttackBasement))
	TriggerAddAction(t, GiveUpAttackBasement)
	-- 让怪A基地
	t = CreateTrigger()
	TriggerRegisterTimerEventPeriodic(t, 5.0)
	TriggerAddAction(t, ForceAttackersAttackBasement)
	-- 游戏优化
	t = CreateTrigger()
	TriggerRegisterTimerEventSingle(t, 0.0)
	TriggerAddAction(t, Optimize)
	t = nil
end