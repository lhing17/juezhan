
--===============najitest===============
unitnumber_lh = 0
createdunitnumber_lh = 0
StringList_naji = nil
Sdummy_naji = _array_()
Ttest_naji = _array_()
Ptest_naji = nil
Ihandle_naji = nil
Ibm_naji = nil
Itrigger_naji = nil
Iquest_naji = nil
Iweather_naji = nil
Bfog_naji = nil
Bpause_naji = nil
Bxy_naji = nil
Bid_naji = nil
Bir_naji = nil
Bcamera_naji = _array_(false)
Bpn_naji = nil
Bddm_naji = nil
Dnaji_naji = _array_()
Button_naji = _array_()
Rhandle_naji = nil
Rdummy_naji = nil
Rcamera_naji = _array_(0.0)
Rworld_naji = nil
Gcd_naji = _array_()
Guw_naji = nil
Gms_naji = nil
Q_naji = _array_()
Tcamera_naji = nil
Tbm_naji = _array_()
Weather_naji = _array_()
--===============najitest===============
--===============najitest===============
--=====================================@共用函数开始=====================================
function ID2S_naji(i_naji)
	local z_naji
	local n_naji = 0
	Sdummy_naji[100] = ""
	if Bid_naji == false then
		return Sdummy_naji[100]
	end
	if i_naji ~= 0 then
		for _ in _loop_() do
			z_naji = i_naji - i_naji // 256 * 256
			i_naji = i_naji // 256
			Sdummy_naji[100] = (SubString(StringList_naji, z_naji, z_naji + 1) or "") .. (Sdummy_naji[100] or "")
			n_naji = n_naji + 1
			if n_naji == 4 then break end
		end
		Sdummy_naji[100] = "'" .. (Sdummy_naji[100] or "") .. "'"
	else
		Sdummy_naji[100] = "null"
	end
	return Sdummy_naji[100]
end
function S2ID_naji(s_naji)
	local l_naji = StringLength(s_naji)
	local i_naji = 0
	local z_naji = 0
	local n_naji = 1
	local result_naji = 0
	for _ in _loop_() do
		if z_naji > l_naji - 1 then break end
		n_naji = R2I(Pow(256, l_naji - 1 - z_naji))
		i_naji = 1
		for _ in _loop_() do
			if i_naji > 255 then break end
			if SubString(s_naji, z_naji, z_naji + 1) == SubString(StringList_naji, i_naji, i_naji + 1) then
				result_naji = result_naji + i_naji * n_naji
				i_naji = 256
			end
			i_naji = i_naji + 1
		end
		z_naji = z_naji + 1
	end
	return result_naji
end
function IDidentify_naji(i_naji)
	local l_naji
	local a_naji = 0
	local z_naji
	local n_naji = 0
	local result = 0
	Sdummy_naji[100] = ""
	if i_naji ~= 0 then
		for _ in _loop_() do
			z_naji = i_naji - i_naji // 256 * 256
			i_naji = i_naji // 256
			Sdummy_naji[100] = (SubString(StringList_naji, z_naji, z_naji + 1) or "") .. (Sdummy_naji[100] or "")
			n_naji = n_naji + 1
			if n_naji == 4 then break end
		end
	else
		Sdummy_naji[100] = "null"
		return Sdummy_naji[100]
	end
	l_naji = StringLength(Sdummy_naji[100])
	n_naji = 1
	z_naji = 0
	for _ in _loop_() do
		if z_naji > l_naji - 1 then break end
		n_naji = R2I(Pow(256, l_naji - 1 - z_naji))
		a_naji = 1
		for _ in _loop_() do
			if a_naji > 255 then break end
			if SubString(Sdummy_naji[100], z_naji, z_naji + 1) == SubString(StringList_naji, a_naji, a_naji + 1) then
				result = result + a_naji * n_naji
				a_naji = 256
			end
			a_naji = a_naji + 1
		end
		z_naji = z_naji + 1
	end
	return GetObjectName(result)
end
function Distance_naji(x1_naji, y1_naji, x2_naji, y2_naji)
	return SquareRoot((y2_naji - y1_naji) * (y2_naji - y1_naji) + (x2_naji - x1_naji) * (x2_naji - x1_naji))
end
function Angle_naji(x1_naji, y1_naji, x2_naji, y2_naji)
	local r_naji
	r_naji = 57.29582 * Atan2(y2_naji - y1_naji, x2_naji - x1_naji)
	if r_naji < 0 then
		return 360 + r_naji
	end
	return r_naji
end
function DialogResetA3_naji()
	DialogClear(Dnaji_naji[2])
	if IsMapFlagSet(MAP_OBSERVERS_ON_DEATH) then
		Button_naji[1] = DialogAddButton(Dnaji_naji[2], "|cff00FFFF失败时作为观看者|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F1）|r", 768)
	else
		Button_naji[1] = DialogAddButton(Dnaji_naji[2], "|cff00FFFF失败时作为观看者|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F1）|r", 768)
	end
	if IsMapFlagSet(MAP_LOCK_RESOURCE_TRADING) then
		Button_naji[2] = DialogAddButton(Dnaji_naji[2], "|cff00FFFF锁定资源交易|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F2）|r", 769)
	else
		Button_naji[2] = DialogAddButton(Dnaji_naji[2], "|cff00FFFF锁定资源交易|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F2）|r", 769)
	end
	if IsMapFlagSet(MAP_RESOURCE_TRADING_ALLIES_ONLY) then
		Button_naji[3] = DialogAddButton(Dnaji_naji[2], "|cff00FFFF限定盟友资源交易|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F3）|r", 770)
	else
		Button_naji[3] = DialogAddButton(Dnaji_naji[2], "|cff00FFFF限定盟友资源交易|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F3）|r", 770)
	end
	if IsMapFlagSet(MAP_LOCK_ALLIANCE_CHANGES) then
		Button_naji[4] = DialogAddButton(Dnaji_naji[2], "|cff00FFFF锁定联盟设置|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F4）|r", 771)
	else
		Button_naji[4] = DialogAddButton(Dnaji_naji[2], "|cff00FFFF锁定联盟设置|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F4）|r", 771)
	end
	if IsMapFlagSet(MAP_ALLIANCE_CHANGES_HIDDEN) then
		Button_naji[5] = DialogAddButton(Dnaji_naji[2], "|cff00FFFF隐藏联盟设置|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F5）|r", 772)
	else
		Button_naji[5] = DialogAddButton(Dnaji_naji[2], "|cff00FFFF隐藏联盟设置|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F5）|r", 772)
	end
	Button_naji[100] = DialogAddButton(Dnaji_naji[2], "|cff00FFFF取消|cff00FF00（Esc）|r", 512)
end
function DialogResetA2_naji()
	DialogClear(Dnaji_naji[1])
	if Bxy_naji then
		Button_naji[1] = DialogAddButton(Dnaji_naji[1], "|cff00FFFF坐标参数|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F1）|r", 768)
	else
		Button_naji[1] = DialogAddButton(Dnaji_naji[1], "|cff00FFFF坐标参数|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F1）|r", 768)
	end
	if Bid_naji then
		Button_naji[2] = DialogAddButton(Dnaji_naji[1], "|cff00FFFFID参数|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F2）|r", 769)
	else
		Button_naji[2] = DialogAddButton(Dnaji_naji[1], "|cff00FFFFID参数|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F2）|r", 769)
	end
	if Bpn_naji then
		Button_naji[3] = DialogAddButton(Dnaji_naji[1], "|cff00FFFF玩家名参数|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F3）|r", 770)
	else
		Button_naji[3] = DialogAddButton(Dnaji_naji[1], "|cff00FFFF玩家名参数|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F3）|r", 770)
	end
	if Bir_naji then
		Button_naji[4] = DialogAddButton(Dnaji_naji[1], "|cff00FFFF数值显示|cffFFFF00（当前状态：|cffFF0000整数|cffFFFF00）|cff00FF00（F4）|r", 771)
	else
		Button_naji[4] = DialogAddButton(Dnaji_naji[1], "|cff00FFFF数值显示|cffFFFF00（当前状态：|cffFF0000实数|cffFFFF00）|cff00FF00（F4）|r", 771)
	end
	if Bddm_naji then
		Button_naji[5] = DialogAddButton(Dnaji_naji[1], "|cff00FFFF伤害显示类型|cffFFFF00（当前状态：|cffFF0000游戏文本|cffFFFF00）|cff00FF00（F5）|r", 772)
	else
		Button_naji[5] = DialogAddButton(Dnaji_naji[1], "|cff00FFFF伤害显示类型|cffFFFF00（当前状态：|cffFF0000飘浮文字|cffFFFF00）|cff00FF00（F5）|r", 772)
	end
	Button_naji[0] = DialogAddButton(Dnaji_naji[1], "|cff00FFFF返回上一层|cff00FF00（space）|r", 32)
	Button_naji[100] = DialogAddButton(Dnaji_naji[1], "|cff00FFFF取消|cff00FF00（Esc）|r", 512)
end
function DialogResetA_naji()
	DialogClear(Dnaji_naji[0])
	if IsTriggerEnabled(Ttest_naji[2]) then
		Button_naji[1] = DialogAddButton(Dnaji_naji[0], "|cff00FFFF技能信息|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F1）|r", 768)
	else
		Button_naji[1] = DialogAddButton(Dnaji_naji[0], "|cff00FFFF技能信息|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F1）|r", 768)
	end
	if IsTriggerEnabled(Ttest_naji[15]) then
		Button_naji[2] = DialogAddButton(Dnaji_naji[0], "|cff00FFFF命令信息|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F2）|r", 769)
	else
		Button_naji[2] = DialogAddButton(Dnaji_naji[0], "|cff00FFFF命令信息|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F2）|r", 769)
	end
	if IsTriggerEnabled(Ttest_naji[17]) then
		Button_naji[3] = DialogAddButton(Dnaji_naji[0], "|cff00FFFF寿命信息|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F3）|r", 770)
	else
		Button_naji[3] = DialogAddButton(Dnaji_naji[0], "|cff00FFFF寿命信息|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F3）|r", 770)
	end
	if IsTriggerEnabled(Ttest_naji[26]) then
		Button_naji[4] = DialogAddButton(Dnaji_naji[0], "|cff00FFFF伤害信息|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F4）|r", 771)
	else
		Button_naji[4] = DialogAddButton(Dnaji_naji[0], "|cff00FFFF伤害信息|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F4）|r", 771)
	end
	if IsTriggerEnabled(Ttest_naji[4]) then
		Button_naji[5] = DialogAddButton(Dnaji_naji[0], "|cff00FFFF技能无冷却不耗魔|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F5）|r", 772)
	else
		Button_naji[5] = DialogAddButton(Dnaji_naji[0], "|cff00FFFF技能无冷却不耗魔|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F5）|r", 772)
	end
	if IsTriggerEnabled(Ttest_naji[71]) then
		Button_naji[8] = DialogAddButton(Dnaji_naji[0], "|cff00FFFF群体施法|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F6）|r", 773)
	else
		Button_naji[8] = DialogAddButton(Dnaji_naji[0], "|cff00FFFF群体施法|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F6）|r", 773)
	end
	--=========================以下部分1.24以下的版本需删除==============================
	if IsTriggerEnabled(Ttest_naji[7]) then
		Button_naji[6] = DialogAddButton(Dnaji_naji[0], "|cff00FFFF句柄信息|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F7）|r", 774)
	else
		Button_naji[6] = DialogAddButton(Dnaji_naji[0], "|cff00FFFF句柄信息|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F7）|r", 774)
	end
	--=========================以上部分1.24以下的版本需删除==============================
	if IsTriggerEnabled(Ttest_naji[61]) then
		Button_naji[7] = DialogAddButton(Dnaji_naji[0], "|cff00FFFF公共聊天系统|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F8）|r", 775)
	else
		Button_naji[7] = DialogAddButton(Dnaji_naji[0], "|cff00FFFF公共聊天系统|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F8）|r", 775)
	end
	Button_naji[0] = DialogAddButton(Dnaji_naji[0], "|cff00FFFF系统信息调整|cff00FF00（space）|r", 32)
	Button_naji[100] = DialogAddButton(Dnaji_naji[0], "|cff00FFFF取消|cff00FF00（Esc）|r", 512)
end
--=====================================@共用函数结束=====================================
--=====================================#功能函数开始=====================================
function TestA82_naji()
	ExecuteFunc(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
end
function TestA81_naji()
	local i_naji
	if StringLength(GetEventPlayerChatString()) <= 6 then
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000参数输入错误！位数不足无法判断进制类型|r")
	elseif StringLength(GetEventPlayerChatString()) == 7 then
		i_naji = S2ID_naji(SubString(GetEventPlayerChatString(), 3, 7))
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0" .. (SubString(GetEventPlayerChatString(), 3, 7) or "") .. "|r→|cffFFFF00" .. (I2S(i_naji) or "") .. "|r")
	else
		i_naji = S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0" .. (SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())) or "") .. "|r→|cffFFFF00" .. (ID2S_naji(i_naji) or "") .. "|r")
	end
end
function TestA80_naji()
	local g_naji
	local u_naji
	local x_naji
	local y_naji
	local z_naji = StringLength(GetEventPlayerChatString()) - 1
	g_naji = CreateGroup()
	GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
	if FirstOfGroup(g_naji) ~= nil then
		for _ in _loop_() do
			u_naji = FirstOfGroup(g_naji)
			if u_naji == nil then break end
			GroupRemoveUnit(g_naji, u_naji)
			for _ in _loop_() do
				Sdummy_naji[1] = SubString(GetEventPlayerChatString(), z_naji, z_naji + 1)
				if Sdummy_naji[1] == "," then
					if z_naji == 4 then
						x_naji = GetUnitX(u_naji)
					else
						x_naji = S2R(SubString(GetEventPlayerChatString(), 4, StringLength(GetEventPlayerChatString())))
					end
					if z_naji == StringLength(GetEventPlayerChatString()) - 1 then
						y_naji = GetUnitY(u_naji)
					else
						y_naji = S2R(SubString(GetEventPlayerChatString(), z_naji + 1, StringLength(GetEventPlayerChatString())))
					end
					if true then break end
				end
				z_naji = z_naji - 1
				if z_naji <= 0 then
					DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000参数不足！请输入|cffFFFF002|cffFF0000位参数|r")
					DestroyGroup(g_naji)
					g_naji = nil
					u_naji = nil
					return
				end
			end
			SetUnitX(u_naji, x_naji)
			SetUnitY(u_naji, y_naji)
		end
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00玩家选择单位的所有单位的坐标更改为|cffFF0000(" .. (R2S(x_naji) or "") .. "," .. (R2S(y_naji) or "") .. ")|r")
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
end
function TestA79_naji()
	local g_naji
	local u_naji
	local i_naji = S2I(SubString(GetEventPlayerChatString(), 4, StringLength(GetEventPlayerChatString())))
	local it_naji
	if i_naji < 0 or i_naji >= 7 then
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000参数输入错误！请输入|cffFFFF001~6|cffFF0000间的整数|r")
		return
	elseif i_naji == 0 then
		i_naji = 1
	end
	g_naji = CreateGroup()
	GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
	u_naji = FirstOfGroup(g_naji)
	if u_naji ~= nil then
		if UnitItemInSlot(u_naji, i_naji - 1) ~= nil then
			it_naji = UnitItemInSlot(u_naji, i_naji - 1)
			if GetItemType(it_naji) == ITEM_TYPE_PERMANENT then
				Sdummy_naji[0] = "永久"
			end
			if GetItemType(it_naji) == ITEM_TYPE_CHARGED then
				Sdummy_naji[0] = "可允"
			end
			if GetItemType(it_naji) == ITEM_TYPE_POWERUP then
				Sdummy_naji[0] = "能量提升"
			end
			if GetItemType(it_naji) == ITEM_TYPE_ARTIFACT then
				Sdummy_naji[0] = "人造"
			end
			if GetItemType(it_naji) == ITEM_TYPE_PURCHASABLE then
				Sdummy_naji[0] = "可购买"
			end
			if GetItemType(it_naji) == ITEM_TYPE_CAMPAIGN then
				Sdummy_naji[0] = "战役"
			end
			if GetItemType(it_naji) == ITEM_TYPE_MISCELLANEOUS then
				Sdummy_naji[0] = "混杂"
			end
			if GetItemType(it_naji) == ITEM_TYPE_UNKNOWN then
				Sdummy_naji[0] = "未知"
			end
			DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "===============*****===============")
			DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0物品名称：|cffFFFF00" .. (GetItemName(it_naji) or "") .. "|r")
			DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0ID256进制/10进制：|cffFFFF00" .. (ID2S_naji(GetItemTypeId(it_naji)) or "") .. "/" .. (I2S(GetItemTypeId(it_naji)) or "") .. "|r")
			--=========================以下部分1.24以下的版本需删除==============================
			DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0存储地址：|cffFFFF00" .. (I2S(GetHandleId(it_naji)) or "") .. "|r")
			--=========================以上部分1.24以下的版本需删除==============================
			DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0所属玩家/cj索引：|cffFFFF00" .. (GetPlayerName(GetItemPlayer(it_naji)) or "") .. "/" .. (I2S(GetPlayerId(GetItemPlayer(it_naji))) or "") .. "|r")
			DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0坐标：|cffFFFF00(" .. (R2S(GetItemX(it_naji)) or "") .. "," .. (R2S(GetItemY(it_naji)) or "") .. ")|r")
			DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0物品分类：|cffFFFF00" .. (Sdummy_naji[0] or "") .. "|r")
			DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0物品等级：|cffFFFF00" .. (I2S(GetItemLevel(it_naji)) or "") .. "|r")
			DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0自定义值：|cffFFFF00" .. (I2S(GetItemUserData(it_naji)) or "") .. "|r")
			Sdummy_naji[0] = " "
			if IsItemPowerup(it_naji) then
				Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "拾取自动使用，"
			end
			if IsItemSellable(it_naji) then
				Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "可出售，"
			end
			if IsItemPawnable(it_naji) then
				Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "可抵押，"
			end
			if IsItemVisible(it_naji) then
				Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "可见，"
			end
			if IsItemInvulnerable(it_naji) then
				Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "无敌的，"
			end
			Sdummy_naji[0] = SubString(Sdummy_naji[0], 1, StringLength(Sdummy_naji[0]) - 2)
			DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0可识别状态：|cffFFFF00" .. (Sdummy_naji[0] or "") .. "||r")
		else
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000该单位|cffFFFF00第" .. (I2S(i_naji) or "") .. "格物品栏|cffFF0000不存在物品|r")
		end
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
	u_naji = nil
