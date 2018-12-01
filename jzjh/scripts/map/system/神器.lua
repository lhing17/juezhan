--神器系统
--=====================================
--
--         神   器   系   统
--
--=====================================

function isKillArtifactCreature()
	return GetUnitTypeId(GetTriggerUnit()) == 1747988558 or GetUnitTypeId(GetTriggerUnit()) == 1848651859 or GetUnitTypeId(GetTriggerUnit()) == 1848651860 or GetUnitTypeId(GetTriggerUnit()) == 1848651861
end

function killArtifactCreature()
	local u = GetTriggerUnit()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))
	local l__ut = udg_hero[i]
	if GetUnitTypeId(u) == 1747988558 then --七绝圣手
		shengwang[1] = shengwang[1] + 100
		shengwang[2] = shengwang[2] + 100
		shengwang[3] = shengwang[3] + 100
		shengwang[4] = shengwang[4] + 100
		shengwang[5] = shengwang[5] + 100
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00ff00击杀七绝圣手，全员获得江湖声望+100")
		dropItem(l__ut, 1227895114, 1227899955, 50) --七绝护符或武学精要
	elseif GetUnitTypeId(u) == 1848651859 then --璇玑道长
		shengwang[1] = shengwang[1] + 200
		shengwang[2] = shengwang[2] + 200
		shengwang[3] = shengwang[3] + 200
		shengwang[4] = shengwang[4] + 200
		shengwang[5] = shengwang[5] + 200
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00ff00击杀璇玑道长，全员获得江湖声望+200")
		dropItem(l__ut, 1227895108, 1227899955, 50) --天璇护腕或武学精要
	elseif GetUnitTypeId(u) == 1848651860 then --木桑道人
		shengwang[1] = shengwang[1] + 300
		shengwang[2] = shengwang[2] + 300
		shengwang[3] = shengwang[3] + 300
		shengwang[4] = shengwang[4] + 300
		shengwang[5] = shengwang[5] + 300
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00ff00击杀七绝圣手，全员获得江湖声望+300")
		dropItem(l__ut, 1227894868, 1227899955, 50) --神行鞋或武学精要
	elseif GetUnitTypeId(u) == 1848651861 then --天王老子
		shengwang[1] = shengwang[1] + 400
		shengwang[2] = shengwang[2] + 400
		shengwang[3] = shengwang[3] + 400
		shengwang[4] = shengwang[4] + 400
		shengwang[5] = shengwang[5] + 400
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00ff00击杀七绝圣手，全员获得江湖声望+400")
		dropItem(l__ut, 1227894858, 1227899955, 50) --神迹戒或武学精要
	end
	u = nil
	l__ut = nil
end
--是否传送到爆神器怪所在区域
function isTransportToFindArtifact()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and (GetItemTypeId(GetManipulatedItem()) == 1227899738 or GetItemTypeId(GetManipulatedItem()) == 1227899952 or GetItemTypeId(GetManipulatedItem()) == 1227899953 or GetItemTypeId(GetManipulatedItem()) == 1227899954) -- INLINED!!
end
--传送到爆神器怪所在区域
function transportToFindArtifact()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if GetItemTypeId(GetManipulatedItem()) == 1227899738 then
		if xiuxing[i] < 2 then
			SetUnitPosition(udg_hero[i], -4864, -11137)
			PanCameraToTimedForPlayer(GetTriggerPlayer(), -4864, -11137, 0)
			DisplayTextToPlayer(p, 0, 0, "|CFF00ff33前往挑战七绝圣手")
		else
			DisplayTextToPlayer(p, 0, 0, "|CFF00ff33历练2后不能进行挑战")
		end
	end
	if GetItemTypeId(GetManipulatedItem()) == 1227899952 then
		if xiuxing[i] < 3 then
			SetUnitPosition(udg_hero[i], -4106, -12123)
			PanCameraToTimedForPlayer(GetTriggerPlayer(), -4106, -12123, 0)
			DisplayTextToPlayer(p, 0, 0, "|CFF00ff33前往挑战璇玑道长")
		else
			DisplayTextToPlayer(p, 0, 0, "|CFF00ff33历练3后不能进行挑战")
		end
	end
	if GetItemTypeId(GetManipulatedItem()) == 1227899953 then
		if xiuxing[i] < 5 then
			SetUnitPosition(udg_hero[i], -3267, -11156)
			PanCameraToTimedForPlayer(GetTriggerPlayer(), -3267, -11156, 0)
			DisplayTextToPlayer(p, 0, 0, "|CFF00ff33前往挑战木桑道人")
		else
			DisplayTextToPlayer(p, 0, 0, "|CFF00ff33历练5后不能进行挑战")
		end
	end
	if GetItemTypeId(GetManipulatedItem()) == 1227899954 then
		if xiuxing[i] < 6 then
			SetUnitPosition(udg_hero[i], -2319, -12132)
			PanCameraToTimedForPlayer(GetTriggerPlayer(), -2319, -12132, 0)
			DisplayTextToPlayer(p, 0, 0, "|CFF00ff33前往挑战天王老子")
		else
			DisplayTextToPlayer(p, 0, 0, "|CFF00ff33历练6后不能进行挑战")
		end
	end
	p = nil
	u = nil
