--------桃花岛系统------//
function IsTaoHua()
	return GetItemTypeId(GetManipulatedItem()) == 1227897171 or GetItemTypeId(GetManipulatedItem()) == 1227899187
end
function TaoHuaDao()
	if GetItemTypeId(GetManipulatedItem()) == 1227897171 then
		if taohuakai == true or udg_xbdsbool[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == true then
			if IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil then -- INLINED!!
				SetUnitPosition(GetTriggerUnit(), 9631, 1139)
				PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()), 9631, 1139, 0)
				DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFFCC00有玩家进入桃花岛")
				DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFFCC00”源思英年,巴巴西洛普,雪陆文出；源思英年,巴巴西洛普,雪陆文出！“")
			else
				AdjustPlayerStateBJ(500, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
			end
		else
			DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFFCC00桃花岛尚未开放")
			AdjustPlayerStateBJ(500, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227899187 then
		if IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil then -- INLINED!!
			SetUnitPosition(GetTriggerUnit(), 12800, -14800)
			PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()), 12800, -14800, 0)
			DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFFCC00有玩家去救火")
		else
			AdjustPlayerStateBJ(200000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
		end
	end
end
function TaoKaiFang()
	local t = GetExpiredTimer()
	local r = Rect(8800, -4500, 14300, 4500)
	local l__rg = CreateRegion()
	local i = 0
	local td = LoadTimerDialogHandle(YDHT, GetHandleId(t), 0)
	taohuakai = false
	RegionAddRect(l__rg, r)
	i = 1
	for _ in _loop_() do
		if i >= 6 then break end
		if IsUnitInRegion(l__rg, udg_hero[i]) then
			SetUnitPosition(udg_hero[i], -1174, -678)
			PanCameraToTimedForPlayer(GetOwningPlayer(udg_hero[i]), -1174, -678, 0)
			DisplayTextToPlayer(GetOwningPlayer(udg_hero[i]), 0, 0, "|cFFFFCC00时间到，离开桃花岛")
		end
		i = i + 1
	end
	DestroyTimerDialog(td)
	PauseTimer(t)
	DestroyTimer(t)
	RemoveRegion(l__rg)
	RemoveRect(r)
	r = nil
	l__rg = nil
	t = nil
	td = nil
end
function TaoHuaKaiFang()
	local t = GetExpiredTimer()
	local tm = CreateTimer()
	local td = LoadTimerDialogHandle(YDHT, GetHandleId(t), 0)
	taohuakai = true
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFCC00桃花岛已开放，你可以由正派武林右侧NPC我是随风处进入")
	PingMinimapForForce(GetPlayersAll(), 9631, 1139, 5)
	TimerStart(tm, 600, false, TaoKaiFang)
	--call TimerStart(tm,60,false,function TaoKaiFang)
	CreateTimerDialogBJ(tm, "桃花岛关闭倒计时：")
	TimerDialogDisplay(bj_lastCreatedTimerDialog, true)
	SaveTimerDialogHandle(YDHT, GetHandleId(tm), 0, bj_lastCreatedTimerDialog)
	DestroyTimerDialog(td)
	PauseTimer(t)
	DestroyTimer(t)
	t = nil
	tm = nil
	td = nil
end
function TaoHuaDaoKaiFang()
	local t = CreateTimer()
	TimerStart(t, 1800, false, TaoHuaKaiFang)
	--call TimerStart(t,20,false,function TaoHuaKaiFang)
	CreateTimerDialogBJ(t, "桃花岛开放倒计时：")
	TimerDialogDisplay(bj_lastCreatedTimerDialog, true)
	SaveTimerDialogHandle(YDHT, GetHandleId(t), 0, bj_lastCreatedTimerDialog)
	t = nil
end
function TaoHuaGun()
	local u = GetKillingUnit()
	--call BJDebugMsg("出现了么A")
	--set lh_r=Rect(8800,-4500,14300,4500)
	if RectContainsUnit(rect_peach_blossom_island, u) then
		--call BJDebugMsg("出现了么B")
		if GetUnitTypeId(GetTriggerUnit()) == 1865429553 or GetUnitTypeId(GetTriggerUnit()) == 1865429554 or GetUnitTypeId(GetTriggerUnit()) == 1853320818 or GetUnitTypeId(GetTriggerUnit()) == 1869050475 or GetUnitTypeId(GetTriggerUnit()) == 1853058150 or GetUnitTypeId(GetTriggerUnit()) == 1848651841 or GetUnitTypeId(GetTriggerUnit()) == 1848651844 then
			SetUnitPosition(u, -1174, -678)
			PanCameraToTimedForPlayer(GetOwningPlayer(u), -1174, -678, 0)
			DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|cFFFFCC00有玩家杀死了" .. (GetUnitName(GetTriggerUnit()) or "") .. "，离开桃花岛")
			if GetUnitTypeId(GetTriggerUnit()) == 1869050475 and (GetRandomInt(1, 100) <= 30 or GetRandomInt(1, 100) <= 50 and udg_xbdsbool[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == true) then
				unitadditembyidswapped(1227899185, u)
			end
			if GetUnitTypeId(GetTriggerUnit()) == 1853058150 and (GetRandomInt(1, 100) <= 30 or GetRandomInt(1, 100) <= 50 and udg_xbdsbool[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == true) then
				unitadditembyidswapped(1227897154, u)
			end
			if GetUnitTypeId(GetTriggerUnit()) == 1853320818 and (GetRandomInt(1, 100) <= 30 or GetRandomInt(1, 100) <= 50 and udg_xbdsbool[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == true) then
				unitadditembyidswapped(1227897143, u)
			end
			if GetUnitTypeId(GetTriggerUnit()) == 1865429553 and (GetRandomInt(1, 100) <= 30 or GetRandomInt(1, 100) <= 50 and udg_xbdsbool[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == true) then
				unitadditembyidswapped(1227896375, u)
			end
			if GetUnitTypeId(GetTriggerUnit()) == 1865429554 and (GetRandomInt(1, 100) <= 30 or GetRandomInt(1, 100) <= 50 and udg_xbdsbool[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == true) then
				unitadditembyidswapped(1227896369, u)
			end
			if GetUnitTypeId(GetTriggerUnit()) == 1848651841 and (GetRandomInt(1, 100) <= 30 or GetRandomInt(1, 100) <= 50 and udg_xbdsbool[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == true) then
				unitadditembyidswapped(1227896368, u)
			end
			if GetUnitTypeId(GetTriggerUnit()) == 1848651844 and (GetRandomInt(1, 100) <= 60 or GetRandomInt(1, 100) <= 100 and udg_xbdsbool[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == true) then
				unitadditembyidswapped(1227897159, u)
			end
		end
	end
	u = nil
end
function TaoHua_Condition()
	return GetOwningPlayer(GetTriggerUnit()) == Player(15) and (GetUnitTypeId(GetTriggerUnit()) == 1865429554 or GetUnitTypeId(GetTriggerUnit()) == 1865429553 or GetUnitTypeId(GetTriggerUnit()) == 1853320818 or GetUnitTypeId(GetTriggerUnit()) == 1869050475 or GetUnitTypeId(GetTriggerUnit()) == 1853058150 or GetUnitTypeId(GetTriggerUnit()) == 1848651841)
end
function TaoHua_Action()
	SetUnitOwner(GetTriggerUnit(), Player(12), true)
	UnitAddAbility(GetTriggerUnit(), 1093678934)
	UnitAddAbility(GetTriggerUnit(), 1093678153)
	UnitAddAbility(GetTriggerUnit(), 1093678155)
end
function OuYangFeng_Condition()
	return RectContainsUnit(rect_peach_blossom_island, GetTriggerUnit()) and GetUnitTypeId(GetTriggerUnit()) == 1853058150 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker())) and (UnitHasBuffBJ(GetTriggerUnit(), 1113813609) or UnitHasBuffBJ(GetTriggerUnit(), 1113813619) or UnitHasBuffBJ(GetTriggerUnit(), 1112437615))
end
function OuYangFeng_Action()
	local loc = GetUnitLoc(GetTriggerUnit())
	KillUnit(GetTriggerUnit())
	CreateNUnitsAtLoc(1, 1848651844, GetOwningPlayer(GetTriggerUnit()), loc, bj_UNIT_FACING)
	RemoveLocation(loc)
	loc = nil
end
function HongQiGong_Condition()
	return RectContainsUnit(rect_peach_blossom_island, GetTriggerUnit()) and GetUnitTypeId(GetTriggerUnit()) == 1853320818 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker())) and (UnitHasBuffBJ(GetTriggerUnit(), 1111847784) or UnitHasBuffBJ(GetTriggerUnit(), 1112109154) or UnitHasBuffBJ(GetTriggerUnit(), 1112109156))
end
function HongQiGong_Action()
	KillUnit(GetTriggerUnit())
	ShowUnitShow(gg_unit_n00E_0066)
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFCC00洪七公已中毒，现正在某处疗伤")
end
--------桃花岛系统结束------//
function TaoHuaDao_Trigger()

	local t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(IsTaoHua))
	TriggerAddAction(t, TaoHuaDao)
	t = CreateTrigger()
	TriggerRegisterTimerEventPeriodic(t, 2400.0)
	TriggerAddAction(t, TaoHuaDaoKaiFang)
	t = CreateTrigger()
	TriggerRegisterPlayerUnitEventSimple(t, Player(12), EVENT_PLAYER_UNIT_DEATH)
	TriggerAddAction(t, TaoHuaGun)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(TaoHua_Condition))
	TriggerAddAction(t, TaoHua_Action)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(OuYangFeng_Condition))
	TriggerAddAction(t, OuYangFeng_Action)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(HongQiGong_Condition))
	TriggerAddAction(t, HongQiGong_Action)
	t = nil
end