end
function TestA78_naji()
	local g_naji = CreateGroup()
	GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
	if FirstOfGroup(g_naji) ~= nil then
		if IsUnitInGroup(FirstOfGroup(g_naji), Gcd_naji[1]) then
			GroupRemoveUnit(Gcd_naji[1], FirstOfGroup(g_naji))
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已取消玩家选择单位的|cffFF0000技能无冷却不耗蓝判定|r")
		else
			SetUnitState(FirstOfGroup(g_naji), UNIT_STATE_MANA, GetUnitState(FirstOfGroup(g_naji), UNIT_STATE_MAX_MANA))
			UnitResetCooldown(FirstOfGroup(g_naji))
			GroupAddUnit(Gcd_naji[1], FirstOfGroup(g_naji))
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已启动玩家选择单位的|cffFF0000技能无冷却不耗蓝判定|r")
		end
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
end
function TestA77_naji()
	local g_naji = CreateGroup()
	GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
	if FirstOfGroup(g_naji) ~= nil then
		if IsUnitInGroup(FirstOfGroup(g_naji), Gms_naji) then
			GroupRemoveUnit(Gms_naji, FirstOfGroup(g_naji))
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已取消玩家选择单位的|cffFF0000群体施法判定|r")
		else
			GroupAddUnit(Gms_naji, FirstOfGroup(g_naji))
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已启动玩家选择单位的|cffFF0000群体施法判定|r")
		end
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
end
function TestA76_naji()
	local u_naji
	local g_naji
	local i_naji
	local z_naji
	local n_naji
	local r_naji
	local b_naji
	local p_naji = GetSpellTargetLoc()
	if IsUnitInGroup(GetTriggerUnit(), Gms_naji) and (GetSpellTargetUnit() ~= nil or p_naji ~= nil) then
		i_naji = GetUnitCurrentOrder(GetTriggerUnit())
		z_naji = GetSpellAbilityId()
		n_naji = GetUnitAbilityLevel(GetTriggerUnit(), z_naji)
		if GetSpellTargetUnit() ~= nil then
			g_naji = CreateGroup()
			b_naji = IsUnitEnemy(GetSpellTargetUnit(), GetTriggerPlayer())
			GroupEnumUnitsInRange(g_naji, GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), Distance_naji(GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), GetUnitX(GetSpellTargetUnit()), GetUnitY(GetSpellTargetUnit())), nil)
			for _ in _loop_() do
				if FirstOfGroup(g_naji) == nil then break end
				if IsUnitType(FirstOfGroup(g_naji), UNIT_TYPE_DEAD) == false and FirstOfGroup(g_naji) ~= GetSpellTargetUnit() and b_naji == IsUnitEnemy(FirstOfGroup(g_naji), GetTriggerPlayer()) then
					u_naji = CreateUnit(GetTriggerPlayer(), 1853257068, GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), Angle_naji(GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), GetUnitX(FirstOfGroup(g_naji)), GetUnitY(FirstOfGroup(g_naji))))
					UnitAddAbility(u_naji, 1097625443)
					UnitAddAbility(u_naji, 1096971630)
					UnitAddAbility(u_naji, 1095328365)
					UnitAddAbility(u_naji, 1095316077)
					UnitAddAbility(u_naji, 1095331170)
					UnitAddAbility(u_naji, 1095331194)
					UnitAddAbility(u_naji, 1095331190)
					UnitRemoveAbility(u_naji, 1098342766)
					if UnitAddAbility(u_naji, 1098015094) then
						UnitRemoveAbility(u_naji, 1098015094)
					end
					SetUnitState(u_naji, UNIT_STATE_MANA, GetUnitState(u_naji, UNIT_STATE_MAX_MANA))
					ShowUnit(u_naji, false)
					UnitApplyTimedLife(u_naji, 1112820806, 10)
					SetUnitUseFood(u_naji, false)
					SetUnitPathing(u_naji, false)
					h__SetUnitMoveSpeed(u_naji, 522)
					SetUnitTurnSpeed(u_naji, 1)
					SetUnitFlyHeight(u_naji, GetUnitFlyHeight(GetTriggerUnit()), 0)
					UnitAddType(u_naji, UNIT_TYPE_ANCIENT)
					UnitAddType(u_naji, UNIT_TYPE_PEON)
					UnitAddAbility(u_naji, z_naji)
					SetUnitAbilityLevel(u_naji, z_naji, n_naji)
					IssueTargetOrderById(u_naji, i_naji, FirstOfGroup(g_naji))
				end
				GroupRemoveUnit(g_naji, FirstOfGroup(g_naji))
			end
			DestroyGroup(g_naji)
			g_naji = nil
		else
			r_naji = 0
			for _ in _loop_() do
				if r_naji >= 2 then break end
				u_naji = CreateUnit(GetTriggerPlayer(), 1853257068, GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), Angle_naji(GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), GetLocationX(p_naji), GetLocationY(p_naji)) - 30 + 60 * r_naji)
				UnitAddAbility(u_naji, 1097625443)
				UnitAddAbility(u_naji, 1096971630)
				UnitAddAbility(u_naji, 1095328365)
				UnitAddAbility(u_naji, 1095316077)
				UnitAddAbility(u_naji, 1095331170)
				UnitAddAbility(u_naji, 1095331194)
				UnitAddAbility(u_naji, 1095331190)
				UnitRemoveAbility(u_naji, 1098342766)
				if UnitAddAbility(u_naji, 1098015094) then
					UnitRemoveAbility(u_naji, 1098015094)
				end
				SetUnitState(u_naji, UNIT_STATE_MANA, GetUnitState(u_naji, UNIT_STATE_MAX_MANA))
				ShowUnit(u_naji, false)
				UnitApplyTimedLife(u_naji, 1112820806, 10)
				SetUnitUseFood(u_naji, false)
				SetUnitPathing(u_naji, false)
				h__SetUnitMoveSpeed(u_naji, 522)
				SetUnitTurnSpeed(u_naji, 1)
				SetUnitFlyHeight(u_naji, GetUnitFlyHeight(GetTriggerUnit()), 0)
				UnitAddType(u_naji, UNIT_TYPE_ANCIENT)
				UnitAddType(u_naji, UNIT_TYPE_PEON)
				UnitAddAbility(u_naji, z_naji)
				SetUnitAbilityLevel(u_naji, z_naji, n_naji)
				IssuePointOrderById(u_naji, i_naji, GetUnitX(GetTriggerUnit()) + Cos(0.01745 * (Angle_naji(GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), GetLocationX(p_naji), GetLocationY(p_naji)) - 30 + 60 * r_naji)) * Distance_naji(GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), GetLocationX(p_naji), GetLocationY(p_naji)), GetUnitY(GetTriggerUnit()) + Sin(0.01745 * (Angle_naji(GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), GetLocationX(p_naji), GetLocationY(p_naji)) - 30 + 60 * r_naji)) * Distance_naji(GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), GetLocationX(p_naji), GetLocationY(p_naji)))
				r_naji = r_naji + 1
			end
		end
	end
	RemoveLocation(p_naji)
	p_naji = nil
end
function TestA75_naji()
	RestartGame(true)
end
function TestA74_naji()
	local i_naji = _array_(0)
	local a_naji = 2
	local b_naji = 8
	local c_naji = 8
	i_naji[1] = S2ID_naji(SubString(GetEventPlayerChatString(), 3, 7))
	i_naji[2] = 0
	i_naji[3] = GetPlayerId(GetTriggerPlayer()) + 1
	for _ in _loop_() do
		Sdummy_naji[1] = SubString(GetEventPlayerChatString(), b_naji, b_naji + 1)
		if Sdummy_naji[1] == "," then
			i_naji[a_naji] = S2I(SubString(GetEventPlayerChatString(), c_naji, b_naji))
			a_naji = a_naji + 1
			c_naji = b_naji + 1
			if a_naji >= 3 then
				i_naji[3] = S2I(SubString(GetEventPlayerChatString(), c_naji, StringLength(GetEventPlayerChatString())))
				if true then break end
			end
		end
		b_naji = b_naji + 1
		if b_naji >= StringLength(GetEventPlayerChatString()) then
			i_naji[a_naji] = S2I(SubString(GetEventPlayerChatString(), c_naji, StringLength(GetEventPlayerChatString())))
			if true then break end
		end
	end
	if i_naji[3] >= 1 and i_naji[3] <= 16 then
		SetPlayerTechResearched(Player(i_naji[3] - 1), i_naji[1], i_naji[2])
		SetPlayerTechMaxAllowed(Player(i_naji[3] - 1), i_naji[1], i_naji[2])
		SetPlayerTechMaxAllowed(Player(i_naji[3] - 1), i_naji[1], i_naji[2])
		if i_naji[2] == 0 then
			SetPlayerAbilityAvailable(Player(i_naji[3] - 1), i_naji[1], false)
		else
			SetPlayerAbilityAvailable(Player(i_naji[3] - 1), i_naji[1], true)
		end
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000已对|cff00FFFF" .. (GetPlayerName(Player(i_naji[3] - 1)) or "") .. "|cffFF0000执行对应行为，若没有效果，请确认你是否输入了|cffFFFF00正确的物编ID|r")
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000玩家参数输入数值错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
	end
end
function TestA73_naji()
	local i_naji = S2ID_naji(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
	if StringLength(GetEventPlayerChatString()) <= 6 then
		if Iweather_naji >= 1 then
			for _ in _loop_() do
				RemoveWeatherEffect(Weather_naji[Iweather_naji])
				Iweather_naji = Iweather_naji - 1
				if Iweather_naji <= 0 then break end
			end
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000删除|cffFFFF00所有已创建的全图天气|r")
		else
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00请输入|cffFF0000合法的天气ID|cffFFFF00，可点击|cffFF0000F9|cffFFFF00查看所有天气ID|r")
		end
	else
		Iweather_naji = Iweather_naji + 1
		Weather_naji[Iweather_naji] = AddWeatherEffect(GetWorldBounds(), i_naji)
		EnableWeatherEffect(Weather_naji[Iweather_naji], true)
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已创建对应的天气。目前已有|cffFF0000" .. (I2S(Iweather_naji) or "") .. "|cffFFFF00个全图天气|r")
	end
end
function TestA72_naji()
	EnableUserControl(true)
	ShowInterface(true, 0.01)
	EnableOcclusion(true)
end
function TestA71_naji()
	if GetClickedButton() ~= Button_naji[100] then
		if GetClickedButton() == Button_naji[1] then
			if IsMapFlagSet(MAP_OBSERVERS_ON_DEATH) then
				SetMapFlag(MAP_OBSERVERS_ON_DEATH, false)
			else
				SetMapFlag(MAP_OBSERVERS_ON_DEATH, true)
			end
		elseif GetClickedButton() == Button_naji[2] then
			if IsMapFlagSet(MAP_LOCK_RESOURCE_TRADING) then
				SetMapFlag(MAP_LOCK_RESOURCE_TRADING, false)
			else
				SetMapFlag(MAP_LOCK_RESOURCE_TRADING, true)
			end
		elseif GetClickedButton() == Button_naji[3] then
			if IsMapFlagSet(MAP_RESOURCE_TRADING_ALLIES_ONLY) then
				SetMapFlag(MAP_RESOURCE_TRADING_ALLIES_ONLY, false)
			else
				SetMapFlag(MAP_RESOURCE_TRADING_ALLIES_ONLY, true)
			end
		elseif GetClickedButton() == Button_naji[4] then
			if IsMapFlagSet(MAP_LOCK_ALLIANCE_CHANGES) then
				SetMapFlag(MAP_LOCK_ALLIANCE_CHANGES, false)
			else
				SetMapFlag(MAP_LOCK_ALLIANCE_CHANGES, true)
			end
		elseif GetClickedButton() == Button_naji[5] then
			if IsMapFlagSet(MAP_ALLIANCE_CHANGES_HIDDEN) then
				SetMapFlag(MAP_ALLIANCE_CHANGES_HIDDEN, false)
			else
				SetMapFlag(MAP_ALLIANCE_CHANGES_HIDDEN, true)
			end
		end
		DialogResetA3_naji()
		DialogDisplay(GetTriggerPlayer(), Dnaji_naji[2], true)
	end
end
function TestA70_naji()
	DialogResetA3_naji()
	DialogDisplay(GetTriggerPlayer(), Dnaji_naji[2], true)
end
function TestA69_naji()
	local i_naji = S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
	if i_naji >= 1 and i_naji <= 5 then
		SetMapFlag(MAP_LOCK_SPEED, false)
		if i_naji == 1 then
			SetGameSpeed(MAP_SPEED_SLOWEST)
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00当前的游戏速度为|cffFF0000极慢|r")
		elseif i_naji == 2 then
			SetGameSpeed(MAP_SPEED_SLOW)
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00当前的游戏速度为|cffFF0000慢|r")
		elseif i_naji == 3 then
			SetGameSpeed(MAP_SPEED_NORMAL)
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00当前的游戏速度为|cffFF0000普通|r")
		elseif i_naji == 4 then
			SetGameSpeed(MAP_SPEED_FAST)
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00当前的游戏速度为|cffFF0000快|r")
		elseif i_naji == 5 then
			SetGameSpeed(MAP_SPEED_FASTEST)
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00当前的游戏速度为|cffFF0000极快|r")
		end
	else
		DisplayTextToPlayer(Ptest_naji, 0, 0, "|cffFF0000输入错误！请输入|cffFFFF001~5|cffFF0000之间的整数|r")
	end
end
function TestA68_naji()
	EndGame(true)
end
function TestA67_naji()
	local g_naji = CreateGroup()
	local u_naji
	local r_naji = S2R(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
	GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
	if FirstOfGroup(g_naji) ~= nil then
		for _ in _loop_() do
			u_naji = FirstOfGroup(g_naji)
			if u_naji == nil then break end
			GroupRemoveUnit(g_naji, u_naji)
			SetUnitScale(u_naji, r_naji, r_naji, r_naji)
		end
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00玩家选择的所有单位的缩放更改为原模型默认的|cffFF0000" .. (R2S(r_naji) or "") .. "|cffFFFF00倍|r")
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
end
function TestA66_naji()
	local i_naji
	i_naji = 0
	for _ in _loop_() do
		DisplayTimedTextToPlayer(Player(i_naji), 0, 0, 15, "                              |cff00FFFF" .. (GetPlayerName(GetTriggerPlayer()) or "") .. "：|r" .. (GetEventPlayerChatString() or ""))
		i_naji = i_naji + 1
		if i_naji >= 16 then break end
	end
end
function TestA65_naji()
	DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "===============*****===============")
	DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0目标坐标：|cffFFFF00(" .. (R2S(GetCameraTargetPositionX()) or "") .. "," .. (R2S(GetCameraTargetPositionY()) or "") .. "," .. (R2S(GetCameraTargetPositionZ()) or "") .. ")|r")
	DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0源坐标：|cffFFFF00(" .. (R2S(GetCameraEyePositionX()) or "") .. "," .. (R2S(GetCameraEyePositionY()) or "") .. "," .. (R2S(GetCameraEyePositionZ()) or "") .. ")|r")
	DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0X轴旋转角度/弧度：|cffFFFF00" .. (R2S(57.295 * GetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK)) or "") .. "/" .. (R2S(GetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK)) or "") .. "|r")
	DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0Y轴旋转角度/弧度：|cffFFFF00" .. (R2S(57.295 * GetCameraField(CAMERA_FIELD_ROLL)) or "") .. "/" .. (R2S(GetCameraField(CAMERA_FIELD_ROLL)) or "") .. "|r")
	DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0Z轴旋转角度/弧度：|cffFFFF00" .. (R2S(57.295 * GetCameraField(CAMERA_FIELD_ROTATION)) or "") .. "/" .. (R2S(GetCameraField(CAMERA_FIELD_ROTATION)) or "") .. "|r")
	DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0Z轴偏移：|cffFFFF00" .. (R2S(GetCameraField(CAMERA_FIELD_ZOFFSET)) or "") .. "|r")
	DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0镜头距离：|cffFFFF00" .. (R2S(GetCameraField(CAMERA_FIELD_TARGET_DISTANCE)) or "") .. "|r")
	DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0远景截断距离：|cffFFFF00" .. (R2S(GetCameraField(CAMERA_FIELD_FARZ)) or "") .. "|r")
	DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0镜头区域：|cffFFFF00" .. (R2S(GetCameraField(CAMERA_FIELD_FIELD_OF_VIEW)) or "") .. "|r")
end
function TestA64_naji()
	if GetLocalPlayer() == Ptest_naji then
		Rcamera_naji[2] = 57.29582 * GetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK)
		Rcamera_naji[3] = 57.29582 * GetCameraField(CAMERA_FIELD_ROTATION)
		if Bcamera_naji[1] then
			Rcamera_naji[2] = Rcamera_naji[2] - 1
		end
		if Bcamera_naji[2] then
			Rcamera_naji[2] = Rcamera_naji[2] + 1
		end
		if Bcamera_naji[3] then
			Rcamera_naji[3] = Rcamera_naji[3] - 1
		end
		if Bcamera_naji[4] then
			Rcamera_naji[3] = Rcamera_naji[3] + 1
		end
		SetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK, Rcamera_naji[2], 0.01)
		SetCameraField(CAMERA_FIELD_ROTATION, Rcamera_naji[3], 0.01)
		PanCameraToTimed(Rcamera_naji[0], Rcamera_naji[1], 0)
	end
end
function TestA63_naji()
	local i_naji = 0
	if GetTriggerEventId() == EVENT_PLAYER_ARROW_UP_UP then
		Bcamera_naji[1] = false
	elseif GetTriggerEventId() == EVENT_PLAYER_ARROW_DOWN_UP then
		Bcamera_naji[2] = false
	elseif GetTriggerEventId() == EVENT_PLAYER_ARROW_LEFT_UP then
		Bcamera_naji[3] = false
	elseif GetTriggerEventId() == EVENT_PLAYER_ARROW_RIGHT_UP then
		Bcamera_naji[4] = false
	end
	for _ in _loop_() do
		i_naji = i_naji + 1
		if i_naji >= 5 then
			DestroyTimer(Tcamera_naji)
			Tcamera_naji = nil
			if true then break end
		end
		if Bcamera_naji[i_naji] then
			if true then break end
		end
	end
end
function TestA62_naji()
	if Tcamera_naji == nil then
		Tcamera_naji = CreateTimer()
		TimerStart(Tcamera_naji, 0.01, true, TestA64_naji)
	end
	Rcamera_naji[0] = GetCameraTargetPositionX()
	Rcamera_naji[1] = GetCameraTargetPositionY()
	if GetTriggerEventId() == EVENT_PLAYER_ARROW_UP_DOWN then
		Bcamera_naji[1] = true
	elseif GetTriggerEventId() == EVENT_PLAYER_ARROW_DOWN_DOWN then
		Bcamera_naji[2] = true
	elseif GetTriggerEventId() == EVENT_PLAYER_ARROW_LEFT_DOWN then
		Bcamera_naji[3] = true
	elseif GetTriggerEventId() == EVENT_PLAYER_ARROW_RIGHT_DOWN then
		Bcamera_naji[4] = true
	end