end
-- 是否使用武学精要
function isUseWuXueJingYao()
	return GetItemTypeId(GetManipulatedItem()) == 1227899955
end
function useWuXueJingYao()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local j = 1
	if not (IsUnitType(u, UNIT_TYPE_HERO) ~= nil) then -- INLINED!!
		DisplayTextToPlayer(p, 0, 0, "|CFF00ff33只能由英雄使用！")
		UnitAddItemById(u, 1227899955)
		return
	end

	if jingyao_dialog[i] == nil then
		jingyao_dialog[i] = DialogCreate() -- 初始化对话框
	end
	DialogSetMessage(jingyao_dialog[i], "请选择要精修的武学！")
	if I7[(i - 1) * 20 + 1] ~= 1095067243 then
		DialogAddButtonBJ(jingyao_dialog[i], GetObjectName(I7[(i - 1) * 20 + 1]))
		jingyao_button1[i] = bj_lastCreatedButton
	end
	if I7[(i - 1) * 20 + 2] ~= 1095067243 then
		DialogAddButtonBJ(jingyao_dialog[i], GetObjectName(I7[(i - 1) * 20 + 2]))
		jingyao_button2[i] = bj_lastCreatedButton
	end
	if I7[(i - 1) * 20 + 3] ~= 1095067243 then
		DialogAddButtonBJ(jingyao_dialog[i], GetObjectName(I7[(i - 1) * 20 + 3]))
		jingyao_button3[i] = bj_lastCreatedButton
	end
	if I7[(i - 1) * 20 + 4] ~= 1095067243 then
		DialogAddButtonBJ(jingyao_dialog[i], GetObjectName(I7[(i - 1) * 20 + 4]))
		jingyao_button4[i] = bj_lastCreatedButton
	end
	if I7[(i - 1) * 20 + 5] ~= 1095067243 then
		DialogAddButtonBJ(jingyao_dialog[i], GetObjectName(I7[(i - 1) * 20 + 5]))
		jingyao_button5[i] = bj_lastCreatedButton
	end
	if I7[(i - 1) * 20 + 6] ~= 1095067243 then
		DialogAddButtonBJ(jingyao_dialog[i], GetObjectName(I7[(i - 1) * 20 + 6]))
		jingyao_button6[i] = bj_lastCreatedButton
	end
	if I7[(i - 1) * 20 + 7] ~= 1095067243 then
		DialogAddButtonBJ(jingyao_dialog[i], GetObjectName(I7[(i - 1) * 20 + 7]))
		jingyao_button7[i] = bj_lastCreatedButton
	end
	if I7[(i - 1) * 20 + 8] ~= 1095067243 then
		DialogAddButtonBJ(jingyao_dialog[i], GetObjectName(I7[(i - 1) * 20 + 8]))
		jingyao_button8[i] = bj_lastCreatedButton
	end
	if I7[(i - 1) * 20 + 9] ~= 1095067243 then
		DialogAddButtonBJ(jingyao_dialog[i], GetObjectName(I7[(i - 1) * 20 + 9]))
		jingyao_button9[i] = bj_lastCreatedButton
	end
	if I7[(i - 1) * 20 + 10] ~= 1095067243 then
		DialogAddButtonBJ(jingyao_dialog[i], GetObjectName(I7[(i - 1) * 20 + 10]))
		jingyao_button10[i] = bj_lastCreatedButton
	end
	if I7[(i - 1) * 20 + 11] ~= 1095067243 then
		DialogAddButtonBJ(jingyao_dialog[i], GetObjectName(I7[(i - 1) * 20 + 11]))
		jingyao_button11[i] = bj_lastCreatedButton
	end
	DialogAddButtonBJ(jingyao_dialog[i], "取消")
	jingyao_button_cancel[i] = bj_lastCreatedButton
	DialogDisplay(p, jingyao_dialog[i], true)
	u = nil
	p = nil
