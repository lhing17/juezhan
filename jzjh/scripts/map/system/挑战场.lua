function IsTiaoZhan()
	local p = GetOwningPlayer(GetTriggerUnit())
	local i = 1 + GetPlayerId(p)
	if GetItemTypeId(GetManipulatedItem()) == 1227897167 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) then
		return true
	end
	return false
end
function TiaoZhan()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if udg_tiaozhanguai ~= nil then
		DisplayTimedTextToPlayer(p, 0, 0, 15, "|cFFFFFF00挑战场正在使用中，请耐心等待")
		AdjustPlayerStateBJ(100000, p, PLAYER_STATE_RESOURCE_GOLD)
	else
		if GetPlayerController(p) == MAP_CONTROL_USER and GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING then
			DialogClear(tiaozhanwho)
			DialogSetMessage(tiaozhanwho, "请选择要挑战的对象")
			if udg_tiaodugu[i] == false and GetUnitLevel(u) >= 90 then
				b_dugu = DialogAddButtonBJ(tiaozhanwho, "|cFF00CC00独孤求败")
			end
			if udg_tiaoxuedao[i] == false and GetUnitLevel(u) >= 90 then
				b_xuedaozu = DialogAddButtonBJ(tiaozhanwho, "|cFFCC0066血刀老祖")
			end
			if udg_tiaodamo[i] == false and GetUnitLevel(u) >= 90 then
				b_damozushi = DialogAddButtonBJ(tiaozhanwho, "|cFFCC0066达摩祖师")
			end
			b_ronglianlaozu = DialogAddButtonBJ(tiaozhanwho, "|cFFFF6600冯默风")
			if GetUnitLevel(u) >= 90 then
				b_zhucong = DialogAddButtonBJ(tiaozhanwho, "|cFFFF0000朱聪")
			end
			b_cancel = DialogAddButtonBJ(tiaozhanwho, "|cFFFFFF00取消")
			DialogDisplayBJ(true, tiaozhanwho, p)
		end
	end
	u = nil
	p = nil
end
function TiaoZhan_Action()
	local loc = Location(12156, -12021)
	local p = GetTriggerPlayer()
	local u = udg_hero[1 + GetPlayerId(p)]
	if GetClickedButton() == b_dugu then
		CreateNUnitsAtLoc(1, 1848651829, Player(12), loc, bj_UNIT_FACING)
		udg_tiaozhanguai = bj_lastCreatedUnit
		SetUnitPosition(u, 11459, -12021)
		PanCameraToTimedForPlayer(p, 11459, -12021, 0)
	end
	if GetClickedButton() == b_xuedaozu then
		CreateNUnitsAtLoc(1, 1865429335, Player(12), loc, bj_UNIT_FACING)
		udg_tiaozhanguai = bj_lastCreatedUnit
		SetUnitPosition(u, 11459, -12021)
		PanCameraToTimedForPlayer(p, 11459, -12021, 0)
	end
	if GetClickedButton() == b_damozushi then
		CreateNUnitsAtLoc(1, 1865429556, Player(12), loc, bj_UNIT_FACING)
		udg_tiaozhanguai = bj_lastCreatedUnit
		SetUnitPosition(u, 11459, -12021)
		PanCameraToTimedForPlayer(p, 11459, -12021, 0)
	end
	if GetClickedButton() == b_ronglianlaozu then
		CreateNUnitsAtLoc(1, 1865429334, Player(12), loc, bj_UNIT_FACING)
		udg_tiaozhanguai = bj_lastCreatedUnit
		SetUnitPosition(u, 11459, -12021)
		PanCameraToTimedForPlayer(p, 11459, -12021, 0)
	end
	if GetClickedButton() == b_zhucong then
		CreateNUnitsAtLoc(1, 1848651830, Player(12), loc, bj_UNIT_FACING)
		udg_tiaozhanguai = bj_lastCreatedUnit
		SetUnitPosition(u, 11459, -12021)
		PanCameraToTimedForPlayer(p, 11459, -12021, 0)
	end
	if GetClickedButton() == b_cancel then
		AdjustPlayerStateBJ(100000, p, PLAYER_STATE_RESOURCE_GOLD)
	end
	RemoveLocation(loc)
	loc = nil
	u = nil
	p = nil