end
function TestA61_naji()
	if Bcamera_naji[0] then
		Bcamera_naji[0] = false
		DestroyTimer(Tcamera_naji)
		DisableTrigger(Ttest_naji[58])
		DisableTrigger(Ttest_naji[59])
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000关闭|cffFFFF00镜头模式|r")
	else
		Bcamera_naji[0] = true
		EnableTrigger(Ttest_naji[58])
		EnableTrigger(Ttest_naji[59])
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 10, "|cffFF0000开启|cffFFFF00镜头模式|r")
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 10, "|cffFF0000用上下左右对镜头进行调整，镜头距离请用|cffFFFF00'cd|cffFF0000代码，重置镜头请用|cffFFFF00'cr|cffFF0000代码|r")
	end
end
function TestA60_naji()
	local g_naji = CreateGroup()
	local u_naji
	GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
	if FirstOfGroup(g_naji) ~= nil then
		if GetLocalPlayer() == GetTriggerPlayer() then
			SetCameraTargetController(FirstOfGroup(g_naji), 0, 0, false)
		end
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已锁定|cffFF0000玩家选择的第一个单位|cffFFFF00的镜头，按下|cffFF0000Ctrl+C|cffFFFF00可解锁|r")
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
end
function TestA59_naji()
	local g_naji = CreateGroup()
	local u_naji
	GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
	if FirstOfGroup(g_naji) ~= nil then
		for _ in _loop_() do
			u_naji = FirstOfGroup(g_naji)
			if u_naji == nil then break end
			GroupRemoveUnit(g_naji, u_naji)
			UnitRemoveBuffs(u_naji, true, true)
		end
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已清除玩家选择的所有单位的|cffFF0000魔法效果|r")
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
end
function TestA58_naji()
	local i_naji = 0
	ClearTextMessages()
	for _ in _loop_() do
		DisplayTextToPlayer(Player(i_naji), 0, 0, "|cffFFFF00你已经被|cffFF0000踢出游戏|r")
		i_naji = i_naji + 1
		if i_naji >= 16 then break end
	end
end
function TestA57_naji()
	local i_naji = S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString()))) - 1
	if i_naji >= 0 and i_naji <= 15 then
		if GetPlayerSlotState(Player(i_naji)) == PLAYER_SLOT_STATE_PLAYING then
			if GetLocalPlayer() == Player(i_naji) then
				TimerStart(CreateTimer(), 0, true, TestA58_naji)
			end
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已将|cffFF0000" .. (GetPlayerName(Player(i_naji)) or "") .. "|cffFFFF00踢出游戏！|r")
		else
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00这个玩家位|cffFF0000并不存在玩家|r")
		end
	else
		DisplayTextToPlayer(Ptest_naji, 0, 0, "|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
	end
end
function TestA56_naji()
	local i_naji = S2ID_naji(SubString(GetEventPlayerChatString(), 3, 7))
	local g_naji
	local tt
	local z_naji = 1
	if StringLength(GetEventPlayerChatString()) >= 8 then
		z_naji = S2I(SubString(GetEventPlayerChatString(), 8, StringLength(GetEventPlayerChatString())))
		if z_naji <= 0 then
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000数值部分请输入|cffFFFF00大于0|cffFF0000的整数|r")
			return
		end
	end
	g_naji = CreateGroup()
	GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
	if FirstOfGroup(g_naji) ~= nil then
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已执行对应行为，若没有效果，请确定你输入了正确的|cffFF0000物体编辑器ID|r")
		if UnitAddAbility(FirstOfGroup(g_naji), i_naji) == false then
			if StringLength(GetEventPlayerChatString()) >= 8 then
				SetUnitAbilityLevel(FirstOfGroup(g_naji), i_naji, z_naji)
			else
				UnitRemoveAbility(FirstOfGroup(g_naji), i_naji)
				UnitMakeAbilityPermanent(FirstOfGroup(g_naji), false, i_naji)
			end
		else
			UnitMakeAbilityPermanent(FirstOfGroup(g_naji), true, i_naji)
			SetUnitAbilityLevel(FirstOfGroup(g_naji), i_naji, z_naji)
		end
		for _ in _loop_() do
			CreateUnit(GetTriggerPlayer(), i_naji, GetUnitX(FirstOfGroup(g_naji)), GetUnitY(FirstOfGroup(g_naji)), 0)
			tt = CreateItem(i_naji, GetUnitX(FirstOfGroup(g_naji)), GetUnitY(FirstOfGroup(g_naji)))
			if tt ~= nil then
				SetItemPlayer(tt, GetTriggerPlayer(), false)
				tt = nil
			end
			CreateDestructable(i_naji, GetUnitX(FirstOfGroup(g_naji)), GetUnitY(FirstOfGroup(g_naji)), 0, 1, 0)
			z_naji = z_naji - 1
			if z_naji <= 0 then break end
		end
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
end
function TestA55_naji()
	local g_naji = CreateGroup()
	local u_naji
	GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
	if FirstOfGroup(g_naji) ~= nil then
		for _ in _loop_() do
			u_naji = FirstOfGroup(g_naji)
			if u_naji == nil then break end
			GroupRemoveUnit(g_naji, u_naji)
			if IsUnitInGroup(u_naji, Guw_naji) then
				SetUnitPathing(u_naji, true)
				GroupRemoveUnit(Guw_naji, u_naji)
			else
				SetUnitPathing(u_naji, false)
				GroupAddUnit(Guw_naji, u_naji)
			end
		end
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000已切换玩家选择的所有单位的|cffFFFF00触碰|cffFF0000状态|r")
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
end
function TestA54_naji()
	local r_naji = S2R(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
	if GetLocalPlayer() == GetTriggerPlayer() then
		if r_naji > 0 then
			SetCameraField(CAMERA_FIELD_FARZ, r_naji, 0)
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000玩家当前镜头的远景截断距离为|cffFFFF00" .. (R2S(r_naji) or "") .. "|r")
		else
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000数值错误！|cffFFFF00请输入|cffFF0000大于0|cffFFFF00的实数|r")
		end
	end
end
function TestA53_naji()
	local i_naji = S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString()))) - 1
	local g_naji = CreateGroup()
	local u_naji
	if i_naji >= 0 and i_naji <= 15 then
		GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
		if FirstOfGroup(g_naji) ~= nil then
			for _ in _loop_() do
				u_naji = FirstOfGroup(g_naji)
				if u_naji == nil then break end
				GroupRemoveUnit(g_naji, u_naji)
				SetUnitOwner(u_naji, Player(i_naji), true)
			end
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000玩家选择的所有单位|cffFFFF00的所有者已改变为|cffFF0000" .. (GetPlayerName(Player(i_naji)) or "") .. "|r")
		else
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
		end
	else
		DisplayTextToPlayer(Ptest_naji, 0, 0, "|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
end
function TestA52_naji()
	local i_naji = S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString()))) - 1
	local z_naji = StringLength(GetEventPlayerChatString()) - 1
	for _ in _loop_() do
		Sdummy_naji[1] = SubString(GetEventPlayerChatString(), z_naji, z_naji + 1)
		if Sdummy_naji[1] == "," then
			z_naji = S2I(SubString(GetEventPlayerChatString(), z_naji + 1, StringLength(GetEventPlayerChatString())))
			if true then break end
		end
		z_naji = z_naji - 1
		if z_naji <= 0 then
			z_naji = GetPlayerId(GetTriggerPlayer()) + 1
			if true then break end
		end
	end
	if z_naji <= 0 or z_naji >= 17 then
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
		return
	end
	if i_naji >= 0 and i_naji <= 15 then
		if IsPlayerAlly(Player(i_naji), GetTriggerPlayer()) then
			SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_PASSIVE, false)
			SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_XP, false)
			SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_VISION, false)
			SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_SPELLS, false)
			SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_HELP_REQUEST, false)
			SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_HELP_RESPONSE, false)
			SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_PASSIVE, false)
			SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_SHARED_XP, false)
			SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_SHARED_VISION, false)
			SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_SHARED_SPELLS, false)
			SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_HELP_REQUEST, false)
			SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_HELP_RESPONSE, false)
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000" .. (GetPlayerName(Player(z_naji - 1)) or "") .. "|cffFFFF00和|cffFF0000" .. (GetPlayerName(Player(i_naji)) or "") .. "|cffFFFF00成为|cffFF0000敌人|r")
		else
			SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_PASSIVE, true)
			SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_XP, true)
			SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_VISION, true)
			SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_SPELLS, true)
			SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_HELP_REQUEST, true)
			SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_HELP_RESPONSE, true)
			SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_PASSIVE, true)
			SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_SHARED_XP, true)
			SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_SHARED_VISION, true)
			SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_SHARED_SPELLS, true)
			SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_HELP_REQUEST, true)
			SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_HELP_RESPONSE, true)
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000" .. (GetPlayerName(Player(z_naji - 1)) or "") .. "|cffFFFF00和|cffFF0000" .. (GetPlayerName(Player(i_naji)) or "") .. "|cffFFFF00成为|cffFF0000同盟|r")
		end
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
	end
end
function TestA51_naji()
	if GetLocalPlayer() == Ptest_naji then
		ClearTextMessages()
		ResetToGameCamera(0)
		for _ in _loop_() do
			DestroyQuest(Q_naji[Iquest_naji])
			Iquest_naji = Iquest_naji - 1
			if Iquest_naji == 0 then break end
		end
	end
	for _ in _loop_() do
		DestroyTrigger(Ttest_naji[Itrigger_naji])
		Itrigger_naji = Itrigger_naji - 1
		if Itrigger_naji == 0 then break end
	end
	if Ttest_naji[0] ~= nil then
		DestroyTrigger(Ttest_naji[0])
	end
	if Ibm_naji >= 1 then
		for _ in _loop_() do
			Ibm_naji = Ibm_naji - 1
			DestroyTextTag(Tbm_naji[Ibm_naji])
			Tbm_naji[Ibm_naji] = nil
			if Ibm_naji <= 0 then break end
		end
	end
	for _ in _loop_() do
		RemoveWeatherEffect(Weather_naji[Iweather_naji])
		Iweather_naji = Iweather_naji - 1
		if Iweather_naji <= 0 then break end
	end
	DialogDestroy(Dnaji_naji[0])
	DialogDestroy(Dnaji_naji[1])
	DialogDestroy(Dnaji_naji[2])
	DestroyGroup(Gcd_naji[0])
	DestroyGroup(Gcd_naji[1])
	DestroyGroup(Gms_naji)
	DestroyGroup(Guw_naji)
	RemoveRegion(Rworld_naji)
	DisplayTextToPlayer(GetLocalPlayer(), 0, 0, "|cffFF0000已移除|cffFFFF00najitest|cffFF0000测试系统")
end
function TestA50_naji()
	local g_naji = CreateGroup()
	local u_naji
	GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
	if FirstOfGroup(g_naji) ~= nil then
		for _ in _loop_() do
			u_naji = FirstOfGroup(g_naji)
			if u_naji == nil then break end
			GroupRemoveUnit(g_naji, u_naji)
			KillUnit(u_naji)
		end
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00杀死|cffFF0000玩家选择的所有单位|r")
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
end
function TestA49_naji()
	local r_naji = _array_(0.0)
	local a_naji = 1
	local b_naji = 3
	local c_naji = 3
	r_naji[1] = 1
	r_naji[2] = GetPlayerId(GetTriggerPlayer()) + 1
	for _ in _loop_() do
		Sdummy_naji[1] = SubString(GetEventPlayerChatString(), b_naji, b_naji + 1)
		if Sdummy_naji[1] == "," then
			r_naji[a_naji] = S2R(SubString(GetEventPlayerChatString(), c_naji, b_naji))
			a_naji = a_naji + 1
			c_naji = b_naji + 1
			if a_naji >= 2 and c_naji < StringLength(GetEventPlayerChatString()) then
				r_naji[2] = S2R(SubString(GetEventPlayerChatString(), c_naji, StringLength(GetEventPlayerChatString())))
				if true then break end
			end
		end
		b_naji = b_naji + 1
		if b_naji >= StringLength(GetEventPlayerChatString()) then
			r_naji[a_naji] = S2I(SubString(GetEventPlayerChatString(), c_naji, StringLength(GetEventPlayerChatString())))
			if true then break end
		end
	end
	if R2I(r_naji[2]) >= 1 and R2I(r_naji[2]) <= 16 then
		SetMapFlag(MAP_USE_HANDICAPS, true)
		SetPlayerHandicap(Player(R2I(r_naji[2]) - 1), r_naji[1])
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000已设置|cff00FFFF" .. (GetPlayerName(Player(R2I(r_naji[2]) - 1)) or "") .. "|cffFF0000的生命障碍为|cffFFFF00" .. (R2S(r_naji[1]) or "") .. "|r")
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000玩家参数输入数值错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
	end
end
function TestA48_naji()
	local r_naji = S2R(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
	SetTimeOfDayScale(r_naji / 100)
	DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置时间流逝速度为|cffFFFF00" .. (R2S(r_naji) or "") .. "%|r")
end
function TestA47_naji()
	local i_naji = S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
	local g_naji = CreateGroup()
	local u_naji
	GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
	if FirstOfGroup(g_naji) ~= nil then
		for _ in _loop_() do
			u_naji = FirstOfGroup(g_naji)
			if u_naji == nil then break end
			GroupRemoveUnit(g_naji, u_naji)
			SetUnitUserData(u_naji, i_naji)
		end
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有单位的自定义值为|cffFFFF00" .. (I2S(i_naji) or "") .. "|r")
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
end
function TestA46_naji()
	local i_naji = S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
	local g_naji = CreateGroup()
	local u_naji
	GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
	if FirstOfGroup(g_naji) ~= nil then
		if i_naji >= 1 then
			for _ in _loop_() do
				u_naji = FirstOfGroup(g_naji)
				if u_naji == nil then break end
				GroupRemoveUnit(g_naji, u_naji)
				if IsUnitType(u_naji, UNIT_TYPE_HERO) then
					SetHeroInt(u_naji, i_naji, true)
					DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有英雄的智力为|cffFFFF00" .. (I2S(i_naji) or "") .. "|r")
				end
			end
		else
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入错误！请输入|cffFFFF00大于等于1|cffFF0000的整数|r")
		end
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
end
function TestA45_naji()
	local i_naji = S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
	local g_naji = CreateGroup()
	local u_naji
	GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
	if FirstOfGroup(g_naji) ~= nil then
		if i_naji >= 1 then
			for _ in _loop_() do
				u_naji = FirstOfGroup(g_naji)
				if u_naji == nil then break end
				GroupRemoveUnit(g_naji, u_naji)
				if IsUnitType(u_naji, UNIT_TYPE_HERO) then
					SetHeroAgi(u_naji, i_naji, true)
					DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有英雄的敏捷为|cffFFFF00" .. (I2S(i_naji) or "") .. "|r")
				end
			end
		else
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入错误！请输入|cffFFFF00大于等于1|cffFF0000的整数|r")
		end
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
end
function TestA44_naji()
	local i_naji = S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
	local g_naji = CreateGroup()
	local u_naji
	GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
	if FirstOfGroup(g_naji) ~= nil then
		if i_naji >= 1 then
			for _ in _loop_() do
				u_naji = FirstOfGroup(g_naji)
				if u_naji == nil then break end
				GroupRemoveUnit(g_naji, u_naji)
				if IsUnitType(u_naji, UNIT_TYPE_HERO) then
					SetHeroStr(u_naji, i_naji, true)
					DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有英雄的力量为|cffFFFF00" .. (I2S(i_naji) or "") .. "|r")
				end
			end
		else
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入错误！请输入|cffFFFF00大于等于1|cffFF0000的整数|r")
		end
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
end
function TestA43_naji()
	local i_naji = S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
	local g_naji = CreateGroup()
	local u_naji
	GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
	if FirstOfGroup(g_naji) ~= nil then
		for _ in _loop_() do
			u_naji = FirstOfGroup(g_naji)
			if u_naji == nil then break end
			GroupRemoveUnit(g_naji, u_naji)
			if IsUnitType(u_naji, UNIT_TYPE_HERO) then
				if GetHeroSkillPoints(u_naji) + i_naji >= 0 then
					UnitModifySkillPoints(u_naji, i_naji)
				else
					DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF80C0" .. (GetUnitName(u_naji) or "") .. "|cffFF0000的剩余技能点不能|cffFFFF00低于0|cffFF0000！|r")
				end
			end
		end
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000增加玩家选择的所有英雄的技能点数：|cffFFFF00" .. (I2S(i_naji) or "") .. "|r")
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
end
function TestA42_naji()
	local r_naji = S2R(SubString(GetEventPlayerChatString(), 4, StringLength(GetEventPlayerChatString())))
	local g_naji = CreateGroup()
	local u_naji
	GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
	if FirstOfGroup(g_naji) ~= nil then
		for _ in _loop_() do
			u_naji = FirstOfGroup(g_naji)
			if u_naji == nil then break end
			GroupRemoveUnit(g_naji, u_naji)
			if UnitAddAbility(u_naji, 1098015094) then
				UnitRemoveAbility(u_naji, 1098015094)
			end
			SetUnitFlyHeight(u_naji, r_naji, 0)
		end
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有单位的飞行高度为|cffFFFF00" .. (R2S(r_naji) or "") .. "|r")
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
end
function TestA41_naji()
	local r_naji = S2R(SubString(GetEventPlayerChatString(), 4, StringLength(GetEventPlayerChatString())))
	local g_naji = CreateGroup()
	local u_naji
	GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
	if FirstOfGroup(g_naji) ~= nil then
		if r_naji > 0 then
			for _ in _loop_() do
				u_naji = FirstOfGroup(g_naji)
				if u_naji == nil then break end
				GroupRemoveUnit(g_naji, u_naji)
				SetUnitAcquireRange(u_naji, r_naji)
			end
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有单位的主动攻击范围为|cffFFFF00" .. (R2S(r_naji) or "") .. "|r")
		else
			for _ in _loop_() do
				u_naji = FirstOfGroup(g_naji)
				if u_naji == nil then break end
				GroupRemoveUnit(g_naji, u_naji)
				SetUnitAcquireRange(u_naji, GetUnitDefaultAcquireRange(u_naji))
			end
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入数值错误！已还原玩家选择的所有单位的|cffFFFF00默认主动攻击范围|cffFF0000。请输入|cffFFFF00大于0|cffFF0000的实数|r")
		end
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
end
function TestA40_naji()
	local r_naji = S2R(SubString(GetEventPlayerChatString(), 4, StringLength(GetEventPlayerChatString())))
	local g_naji = CreateGroup()
	local u_naji
	GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
	if FirstOfGroup(g_naji) ~= nil then
		if r_naji >= 0 and r_naji <= 1 then
			for _ in _loop_() do
				u_naji = FirstOfGroup(g_naji)
				if u_naji == nil then break end
				GroupRemoveUnit(g_naji, u_naji)
				SetUnitTurnSpeed(u_naji, r_naji)
			end
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有单位的转身速率为|cffFFFF00" .. (R2S(r_naji) or "") .. "|r")
		else
			for _ in _loop_() do
				u_naji = FirstOfGroup(g_naji)
				if u_naji == nil then break end
				GroupRemoveUnit(g_naji, u_naji)
				SetUnitTurnSpeed(u_naji, GetUnitDefaultTurnSpeed(u_naji))
			end
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入数值错误！已还原玩家选择的所有单位的|cffFFFF00默认转身速率|cffFF0000。请输入|cffFFFF000~1|cffFF0000之间的实数|r")
		end
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
end
function TestA39_naji()
	local r_naji = S2R(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
	local g_naji = CreateGroup()
	local u_naji
	GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
	if FirstOfGroup(g_naji) ~= nil then
		if r_naji >= 0 and r_naji <= 522 then
			for _ in _loop_() do
				u_naji = FirstOfGroup(g_naji)
				if u_naji == nil then break end
				GroupRemoveUnit(g_naji, u_naji)
				h__SetUnitMoveSpeed(u_naji, r_naji)
			end
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有单位的移动速度为|cffFFFF00" .. (R2S(r_naji) or "") .. "|r")
		else
			for _ in _loop_() do
				u_naji = FirstOfGroup(g_naji)
				if u_naji == nil then break end
				GroupRemoveUnit(g_naji, u_naji)
				h__SetUnitMoveSpeed(u_naji, GetUnitDefaultMoveSpeed(u_naji))
			end
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入数值错误！已还原玩家选择的所有单位的|cffFFFF00默认移动速度|cffFF0000。请输入|cffFFFF000~522|cffFF0000之间的实数|r")
		end
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
end
function TestA38_naji()
	local r_naji = S2R(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
	if r_naji >= 0 and r_naji <= 24 then
		SetFloatGameState(GAME_STATE_TIME_OF_DAY, r_naji)
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000当前时间设置为|cffFFFF00" .. (R2S(r_naji) or "") .. "|r")
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000请输入|cffFFFF000~24|cffFF0000之间的实数|r")
	end
end
function TestA37_naji()
	local i_naji = S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
	SetRandomSeed(i_naji)
	DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000随机种子设置为|cffFFFF00" .. (I2S(i_naji) or "") .. "|r")
end
function TestA36_naji()
	local g_naji
	local u_naji
	local i_naji = S2I(SubString(GetEventPlayerChatString(), 4, StringLength(GetEventPlayerChatString())))
	local z_naji = StringLength(GetEventPlayerChatString()) - 1
	for _ in _loop_() do
		Sdummy_naji[1] = SubString(GetEventPlayerChatString(), z_naji, z_naji + 1)
		if Sdummy_naji[1] == "," then
			z_naji = S2I(SubString(GetEventPlayerChatString(), z_naji + 1, StringLength(GetEventPlayerChatString())))
			if true then break end
		end
		z_naji = z_naji - 1
		if z_naji <= 0 then
			z_naji = 1
			if true then break end
		end
	end
	if z_naji <= 0 or z_naji >= 7 then
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000第二参数输入错误！请输入|cffFFFF001~6|cffFF0000间的整数|r")
		return
	end
	g_naji = CreateGroup()
	GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
	u_naji = FirstOfGroup(g_naji)
	if u_naji ~= nil then
		if UnitItemInSlot(u_naji, z_naji - 1) ~= nil then
			if i_naji <= 0 then
				i_naji = 0
			end
			SetItemCharges(UnitItemInSlot(u_naji, z_naji - 1), i_naji)
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000该单位|cffFFFF00第" .. (I2S(z_naji) or "") .. "格物品栏|cffFF0000的可允次数设置为|cffFFFF00" .. (I2S(i_naji) or "") .. "|r")
		else
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000该单位|cffFFFF00第" .. (I2S(z_naji) or "") .. "格物品栏|cffFF0000不存在物品|r")
		end
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
end
function TestA35_naji()
	for _ in _loop_() do
		Ibm_naji = Ibm_naji - 1
		DestroyTextTag(Tbm_naji[Ibm_naji])
		Tbm_naji[Ibm_naji] = nil
		if Ibm_naji <= 0 then break end
	end
	DisplayTextToPlayer(GetLocalPlayer(), 0, 0, "|cffFF0000已清除所有|cffFFFF00备忘文字|r")
end
function TestA34_naji()
	Tbm_naji[Ibm_naji] = CreateTextTag()
	SetTextTagText(Tbm_naji[Ibm_naji], SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())), 20 * 0.023 / 10)
	SetTextTagPos(Tbm_naji[Ibm_naji], GetCameraTargetPositionX(), GetCameraTargetPositionY(), 0)
	SetTextTagColor(Tbm_naji[Ibm_naji], 0, 255, 0, 255)
	Ibm_naji = Ibm_naji + 1
end
function TestA33_naji()
	local r_naji = S2R(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
	if r_naji > 100 then
		r_naji = 1
	end
	if r_naji < 0 then
		r_naji = 0
	end
	r_naji = r_naji / 100
	if GetLocalPlayer() == GetTriggerPlayer() then
		VolumeGroupSetVolume(SOUND_VOLUMEGROUP_AMBIENTSOUNDS, r_naji)
		VolumeGroupSetVolume(SOUND_VOLUMEGROUP_SPELLS, r_naji)
		VolumeGroupSetVolume(SOUND_VOLUMEGROUP_COMBAT, r_naji)
		VolumeGroupSetVolume(SOUND_VOLUMEGROUP_FIRE, r_naji)
		VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UNITMOVEMENT, r_naji)
		VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UNITSOUNDS, r_naji)
		VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UI, r_naji)
	end
	DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000你当前的音效音量为：|cffFFFF00" .. (I2S(R2I(r_naji * 100)) or "") .. "%|r")