end
-- 精修武学
function deepLearnSkill(p, num)
	local i = 1 + GetPlayerId(p)
	SaveReal(YDHT, GetHandleId(p), I7[(i - 1) * 20 + num] * 12, LoadReal(YDHT, GetHandleId(p), I7[(i - 1) * 20 + num] * 12) + 0.5)
	DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|CFFFF9933成功精修武学：" .. (GetObjectName(I7[(i - 1) * 20 + num]) or ""))
end
-- 选择要精修的武学
function chooseDeepLearnSkill()
	local p = GetTriggerPlayer()
	local i = 1 + GetPlayerId(p)
	if GetClickedButton() == jingyao_button1[i] then
		deepLearnSkill(p, 1)
	elseif GetClickedButton() == jingyao_button2[i] then
		deepLearnSkill(p, 2)
	elseif GetClickedButton() == jingyao_button3[i] then
		deepLearnSkill(p, 3)
	elseif GetClickedButton() == jingyao_button4[i] then
		deepLearnSkill(p, 4)
	elseif GetClickedButton() == jingyao_button5[i] then
		deepLearnSkill(p, 5)
	elseif GetClickedButton() == jingyao_button6[i] then
		deepLearnSkill(p, 6)
	elseif GetClickedButton() == jingyao_button7[i] then
		deepLearnSkill(p, 7)
	elseif GetClickedButton() == jingyao_button8[i] then
		deepLearnSkill(p, 8)
	elseif GetClickedButton() == jingyao_button9[i] then
		deepLearnSkill(p, 9)
	elseif GetClickedButton() == jingyao_button10[i] then
		deepLearnSkill(p, 10)
	elseif GetClickedButton() == jingyao_button11[i] then
		deepLearnSkill(p, 11)
	elseif GetClickedButton() == jingyao_button_cancel[i] then
		UnitAddItemById(udg_hero[i], 1227899955)
	end
	DialogClear(jingyao_dialog[i])
	p = nil
end

function ArtifactTrigger()
	-- 击杀爆神器的怪
	local t = CreateTrigger()
	jingyao_dialog[1] = DialogCreate()
	jingyao_dialog[2] = DialogCreate()
	jingyao_dialog[3] = DialogCreate()
	jingyao_dialog[4] = DialogCreate()
	jingyao_dialog[5] = DialogCreate()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(isKillArtifactCreature))
	TriggerAddAction(t, killArtifactCreature)

	-- 传送到爆神器怪所在区域
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(isTransportToFindArtifact))
	TriggerAddAction(t, transportToFindArtifact)

	-- 使用武学精要
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(t, Condition(isUseWuXueJingYao))
	TriggerAddAction(t, useWuXueJingYao)

	-- 选择要精修的武学
	t = CreateTrigger()
	TriggerRegisterDialogEvent(t, jingyao_dialog[1])
	TriggerRegisterDialogEvent(t, jingyao_dialog[2])
	TriggerRegisterDialogEvent(t, jingyao_dialog[3])
	TriggerRegisterDialogEvent(t, jingyao_dialog[4])
	TriggerRegisterDialogEvent(t, jingyao_dialog[5])
	TriggerAddAction(t, chooseDeepLearnSkill)
	t = nil
end