end
function DiaoLuo()
	return IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetKillingUnit())) and (GetUnitTypeId(GetTriggerUnit()) == 1848651829 or GetUnitTypeId(GetTriggerUnit()) == 1865429335 or GetUnitTypeId(GetTriggerUnit()) == 1865429334 or GetUnitTypeId(GetTriggerUnit()) == 1848651830 or GetUnitTypeId(GetTriggerUnit()) == 1865429556)
end
function DiaoLuo_Action()
	local loc = GetUnitLoc(GetTriggerUnit())
	local i = 0
	if GetUnitTypeId(GetTriggerUnit()) == 1848651829 then
		CreateItemLoc(1227897169, loc)
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFF00CC00" .. (GetPlayerName(GetOwningPlayer(GetKillingUnit())) or "") .. "杀死了独孤求败，获得了武魂石")
		--call SaveInteger(YDHT,GetHandleId(bj_lastCreatedItem),0,25000)
		i = 1
		for _ in _loop_() do
			if i >= 6 then break end
			udg_tiaodugu[i] = true
			i = i + 1
		end
		udg_tiaozhanguai = nil
	elseif GetUnitTypeId(GetTriggerUnit()) == 1865429335 then
		CreateItemLoc(1227897144, loc)
		SaveInteger(YDHT, GetHandleId(bj_lastCreatedItem), 0, 25000)
		udg_tiaoxuedao[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] = true
		udg_tiaozhanguai = nil
	elseif GetUnitTypeId(GetTriggerUnit()) == 1865429556 then
		CreateItemLoc(1227899212, loc)
		udg_tiaodamo[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] = true
		udg_tiaozhanguai = nil
	elseif GetUnitTypeId(GetTriggerUnit()) == 1865429334 then
		CreateItemLoc(1227897168, loc)
		udg_tiaozhanguai = nil
	elseif GetUnitTypeId(GetTriggerUnit()) == 1848651830 then
		if GetRandomInt(0, 100) <= 30 then
			CreateItemLoc(1227897178, loc)
		else
			CreateItemLoc(1227896395, loc)
		end
		udg_tiaozhanguai = nil
	end
	RemoveLocation(loc)
	loc = nil
end
--离开挑战区域挑战失败
function TiaoZhanShiBai()
	return IsUnitType(GetLeavingUnit(), UNIT_TYPE_HERO) and GetPlayerController(GetOwningPlayer(GetLeavingUnit())) == MAP_CONTROL_USER and udg_tiaozhanguai ~= nil
end
function TiaoZhanShiBai_Action()
	local u = GetLeavingUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	DisplayTimedTextToPlayer(p, 0, 0, 15, "|cFFFFFF00离开区域，挑战失败")
	if GetUnitTypeId(udg_tiaozhanguai) == 1848651829 then
		udg_tiaodugu[i] = true
	end
	if GetUnitTypeId(udg_tiaozhanguai) == 1865429335 then
		udg_tiaoxuedao[i] = true
	end
	RemoveUnit(udg_tiaozhanguai)
	udg_tiaozhanguai = nil
	u = nil
	p = nil
end
function TiaoZhan_Trigger()
	local t = CreateTrigger()
	local i = 0
	i = 1
	for _ in _loop_() do
		if i >= 6 then break end
		udg_tiaoxuedao[i] = false
		udg_tiaodugu[i] = false
		udg_tiaodamo[i] = false
		i = i + 1
	end
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(IsTiaoZhan))
	TriggerAddAction(t, TiaoZhan)
	t = CreateTrigger()
	TriggerRegisterDialogEvent(t, tiaozhanwho)
	TriggerAddAction(t, TiaoZhan_Action)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(DiaoLuo))
	TriggerAddAction(t, DiaoLuo_Action)
	-- 离开挑战区挑战失败
	t = CreateTrigger()
	YDWETriggerRegisterLeaveRectSimpleNull(t, udg_tiaozhanqu)
	TriggerAddCondition(t, Condition(TiaoZhanShiBai))
	TriggerAddAction(t, TiaoZhanShiBai_Action)
	t = nil
end