end
function TestA32_naji()
	DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000骰得点数：|cffFFFF00" .. (I2S(GetRandomInt(1, 100)) or "") .. "|r")
end
function TestA31_naji()
	local i_naji = S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
	if i_naji > 100 then
		i_naji = 100
	end
	if i_naji < 0 then
		i_naji = 0
	end
	if GetLocalPlayer() == GetTriggerPlayer() then
		SetMusicVolume(R2I(I2R(i_naji) * 1.27))
	end
	DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000你当前的音乐音量为：|cffFFFF00" .. (I2S(i_naji) or "") .. "%|r")
end
function TestA30_naji()
	local g_naji = CreateGroup()
	local u_naji
	GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
	if FirstOfGroup(g_naji) ~= nil then
		for _ in _loop_() do
			u_naji = FirstOfGroup(g_naji)
			if u_naji == nil then break end
			GroupRemoveUnit(g_naji, u_naji)
			if IsUnitPaused(u_naji) then
				PauseUnit(u_naji, false)
			else
				PauseUnit(u_naji, true)
			end
		end
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000已切换玩家选择的所有单位的|cffFFFF00暂停状态|r")
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
end
function TestA29_naji()
	local tt
	if Bir_naji then
		Sdummy_naji[0] = I2S(R2I(GetEventDamage()))
	else
		Sdummy_naji[0] = R2S(GetEventDamage())
	end
	if Bddm_naji then
		if Bpn_naji then
			Sdummy_naji[3] = (GetPlayerName(GetTriggerPlayer()) or "") .. "（玩家" .. (I2S(GetPlayerId(GetTriggerPlayer()) + 1) or "") .. "）"
			Sdummy_naji[4] = (GetPlayerName(GetOwningPlayer(GetEventDamageSource())) or "") .. "（玩家" .. (I2S(GetPlayerId(GetOwningPlayer(GetEventDamageSource())) + 1) or "") .. "）"
		else
			Sdummy_naji[3] = ""
			Sdummy_naji[4] = ""
		end
		if Bxy_naji then
			Sdummy_naji[1] = "（" .. (R2S(GetUnitX(GetTriggerUnit())) or "") .. "," .. (R2S(GetUnitY(GetTriggerUnit())) or "") .. "）"
			Sdummy_naji[2] = "（" .. (R2S(GetWidgetX(GetEventDamageSource())) or "") .. "," .. (R2S(GetWidgetY(GetEventDamageSource())) or "") .. "）"
		else
			Sdummy_naji[1] = ""
			Sdummy_naji[2] = ""
		end
		DisplayTextToPlayer(Ptest_naji, 0, 0, (Sdummy_naji[3] or "") .. "|cffFFFF00" .. (GetUnitName(GetTriggerUnit()) or "") .. "|cffFF0000" .. (ID2S_naji(GetUnitTypeId(GetTriggerUnit())) or "") .. "|cffFFFF00" .. (Sdummy_naji[1] or "") .. "|cffFF8000受到了|cffFFFF00" .. (Sdummy_naji[0] or "") .. "|cffFF8000点伤害！|cff00FFFF伤害来源为|r" .. (Sdummy_naji[4] or "") .. "|cffFFFF00" .. (GetUnitName(GetEventDamageSource()) or "") .. "|cffFF0000" .. (ID2S_naji(GetUnitTypeId(GetEventDamageSource())) or "") .. "|cffFFFF00" .. (Sdummy_naji[2] or "") .. "|r")
	else
		if GetLocalPlayer() == Ptest_naji then
			tt = CreateTextTag()
			SetTextTagText(tt, Sdummy_naji[0], 13 * 0.023 / 10)
			SetTextTagPosUnit(tt, GetTriggerUnit(), 0)
			SetTextTagColor(tt, 255, 0, 0, 255)
			SetTextTagVelocity(tt, 150 * 0.071 / 128 * Cos(Rdummy_naji * 0.01745), 150 * 0.071 / 128 * Sin(Rdummy_naji * 0.01745))
			SetTextTagPermanent(tt, false)
			SetTextTagLifespan(tt, 1)
			SetTextTagFadepoint(tt, 0.8)
			tt = nil
			Rdummy_naji = Rdummy_naji + 30
			if Rdummy_naji >= 360 then
				Rdummy_naji = Rdummy_naji - 360
			end
		end
	end
end
function TestA28_naji()
	if GetUnitAbilityLevel(GetTriggerUnit(), 1097625443) == 0 then
		TriggerRegisterUnitEvent(Ttest_naji[0], GetTriggerUnit(), EVENT_UNIT_DAMAGED)
	end
end
function TestA27_naji()
	local g_naji = CreateGroup()
	local i_naji = 0
	local z_naji
	for _ in _loop_() do
		GroupEnumUnitsOfPlayer(g_naji, Player(i_naji), nil)
		z_naji = 0
		for _ in _loop_() do
			if FirstOfGroup(g_naji) == nil then break end
			GroupRemoveUnit(g_naji, FirstOfGroup(g_naji))
			z_naji = z_naji + 1
		end
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 15, "|cff00FFFF(" .. (I2S(i_naji + 1) or "") .. ")|cffFF0000" .. (GetPlayerName(Player(i_naji)) or "") .. "|r：|cffFF80C0总单位数|cffFFFF00" .. (I2S(z_naji) or "") .. "|r：|cffFF80C0金钱|cffFFFF00" .. (I2S(GetPlayerState(Player(i_naji), PLAYER_STATE_RESOURCE_GOLD)) or "") .. "|r：|cffFF80C0木头|cffFFFF00" .. (I2S(GetPlayerState(Player(i_naji), PLAYER_STATE_RESOURCE_LUMBER)) or "") .. "|r：|cffFF80C0已用/可用人口|cffFFFF00" .. (I2S(GetPlayerState(Player(i_naji), PLAYER_STATE_RESOURCE_FOOD_USED)) or "") .. "|r/|cffFFFF00" .. (I2S(GetPlayerState(Player(i_naji), PLAYER_STATE_RESOURCE_FOOD_CAP)) or ""))
		i_naji = i_naji + 1
		if i_naji >= 16 then break end
	end
	DestroyGroup(g_naji)
	g_naji = nil
end
function TestA26_naji()
	if Bpause_naji then
		PauseGame(false)
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000继续游戏|r")
		Bpause_naji = false
	else
		PauseGame(true)
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000暂停游戏|r")
		Bpause_naji = true
	end
end
function TestA25_naji()
	local r_naji = S2R(SubString(GetEventPlayerChatString(), 4, StringLength(GetEventPlayerChatString())))
	local g_naji = CreateGroup()
	local u_naji
	GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
	if FirstOfGroup(g_naji) ~= nil then
		for _ in _loop_() do
			u_naji = FirstOfGroup(g_naji)
			if u_naji == nil then break end
			GroupRemoveUnit(g_naji, u_naji)
			SetUnitTimeScale(u_naji, r_naji)
		end
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有单位的动画播放速率为|cffFFFF00" .. (R2S(r_naji) or "") .. "|r")
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
end
function TestA24_naji()
	local i_naji = _array_(0)
	local a_naji = 1
	local b_naji = 4
	local c_naji = 4
	local g_naji
	local u_naji
	i_naji[1] = 0
	i_naji[2] = 0
	i_naji[3] = 0
	i_naji[4] = 0
	for _ in _loop_() do
		Sdummy_naji[1] = SubString(GetEventPlayerChatString(), b_naji, b_naji + 1)
		if Sdummy_naji[1] == "," then
			i_naji[a_naji] = S2I(SubString(GetEventPlayerChatString(), c_naji, b_naji))
			a_naji = a_naji + 1
			c_naji = b_naji + 1
			if a_naji >= 4 then
				i_naji[4] = S2I(SubString(GetEventPlayerChatString(), c_naji, StringLength(GetEventPlayerChatString())))
				if true then break end
			end
		end
		b_naji = b_naji + 1
		if b_naji >= StringLength(GetEventPlayerChatString()) then
			i_naji[a_naji] = S2I(SubString(GetEventPlayerChatString(), c_naji, StringLength(GetEventPlayerChatString())))
			if true then break end
		end
	end
	if i_naji[1] >= 0 and i_naji[1] <= 255 and i_naji[2] >= 0 and i_naji[2] <= 255 and i_naji[3] >= 0 and i_naji[3] <= 255 and i_naji[4] >= 0 and i_naji[4] <= 255 then
		g_naji = CreateGroup()
		GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
		if FirstOfGroup(g_naji) ~= nil then
			for _ in _loop_() do
				u_naji = FirstOfGroup(g_naji)
				if u_naji == nil then break end
				GroupRemoveUnit(g_naji, u_naji)
				SetUnitVertexColor(u_naji, i_naji[1], i_naji[2], i_naji[3], i_naji[4])
			end
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有单位的染色为|cffFFFF00" .. (I2S(i_naji[1]) or "") .. "|cffFF0000,|cffFFFF00" .. (I2S(i_naji[2]) or "") .. "|cffFF0000,|cffFFFF00" .. (I2S(i_naji[3]) or "") .. "|cffFF0000,|cffFFFF00" .. (I2S(i_naji[4]) or "") .. "|r")
		else
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
		end
		DestroyGroup(g_naji)
		g_naji = nil
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入数值错误！请输入|cffFFFF000~255|cffFF0000之间的整数|r")
	end
end
function TestA23_naji()
	local i_naji = S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString()))) - 1
	local z_naji = StringLength(GetEventPlayerChatString()) - 1
	for _ in _loop_() do
		Sdummy_naji[1] = SubString(GetEventPlayerChatString(), z_naji, z_naji + 1)
		if Sdummy_naji[1] == "," then
			z_naji = S2I(SubString(GetEventPlayerChatString(), z_naji + 1, StringLength(GetEventPlayerChatString())))
			if true then break end
		end
		z_naji = z_naji - 1
		if z_naji <= 0 then
			z_naji = GetPlayerId(GetTriggerPlayer()) + 1
			if true then break end
		end
	end
	if z_naji <= 0 or z_naji >= 17 then
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
		return
	end
	if i_naji >= 0 and i_naji <= 15 then
		if GetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_ADVANCED_CONTROL) then
			SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_VISION, false)
			SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_CONTROL, false)
			SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_ADVANCED_CONTROL, false)
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000" .. (GetPlayerName(Player(z_naji - 1)) or "") .. "|cffFFFF00失去了|cffFF0000" .. (GetPlayerName(Player(i_naji)) or "") .. "|cffFFFF00的|cffFF0000控制权|r")
		else
			SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_VISION, true)
			SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_CONTROL, true)
			SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_ADVANCED_CONTROL, true)
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000" .. (GetPlayerName(Player(z_naji - 1)) or "") .. "|cffFFFF00获得了|cffFF0000" .. (GetPlayerName(Player(i_naji)) or "") .. "|cffFFFF00的|cffFF0000控制权|r")
		end
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
	end
end
function TestA22_naji()
	local g_naji = CreateGroup()
	local u_naji
	local i_naji
	GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
	u_naji = FirstOfGroup(g_naji)
	if u_naji ~= nil then
		i_naji = GetUnitTypeId(u_naji)
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "===============*****===============")
		if IsUnitType(u_naji, UNIT_TYPE_HERO) then
			Sdummy_naji[0] = GetHeroProperName(u_naji)
		else
			Sdummy_naji[0] = "无"
		end
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0单位名称/称谓：|cffFFFF00" .. (GetUnitName(u_naji) or "") .. "/" .. (Sdummy_naji[0] or "") .. "|r")
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0ID256进制/10进制：|cffFFFF00" .. (ID2S_naji(GetUnitTypeId(u_naji)) or "") .. "/" .. (I2S(GetUnitTypeId(u_naji)) or "") .. "|r")
		--=========================以下部分1.24以下的版本需删除==============================
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0存储地址：|cffFFFF00" .. (I2S(GetHandleId(u_naji)) or "") .. "|r")
		--=========================以上部分1.24以下的版本需删除==============================
		if IsUnitRace(u_naji, RACE_HUMAN) then
			Sdummy_naji[0] = "人族"
		end
		if IsUnitRace(u_naji, RACE_ORC) then
			Sdummy_naji[0] = "兽族"
		end
		if IsUnitRace(u_naji, RACE_UNDEAD) then
			Sdummy_naji[0] = "不死族"
		end
		if IsUnitRace(u_naji, RACE_NIGHTELF) then
			Sdummy_naji[0] = "暗夜精灵族"
		end
		if IsUnitRace(u_naji, RACE_DEMON) then
			Sdummy_naji[0] = "恶魔"
		end
		if IsUnitRace(u_naji, ConvertRace(0)) then
			Sdummy_naji[0] = "没有"
		end
		if IsUnitRace(u_naji, ConvertRace(7)) then
			Sdummy_naji[0] = "其它"
		end
		if IsUnitRace(u_naji, ConvertRace(8)) then
			Sdummy_naji[0] = "野外生物"
		end
		if IsUnitRace(u_naji, ConvertRace(9)) then
			Sdummy_naji[0] = "平民"
		end
		if IsUnitRace(u_naji, RACE_HUMAN) then
			Sdummy_naji[0] = "人族"
		end
		if IsUnitRace(u_naji, ConvertRace(10)) then
			Sdummy_naji[0] = "动物"
		end
		if IsUnitRace(u_naji, ConvertRace(11)) then
			Sdummy_naji[0] = "娜迦族"
		end
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0种族/等级：|cffFFFF00" .. (Sdummy_naji[0] or "") .. "/" .. (I2S(GetUnitLevel(u_naji)) or "") .. "|r")
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0所属玩家/cj索引：|cffFFFF00" .. (GetPlayerName(GetOwningPlayer(u_naji)) or "") .. "/" .. (I2S(GetPlayerId(GetOwningPlayer(u_naji))) or "") .. "|r")
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0坐标：|cffFFFF00(" .. (R2S(GetUnitX(u_naji)) or "") .. "," .. (R2S(GetUnitY(u_naji)) or "") .. ")|r")
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0面向角度/弧度：|cffFFFF00" .. (R2S(GetUnitFacing(u_naji)) or "") .. "/" .. (R2S(0.017 * GetUnitFacing(u_naji)) or "") .. "|r")
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0自定义值：|cffFFFF00" .. (I2S(GetUnitUserData(u_naji)) or "") .. "|r")
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0附加值：|cffFFFF00" .. (I2S(GetUnitPointValue(u_naji)) or "") .. "|r")
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0主动攻击范围当前/默认：|cffFFFF00" .. (R2S(GetUnitAcquireRange(u_naji)) or "") .. "/" .. (R2S(GetUnitDefaultAcquireRange(u_naji)) or "") .. "|r")
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0移动速度当前/默认：|cffFFFF00" .. (R2S(GetUnitMoveSpeed(u_naji)) or "") .. "/" .. (R2S(GetUnitDefaultMoveSpeed(u_naji)) or "") .. "|r")
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0转身速率当前/默认：|cffFFFF00" .. (R2S(GetUnitTurnSpeed(u_naji)) or "") .. "/" .. (R2S(GetUnitDefaultTurnSpeed(u_naji)) or "") .. "|r")
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0飞行高度当前/默认：|cffFFFF00" .. (R2S(GetUnitFlyHeight(u_naji)) or "") .. "/" .. (R2S(GetUnitDefaultFlyHeight(u_naji)) or "") .. "|r")
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0拥有buff数量全部/正面/负面：|cffFFFF00" .. (I2S(UnitCountBuffsEx(u_naji, true, true, false, false, true, true, false)) or "") .. "/" .. (I2S(UnitCountBuffsEx(u_naji, true, false, false, false, true, true, false)) or "") .. "/" .. (I2S(UnitCountBuffsEx(u_naji, false, true, false, false, true, true, false)) or "") .. "|r")
		Sdummy_naji[0] = " "
		if IsUnitIdType(i_naji, UNIT_TYPE_MELEE_ATTACKER) then
			Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "近战，"
		end
		if IsUnitIdType(i_naji, UNIT_TYPE_RANGED_ATTACKER) then
			Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "远程，"
		end
		if IsUnitIdType(i_naji, UNIT_TYPE_STRUCTURE) then
			Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "建筑，"
		end
		if IsUnitIdType(i_naji, UNIT_TYPE_HERO) then
			Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "英雄，"
		end
		if IsUnitIdType(i_naji, UNIT_TYPE_GROUND) then
			Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "地面，"
		end
		if IsUnitIdType(i_naji, UNIT_TYPE_FLYING) then
			Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "飞行，"
		end
		if IsUnitIdType(i_naji, UNIT_TYPE_SUMMONED) then
			Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "召唤单位，"
		end
		if IsUnitIdType(i_naji, UNIT_TYPE_PLAGUED) then
			Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "附带瘟疫，"
		end
		if IsUnitIdType(i_naji, UNIT_TYPE_SNARED) then
			Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "被束缚的，"
		end
		if IsUnitIdType(i_naji, UNIT_TYPE_STUNNED) then
			Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "被眩晕的，"
		end
		if IsUnitIdType(i_naji, UNIT_TYPE_GIANT) then
			Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "泰坦，"
		end
		if IsUnitIdType(i_naji, UNIT_TYPE_TAUREN) then
			Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "牛头人，"
		end
		if IsUnitIdType(i_naji, UNIT_TYPE_UNDEAD) then
			Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "不死族，"
		end
		if IsUnitIdType(i_naji, UNIT_TYPE_MECHANICAL) then
			Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "机械，"
		end
		if IsUnitIdType(i_naji, UNIT_TYPE_ANCIENT) then
			Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "古树，"
		end
		if IsUnitIdType(i_naji, UNIT_TYPE_PEON) then
			Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "工人，"
		end
		if IsUnitIdType(i_naji, UNIT_TYPE_TOWNHALL) then
			Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "城镇大厅，"
		end
		if IsUnitIdType(i_naji, UNIT_TYPE_SAPPER) then
			Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "地精工兵，"
		end
		if IsUnitIdType(i_naji, UNIT_TYPE_POISONED) then
			Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "中毒的，"
		end
		if IsUnitIdType(i_naji, UNIT_TYPE_POLYMORPHED) then
			Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "被变形的，"
		end
		if IsUnitIdType(i_naji, UNIT_TYPE_SLEEPING) then
			Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "被催眠的，"
		end
		if IsUnitIdType(i_naji, UNIT_TYPE_RESISTANT) then
			Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "有抗性皮肤的，"
		end
		if IsUnitIdType(i_naji, UNIT_TYPE_ETHEREAL) then
			Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "处于虚无状态，"
		end
		if IsUnitIdType(i_naji, UNIT_TYPE_MAGIC_IMMUNE) then
			Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "魔法免疫，"
		end
		Sdummy_naji[0] = SubString(Sdummy_naji[0], 1, StringLength(Sdummy_naji[0]) - 2)
		DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0可识别类型：|cffFFFF00" .. (Sdummy_naji[0] or "") .. "||r")
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
	u_naji = nil
end
function TestA21_naji()
	if GetLocalPlayer() == GetTriggerPlayer() then
		ResetToGameCamera(0)
	end
	DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000重置镜头|r")
end
function TestA20_naji()
	if GetLocalPlayer() == GetTriggerPlayer() then
		ClearTextMessages()
	end
end
function TestA19_naji()
	if Bpn_naji then
		Sdummy_naji[3] = (GetPlayerName(GetOwningPlayer(GetTriggerUnit())) or "") .. "（玩家" .. (I2S(GetPlayerId(GetOwningPlayer(GetTriggerUnit())) + 1) or "") .. "）"
	else
		Sdummy_naji[3] = ""
	end
	if Bxy_naji then
		Sdummy_naji[1] = "（" .. (R2S(GetUnitX(GetTriggerUnit())) or "") .. "," .. (R2S(GetUnitY(GetTriggerUnit())) or "") .. "）"
		Sdummy_naji[2] = "（" .. (R2S(GetWidgetX(GetKillingUnit())) or "") .. "," .. (R2S(GetWidgetY(GetKillingUnit())) or "") .. "）"
	else
		Sdummy_naji[1] = ""
		Sdummy_naji[2] = ""
	end
	if GetTriggerPlayer() == nil then
		unitnumber_lh = unitnumber_lh + 1
		createdunitnumber_lh = createdunitnumber_lh + 1
		DisplayTextToPlayer(Ptest_naji, 0, 0, (Sdummy_naji[3] or "") .. "|cffFFFF00" .. (GetUnitName(GetTriggerUnit()) or "") .. "|cffFF0000" .. (ID2S_naji(GetUnitTypeId(GetTriggerUnit())) or "") .. "|cffFFFF00" .. (Sdummy_naji[1] or "") .. "|cffFF80C0第一次进入地图,当前单位数：" .. (I2S(unitnumber_lh) or "") .. ",创建单位总数：" .. (I2S(createdunitnumber_lh) or "") .. "|r")
	else
		if Bpn_naji then
			Sdummy_naji[4] = (GetPlayerName(GetOwningPlayer(GetKillingUnit())) or "") .. "（玩家" .. (I2S(GetPlayerId(GetOwningPlayer(GetKillingUnit())) + 1) or "") .. "）"
		else
			Sdummy_naji[4] = ""
		end
		unitnumber_lh = unitnumber_lh - 1
		DisplayTextToPlayer(Ptest_naji, 0, 0, (Sdummy_naji[3] or "") .. "|cffFFFF00" .. (GetUnitName(GetTriggerUnit()) or "") .. "|cffFF0000" .. (ID2S_naji(GetUnitTypeId(GetTriggerUnit())) or "") .. "|cffFFFF00" .. (Sdummy_naji[1] or "") .. "|cffFF80C0死亡！凶手是：|r" .. (Sdummy_naji[4] or "") .. "|cffFFFF00" .. (GetUnitName(GetKillingUnit()) or "") .. "|cffFF0000" .. (ID2S_naji(GetUnitTypeId(GetKillingUnit())) or "") .. "|cffFFFF00" .. (Sdummy_naji[2] or "") .. ",当前单位数：" .. (I2S(unitnumber_lh) or "") .. ",创建单位总数：" .. (I2S(createdunitnumber_lh) or "") .. "|r")
	end
end
function TestA18_naji()
	SetPlayerName(GetTriggerPlayer(), SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
	DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000你当前的名称为：|cffFFFF00" .. (GetPlayerName(GetTriggerPlayer()) or "") .. "|r")
end
function TestA17_naji()
	local p_naji
	if Bpn_naji then
		Sdummy_naji[3] = (GetPlayerName(GetTriggerPlayer()) or "") .. "（玩家" .. (I2S(GetPlayerId(GetTriggerPlayer()) + 1) or "") .. "）"
	else
		Sdummy_naji[3] = ""
	end
	if Bxy_naji then
		Sdummy_naji[1] = "（" .. (R2S(GetUnitX(GetTriggerUnit())) or "") .. "," .. (R2S(GetUnitY(GetTriggerUnit())) or "") .. "）"
		Sdummy_naji[2] = "（" .. (R2S(GetWidgetX(GetOrderTarget())) or "") .. "," .. (R2S(GetWidgetY(GetOrderTarget())) or "") .. "）"
	else
		Sdummy_naji[1] = ""
		Sdummy_naji[2] = ""
	end
	Sdummy_naji[0] = OrderId2String(GetIssuedOrderId())
	if Sdummy_naji[0] == nil then
		Sdummy_naji[0] = UnitId2String(GetIssuedOrderId())
		if Sdummy_naji[0] == nil then
			Sdummy_naji[0] = IDidentify_naji(GetIssuedOrderId())
			if Sdummy_naji[0] == nil or Sdummy_naji[0] == "Default string" then
				Sdummy_naji[0] = "null"
			else
				Sdummy_naji[0] = (Sdummy_naji[0] or "") .. "|cff00FF00" .. (ID2S_naji(GetIssuedOrderId()) or "")
			end
		end
	end
	if GetOrderTargetUnit() == nil then
		if GetOrderTargetDestructable() == nil then
			if GetOrderTargetItem() == nil then
				p_naji = GetOrderPointLoc()
				if p_naji == nil then
					DisplayTextToPlayer(Ptest_naji, 0, 0, (Sdummy_naji[3] or "") .. "|cffFFFF00" .. (GetUnitName(GetTriggerUnit()) or "") .. "|cffFF0000" .. (ID2S_naji(GetUnitTypeId(GetTriggerUnit())) or "") .. "|cffFFFF00" .. (Sdummy_naji[1] or "") .. "|cffFF80C0发布了|cffFFFF00" .. (Sdummy_naji[0] or "") .. "|cffFF0000（" .. (I2S(GetIssuedOrderId()) or "") .. "）|r")
				else
					DisplayTextToPlayer(Ptest_naji, 0, 0, (Sdummy_naji[3] or "") .. "|cffFFFF00" .. (GetUnitName(GetTriggerUnit()) or "") .. "|cffFF0000" .. (ID2S_naji(GetUnitTypeId(GetTriggerUnit())) or "") .. "|cffFFFF00" .. (Sdummy_naji[1] or "") .. "|cffFF80C0发布了|cffFFFF00" .. (Sdummy_naji[0] or "") .. "|cffFF0000（" .. (I2S(GetIssuedOrderId()) or "") .. "）|cff00FFFF目标点为|cffFFFF00（" .. (R2S(GetOrderPointX()) or "") .. "," .. (R2S(GetOrderPointY()) or "") .. "）|r")
				end
				RemoveLocation(p_naji)
				p_naji = nil
			else
				DisplayTextToPlayer(Ptest_naji, 0, 0, (Sdummy_naji[3] or "") .. "|cffFFFF00" .. (GetUnitName(GetTriggerUnit()) or "") .. "|cffFF0000" .. (ID2S_naji(GetUnitTypeId(GetTriggerUnit())) or "") .. "|cffFFFF00" .. (Sdummy_naji[1] or "") .. "|cffFF80C0发布了|cffFFFF00" .. (Sdummy_naji[0] or "") .. "|cffFF0000（" .. (I2S(GetIssuedOrderId()) or "") .. "）|cff00FFFF目标为|cffFFFF00" .. (GetItemName(GetOrderTargetItem()) or "") .. "|cffFF0000" .. (ID2S_naji(GetItemTypeId(GetOrderTargetItem())) or "") .. "|cffFFFF00" .. (Sdummy_naji[2] or "") .. "|r")
			end
		else
			DisplayTextToPlayer(Ptest_naji, 0, 0, (Sdummy_naji[3] or "") .. "|cffFFFF00" .. (GetUnitName(GetTriggerUnit()) or "") .. "|cffFF0000" .. (ID2S_naji(GetUnitTypeId(GetTriggerUnit())) or "") .. "|cffFFFF00" .. (Sdummy_naji[1] or "") .. "|cffFF80C0发布了|cffFFFF00" .. (Sdummy_naji[0] or "") .. "|cffFF0000（" .. (I2S(GetIssuedOrderId()) or "") .. "）|cff00FFFF目标为|cffFFFF00" .. (GetDestructableName(GetOrderTargetDestructable()) or "") .. "|cffFF0000" .. (ID2S_naji(GetDestructableTypeId(GetOrderTargetDestructable())) or "") .. "|cffFFFF00" .. (Sdummy_naji[2] or "") .. "|r")
		end
	else
		if Bpn_naji then
			Sdummy_naji[4] = (GetPlayerName(GetOwningPlayer(GetOrderTargetUnit())) or "") .. "（玩家" .. (I2S(GetPlayerId(GetOwningPlayer(GetOrderTargetUnit())) + 1) or "") .. "）"
		else
			Sdummy_naji[4] = ""
		end
		DisplayTextToPlayer(Ptest_naji, 0, 0, (Sdummy_naji[3] or "") .. "|cffFFFF00" .. (GetUnitName(GetTriggerUnit()) or "") .. "|cffFF0000" .. (ID2S_naji(GetUnitTypeId(GetTriggerUnit())) or "") .. "|cffFFFF00" .. (Sdummy_naji[1] or "") .. "|cffFF80C0发布了|cffFFFF00" .. (Sdummy_naji[0] or "") .. "|cffFF0000（" .. (I2S(GetIssuedOrderId()) or "") .. "）|cff00FFFF目标为|r" .. (Sdummy_naji[4] or "") .. "|cffFFFF00" .. (GetUnitName(GetOrderTargetUnit()) or "") .. "|cffFF0000" .. (ID2S_naji(GetUnitTypeId(GetOrderTargetUnit())) or "") .. "|cffFFFF00" .. (Sdummy_naji[2] or "") .. "|r")
	end
end
function TestA16_naji()
	local g_naji = CreateGroup()
	local u_naji
	GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
	if FirstOfGroup(g_naji) ~= nil then
		for _ in _loop_() do
			u_naji = FirstOfGroup(g_naji)
			if u_naji == nil then break end
			GroupRemoveUnit(g_naji, u_naji)
			RemoveUnit(u_naji)
		end
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00删除|cffFF0000玩家选择的所有单位|r")
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
end
function TestA15_naji()
	local r_naji = S2R(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
	if GetLocalPlayer() == GetTriggerPlayer() then
		if r_naji > 0 then
			SetCameraField(CAMERA_FIELD_TARGET_DISTANCE, r_naji, 0)
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000玩家当前镜头的镜头距离为|cffFFFF00" .. (R2S(r_naji) or "") .. "|r")
		else
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000数值错误！|cffFFFF00请输入|cffFF0000大于0|cffFFFF00的实数|r")
		end
	end
end
function TestA14_naji()
	local i_naji = S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
	local g_naji
	local u_naji
	if i_naji >= 0 then
		g_naji = CreateGroup()
		GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
		if FirstOfGroup(g_naji) ~= nil then
			for _ in _loop_() do
				u_naji = FirstOfGroup(g_naji)
				if u_naji == nil then break end
				GroupRemoveUnit(g_naji, u_naji)
				SetUnitAnimationByIndex(u_naji, i_naji)
			end
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000播放玩家选择的所有单位的第|cffFFFF00" .. (I2S(i_naji) or "") .. "|cffFF0000号动作|r")
		else
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
		end
		DestroyGroup(g_naji)
		g_naji = nil
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入数值错误！请输入|cffFFFF00大于0|cffFF0000的数值|r")
	end
end
function TestA13_naji()
	if Bfog_naji then
		FogEnable(false)
		FogMaskEnable(false)
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000关闭|cffFFFF00阴影及战争迷雾|r")
		Bfog_naji = false
	else
		FogEnable(true)
		FogMaskEnable(true)
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000开启|cffFFFF00阴影及战争迷雾|r")
		Bfog_naji = true
	end
end
function TestA12_naji()
	local i_naji = S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
	local g_naji
	local u_naji
	if i_naji >= 1 then
		g_naji = CreateGroup()
		GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
		if FirstOfGroup(g_naji) ~= nil then
			for _ in _loop_() do
				u_naji = FirstOfGroup(g_naji)
				if u_naji == nil then break end
				GroupRemoveUnit(g_naji, u_naji)
				if IsUnitType(u_naji, UNIT_TYPE_HERO) then
					if GetUnitLevel(u_naji) <= i_naji then
						SetHeroLevel(u_naji, i_naji, true)
					else
						UnitStripHeroLevel(u_naji, GetUnitLevel(u_naji) - i_naji)
					end
				end
			end
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000将玩家选择的所有英雄等级设置为|cffFFFF00" .. (I2S(i_naji) or "") .. "|r")
		else
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
		end
		DestroyGroup(g_naji)
		g_naji = nil
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入数值错误！请输入|cffFFFF00大于1|cffFF0000的数值|r")
	end
end
function TestA11_naji()
	local i_naji = S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
	local z_naji = StringLength(GetEventPlayerChatString()) - 1
	for _ in _loop_() do
		Sdummy_naji[1] = SubString(GetEventPlayerChatString(), z_naji, z_naji + 1)
		if Sdummy_naji[1] == "," then
			z_naji = S2I(SubString(GetEventPlayerChatString(), z_naji + 1, StringLength(GetEventPlayerChatString())))
			if true then break end
		end
		z_naji = z_naji - 1
		if z_naji <= 0 then
			z_naji = GetPlayerId(GetTriggerPlayer()) + 1
			if true then break end
		end
	end
	if z_naji <= 0 or z_naji >= 17 then
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000第二参数输入错误！请输入|cffFFFF001~16|cffFF0000间的整数|r")
		return
	end
	SetPlayerState(Player(z_naji - 1), PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(Player(z_naji - 1), PLAYER_STATE_RESOURCE_LUMBER) + i_naji)
	if i_naji > 0 then
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000为|cff00FFFF" .. (GetPlayerName(Player(z_naji - 1)) or "") .. "|cffFF0000增加了|cffFFFF00" .. (I2S(i_naji) or "") .. "|cffFF0000木头|r")
	elseif i_naji < 0 then
		i_naji = i_naji * -1
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000为|cff00FFFF" .. (GetPlayerName(Player(z_naji - 1)) or "") .. "|cffFF0000减少了|cffFFFF00" .. (I2S(i_naji) or "") .. "|cffFF0000木头|r")
	end
end
function TestA10_naji()
	local i_naji = S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
	local z_naji = StringLength(GetEventPlayerChatString()) - 1
	for _ in _loop_() do
		Sdummy_naji[1] = SubString(GetEventPlayerChatString(), z_naji, z_naji + 1)
		if Sdummy_naji[1] == "," then
			z_naji = S2I(SubString(GetEventPlayerChatString(), z_naji + 1, StringLength(GetEventPlayerChatString())))
			if true then break end
		end
		z_naji = z_naji - 1
		if z_naji <= 0 then
			z_naji = GetPlayerId(GetTriggerPlayer()) + 1
			if true then break end
		end
	end
	if z_naji <= 0 or z_naji >= 17 then
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000第二参数输入错误！请输入|cffFFFF001~16|cffFF0000间的整数|r")
		return
	end
	SetPlayerState(Player(z_naji - 1), PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(Player(z_naji - 1), PLAYER_STATE_RESOURCE_GOLD) + i_naji)
	if i_naji > 0 then
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000为|cff00FFFF" .. (GetPlayerName(Player(z_naji - 1)) or "") .. "|cffFF0000增加了|cffFFFF00" .. (I2S(i_naji) or "") .. "|cffFF0000黄金|r")
	elseif i_naji < 0 then
		i_naji = i_naji * -1
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000为|cff00FFFF" .. (GetPlayerName(Player(z_naji - 1)) or "") .. "|cffFF0000减少了|cffFFFF00" .. (I2S(i_naji) or "") .. "|cffFF0000黄金|r")
	end
end
--=========================以下部分1.24以下的版本需删除==============================
function TestA9_naji()
	local p_naji = Location(0, 0)
	Rhandle_naji = Rhandle_naji + 0.1
	if Rhandle_naji >= 60 then
		Sdummy_naji[2] = R2S(Rhandle_naji - I2R(R2I(Rhandle_naji / 60)) * 60)
		if S2R(Sdummy_naji[2]) == 60 then
			Sdummy_naji[2] = "0.0"
		else
			Sdummy_naji[2] = SubString(" " .. (Sdummy_naji[2] or ""), 1, StringLength(Sdummy_naji[2]) - 1)
		end
		Sdummy_naji[1] = " " .. (R2S(Rhandle_naji / 60) or "")
		Sdummy_naji[1] = (SubString(Sdummy_naji[1], 1, StringLength(Sdummy_naji[1]) - 4) or "") .. "分" .. (Sdummy_naji[2] or "") .. "秒"
	else
		Sdummy_naji[1] = " " .. (R2S(Rhandle_naji) or "")
		Sdummy_naji[1] = (SubString(Sdummy_naji[1], 1, StringLength(Sdummy_naji[1]) - 2) or "") .. "秒"
	end
	DisplayTextToPlayer(Ptest_naji, 0, 0, "|cffFFFF00基准值：|r" .. (I2S(Ihandle_naji) or "") .. "|cffFFFF00——当前值：|r" .. (I2S(GetHandleId(p_naji)) or "") .. "|cffFFFF00——差值：|r" .. (I2S(GetHandleId(p_naji) - Ihandle_naji) or "") .. "|cffFFFF00——开启时间：|r" .. (Sdummy_naji[1] or ""))
	RemoveLocation(p_naji)
	p_naji = nil
end
--=========================以上部分1.24以下的版本需删除==============================
function TestA7_naji()
	local g_naji = CreateGroup()
	local u_naji
	GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), nil)
	if FirstOfGroup(g_naji) ~= nil then
		for _ in _loop_() do
			u_naji = FirstOfGroup(g_naji)
			if u_naji == nil then break end
			GroupRemoveUnit(g_naji, u_naji)
			SetUnitState(u_naji, UNIT_STATE_LIFE, GetUnitState(u_naji, UNIT_STATE_MAX_LIFE))
			SetUnitState(u_naji, UNIT_STATE_MANA, GetUnitState(u_naji, UNIT_STATE_MAX_MANA))
			UnitResetCooldown(u_naji)
		end
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000恢复了所有玩家选择单位的|cffFFFF00生命/魔法/冷却|r")
	else
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
	end
	DestroyGroup(g_naji)
	g_naji = nil
end
function TestA6_naji()
	local t_naji = GetExpiredTimer()
	local u_naji
	for _ in _loop_() do
		u_naji = FirstOfGroup(Gcd_naji[0])
		if u_naji == nil then break end
		GroupRemoveUnit(Gcd_naji[0], u_naji)
		SetUnitState(u_naji, UNIT_STATE_MANA, GetUnitState(u_naji, UNIT_STATE_MAX_MANA))
		UnitResetCooldown(u_naji)
	end
	DestroyTimer(t_naji)
	t_naji = nil
	u_naji = nil
end
function TestA5_naji()
	local t_naji
	if IsUnitInGroup(GetTriggerUnit(), Gcd_naji[1]) then
		t_naji = CreateTimer()
		GroupAddUnit(Gcd_naji[0], GetTriggerUnit())
		TimerStart(t_naji, 0, false, TestA6_naji)
		t_naji = nil
	end
end
function TestA3_naji()
	local p_naji
	if Bpn_naji then
		Sdummy_naji[3] = (GetPlayerName(GetTriggerPlayer()) or "") .. "（玩家" .. (I2S(GetPlayerId(GetTriggerPlayer()) + 1) or "") .. "）"
	else
		Sdummy_naji[3] = ""
	end
	if GetSpellTargetUnit() == nil then
		if GetSpellTargetDestructable() == nil then
			if GetSpellTargetItem() == nil then
				p_naji = GetSpellTargetLoc()
				if p_naji == nil then
					DisplayTextToPlayer(Ptest_naji, 0, 0, (Sdummy_naji[3] or "") .. "|cffFFFF00" .. (GetUnitName(GetTriggerUnit()) or "") .. "|cffFF0000" .. (ID2S_naji(GetUnitTypeId(GetTriggerUnit())) or "") .. "|cffFFFF00" .. (Sdummy_naji[1] or "") .. "|cffFF8000施放了|cffFFFF00" .. (GetObjectName(GetSpellAbilityId()) or "") .. "|cffFF0000" .. (ID2S_naji(GetSpellAbilityId()) or "") .. "|r")
				else
					DisplayTextToPlayer(Ptest_naji, 0, 0, (Sdummy_naji[3] or "") .. "|cffFFFF00" .. (GetUnitName(GetTriggerUnit()) or "") .. "|cffFF0000" .. (ID2S_naji(GetUnitTypeId(GetTriggerUnit())) or "") .. "|cffFFFF00" .. (Sdummy_naji[1] or "") .. "|cffFF8000施放了|cffFFFF00" .. (GetObjectName(GetSpellAbilityId()) or "") .. "|cffFF0000" .. (ID2S_naji(GetSpellAbilityId()) or "") .. "|cff00FFFF目标点为|cffFFFF00（" .. (R2S(GetLocationX(p_naji)) or "") .. "," .. (R2S(GetLocationY(p_naji)) or "") .. "）|r")
				end
				RemoveLocation(p_naji)
				p_naji = nil
			else
				if Bxy_naji then
					Sdummy_naji[1] = "（" .. (R2S(GetUnitX(GetTriggerUnit())) or "") .. "," .. (R2S(GetUnitY(GetTriggerUnit())) or "") .. "）"
					Sdummy_naji[2] = "（" .. (R2S(GetWidgetX(GetSpellTargetItem())) or "") .. "," .. (R2S(GetWidgetY(GetSpellTargetItem())) or "") .. "）"
				else
					Sdummy_naji[1] = ""
					Sdummy_naji[2] = ""
				end
				DisplayTextToPlayer(Ptest_naji, 0, 0, (Sdummy_naji[3] or "") .. "|cffFFFF00" .. (GetUnitName(GetTriggerUnit()) or "") .. "|cffFF0000" .. (ID2S_naji(GetUnitTypeId(GetTriggerUnit())) or "") .. "|cffFFFF00" .. (Sdummy_naji[1] or "") .. "|cffFF8000施放了|cffFFFF00" .. (GetObjectName(GetSpellAbilityId()) or "") .. "|cffFF0000" .. (ID2S_naji(GetSpellAbilityId()) or "") .. "|cff00FFFF目标为|cffFFFF00" .. (GetItemName(GetSpellTargetItem()) or "") .. "|cffFF0000" .. (ID2S_naji(GetItemTypeId(GetSpellTargetItem())) or "") .. "|cffFFFF00" .. (Sdummy_naji[2] or "") .. "|r")
			end
		else
			if Bxy_naji then
				Sdummy_naji[1] = "（" .. (R2S(GetUnitX(GetTriggerUnit())) or "") .. "," .. (R2S(GetUnitY(GetTriggerUnit())) or "") .. "）"
				Sdummy_naji[2] = "（" .. (R2S(GetWidgetX(GetSpellTargetDestructable())) or "") .. "," .. (R2S(GetWidgetY(GetSpellTargetDestructable())) or "") .. "）"
			else
				Sdummy_naji[1] = ""
				Sdummy_naji[2] = ""
			end
			DisplayTextToPlayer(Ptest_naji, 0, 0, (Sdummy_naji[3] or "") .. "|cffFFFF00" .. (GetUnitName(GetTriggerUnit()) or "") .. "|cffFF0000" .. (ID2S_naji(GetUnitTypeId(GetTriggerUnit())) or "") .. "|cffFFFF00" .. (Sdummy_naji[1] or "") .. "|cffFF8000施放了|cffFFFF00" .. (GetObjectName(GetSpellAbilityId()) or "") .. "|cffFF0000" .. (ID2S_naji(GetSpellAbilityId()) or "") .. "|cff00FFFF目标为|cffFFFF00" .. (GetDestructableName(GetSpellTargetDestructable()) or "") .. "|cffFF0000" .. (ID2S_naji(GetDestructableTypeId(GetSpellTargetDestructable())) or "") .. "|cffFFFF00" .. (Sdummy_naji[2] or "") .. "|r")
		end
	else
		if Bpn_naji then
			Sdummy_naji[4] = (GetPlayerName(GetOwningPlayer(GetSpellTargetUnit())) or "") .. "（玩家" .. (I2S(GetPlayerId(GetOwningPlayer(GetSpellTargetUnit())) + 1) or "") .. "）"
		else
			Sdummy_naji[4] = ""
		end
		if Bxy_naji then
			Sdummy_naji[1] = "（" .. (R2S(GetUnitX(GetTriggerUnit())) or "") .. "," .. (R2S(GetUnitY(GetTriggerUnit())) or "") .. "）"
			Sdummy_naji[2] = "（" .. (R2S(GetWidgetX(GetSpellTargetUnit())) or "") .. "," .. (R2S(GetWidgetY(GetSpellTargetUnit())) or "") .. "）"
		else
			Sdummy_naji[1] = ""
			Sdummy_naji[2] = ""
		end
		DisplayTextToPlayer(Ptest_naji, 0, 0, (Sdummy_naji[3] or "") .. "|cffFFFF00" .. (GetUnitName(GetTriggerUnit()) or "") .. "|cffFF0000" .. (ID2S_naji(GetUnitTypeId(GetTriggerUnit())) or "") .. "|cffFFFF00" .. (Sdummy_naji[1] or "") .. "|cffFF8000施放了|cffFFFF00" .. (GetObjectName(GetSpellAbilityId()) or "") .. "|cffFF0000" .. (ID2S_naji(GetSpellAbilityId()) or "") .. "|cff00FFFF目标为|r" .. (Sdummy_naji[4] or "") .. "|cffFFFF00" .. (GetUnitName(GetSpellTargetUnit()) or "") .. "|cffFF0000" .. (ID2S_naji(GetUnitTypeId(GetSpellTargetUnit())) or "") .. "|cffFFFF00" .. (Sdummy_naji[2] or "") .. "|r")
	end
end
function TestA8_naji()
	if GetClickedButton() ~= Button_naji[0] and GetClickedButton() ~= Button_naji[100] then
		if GetClickedButton() == Button_naji[1] then
			if Bxy_naji then
				Bxy_naji = false
			else
				Bxy_naji = true
			end
		elseif GetClickedButton() == Button_naji[2] then
			if Bid_naji then
				Bid_naji = false
			else
				Bid_naji = true
			end
		elseif GetClickedButton() == Button_naji[3] then
			if Bpn_naji then
				Bpn_naji = false
			else
				Bpn_naji = true
			end
		elseif GetClickedButton() == Button_naji[4] then
			if Bir_naji then
				Bir_naji = false
			else
				Bir_naji = true
			end
		elseif GetClickedButton() == Button_naji[5] then
			if Bddm_naji then
				Bddm_naji = false
			else
				Bddm_naji = true
			end
		end
		DialogResetA2_naji()
		DialogDisplay(GetTriggerPlayer(), Dnaji_naji[1], true)
	elseif GetClickedButton() == Button_naji[0] then
		DialogResetA_naji()
		DialogDisplay(GetTriggerPlayer(), Dnaji_naji[0], true)
	end
end
function TestA4_naji()
	local p_naji
	local g_naji
	local i_naji
	local u_naji
	if GetClickedButton() ~= Button_naji[0] and GetClickedButton() ~= Button_naji[100] then
		if GetClickedButton() == Button_naji[1] then
			if IsTriggerEnabled(Ttest_naji[2]) then
				DisableTrigger(Ttest_naji[2])
			else
				EnableTrigger(Ttest_naji[2])
			end
		elseif GetClickedButton() == Button_naji[2] then
			if IsTriggerEnabled(Ttest_naji[15]) then
				DisableTrigger(Ttest_naji[15])
			else
				EnableTrigger(Ttest_naji[15])
			end
		elseif GetClickedButton() == Button_naji[3] then
			if IsTriggerEnabled(Ttest_naji[17]) then
				DisableTrigger(Ttest_naji[17])
			else
				EnableTrigger(Ttest_naji[17])
			end
		elseif GetClickedButton() == Button_naji[4] then
			if IsTriggerEnabled(Ttest_naji[26]) then
				DestroyTrigger(Ttest_naji[0])
				DisableTrigger(Ttest_naji[26])
				Rdummy_naji = 0
			else
				Ttest_naji[0] = CreateTrigger()
				TriggerAddCondition(Ttest_naji[0], Condition(TestA29_naji))
				EnableTrigger(Ttest_naji[26])
				g_naji = CreateGroup()
				i_naji = 0
				for _ in _loop_() do
					GroupEnumUnitsOfPlayer(g_naji, Player(i_naji), nil)
					for _ in _loop_() do
						u_naji = FirstOfGroup(g_naji)
						if u_naji == nil then break end
						GroupRemoveUnit(g_naji, u_naji)
						if GetUnitAbilityLevel(u_naji, 1097625443) == 0 then
							TriggerRegisterUnitEvent(Ttest_naji[0], u_naji, EVENT_UNIT_DAMAGED)
						end
					end
					i_naji = i_naji + 1
					if i_naji >= 16 then break end
				end
				Rdummy_naji = 0
				DestroyGroup(g_naji)
				g_naji = nil
			end
		elseif GetClickedButton() == Button_naji[5] then
			if IsTriggerEnabled(Ttest_naji[4]) then
				DestroyGroup(Gcd_naji[1])
				DisableTrigger(Ttest_naji[4])
			else
				Gcd_naji[1] = CreateGroup()
				EnableTrigger(Ttest_naji[4])
			end
		--=========================以下部分1.24以下的版本需删除==============================
		elseif GetClickedButton() == Button_naji[6] then
			if IsTriggerEnabled(Ttest_naji[7]) then
				DisableTrigger(Ttest_naji[7])
			else
				EnableTrigger(Ttest_naji[7])
				Ihandle_naji = 0
				Rhandle_naji = 0
				p_naji = Location(0, 0)
				Ihandle_naji = GetHandleId(p_naji)
				EnableTrigger(Ttest_naji[7])
				RemoveLocation(p_naji)
				p_naji = nil
			end
		--=========================以上部分1.24以下的版本需删除==============================
		elseif GetClickedButton() == Button_naji[7] then
			if IsTriggerEnabled(Ttest_naji[61]) then
				DisableTrigger(Ttest_naji[61])
			else
				EnableTrigger(Ttest_naji[61])
			end
		elseif GetClickedButton() == Button_naji[8] then
			if IsTriggerEnabled(Ttest_naji[71]) then
				DestroyGroup(Gms_naji)
				DisableTrigger(Ttest_naji[71])
			else
				Gms_naji = CreateGroup()
				EnableTrigger(Ttest_naji[71])
			end
		end
		DialogResetA_naji()
		DialogDisplay(GetTriggerPlayer(), Dnaji_naji[0], true)
	elseif GetClickedButton() == Button_naji[0] then
		DialogResetA2_naji()
		DialogDisplay(GetTriggerPlayer(), Dnaji_naji[1], true)
	end
end
function TestA2_naji()
	DialogResetA_naji()
	DialogDisplay(GetTriggerPlayer(), Dnaji_naji[0], true)
end
--=====================================#功能函数结束=====================================
--=====================================$初始化函数开始=====================================
function TestA_naji()
	local i_naji
	local row_naji = 2769
	Sdummy_naji[1] = "2013/11/04"
	DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 30, "|cff00FF00===============*****===============|r")
	DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 30, "|cffFF8000         开始初始化|cff00FFFFnajitest|cffFF8000测试代码|r")
	DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 30, "|cffFF80C0                代码版本：|cffFF0000V2.4|r")
	DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 30, "|cff00FF00              更新日期：|cffFF0000" .. (Sdummy_naji[1] or "") .. "|r")
	DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 30, "|cffFFFF00       需要查看所有可用代码请按下|cffFF0000F9|r")
	DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 30, "|cffFFFF00     任意玩家输入|cffFF0000'remove|cffFFFF00可清除该系统|r")
	DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 30, "|cff00FF00===============*****===============|r")
	Ptest_naji = GetTriggerPlayer()
	StringList_naji = ".................................!.#$%&'()*+,-./0123456789:;<=>.@ABCDEFGHIJKLMNOPQRSTUVWXYZ[.]^_`abcdefghijklmnopqrstuvwxyz{|}~................................................................................................................................"
	Rworld_naji = CreateRegion()
	RegionAddRect(Rworld_naji, GetWorldBounds())
	Itrigger_naji = 0
	for _ in _loop_() do
		Itrigger_naji = Itrigger_naji + 1
		Ttest_naji[Itrigger_naji] = CreateTrigger()
		if Itrigger_naji >= 77 then break end
	end
	Iquest_naji = 0
	for _ in _loop_() do
		Iquest_naji = Iquest_naji + 1
		Q_naji[Iquest_naji] = CreateQuest()
		QuestSetIconPath(Q_naji[Iquest_naji], "Buildings\\Other\\TempArtB\\BTNTempB.blp")
		QuestSetRequired(Q_naji[Iquest_naji], false)
		QuestSetDiscovered(Q_naji[Iquest_naji], true)
		QuestSetCompleted(Q_naji[Iquest_naji], false)
		if Iquest_naji >= 13 then break end
	end
	i_naji = 61
	QuestSetTitle(Q_naji[1], "|cffFF0000najitest帮助信息")
	QuestSetDescription(Q_naji[1], "|cff00FFFF注意：|r|n|cff00FFFF1、|cffFF0000*|cffFFFF00代表需要输入|cffFF80C0数字/文字，且其数量代表要输入多少个参数，参数之间用英文逗号隔开。多参数命令的第1参数必需输入，其它参数若空缺则系统会自动填补|r|n|cff00FFFF2、|cffFF0000(s)|cffFFFF00代表该代码功能可以同时作用|cffFF80C0玩家选择的所有单位|r|n|cff00FFFF3、|cffFFFF00很多功能都可以通过|cffFF80C0反复输入代码|cffFFFF00来切换|cffFF0000开/关|r|n|cff00FFFF4、|cffFFFF00为保持稳定，判定|cffFF80C0玩家选择单位|cffFFFF00没有同步系统数据，请确保在使用相关代码前|cffFF0000重新框选|cffFFFF00合适的单位|r|n|cff00FFFF5、|cffFFFF00大部分功能支持|cffFF0000负数|cffFFFF00，不支持负数的功能输入负值会|cffFF80C0还原默认设定|r|n|cff00FFFF6、|cffFFFF00使用者可以在任何时候|cffFF0000按下Esc|cffFFFF00重新获得用户控制权及关闭电影模式|r")
	QuestSetTitle(Q_naji[2], "|cffFF0000独立系统")
	QuestSetDescription(Q_naji[2], "|cffFFFF00'feini|cffFF0000(|rnajitest system|cffFF0000)|r|cffFFFF00'gms|cffFF0000(|r(Group Multiple Spell)|cffFF0000)|r|cffFFFF00'gcd|cffFF0000(|r(Group Cool Down)|cffFF0000)|r|n|n|cff00FFFF该系统包含众多测试功能，输入后会打开一个对话框")
	QuestSetTitle(Q_naji[3], "|cffFF0000单位-英雄（必须选择英雄）")
	QuestSetDescription(Q_naji[3], "|cffFFFF00'hl*|cffFF0000(|rset Hero(s) Level|cffFF0000)|r|cffFFFF00'hp*|cffFF0000(|radd Hero(s) skill Point|cffFF0000)|r|cffFFFF00'hs*|cffFF0000(|rset Hero(s) Str|cffFF0000)|r|cffFFFF00'ha*|cffFF0000(|rset Hero(s) Agi|cffFF0000)|r|cffFFFF00'hi*|cffFF0000(|rset Hero(s) Int|cffFF0000)|r")
	QuestSetTitle(Q_naji[4], "|cffFF0000单位-数值（必须选择单位）")
	QuestSetDescription(Q_naji[4], "|cffFFFF00'uts*|cffFF0000(|rUnit(s) Time Scale|cffFF0000)|r|cffFFFF00'uic**|cffFF0000(|rset Unit's Item Charge|cffFF0000)|r|cffFFFF00'um*|cffFF0000(|rset Unit(s) Move speed|cffFF0000)|r|cffFFFF00'uus*|cffFF0000(|rset Unit(s) tUrn Speed|cffFF0000)|r|cffFFFF00'uar*|cffFF0000(|rset Unit(s) Acquire Range|cffFF0000)|r|cffFFFF00'ufh*|cffFF0000(|rset Unit(s) Fly Height|cffFF0000)|r|cffFFFF00'ud*|cffFF0000(|rset Unit(s) user Data|cffFF0000)|r|cffFFFF00'us*|cffFF0000(|rset Unit(s) Scale|cffFF0000)|r|cffFFFF00'uvc****|cffFF0000(|rset Unit(s) Vertax Color|cffFF0000)|r|cffFFFF00'uxy**|cffFF0000(|rset Unit(s) XY|cffFF0000)|r")
	QuestSetTitle(Q_naji[5], "|cffFF0000单位-状态（必须选择单位）")
	QuestSetDescription(Q_naji[5], "|cffFFFF00'uh|cffFF0000(|rUnit(s) Healing|cffFF0000)|r|cffFFFF00'up|cffFF0000(|rUnit(s) Pause|cffFF0000)|r|cffFFFF00'ub|cffFF0000(|rUnit(s) Buff clear|cffFF0000)|r|cffFFFF00'uw|cffFF0000(|rUnit(s) Windwalk|cffFF0000)|r")
	QuestSetTitle(Q_naji[6], "|cffFF0000单位-特殊（必须选择单位）")
	QuestSetDescription(Q_naji[6], "|cffFFFF00'ua*|cffFF0000(|rplay Unit(s) Animation by index|cffFF0000)|r|cffFFFF00'ui|cffFF0000(|rUnit Information|cffFF0000)|r|cffFFFF00'uo*|cffFF0000(|rset Unit(s) Owner|cffFF0000)|r|cffFFFF00'uk|cffFF0000(|rUnit(s) Killed|cffFF0000)|r|cffFFFF00'co**|cffFF0000(|rCreate Object|cffFF0000)|r|cffFFFF00'ul|cffFF0000(|rUnit camera Lock|cffFF0000)|r|cffFFFF00'ur|cffFF0000(|rUnit(s) Remove|cffFF0000)|r|cffFFFF00'uii*|cffFF0000(|rUnit's Item Information|cffFF0000)|r")
	QuestSetTitle(Q_naji[7], "|cffFF0000玩家相关")
	QuestSetDescription(Q_naji[7], "|cffFFFF00'ag**/al**|cffFF0000(|rAdd Gold/Lumber|cffFF0000)|r|cffFFFF00'pc**|cffFF0000(|rPlayer Control|cffFF0000)|r|cffFFFF00'pa**|cffFF0000(|rset Player Alliance|cffFF0000)|r|cffFFFF00'pk*|cffFF0000(|rPlayer Kicked|cffFF0000)|r|cffFFFF00'ph**|cffFF0000(|rset Player Handicap|cffFF0000)|r|cffFFFF00'pn*|cffFF0000(|rPlayer Name|cffFF0000)|r|cffFFFF00'pt***|cffFF0000(|rPlayer Tech|cffFF0000)|r|cffFFFF00'psl|cffFF0000(|rPlayer Statistics List|cffFF0000)|r")
	QuestSetTitle(Q_naji[8], "|cffFF0000镜头相关")
	QuestSetDescription(Q_naji[8], "|cffFFFF00'cm|cffFF0000(|rCamera Mode|cffFF0000)|r|cffFFFF00'cd*|cffFF0000(|rCamera Distance|cffFF0000)|r|cffFFFF00'cr|cffFF0000(|rCamera Reset|cffFF0000)|r|cffFFFF00'ci|cffFF0000(|rCamera Information|cffFF0000)|r|cffFFFF00'cz*|cffFF0000(|rset Camera farZ|cffFF0000)|r")
	QuestSetTitle(Q_naji[9], "|cffFF0000其它")
	QuestSetDescription(Q_naji[9], "|cffFFFF00'fog|cffFF0000(|rFog|cffFF0000)|r|cffFFFF00'sc|cffFF0000(|rScreen Clear|cffFF0000)|r|cffFFFF00'rd|cffFF0000(|rRoll Dice|cffFF0000)|r|cffFFFF00'bm*|cffFF0000(|rBackup Message|cffFF0000)|r|cffFFFF00'cbm|cffFF0000(|rClear Backup Message|cffFF0000)|r|cffFFFF00'td*|cffFF0000(|rset Time of Day|cffFF0000)|r|cffFFFF00'ts*|cffFF0000(|rset Time of day Scale|cffFF0000)|r|cffFFFF00'we*|cffFF0000(|rWeather Effect|cffFF0000)|r|cffFFFF00'se*|cffFF0000(|rSystem Exchange|cffFF0000)|r|cffFFFF00'ef*|cffFF0000(|rExecute Function|cffFF0000)|r")
	QuestSetTitle(Q_naji[10], "|cffFF0000游戏设置")
	QuestSetDescription(Q_naji[10], "|cffFFFF00'mv*|cffFF0000(|rMusic Volume|cffFF0000)|r|cffFFFF00'sv*|cffFF0000(|rSound Volume|cffFF0000)|r|cffFFFF00'pg|cffFF0000(|rPause Game|cffFF0000)|r|cffFFFF00'rs*|cffFF0000(|rset Random Seed|cffFF0000)|r|cffFFFF00'gg|cffFF0000(|rGood Game|cffFF0000)|r|cffFFFF00'gs*|cffFF0000(|rset Game Speed|cffFF0000)|r|cffFFFF00'mf|cffFF0000(|rset Map Flag|cffFF0000)|r|cffFFFF00're|cffFF0000(|rRestart|cffFF0000)|r")
	QuestSetTitle(Q_naji[11], "|cffFF0000co命令帮助信息")
	QuestSetDescription(Q_naji[11], "|cffFF0000co命令可以创建单位、物品、可破坏物、添加删除技能、设置技能等级、删除buff。输入格式为'co+id+,+数值，数值对应创建物体的数量或技能等级，当没有输入数值时，默认为1。当单位已经拥有该技能，带有数值的'co命令会改变等级，不带数值的则会删除技能。|n|n|cffFFFF00Amov|cffFF0000(|r移动|cffFF0000)|r|cffFFFF00Abun|cffFF0000(|r货物保持|cffFF0000)|r|cffFFFF00Avul|cffFF0000(|r无敌|cffFF0000)|r|cffFFFF00AInv|cffFF0000(|r英雄物品栏|cffFF0000)|r|cffFFFF00ARal|cffFF0000(|r集结|cffFF0000)|r|cffFFFF00Arng|cffFF0000(|r复仇|cffFF0000)|r|cffFFFF00Awan|cffFF0000(|r游荡者|cffFF0000)|r|cffFFFF00Ane2|cffFF0000(|r选择单位|cffFF0000)|r|cffFFFF00Apiv|cffFF0000(|r永久隐形|cffFF0000)|r|cffFFFF00Adtg|cffFF0000(|r真实视域|cffFF0000)|r|cffFFFF00Aeth|cffFF0000(|r可见幽灵|cffFF0000)|r|cffFFFF00Arsk|cffFF0000(|r抗性皮肤|cffFF0000)|r|cffFFFF00Acmi|cffFF0000(|r魔法免疫|cffFF0000)|r")
	QuestSetTitle(Q_naji[12], "|cffFF0000we命令帮助信息")
	QuestSetDescription(Q_naji[12], "|cffFF0000注意乱输4位ID会游戏崩溃！输入的ID未满4位时会清除所有已创建的全图天气。|r|n|n|cffFFFF00RA(h/l)r|cffFF0000(|r白杨谷(大/小)雨|cffFF0000)|r|cffFFFF00MEds|cffFF0000(|r达拉然之盾|cffFF0000)|r|cffFFFF00FD(b/g/r/w)(h/l)|cffFF0000(|r地下城(蓝/绿/红/白)(浓/薄)雾|cffFF0000)|r|cffFFFF00RL(h/l)r|cffFF0000(|r洛丹伦(大/小)雨|cffFF0000)|r|cffFFFF00SN(b/h/l)s|cffFF0000(|r诺森德(暴/大/小)雪|cffFF0000)|r|cffFFFF00WO(c/l)w|cffFF0000(|r边缘之地(大/小)风|cffFF0000)|r|cffFFFF00Lr(a/m)a|cffFF0000(|r(日/月)光|cffFF0000)|r|cffFFFF00WNcw|cffFF0000(|r大风|cffFF0000)|r")
	QuestSetTitle(Q_naji[13], "|cffFF0000najitest基本信息")
	QuestSetDescription(Q_naji[13], "|cffFFFF00脚本作者：|cffFF0000najizhimo|r|n|cffFFFF00当前使用者：|cffFF0000" .. (GetPlayerName(Ptest_naji) or "") .. "|r|n|cffFFFF00更新日期：|cffFF0000" .. (Sdummy_naji[1] or "") .. "|n|cffFFFF00可用代码数量：|cffFF0000" .. (I2S(i_naji) or "") .. "|r|n|cffFFFF00注册触发数量：|cffFF0000" .. (I2S(Itrigger_naji) or "") .. "|r|n|cffFFFF00创建任务数量：|cffFF0000" .. (I2S(Iquest_naji) or "") .. "|r|n|cffFFFF00脚本行数：|cffFF0000" .. (I2S(row_naji) or "") .. "|n|cffFFFF00对此系统有任何提议请到|cffFF80C0百度魔兽地图编辑器贴吧|cffFFFF00发贴|r|n|cffFFFF00任意玩家输入|cffFF0000'remove|cffFFFF00可清除该系统|r")
	FlashQuestDialogButton()
	--=========================naji system开始==============================
	--'feini(najitest system)
	Dnaji_naji[0] = DialogCreate()
	TriggerRegisterPlayerChatEvent(Ttest_naji[1], GetTriggerPlayer(), "'feini", true)
	TriggerAddCondition(Ttest_naji[1], Condition(TestA2_naji))
	TriggerRegisterDialogEvent(Ttest_naji[3], Dnaji_naji[0])
	TriggerAddCondition(Ttest_naji[3], Condition(TestA4_naji))
	--Display Ability
	i_naji = 0
	for _ in _loop_() do
		TriggerRegisterPlayerUnitEvent(Ttest_naji[2], Player(i_naji), EVENT_PLAYER_UNIT_SPELL_EFFECT, nil)
		i_naji = i_naji + 1
		if i_naji >= 16 then break end
	end
	TriggerAddCondition(Ttest_naji[2], Condition(TestA3_naji))
	DisableTrigger(Ttest_naji[2])
	--Display Order
	i_naji = 0
	for _ in _loop_() do
		TriggerRegisterPlayerUnitEvent(Ttest_naji[15], Player(i_naji), EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER, nil)
		TriggerRegisterPlayerUnitEvent(Ttest_naji[15], Player(i_naji), EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER, nil)
		TriggerRegisterPlayerUnitEvent(Ttest_naji[15], Player(i_naji), EVENT_PLAYER_UNIT_ISSUED_ORDER, nil)
		i_naji = i_naji + 1
		if i_naji >= 16 then break end
	end
	TriggerAddCondition(Ttest_naji[15], Condition(TestA17_naji))
	DisableTrigger(Ttest_naji[15])
	--Display Life
	TriggerRegisterEnterRegion(Ttest_naji[17], Rworld_naji, nil)
	i_naji = 0
	for _ in _loop_() do
		TriggerRegisterPlayerUnitEvent(Ttest_naji[17], Player(i_naji), EVENT_PLAYER_UNIT_DEATH, nil)
		i_naji = i_naji + 1
		if i_naji >= 16 then break end
	end
	TriggerAddCondition(Ttest_naji[17], Condition(TestA19_naji))
	DisableTrigger(Ttest_naji[17])
	--Display Damage
	TriggerRegisterEnterRegion(Ttest_naji[26], Rworld_naji, nil)
	TriggerAddCondition(Ttest_naji[26], Condition(TestA28_naji))
	DisableTrigger(Ttest_naji[26])
	--No cd mana Cost
	i_naji = 0
	for _ in _loop_() do
		TriggerRegisterPlayerUnitEvent(Ttest_naji[4], Player(i_naji), EVENT_PLAYER_UNIT_SPELL_EFFECT, nil)
		i_naji = i_naji + 1
		if i_naji >= 16 then break end
	end
	TriggerAddCondition(Ttest_naji[4], Condition(TestA5_naji))
	DisableTrigger(Ttest_naji[4])
	Gcd_naji[0] = CreateGroup()
	Gcd_naji[1] = nil
	--=========================以下部分1.24以下的版本需删除==============================
	--Display Handle
	TriggerRegisterTimerEvent(Ttest_naji[7], 0.1, true)
	TriggerAddCondition(Ttest_naji[7], Condition(TestA9_naji))
	DisableTrigger(Ttest_naji[7])
	--=========================以上部分1.24以下的版本需删除==============================
	--Observer
	i_naji = 0
	for _ in _loop_() do
		TriggerRegisterPlayerChatEvent(Ttest_naji[61], Player(i_naji), "", false)
		i_naji = i_naji + 1
		if i_naji >= 16 then break end
	end
	DisableTrigger(Ttest_naji[61])
	TriggerAddCondition(Ttest_naji[61], Condition(TestA66_naji))
	--Multiple Spell
	i_naji = 0
	for _ in _loop_() do
		TriggerRegisterPlayerUnitEvent(Ttest_naji[71], Player(i_naji), EVENT_PLAYER_UNIT_SPELL_EFFECT, nil)
		i_naji = i_naji + 1
		if i_naji >= 16 then break end
	end
	TriggerAddCondition(Ttest_naji[71], Condition(TestA76_naji))
	DisableTrigger(Ttest_naji[71])
	Gms_naji = nil
	--系统信息调整
	Dnaji_naji[1] = DialogCreate()
	TriggerRegisterDialogEvent(Ttest_naji[6], Dnaji_naji[1])
	TriggerAddCondition(Ttest_naji[6], Condition(TestA8_naji))
	--whether display widget XY
	Bxy_naji = true
	--whether display widget ID
	Bid_naji = true
	--whether display Player Name
	Bpn_naji = false
	--whether display Int or Real
	Bir_naji = true
	--change Display Damage Mode
	Bddm_naji = false
	--=========================naji system结束==============================
	--’uh(Unit(s) Healing)
	TriggerRegisterPlayerChatEvent(Ttest_naji[5], GetTriggerPlayer(), "'uh", true)
	TriggerAddCondition(Ttest_naji[5], Condition(TestA7_naji))
	--’ag**/al**(Add Gold/Lumber)
	TriggerRegisterPlayerChatEvent(Ttest_naji[8], GetTriggerPlayer(), "'ag", false)
	TriggerAddCondition(Ttest_naji[8], Condition(TestA10_naji))
	TriggerRegisterPlayerChatEvent(Ttest_naji[9], GetTriggerPlayer(), "'al", false)
	TriggerAddCondition(Ttest_naji[9], Condition(TestA11_naji))
	--’hl*(set Hero(s) Level)
	TriggerRegisterPlayerChatEvent(Ttest_naji[10], GetTriggerPlayer(), "'hl", false)
	TriggerAddCondition(Ttest_naji[10], Condition(TestA12_naji))
	--’fog(Fog)
	TriggerRegisterPlayerChatEvent(Ttest_naji[11], GetTriggerPlayer(), "'fog", true)
	TriggerAddCondition(Ttest_naji[11], Condition(TestA13_naji))
	if IsMapFlagSet(MAP_FOG_ALWAYS_VISIBLE) then
		Bfog_naji = false
	else
		Bfog_naji = true
	end
	--’ua*(play Unit(s) Animation by index)
	TriggerRegisterPlayerChatEvent(Ttest_naji[12], GetTriggerPlayer(), "'ua", false)
	TriggerAddCondition(Ttest_naji[12], Condition(TestA14_naji))
	--’cd(Camera Distance)
	i_naji = 0
	for _ in _loop_() do
		TriggerRegisterPlayerChatEvent(Ttest_naji[13], Player(i_naji), "'cd", false)
		i_naji = i_naji + 1
		if i_naji >= 16 then break end
	end
	TriggerAddCondition(Ttest_naji[13], Condition(TestA15_naji))
	--'ur(Unit(s) Remove)
	TriggerRegisterPlayerChatEvent(Ttest_naji[14], GetTriggerPlayer(), "'ur", true)
	TriggerAddCondition(Ttest_naji[14], Condition(TestA16_naji))
	--'pn(Player Name)
	i_naji = 0
	for _ in _loop_() do
		TriggerRegisterPlayerChatEvent(Ttest_naji[16], Player(i_naji), "'pn", false)
		i_naji = i_naji + 1
		if i_naji >= 16 then break end
	end
	TriggerAddCondition(Ttest_naji[16], Condition(TestA18_naji))
	--'sc(Screen Clear)
	i_naji = 0
	for _ in _loop_() do
		TriggerRegisterPlayerChatEvent(Ttest_naji[18], Player(i_naji), "'sc", true)
		i_naji = i_naji + 1
		if i_naji >= 16 then break end
	end
	TriggerAddCondition(Ttest_naji[18], Condition(TestA20_naji))
	--'cr(Camera Reset)
	i_naji = 0
	for _ in _loop_() do
		TriggerRegisterPlayerChatEvent(Ttest_naji[19], Player(i_naji), "'cr", true)
		i_naji = i_naji + 1
		if i_naji >= 16 then break end
	end
	TriggerAddCondition(Ttest_naji[19], Condition(TestA21_naji))
	--’ui(Unit Information)
	i_naji = 0
	for _ in _loop_() do
		TriggerRegisterPlayerChatEvent(Ttest_naji[20], Player(i_naji), "'ui", true)
		i_naji = i_naji + 1
		if i_naji >= 16 then break end
	end
	TriggerAddCondition(Ttest_naji[20], Condition(TestA22_naji))
	--’pc**(Player Control)
	TriggerRegisterPlayerChatEvent(Ttest_naji[21], GetTriggerPlayer(), "'pc", false)
	TriggerAddCondition(Ttest_naji[21], Condition(TestA23_naji))
	--'uvc****(set Unit(s) Vertex Color)
	TriggerRegisterPlayerChatEvent(Ttest_naji[22], GetTriggerPlayer(), "'uvc", false)
	TriggerAddCondition(Ttest_naji[22], Condition(TestA24_naji))
	--’uts*(Unit(s) Time Scale)
	TriggerRegisterPlayerChatEvent(Ttest_naji[23], GetTriggerPlayer(), "'uts", false)
	TriggerAddCondition(Ttest_naji[23], Condition(TestA25_naji))
	--’pg(Pause Game)
	TriggerRegisterPlayerChatEvent(Ttest_naji[24], GetTriggerPlayer(), "'pg", true)
	TriggerAddCondition(Ttest_naji[24], Condition(TestA26_naji))
	Bpause_naji = false
	--'psl(Player Statistics List)
	TriggerRegisterPlayerChatEvent(Ttest_naji[25], GetTriggerPlayer(), "'psl", true)
	TriggerAddCondition(Ttest_naji[25], Condition(TestA27_naji))
	--'up(Unit(s) Pause)
	TriggerRegisterPlayerChatEvent(Ttest_naji[27], GetTriggerPlayer(), "'up", true)
	TriggerAddCondition(Ttest_naji[27], Condition(TestA30_naji))
	--'mv*(Music Volume)
	TriggerRegisterPlayerChatEvent(Ttest_naji[28], GetTriggerPlayer(), "'mv", false)
	TriggerAddCondition(Ttest_naji[28], Condition(TestA31_naji))
	--'rd(Roll Dice)
	TriggerRegisterPlayerChatEvent(Ttest_naji[29], GetTriggerPlayer(), "'rd", true)
	TriggerAddCondition(Ttest_naji[29], Condition(TestA32_naji))
	--'sv*(Sound Volume)
	TriggerRegisterPlayerChatEvent(Ttest_naji[30], GetTriggerPlayer(), "'sv", false)
	TriggerAddCondition(Ttest_naji[30], Condition(TestA33_naji))
	--'bm*(Backup Message)
	i_naji = 0
	for _ in _loop_() do
		TriggerRegisterPlayerChatEvent(Ttest_naji[31], Player(i_naji), "'bm", false)
		i_naji = i_naji + 1
		if i_naji >= 16 then break end
	end
	TriggerAddCondition(Ttest_naji[31], Condition(TestA34_naji))
	Ibm_naji = 0
	--'cbm(Clear Backup Message)
	TriggerRegisterPlayerChatEvent(Ttest_naji[32], GetTriggerPlayer(), "'cbm", true)
	TriggerAddCondition(Ttest_naji[32], Condition(TestA35_naji))
	--'uic**(set Unit's Item Charge)
	TriggerRegisterPlayerChatEvent(Ttest_naji[33], GetTriggerPlayer(), "'uic", false)
	TriggerAddCondition(Ttest_naji[33], Condition(TestA36_naji))
	--'rs*(set Random Seed)
	TriggerRegisterPlayerChatEvent(Ttest_naji[34], GetTriggerPlayer(), "'rs", false)
	TriggerAddCondition(Ttest_naji[34], Condition(TestA37_naji))
	--'td*(set Time of Day)
	TriggerRegisterPlayerChatEvent(Ttest_naji[35], GetTriggerPlayer(), "'td", false)
	TriggerAddCondition(Ttest_naji[35], Condition(TestA38_naji))
	--'um*(set Unit(s) Move speed)
	TriggerRegisterPlayerChatEvent(Ttest_naji[36], GetTriggerPlayer(), "'um", false)
	TriggerAddCondition(Ttest_naji[36], Condition(TestA39_naji))
	--'uus*(set Unit(s) tUrn Speed)
	TriggerRegisterPlayerChatEvent(Ttest_naji[37], GetTriggerPlayer(), "'uus", false)
	TriggerAddCondition(Ttest_naji[37], Condition(TestA40_naji))
	--'uar*(set Unit(s) Acquire Range)
	TriggerRegisterPlayerChatEvent(Ttest_naji[38], GetTriggerPlayer(), "'uar", false)
	TriggerAddCondition(Ttest_naji[38], Condition(TestA41_naji))
	--'ufh*(set Unit(s) Fly Height)
	TriggerRegisterPlayerChatEvent(Ttest_naji[39], GetTriggerPlayer(), "'ufh", false)
	TriggerAddCondition(Ttest_naji[39], Condition(TestA42_naji))
	--'hp*(add Hero(s) skill Point)
	TriggerRegisterPlayerChatEvent(Ttest_naji[40], GetTriggerPlayer(), "'hp", false)
	TriggerAddCondition(Ttest_naji[40], Condition(TestA43_naji))
	--'hs*(set Hero(s) Str)
	TriggerRegisterPlayerChatEvent(Ttest_naji[41], GetTriggerPlayer(), "'hs", false)
	TriggerAddCondition(Ttest_naji[41], Condition(TestA44_naji))
	--'ha*(set Hero(s) Agi)
	TriggerRegisterPlayerChatEvent(Ttest_naji[42], GetTriggerPlayer(), "'ha", false)
	TriggerAddCondition(Ttest_naji[42], Condition(TestA45_naji))
	--'hi*(set Hero(s) Int)
	TriggerRegisterPlayerChatEvent(Ttest_naji[43], GetTriggerPlayer(), "'hi", false)
	TriggerAddCondition(Ttest_naji[43], Condition(TestA46_naji))
	--'ud*(set Unit(s) user Data)
	TriggerRegisterPlayerChatEvent(Ttest_naji[44], GetTriggerPlayer(), "'ud", false)
	TriggerAddCondition(Ttest_naji[44], Condition(TestA47_naji))
	--'ts*(set Time of day Scale)
	TriggerRegisterPlayerChatEvent(Ttest_naji[45], GetTriggerPlayer(), "'ts", false)
	TriggerAddCondition(Ttest_naji[45], Condition(TestA48_naji))
	--'ph**(set Player Handicap)
	TriggerRegisterPlayerChatEvent(Ttest_naji[46], GetTriggerPlayer(), "'ph", false)
	TriggerAddCondition(Ttest_naji[46], Condition(TestA49_naji))
	--'uk(Unit(s) killed)
	TriggerRegisterPlayerChatEvent(Ttest_naji[47], GetTriggerPlayer(), "'uk", true)
	TriggerAddCondition(Ttest_naji[47], Condition(TestA50_naji))
	--'remove(remove najitest)
	i_naji = 0
	for _ in _loop_() do
		TriggerRegisterPlayerChatEvent(Ttest_naji[48], Player(i_naji), "'remove", true)
		i_naji = i_naji + 1
		if i_naji >= 16 then break end
	end
	TriggerAddCondition(Ttest_naji[48], Condition(TestA51_naji))
	--’pa**(set Player Alliance)
	TriggerRegisterPlayerChatEvent(Ttest_naji[49], GetTriggerPlayer(), "'pa", false)
	TriggerAddCondition(Ttest_naji[49], Condition(TestA52_naji))
	--'uo*(set Unit(s) Owner)
	TriggerRegisterPlayerChatEvent(Ttest_naji[50], GetTriggerPlayer(), "'uo", false)
	TriggerAddCondition(Ttest_naji[50], Condition(TestA53_naji))
	--'cz*(set Camera farZ)
	TriggerRegisterPlayerChatEvent(Ttest_naji[51], GetTriggerPlayer(), "'cz", false)
	TriggerAddCondition(Ttest_naji[51], Condition(TestA54_naji))
	--'uw(Unit(s) Windwalk)
	Guw_naji = CreateGroup()
	TriggerRegisterPlayerChatEvent(Ttest_naji[52], GetTriggerPlayer(), "'uw", true)
	TriggerAddCondition(Ttest_naji[52], Condition(TestA55_naji))
	--'co**(Create Object)
	TriggerRegisterPlayerChatEvent(Ttest_naji[53], GetTriggerPlayer(), "'co", false)
	TriggerAddCondition(Ttest_naji[53], Condition(TestA56_naji))
	--'pk*(Player Kicked)
	TriggerRegisterPlayerChatEvent(Ttest_naji[54], GetTriggerPlayer(), "'pk", false)
	TriggerAddCondition(Ttest_naji[54], Condition(TestA57_naji))
	--'ub(Unit(s) Buff clear)
	TriggerRegisterPlayerChatEvent(Ttest_naji[55], GetTriggerPlayer(), "'ub", true)
	TriggerAddCondition(Ttest_naji[55], Condition(TestA59_naji))
	--'ul(Unit camera Lock)
	TriggerRegisterPlayerChatEvent(Ttest_naji[56], GetTriggerPlayer(), "'ul", true)
	TriggerAddCondition(Ttest_naji[56], Condition(TestA60_naji))
	--'cm(Camera Mode)
	Tcamera_naji = nil
	Bcamera_naji[0] = false
	Bcamera_naji[1] = false
	Bcamera_naji[2] = false
	Bcamera_naji[3] = false
	Bcamera_naji[4] = false
	TriggerRegisterPlayerChatEvent(Ttest_naji[57], GetTriggerPlayer(), "'cm", true)
	TriggerAddCondition(Ttest_naji[57], Condition(TestA61_naji))
	DisableTrigger(Ttest_naji[58])
	TriggerRegisterPlayerEvent(Ttest_naji[58], GetTriggerPlayer(), EVENT_PLAYER_ARROW_UP_DOWN)
	TriggerRegisterPlayerEvent(Ttest_naji[58], GetTriggerPlayer(), EVENT_PLAYER_ARROW_DOWN_DOWN)
	TriggerRegisterPlayerEvent(Ttest_naji[58], GetTriggerPlayer(), EVENT_PLAYER_ARROW_LEFT_DOWN)
	TriggerRegisterPlayerEvent(Ttest_naji[58], GetTriggerPlayer(), EVENT_PLAYER_ARROW_RIGHT_DOWN)
	TriggerAddCondition(Ttest_naji[58], Condition(TestA62_naji))
	DisableTrigger(Ttest_naji[59])
	TriggerRegisterPlayerEvent(Ttest_naji[59], GetTriggerPlayer(), EVENT_PLAYER_ARROW_UP_UP)
	TriggerRegisterPlayerEvent(Ttest_naji[59], GetTriggerPlayer(), EVENT_PLAYER_ARROW_DOWN_UP)
	TriggerRegisterPlayerEvent(Ttest_naji[59], GetTriggerPlayer(), EVENT_PLAYER_ARROW_LEFT_UP)
	TriggerRegisterPlayerEvent(Ttest_naji[59], GetTriggerPlayer(), EVENT_PLAYER_ARROW_RIGHT_UP)
	TriggerAddCondition(Ttest_naji[59], Condition(TestA63_naji))
	--'ci(Camera Information)
	i_naji = 0
	for _ in _loop_() do
		TriggerRegisterPlayerChatEvent(Ttest_naji[60], Player(i_naji), "'ci", true)
		i_naji = i_naji + 1
		if i_naji >= 16 then break end
	end
	TriggerAddCondition(Ttest_naji[60], Condition(TestA65_naji))
	--'us*(Unit(s) Scale)
	TriggerRegisterPlayerChatEvent(Ttest_naji[62], GetTriggerPlayer(), "'us", false)
	TriggerAddCondition(Ttest_naji[62], Condition(TestA67_naji))
	--'gg(Good Game)
	TriggerRegisterPlayerChatEvent(Ttest_naji[63], GetTriggerPlayer(), "'gg", true)
	TriggerAddCondition(Ttest_naji[63], Condition(TestA68_naji))
	--'gs*(set Game Speed)
	TriggerRegisterPlayerChatEvent(Ttest_naji[64], GetTriggerPlayer(), "'gs", false)
	TriggerAddCondition(Ttest_naji[64], Condition(TestA69_naji))
	--'mf(set Map Flag)
	Dnaji_naji[2] = DialogCreate()
	TriggerRegisterPlayerChatEvent(Ttest_naji[65], GetTriggerPlayer(), "'mf", true)
	TriggerAddCondition(Ttest_naji[65], Condition(TestA70_naji))
	TriggerRegisterDialogEvent(Ttest_naji[66], Dnaji_naji[2])
	TriggerAddCondition(Ttest_naji[66], Condition(TestA71_naji))
	--Esc
	TriggerRegisterPlayerEvent(Ttest_naji[67], GetTriggerPlayer(), EVENT_PLAYER_END_CINEMATIC)
	TriggerAddCondition(Ttest_naji[67], Condition(TestA72_naji))
	--'we(Weather Effect)
	Iweather_naji = 0
	Weather_naji[0] = nil
	TriggerRegisterPlayerChatEvent(Ttest_naji[68], GetTriggerPlayer(), "'we", false)
	TriggerAddCondition(Ttest_naji[68], Condition(TestA73_naji))
	--'pt***(set Player Tech)
	TriggerRegisterPlayerChatEvent(Ttest_naji[69], GetTriggerPlayer(), "'pt", false)
	TriggerAddCondition(Ttest_naji[69], Condition(TestA74_naji))
	--'re(Restart)
	TriggerRegisterPlayerChatEvent(Ttest_naji[70], GetTriggerPlayer(), "'re", true)
	TriggerAddCondition(Ttest_naji[70], Condition(TestA75_naji))
	--'gms(Group Multiple Spell)
	TriggerRegisterPlayerChatEvent(Ttest_naji[72], GetTriggerPlayer(), "'gms", true)
	TriggerAddCondition(Ttest_naji[72], Condition(TestA77_naji))
	--'gcd(Group Cool Down)
	TriggerRegisterPlayerChatEvent(Ttest_naji[73], GetTriggerPlayer(), "'gcd", true)
	TriggerAddCondition(Ttest_naji[73], Condition(TestA78_naji))
	--'uii*(Unit's Item Information)
	i_naji = 0
	for _ in _loop_() do
		TriggerRegisterPlayerChatEvent(Ttest_naji[74], Player(i_naji), "'uii", false)
		i_naji = i_naji + 1
		if i_naji >= 16 then break end
	end
	TriggerAddCondition(Ttest_naji[74], Condition(TestA79_naji))
	--'uxy**(set Unit(s) XY)
	TriggerRegisterPlayerChatEvent(Ttest_naji[75], GetTriggerPlayer(), "'uxy", false)
	TriggerAddCondition(Ttest_naji[75], Condition(TestA80_naji))
	--'se*(System Exchange)
	TriggerRegisterPlayerChatEvent(Ttest_naji[76], GetTriggerPlayer(), "'se", false)
	TriggerAddCondition(Ttest_naji[76], Condition(TestA81_naji))
	--'ef*(Execute Function)
	TriggerRegisterPlayerChatEvent(Ttest_naji[77], GetTriggerPlayer(), "'ef", false)
	TriggerAddCondition(Ttest_naji[77], Condition(TestA82_naji))
	DestroyTrigger(GetTriggeringTrigger())
end
function najitest()
	local t_naji = CreateTrigger()
	local i_naji = 0
	for _ in _loop_() do
		TriggerRegisterPlayerChatEvent(t_naji, Player(i_naji), "'feini", true)
		i_naji = i_naji + 1
		if i_naji >= 16 then break end
	end
	TriggerAddCondition(t_naji, Condition(TestA_naji))
	t_naji = nil
end
najitest()
--=====================================$初始化函数结束=====================================
--===============najitest===============