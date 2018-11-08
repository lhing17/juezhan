-----------------------------------
-- 游戏逻辑处理
-- 1. 基地保护逻辑
-- 2. 选择英雄及门派
-- 3. 设置游戏模式和难度
-- 4. 游戏界面显示相关
-- 5. 游戏胜利和失败
-- 6. 玩家英雄阵亡和复活
-- 7. 刷怪相关
-- 8. 鸟的技能
-- 9. 英雄升级
-- 10. 各类回复
-- 11. 远程传送
-- 12. 古董系统
-- 14. 积分和声望换物品、武学精要
-- 15. 学习和遗忘武功（含激活残章）
-- 16. 合成物品
-- 17. 伴侣系统
-- 18. 整理地图上物品
-- 19. 其他琐碎逻辑
-----------------------------------






--主机选择模式
function Trig_____________u_Func002C()
	return GetPlayerController(Player(0)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(0)) == PLAYER_SLOT_STATE_PLAYING
end
function ChooseMoShi()
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FF40主机开始选择游戏模式")
	if GetPlayerController(Player(0)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(0)) == PLAYER_SLOT_STATE_PLAYING then -- INLINED!!
		DialogClear(udg_index)
		DialogSetMessage(udg_index, "请选择游戏模式")
		udg_index0 = DialogAddButtonBJ(udg_index, "|cFF00CC00普通模式")
		udg_index1 = DialogAddButtonBJ(udg_index, "|cFFCC0066特殊事件模式")
		udg_index2 = DialogAddButtonBJ(udg_index, "|cFFFF6600生存模式")
		udg_index3 = DialogAddButtonBJ(udg_index, "|cFF6600FF快速通关模式")
		DialogDisplayBJ(true, udg_index, Player(0))
	end
end
function ChooseMoShi_Action()
	if GetClickedButton() == udg_index0 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF主机选择了普通模式")
		udg_teshushijian = false
		udg_shengchun = false
	end
	if GetClickedButton() == udg_index1 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF主机选择了特殊事件模式")
		udg_teshushijian = true
		udg_shengchun = false
	end
	if GetClickedButton() == udg_index2 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF主机选择了生存模式")
		udg_teshushijian = false
		udg_shengchun = true
	end
	if GetClickedButton() == udg_index3 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF主机选择了快速通关模式")
		udg_teshushijian = false
		udg_shengchun = false
		udg_sutong = true
	end
end
--试玩模式
function BeforeAttack()
	return hd == false
end
function SetShiWan()
	ShiFouShuaGuai = false
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFF00FF00玩家一选择了试玩模式，怪物不会进攻主城，大家可以尽情的去体验玩法了")
end

--系统窗口
function SystemWindow()
	local i = 0
	local s = nil
	CreateMultiboardBJ(5, 20, "系统窗口")
	MultiboardSetItemsStyle(bj_lastCreatedMultiboard, true, false)
	MultiboardSetItemsWidth(bj_lastCreatedMultiboard, 0.07)
	i = 1
	for _ in _loop_() do
		if i >= 6 then break end
		if udg_MaxDamage[i] < 10000.0 then
			s = R2S(udg_MaxDamage[i])
		elseif udg_MaxDamage[i] < 100000000.0 then
			s = (R2S(udg_MaxDamage[i]) or "") .. "万"
		elseif udg_MaxDamage[i] / 10000.0 < 100000000.0 then
			s = (R2S(udg_MaxDamage[i]) or "") .. "亿"
		elseif udg_MaxDamage[i] / 100000000.0 < 100000000.0 then
			s = (R2S(udg_MaxDamage[i]) or "") .. "万亿"
		else
			s = (R2S(udg_MaxDamage[i]) or "") .. "亿亿"
		end
		MultiboardSetTitleText(bj_lastCreatedMultiboard, "|cFFFFCC33这并不是系统窗口")
		DuoMianBan(bj_lastCreatedMultiboard, 1, 4 * i - 3, "|c00FF0080" .. (GetPlayerName(Player(i - 1)) or ""))
		DuoMianBan(bj_lastCreatedMultiboard, 2, 4 * i - 3, "|c0000FF00" .. "等级：" .. (I2S(GetUnitLevel(udg_hero[i])) or ""))
		DuoMianBan(bj_lastCreatedMultiboard, 3, 4 * i - 3, "|cFF00CCFF" .. (udg_menpainame[udg_runamen[i]] or ""))
		DuoMianBan(bj_lastCreatedMultiboard, 4, 4 * i - 3, "|cFFFF6600" .. "最高伤害：" .. (s or ""))
		if Ce[i] == 1 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99炼丹师")
		elseif Ce[i] == 2 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99锻造师")
		elseif Ce[i] == 3 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99兵器师")
		elseif Ce[i] == 4 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99鉴定师")
		elseif Ce[i] == 5 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99练气师")
		elseif Ce[i] == 6 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99寻宝师")
		elseif Ce[i] == 7 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99丫鬟")
		elseif Ce[i] == 8 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99精武师")
		else
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99未选择")
		end
		if I7[20 * (i - 1) + 1] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 1, 4 * i - 2, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 1]) or ""))
		end
		if I7[20 * (i - 1) + 2] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 2, 4 * i - 2, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 2]) or ""))
		end
		if I7[20 * (i - 1) + 3] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 3, 4 * i - 2, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 3]) or ""))
		end
		if I7[20 * (i - 1) + 4] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 4, 4 * i - 2, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 4]) or ""))
		end
		if I7[20 * (i - 1) + 5] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 1, 4 * i - 1, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 5]) or ""))
		end
		if I7[20 * (i - 1) + 6] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 2, 4 * i - 1, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 6]) or ""))
		end
		if I7[20 * (i - 1) + 7] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 3, 4 * i - 1, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 7]) or ""))
		end
		if I7[20 * (i - 1) + 8] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 4, 4 * i - 1, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 8]) or ""))
		end
		if I7[20 * (i - 1) + 9] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 1, 4 * i, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 9]) or ""))
		end
		if I7[20 * (i - 1) + 10] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 2, 4 * i, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 10]) or ""))
		end
		if I7[20 * (i - 1) + 11] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 3, 4 * i, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 11]) or ""))
		end
		i = i + 1
	end
	MultiboardDisplay(bj_lastCreatedMultiboard, true)
end
function uuyy()
	local i = 0
	local s = nil
	i = 1
	for _ in _loop_() do
		if i >= 6 then break end
		if udg_MaxDamage[i] < 10000.0 then
			s = I2S(R2I(udg_MaxDamage[i] / 1.0))
		elseif udg_MaxDamage[i] < 100000000.0 then
			s = (I2S(R2I(udg_MaxDamage[i] / 10000.0)) or "") .. "万"
		elseif udg_MaxDamage[i] / 10000.0 < 100000000.0 then
			s = (I2S(R2I(udg_MaxDamage[i] / 100000000.0)) or "") .. "亿"
		elseif udg_MaxDamage[i] / 100000000.0 < 100000000.0 then
			s = (I2S(R2I(udg_MaxDamage[i] / -727379968.0)) or "") .. "万亿"
		else
			s = (I2S(R2I(udg_MaxDamage[i] / 1874919424.0)) or "") .. "亿亿"
		end
		MultiboardSetTitleText(bj_lastCreatedMultiboard, "|cFFFFCC33这并不是系统窗口")
		DuoMianBan(bj_lastCreatedMultiboard, 1, 4 * i - 3, "|c00FF0080" .. (GetPlayerName(Player(i - 1)) or ""))
		DuoMianBan(bj_lastCreatedMultiboard, 2, 4 * i - 3, "|c0000FF00" .. "等级：" .. (I2S(GetUnitLevel(udg_hero[i])) or ""))
		DuoMianBan(bj_lastCreatedMultiboard, 3, 4 * i - 3, "|cFF00CCFF" .. (udg_menpainame[udg_runamen[i]] or ""))
		DuoMianBan(bj_lastCreatedMultiboard, 4, 4 * i - 3, "|cFFFF6600" .. "最高伤害：" .. (s or ""))
		if Ce[i] == 1 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99炼丹师")
		elseif Ce[i] == 2 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99锻造师")
		elseif Ce[i] == 3 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99兵器师")
		elseif Ce[i] == 4 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99鉴定师")
		elseif Ce[i] == 5 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99练气师")
		elseif Ce[i] == 6 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99寻宝师")
		elseif Ce[i] == 7 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99丫鬟")
		elseif Ce[i] == 8 then
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99精武师")
		else
			DuoMianBan(bj_lastCreatedMultiboard, 5, 4 * i - 3, "|c00FFEE99未选择")
		end
		if I7[20 * (i - 1) + 1] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 1, 4 * i - 2, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 1]) or ""))
		end
		if I7[20 * (i - 1) + 2] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 2, 4 * i - 2, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 2]) or ""))
		end
		if I7[20 * (i - 1) + 3] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 3, 4 * i - 2, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 3]) or ""))
		end
		if I7[20 * (i - 1) + 4] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 4, 4 * i - 2, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 4]) or ""))
		end
		if I7[20 * (i - 1) + 5] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 1, 4 * i - 1, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 5]) or ""))
		end
		if I7[20 * (i - 1) + 6] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 2, 4 * i - 1, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 6]) or ""))
		end
		if I7[20 * (i - 1) + 7] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 3, 4 * i - 1, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 7]) or ""))
		end
		if I7[20 * (i - 1) + 8] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 4, 4 * i - 1, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 8]) or ""))
		end
		if I7[20 * (i - 1) + 9] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 1, 4 * i, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 9]) or ""))
		end
		if I7[20 * (i - 1) + 10] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 2, 4 * i, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 10]) or ""))
		end
		if I7[20 * (i - 1) + 11] ~= 1095067243 then
			DuoMianBan(bj_lastCreatedMultiboard, 3, 4 * i, "|c0000FF00" .. (GetObjectName(I7[20 * (i - 1) + 11]) or ""))
		end
		i = i + 1
	end
end
--最大伤害
function wy()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) ~= MAP_CONTROL_USER and GetEventDamage() > udg_MaxDamage[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
end
function SetMaxDamage()
	udg_MaxDamage[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))] = GetEventDamage()
end


--玩家英雄阵亡
function Ex()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end


function CA()
	udg_counter1 = udg_counter1 + 1
	q7[udg_counter1] = GetUnitTypeId(GetEnumUnit())
	r7[udg_counter1] = GetEnumUnit()
	m7[udg_counter1] = GetUnitLoc(GetEnumUnit())
end
function cA()
	m7[0] = GetRectCenter(Ge)
	nn7 = CountUnitsInGroup(AddPlayerUnitIntoGroup(Player(12), nil))
	o7 = CountUnitsInGroup(AddPlayerUnitIntoGroup(Player(15), nil))
	ForGroupBJ(AddPlayerUnitIntoGroup(Player(12), nil), CA)
	ForGroupBJ(AddPlayerUnitIntoGroup(Player(15), nil), CA)
end
--怪物死后重新刷怪
function EA()
	--圣兽死后不刷新
	if GetTriggerUnit() ~= udg_qinglong and GetTriggerUnit() ~= udg_baihu and GetTriggerUnit() ~= udg_zhuque and GetTriggerUnit() ~= udg_xuanwu and GetTriggerUnit() ~= gg_unit_n00M_0131 then
		YDWEPolledWaitNull(0.02)
		s7 = 1
		--call BJDebugMsg(GetUnitName(GetTriggerUnit()))
		--call BJDebugMsg(I2S(GetUnitTypeId(GetTriggerUnit())))
		for _ in _loop_() do
			if s7 > nn7 + o7 then break end
			if GetTriggerUnit() == r7[s7] then
				if s7 <= nn7 then
					--call BJDebugMsg("s7="+I2S(s7))
					--call BJDebugMsg(I2S(q7[s7]))
					if GetUnitTypeId(GetTriggerUnit()) ~= 1848651824 then
						CreateNUnitsAtLoc(1, 1848651824, Player(12), m7[0], bj_UNIT_FACING)
						UnitApplyTimedLifeBJ((0.18 - 0.01 * I2R(O4)) * I2R(GetUnitPointValueByType(GetUnitTypeId(GetTriggerUnit()))), 1112820806, bj_lastCreatedUnit)
						r7[s7] = bj_lastCreatedUnit
						return
					else
						CreateNUnitsAtLoc(1, q7[s7], Player(12), m7[s7], bj_UNIT_FACING)
						r7[s7] = bj_lastCreatedUnit
						return
					end
				else
					if GetUnitTypeId(GetTriggerUnit()) ~= 1848651824 then
						CreateNUnitsAtLoc(1, 1848651824, Player(12), m7[0], bj_UNIT_FACING)
						UnitApplyTimedLifeBJ((0.18 - 0.01 * I2R(O4)) * I2R(GetUnitPointValueByType(GetUnitTypeId(GetTriggerUnit()))), 1112820806, bj_lastCreatedUnit)
						r7[s7] = bj_lastCreatedUnit
						return
					else
						CreateNUnitsAtLoc(1, q7[s7], Player(15), m7[s7], bj_UNIT_FACING)
						r7[s7] = bj_lastCreatedUnit
						return
					end
				end
			end
			s7 = s7 + 1
		end
	end
end
function GA()
	return ShiFouShuaGuai
end
--BOSS成长
function BOSSChengZhang()
	local t = GetExpiredTimer()
	if udg_boss[udg_boshu // 4] ~= nil then
		if IsUnitAliveBJ(udg_boss[udg_boshu // 4]) then
			if GetUnitAbilityLevel(udg_boss[udg_boshu // 4], 1093682242) == 0 then
				UnitAddAbility(udg_boss[udg_boshu // 4], 1093682242)
				DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033邪教BOSS" .. (GetUnitName(udg_boss[udg_boshu // 4]) or "") .. "已加强")
			else
				if GetUnitAbilityLevel(udg_boss[udg_boshu // 4], 1093682242) < 10 then
					IncUnitAbilityLevel(udg_boss[udg_boshu // 4], 1093682242)
					DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033邪教BOSS" .. (GetUnitName(udg_boss[udg_boshu // 4]) or "") .. "已加强")
				end
			end
			if GetUnitAbilityLevel(udg_boss[udg_boshu // 4], 1093682000) == 0 then
				UnitAddAbility(udg_boss[udg_boshu // 4], 1093682000)
			else
				if GetUnitAbilityLevel(udg_boss[udg_boshu // 4], 1093682000) < 6 then
					IncUnitAbilityLevel(udg_boss[udg_boshu // 4], 1093682000)
				else
					UnitAddAbility(udg_boss[udg_boshu // 4], 1093681969)
				end
			end
		else
			PauseTimer(t)
			DestroyTimer(t)
		end
	else
		PauseTimer(t)
		DestroyTimer(t)
	end
	t = nil
end
--玩家等级大于波数*4
function LevelGuoGao()
	local i = 0
	local totallevel = 0
	local r = 0.0
	for _ in _loop_() do
		if i > 11 then break end
		if udg_hero[i] ~= nil then
			totallevel = totallevel + GetUnitLevel(udg_hero[i])
		end
		i = i + 1
	end
	if udg_teshushijian and I2R(totallevel) > udg_boshu * 4 * I2R(GetNumPlayer()) then
		return true
	end
	return false
end
-- 下一波怪的警告
function NextWaveWarning()
	if udg_boshu == 9 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能神圣护甲和10倍暴击")
	elseif udg_boshu == 11 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能咆哮和重击")
	elseif udg_boshu == 12 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪为空军")
	elseif udg_boshu == 13 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能噬血术")
	elseif udg_boshu == 14 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪为绞肉车，死亡后会产生小蜘蛛")
	elseif udg_boshu == 15 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪为空军，拥有技能20倍暴击")
	elseif udg_boshu == 16 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能精灵之火")
	elseif udg_boshu == 17 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能狂战士和30倍暴击")
	elseif udg_boshu == 18 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪血量很高，并拥有技能嘲讽")
	elseif udg_boshu == 19 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能狂热")
	elseif udg_boshu == 20 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能变相移动")
	elseif udg_boshu == 21 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能反魔法外壳")
	elseif udg_boshu == 22 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能重击")
	elseif udg_boshu == 23 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能90%闪避")
	elseif udg_boshu == 24 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能卡布恩（自爆）")
	elseif udg_boshu == 25 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能闪电攻击")
	elseif udg_boshu == 26 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪拥有技能神圣护甲")
	elseif udg_boshu == 27 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：下一波怪血量很高，并拥有技能永久献祭和重生")
	elseif udg_boshu == 28 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033※警告※：本波为最后一波进攻，本波结束后教主即将出现")
	end
end
function BOSSAttack(t)
	if ModuloInteger(udg_boshu, 4) == 0 and udg_boshu < 28 and udg_shengchun == false then
		CreateNUnitsAtLocFacingLocBJ(1, u7[udg_boshu // 4], Player(6), v7[8], v7[3])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[3])
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033邪教趁我方不备，偷偷地派出BOSS从背后杀过来了，请准备防御")
	end
	if ModuloInteger(udg_boshu, 4) == 0 and udg_boshu < 30 and udg_shengchun == false then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033邪教派出BOSS前来进攻，请准备防御")
		CreateNUnitsAtLocFacingLocBJ(1, u7[udg_boshu // 4], Player(6), v7[6], v7[4])
		if udg_boshu == 4 then
			UnitAddAbility(bj_lastCreatedUnit, 1093681970)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093681970, IMinBJ(udg_nandu * 2, 9))
			UnitAddAbility(bj_lastCreatedUnit, 1093681973)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093681973, IMinBJ(udg_nandu * 2, 9))
			UnitAddAbility(bj_lastCreatedUnit, 1093681975)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093681975, IMinBJ(udg_nandu * 2, 9))
		elseif udg_boshu == 8 then
			UnitAddAbility(bj_lastCreatedUnit, 1093681990)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093681990, IMinBJ(udg_nandu * 2, 9))
			--call UnitAddAbility(bj_lastCreatedUnit,'A0CM')
			--call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0CM',IMinBJ(udg_nandu*2,9))
			UnitAddAbility(bj_lastCreatedUnit, 1093682241)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093682241, IMinBJ(udg_nandu * 2, 9))
		elseif udg_boshu == 12 then
			UnitAddAbility(bj_lastCreatedUnit, 1093681993)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093681993, IMinBJ(udg_nandu * 2, 9))
			UnitAddAbility(bj_lastCreatedUnit, 1093681994)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093681994, IMinBJ(udg_nandu * 2, 9))
			UnitAddAbility(bj_lastCreatedUnit, 1093681998)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093681998, IMinBJ(udg_nandu * 2, 9))
		elseif udg_boshu == 16 then
			UnitAddAbility(bj_lastCreatedUnit, 1093681976)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093681976, IMinBJ(udg_nandu * 2, 9))
			UnitAddAbility(bj_lastCreatedUnit, 1093681977)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093681977, IMinBJ(udg_nandu * 2, 9))
			UnitAddAbility(bj_lastCreatedUnit, 1093681986)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093681986, IMinBJ(udg_nandu * 2, 9))
		elseif udg_boshu == 20 then
			UnitAddAbility(bj_lastCreatedUnit, 1093681992)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093681992, IMinBJ(udg_nandu * 2, 9))
			UnitAddAbility(bj_lastCreatedUnit, 1093682245)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093682245, IMinBJ(udg_nandu * 2, 9))
		elseif udg_boshu == 24 then
			UnitAddAbility(bj_lastCreatedUnit, 1093681995)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093681995, IMinBJ(udg_nandu * 2, 9))
			UnitAddAbility(bj_lastCreatedUnit, 1093682248)
			SetUnitAbilityLevel(bj_lastCreatedUnit, 1093682248, IMinBJ(udg_nandu * 2, 9))
		end
		udg_boss[udg_boshu // 4] = bj_lastCreatedUnit
		TimerStart(t, 20, true, BOSSChengZhang)
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
	elseif ModuloInteger(udg_boshu, 4) ~= 0 and udg_boshu < 28 and udg_shengchun == false then
		if LevelGuoGao() then
			DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033由于激活特殊事件，邪教派出BOSS前来进攻，请准备防御")
			CreateNUnitsAtLocFacingLocBJ(1, u7[udg_boshu // 4 + 1], Player(6), v7[6], v7[4])
			udg_boss[udg_boshu // 4] = bj_lastCreatedUnit
			TimerStart(t, 20, true, BOSSChengZhang)
			GroupAddUnit(w7, bj_lastCreatedUnit)
			IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
		end
	end
end
--刷怪
function HA()
	local t = CreateTimer()
	if udg_boshu == 4 and udg_teshushijian == true then
		ChooseNanDu()
	end
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033邪教势力：第" .. (I2S(udg_boshu) or "") .. "|CFFFF0033波")
	NextWaveWarning() --下波警告
	if LevelGuoGao() then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033激活特殊事件|cFFDDA0DD※邪教全力进攻※")
	end
	StopMusic(false)
	PlayMusicBJ(yh) -- 切换BGM
	EnableTrigger(Yi) -- 刷正面的进攻怪
	YDWEPolledWaitNull(40.0)
	if O4 > 1 then -- 游戏人数>1
		EnableTrigger(Zi) -- 刷背面的进攻怪
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033邪教趁我方不备，偷偷地从背后杀过来了")
	end
	YDWEPolledWaitNull(20.0)
	if famous_num > 0 then
		ConditionalTriggerExecute(dj)
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033名门高手开始进攻，大家要小心应付了！")
	end
	DisableTrigger(Yi)
	YDWEPolledWaitNull(10.0)
	if O4 > 1 then
		DisableTrigger(Zi)
	end
	YDWEPolledWaitNull(10.0)
	BOSSAttack(t)
	udg_boshu = udg_boshu + 1
	StopMusic(false)
	PlayMusicBJ(xh)
	if udg_sutong == false then
		YDWEPolledWaitNull(145 - GetNumPlayer() * 10)
	end
	if udg_boshu >= 29 and udg_shengchun == false then
		StopMusic(false)
		PlayMusicBJ(zh)
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033西域势力最后BOSS即将发起最后进攻，请作好防守准备")
		CreateNUnitsAtLocFacingLocBJ(1, u7[8], Player(6), v7[6], v7[4])
		udg_boss[udg_boshu // 4] = bj_lastCreatedUnit
		TimerStart(t, 20, true, BOSSChengZhang)
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
	else
		if udg_shengchun then
			AddPlayerTechResearched(Player(12), 1378889780, 1)
			AddPlayerTechResearched(Player(6), 1378889780, 1)
		end
		if x7 >= 1 then
			TriggerExecute(ij)
		else
			TriggerExecute(hj)
		end
	end
	t = nil
end
function JiaJiNeng(u)
	if udg_boshu >= 8 then
		UnitAddAbility(u, 1093682008)
		if udg_boshu >= 18 then
			UnitAddAbility(u, 1093682009)
			if udg_boshu >= 28 then
				UnitAddAbility(u, 1093682010)
			end
		end
	end
end
function FrontAttack()
	if udg_shengchun == false then
		CreateNUnitsAtLocFacingLocBJ(1, y7[udg_boshu], Player(6), v7[6], v7[4])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
		CreateNUnitsAtLocFacingLocBJ(1, y7[udg_boshu], Player(6), v7[7], v7[4])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
		CreateNUnitsAtLocFacingLocBJ(1, y7[udg_boshu], Player(6), v7[5], v7[4])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
		if LevelGuoGao() then
			CreateNUnitsAtLocFacingLocBJ(1, y7[udg_boshu], Player(6), v7[6], v7[4])
			GroupAddUnit(w7, bj_lastCreatedUnit)
			IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
			CreateNUnitsAtLocFacingLocBJ(1, y7[udg_boshu], Player(6), v7[7], v7[4])
			GroupAddUnit(w7, bj_lastCreatedUnit)
			IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
			CreateNUnitsAtLocFacingLocBJ(1, y7[udg_boshu], Player(6), v7[5], v7[4])
			GroupAddUnit(w7, bj_lastCreatedUnit)
			IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
		end
	else
		CreateNUnitsAtLocFacingLocBJ(1, 1848651827, Player(6), v7[6], v7[4])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
		JiaJiNeng(bj_lastCreatedUnit)
		CreateNUnitsAtLocFacingLocBJ(1, 1848651827, Player(6), v7[7], v7[4])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
		JiaJiNeng(bj_lastCreatedUnit)
		CreateNUnitsAtLocFacingLocBJ(1, 1848651827, Player(6), v7[5], v7[4])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
		JiaJiNeng(bj_lastCreatedUnit)
	end
end
function BackAttack()
	if udg_shengchun == false then
		CreateNUnitsAtLocFacingLocBJ(1, y7[udg_boshu + 1], Player(6), v7[8], v7[3])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[3])
		if LevelGuoGao() then
			CreateNUnitsAtLocFacingLocBJ(1, y7[udg_boshu + 1], Player(6), v7[8], v7[3])
			GroupAddUnit(w7, bj_lastCreatedUnit)
			IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[3])
		end
	else
		CreateNUnitsAtLocFacingLocBJ(1, 1848651827, Player(6), v7[8], v7[3])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[3])
		JiaJiNeng(bj_lastCreatedUnit)
	end
end
function MA()
	return ShiFouShuaGuai
end
function NA()
	local r1 = 0
	local r2 = 0
	if famous_num == 1 then
		r1 = 1.26
		r2 = 1.4
	elseif famous_num == 2 then
		r1 = 1.28
		r2 = 1.43
	elseif famous_num == 3 then
		r1 = 1.3
		r2 = 1.46
	elseif famous_num == 4 then
		r1 = 1.32
		r2 = 1.49
	elseif famous_num == 5 then
		r1 = 1.34
		r2 = 1.52
	end
	for i = 1, famous_num do
		rr3 = r1 ^ udg_boshu
		rr4 = r2 ^ udg_boshu
		rand = GetRandomInt(1, 11)
		CreateNUnitsAtLocFacingLocBJ(1, et.famous[rand].id, Player(6), v7[GetRandomInt(5, 8)], v7[4])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851983, v7[4])
		SetHeroLevelBJ(bj_lastCreatedUnit, 4 * udg_boshu, false)
		YDWEGeneralBounsSystemUnitSetBonus(bj_lastCreatedUnit, 3, 0, R2I(et.famous[rand]["攻击成长"] * rr3 * 3.3))
		YDWEGeneralBounsSystemUnitSetBonus(bj_lastCreatedUnit, 2, 0, (udg_boshu - 1) * et.famous[rand]["防御成长"] * 9 // 10 * famous_num)
		--call YDWEGeneralBounsSystemUnitSetBonus(bj_lastCreatedUnit,1,0,R2I(I2R(et.famous[rand]["法力成长"])*rr4))
		unitadditembyidswapped(Ae[udg_boshu], bj_lastCreatedUnit)
	end
end
function PA()
	DestroyTimerDialog(z7[1])
	ConditionalTriggerExecute(Xi)
end
function RA()
	DestroyTimerDialog(z7[2])
	ConditionalTriggerExecute(Xi)
end
function TA()
	DestroyTimerDialog(z7[3])
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFDDA0DD西域邪教开始了进攻正派武林，玩家务必要确保正派武林不被摧毁，否则游戏失败|r")
	if udg_teshushijian == true then
		ChooseNanDu()
	end
	ConditionalTriggerExecute(Xi)
end
function VA()
	StartTimerBJ(A7[1], false, 30.0 + I2R(ie))
	CreateTimerDialogBJ(bj_lastStartedTimer, "邪教下次进攻时间")
	z7[1] = bj_lastCreatedTimerDialog
	ie = 0
end
function XA()
	StartTimerBJ(A7[2], false, x7 * 60.0 + 30.0 + I2R(ie))
	CreateTimerDialogBJ(bj_lastStartedTimer, "邪教下次进攻时间")
	z7[2] = bj_lastCreatedTimerDialog
	ie = 0
	x7 = 0
end
function ZA()
	return GetItemTypeId(GetManipulatedItem()) == 1227894853
end
function ea()
	x7 = x7 + 1
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFF00FF4C在武林弟子的奋力帮助下，邪教的进攻势力被延缓了，大家有1分钟的时间，赶紧去做任务吧~")
	PlaySoundOnUnitBJ(Dh, 100, GetTriggerUnit())
	shoujiajf[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = shoujiajf[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] + 10
	DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|CFF00FF4C守家积分+10")
end
function ja()
	return IsUnitInGroup(GetTriggerUnit(), w7)
end
function ka()
	GroupRemoveUnit(w7, GetTriggerUnit())
end



--切换背包
function Ba()
	return GetSpellAbilityId() == 1093677134
end
function ba()
	B7 = 1
	for _ in _loop_() do
		if B7 > 6 then break end
		UnitAddItem(b7[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))], UnitItemInSlotBJ(C7[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))], B7))
		B7 = B7 + 1
	end
	B7 = 1
	for _ in _loop_() do
		if B7 > 6 then break end
		UnitAddItem(C7[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))], UnitItemInSlotBJ(GetTriggerUnit(), B7))
		B7 = B7 + 1
	end
	B7 = 1
	for _ in _loop_() do
		if B7 > 6 then break end
		UnitAddItem(GetTriggerUnit(), UnitItemInSlotBJ(b7[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))], B7))
		B7 = B7 + 1
	end
end
--鸟的贩卖技能
function ca()
	return GetSpellAbilityId() == 1093679433
end
function Da()
	CreateNUnitsAtLoc(1, 1853257068, GetOwningPlayer(GetTriggerUnit()), v7[9], bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddItem(bj_lastCreatedUnit, CreateItem(GetItemTypeId(GetSpellTargetItem()), 0, 0))
	UnitDropItemTarget(bj_lastCreatedUnit, UnitItemInSlotBJ(bj_lastCreatedUnit, 1), Rs)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 5.0)
	RemoveItem(GetSpellTargetItem())
	PlaySoundOnUnitBJ(Ih, 100, GetTriggerUnit())
	AddSpecialEffectTargetUnitBJ("overhead", GetTriggerUnit(), "Abilities\\Spells\\Items\\ResourceItems\\ResourceEffectTarget.mdl")
	DestroyEffect(bj_lastCreatedEffect)
end
--切换物品
function IsQieHuanItem()
	return GetSpellAbilityId() == 1093677133 and he[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == false
end
function QieHuanItem()
	UnitAddItem(Vs, UnitItemInSlotBJ(GetTriggerUnit(), 1))
	UnitAddItem(GetTriggerUnit(), UnitItemInSlotBJ(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))], 1))
	UnitAddItem(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))], UnitItemInSlotBJ(Vs, 1))
end

--英雄达到某等级
function Ja()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function HeroLevel()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = nil
	-- 练气师
	if Ce[i] == 5 then
		if GetRandomInt(1, 3) == 1 then
			ModifyHeroStat(0, u, 0, GetRandomInt(4, 8))
		elseif GetRandomInt(1, 2) == 1 then
			ModifyHeroStat(1, u, 0, GetRandomInt(4, 8))
		else
			ModifyHeroStat(2, u, 0, GetRandomInt(4, 8))
		end
		if GetUnitLevel(u) == 80 then
			juexuelingwu[i] = juexuelingwu[i] + 10
			if udg_zhangmen[i] == true then
			else
				SaveStr(YDHT, GetHandleId(p), GetHandleId(p), "〓练气大师〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			end
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜" .. (GetPlayerName(p) or "") .. "获得练气大师")
			SetPlayerName(p, "〓练气大师〓" .. (GetPlayerName(p) or ""))
		end
	end
	if GetUnitTypeId(u) == 1328558132 then
		YDWEGeneralBounsSystemUnitSetBonus(u, 0, 0, 400)
	else
		YDWEGeneralBounsSystemUnitSetBonus(u, 0, 0, 350)
	end
	if GetUnitTypeId(u) == 1328558128 then
		YDWEGeneralBounsSystemUnitSetBonus(u, 3, 0, 40)
	else
		YDWEGeneralBounsSystemUnitSetBonus(u, 3, 0, 35)
	end
	if GetUnitTypeId(u) == 1328558129 then
		YDWEGeneralBounsSystemUnitSetBonus(u, 2, 0, 5)
	else
		YDWEGeneralBounsSystemUnitSetBonus(u, 2, 0, 4)
	end
	if GetUnitLevel(u) >= 3 and Z8[i] == false then
		Z8[i] = true
		d8[i] = 1
		for _ in _loop_() do
			if d8[i] > 20 then break end --门派数
			if udg_runamen[i] == d8[i] then

				if d8[i] ~= 11 then
					UnitAddAbility(u, X7[d8[i]])
					UnitMakeAbilityPermanent(u, true, X7[d8[i]])
					DisplayTextToPlayer(p, 0, 0, "|cff00FF66恭喜领悟技能：" .. (GetObjectName(X7[d8[i]]) or ""))
					DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FF66玩家" .. (I2S(1 + GetPlayerId(p)) or "") .. "成为" .. (udg_menpainame[udg_runamen[i]] or "") .. "初级弟子")
					SetPlayerName(p, "〓" .. (udg_menpainame[udg_runamen[i]] or "") .. "初级弟子〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
				end
				if udg_runamen[i] == 11 then
					udg_shuxing[i] = udg_shuxing[i] + 5
					DisplayTextToPlayer(p, 0, 0, "|cff00FF66自由门派3级奖励5点自由属性点及随机武功秘籍一本、小概率获得奇武秘籍一本")
					if GetRandomInt(1, 100) <= 10 then
						unitadditembyidswapped(kongfu[GetRandomInt(42, 46)].itemid, u)
					end
					if GetRandomInt(1, 100) <= 99 then
						unitadditembyidswapped(kongfu[GetRandomInt(19, 36)].itemid, u)
					else
						unitadditembyidswapped(kongfu[GetRandomInt(1, 18)].itemid, u)
					end
				--set S9=1
				--           	loop
				--           	    exitwhen S9>20
				--           	    if (X7[d8[i]]==MM9[S9]) then
				--           	        set udg_shanghaijiacheng[i] = udg_shanghaijiacheng[i] + udg_jueneishjc[S9]
				--           	        call ModifyHeroStat(1,u,0,udg_jueneiminjie[S9])
				--           	        set udg_baojilv[i] = udg_baojilv[i] + udg_jueneibaojilv[S9]
				--		set juexuelingwu[i] = juexuelingwu[i] + udg_jueneijxlw[S9]
				--		set udg_shanghaixishou[i] = udg_shanghaixishou[i] + udg_jueneishxs[S9]
				--           	    endif
				--           	    set S9=S9+1
				--           	endloop
				end
				L7[i] = 1
				for _ in _loop_() do
					if L7[i] > wugongshu[i] then break end
					if I7[GetPlayerId(p) * 20 + L7[i]] ~= 1095067243 then
					else
						I7[(i - 1) * 20 + L7[i]] = X7[d8[i]]
						if true then break end
					end
					L7[i] = L7[i] + 1
				end
			end
			d8[i] = d8[i] + 1
		end
	end
	if GetUnitLevel(u) >= 3 and GetUnitAbilityLevel(u, X7[udg_runamen[i]]) >= 2 and e9[i] == false then
		e9[i] = true
		d8[i] = 1
		for _ in _loop_() do
			if d8[i] > 20 then break end
			if d8[i] ~= 11 then
				if udg_runamen[i] == d8[i] then
					UnitAddAbility(u, Z7[d8[i]])
					UnitMakeAbilityPermanent(u, true, Z7[d8[i]])
					DisplayTextToPlayer(p, 0, 0, "|cff00FF66恭喜领悟技能：" .. (GetObjectName(Z7[d8[i]]) or ""))
					DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FF66玩家" .. (I2S(1 + GetPlayerId(p)) or "") .. "成为" .. (udg_menpainame[udg_runamen[i]] or "") .. "中级弟子")
					SetPlayerName(p, "〓" .. (udg_menpainame[udg_runamen[i]] or "") .. "中级弟子〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
					L7[i] = 1
					for _ in _loop_() do
						if L7[i] > wugongshu[i] then break end
						if I7[GetPlayerId(p) * 20 + L7[i]] ~= 1095067243 then
						else
							I7[(i - 1) * 20 + L7[i]] = Z7[d8[i]]
							if true then break end
						end
						L7[i] = L7[i] + 1
					end
				end
			end
			d8[i] = d8[i] + 1
		end
	end
	if GetUnitLevel(u) >= 3 and GetUnitAbilityLevel(u, Z7[udg_runamen[i]]) >= 2 and d9[i] == false then
		d9[i] = true
		d8[i] = 1
		for _ in _loop_() do
			if d8[i] > 20 then break end
			if d8[i] ~= 11 then
				if udg_runamen[i] == d8[i] then
					UnitAddAbility(u, Y7[d8[i]])
					DisplayTextToPlayer(p, 0, 0, "|cff00FF66恭喜领悟技能：" .. (GetObjectName(Y7[d8[i]]) or ""))
					DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FF66玩家" .. (I2S(1 + GetPlayerId(p)) or "") .. "成为" .. (udg_menpainame[udg_runamen[i]] or "") .. "高级弟子")
					SetPlayerName(p, "〓" .. (udg_menpainame[udg_runamen[i]] or "") .. "高级弟子〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
					UnitMakeAbilityPermanent(u, true, Y7[d8[i]])
					L7[i] = 1
					for _ in _loop_() do
						if L7[i] > wugongshu[i] then break end
						if I7[GetPlayerId(p) * 20 + L7[i]] ~= 1095067243 then
						else
							I7[(i - 1) * 20 + L7[i]] = Y7[d8[i]]
							if true then break end
						end
						L7[i] = L7[i] + 1
					end
				end
			end
			d8[i] = d8[i] + 1
		end
	end
	if GetUnitLevel(u) == 10 then
		DisplayTimedTextToPlayer(p, 0, 0, 30.0, "|cff66ff00恭喜你升到了10级，你可以前往全真教（小地图指示点）完成历练1任务（大战江南七怪）了，完成历练任务可以提升修行，对人物的武功伤害占有重要影响，切记切记！！")
		loc = GetRectCenter(Te)
		PingMinimapLocForForce(ov(p), loc, 5.0)
		RemoveLocation(loc)
	end
	if GetUnitLevel(u) == 25 then
		DisplayTimedTextToPlayer(p, 0, 0, 30.0, "|cff66ff00恭喜你升到了25级，你可以前往少林后山（小地图指示点）完成历练2任务（挑战十八罗汉）了，完成历练任务可以提升修行，对人物的武功伤害占有重要影响，切记切记！！")
		loc = GetRectCenter(ag)
		PingMinimapLocForForce(ov(p), loc, 5.0)
		RemoveLocation(loc)
	end
	if GetUnitLevel(u) == 40 then
		DisplayTimedTextToPlayer(p, 0, 0, 30.0, "|cff66ff00恭喜你升到了40级，你可以前往武林城外（小地图指示点）完成历练3任务（勇闯十恶不赦岛）了，完成历练任务可以提升修行，对人物的武功伤害占有重要影响，切记切记！！")
		loc = GetRectCenter(Bg)
		PingMinimapLocForForce(ov(p), loc, 5.0)
		RemoveLocation(loc)
	end
	if GetUnitLevel(u) == 55 then
		DisplayTimedTextToPlayer(p, 0, 0, 30.0, "|cff66ff00恭喜你升到了55级，你可以前往光明顶（小地图指示点）完成历练4任务（勇闯光明顶）了，完成历练任务可以提升修行，对人物的武功伤害占有重要影响，切记切记！！")
		loc = GetRectCenter(Lg)
		PingMinimapLocForForce(ov(p), loc, 5.0)
		RemoveLocation(loc)
	end
	if GetUnitLevel(u) == 70 then
		DisplayTimedTextToPlayer(p, 0, 0, 30.0, "|cff66ff00恭喜你升到了70级，你可以前往少林寺后山（小地图指示点）完成历练5任务（华山论剑）了，完成历练任务可以提升修行，对人物的武功伤害占有重要影响，切记切记！！")
		loc = GetRectCenter(Rg)
		PingMinimapLocForForce(ov(p), loc, 5.0)
		RemoveLocation(loc)
	end
	if GetUnitLevel(u) >= 80 and jiawuxue[i] == false then
		DisplayTimedTextToPlayer(p, 0, 0, 30.0, "|cff66ff00恭喜你升到了80级，获得5个自创武学点（vip玩家获得7个），在通过历练6以后你可以到聚贤庄游坦之处自创武学")
		wuxuedian[i] = wuxuedian[i] + 5
		wuxuedian[i] = wuxuedian[i] + 2
		jiawuxue[i] = true
		zizhiwugong[i] = sc__ZiZhiWuGong_create(0, 0, GetRandomInt(1, 10), 0, 0)
	end
	u = nil
	p = nil
	loc = nil
end


--杀怪回血
function Ma()
	return GetPlayerController(GetOwningPlayer(GetKillingUnit())) == MAP_CONTROL_USER
end
function KillGuaiJiaXie()
	if GetUnitAbilityLevel(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))], 1093677914) < 1 then
		SetWidgetLife(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))], GetUnitState(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))], UNIT_STATE_LIFE) + (shaguaihufui[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] + I2R(danpo[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))]) / 2000.0 * GetUnitState(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))], UNIT_STATE_MAX_LIFE)))
	end
end
--每秒回血回蓝
function YiShuHuiXie()
	c7 = 1
	for _ in _loop_() do
		if c7 > 5 then break end
		if GetPlayerController(Player(-1 + c7)) == MAP_CONTROL_USER and UnitHasBuffBJ(udg_hero[c7], 1110454580) == false then
			SetUnitLifePercentBJ(udg_hero[c7], GetUnitLifePercent(udg_hero[c7]) + I2R(yishu[c7]) / 2000.0 + 10 * GetUnitAbilityLevel(udg_hero[c7], 1093682228) + guixihuixie[c7])
			if UnitHaveItem(udg_hero[c7], 1227895108) then
				SetUnitLifePercentBJ(udg_hero[c7], GetUnitLifePercent(udg_hero[c7]) + 6)
			end
			SetUnitLifeBJ(udg_hero[c7], GetUnitState(udg_hero[c7], UNIT_STATE_LIFE) + shengminghuifu[c7])
			SetUnitManaBJ(udg_hero[c7], GetUnitStateSwap(UNIT_STATE_MANA, udg_hero[c7]) + 0.3 * I2R(yishu[c7]) + falihuifu[c7] + 5 * GetUnitAbilityLevel(udg_hero[c7], 1093682228))
		end
		c7 = c7 + 1
	end
end
--伤害回复
function Ra()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function Sa()
	if GetUnitAbilityLevel(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))], 1093677914) < 1 then
		SetWidgetLife(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))], GetUnitState(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))], UNIT_STATE_LIFE) + (shanghaihuifu[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] / 10.0 + I2R(danpo[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]) / 1500.0 * GetUnitState(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))], UNIT_STATE_MAX_LIFE)))
	end
end
--伤害吸收
function Ua()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function Va()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local r = (1 - RMinBJ(udg_shanghaixishou[i], 0.8)) * GetEventDamage()
	SetWidgetLife(udg_hero[i], GetUnitState(udg_hero[i], UNIT_STATE_LIFE) + RMinBJ(udg_shanghaixishou[i], 0.8) * GetEventDamage())
	if UnitHasBuffBJ(GetTriggerUnit(), 1110454340) and GetUnitAbilityLevel(GetTriggerUnit(), 1093678930) ~= 0 then
		SetWidgetLife(udg_hero[i], GetUnitState(udg_hero[i], UNIT_STATE_LIFE) + 0.3 * GetEventDamage())
	end
	if UnitHaveItem(udg_hero[i], 1227897178) then
		if GetUnitAbilityLevel(udg_hero[i], 1093677903) ~= 0 then
			r = r / 3
		end
		if GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) >= R2I(r) // 20 then
			AdjustPlayerStateBJ( - R2I(r) // 20, p, PLAYER_STATE_RESOURCE_GOLD)
			SetWidgetLife(udg_hero[i], RMinBJ(GetUnitState(udg_hero[i], UNIT_STATE_LIFE) + r, GetUnitState(udg_hero[i], UNIT_STATE_MAX_LIFE)))
		else
			AdjustPlayerStateBJ(GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) * -1, p, PLAYER_STATE_RESOURCE_GOLD)
			SetWidgetLife(udg_hero[i], RMinBJ(GetUnitState(udg_hero[i], UNIT_STATE_LIFE) + 5 * I2R(GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD)), GetUnitState(udg_hero[i], UNIT_STATE_MAX_LIFE)))
		end
	end
	u = nil
	p = nil
end

--传送至桃花岛
function mB()
	return GetItemTypeId(GetManipulatedItem()) == 1227897174 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function nB()
	SetUnitPosition(GetTriggerUnit(), 9631, 1139)
	PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()), 9631, 1139, 0)
	DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFFCC00进入桃花岛")
	DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFFCC00”源思英年,巴巴西洛普,雪陆文出；源思英年,巴巴西洛普,雪陆文出！“")
end



--古董价格
function s5()
	gudong[1] = 1227896115
	nd[1] = 500
	od[1] = 6000
	gudong[2] = 1227896116
	nd[2] = 500
	od[2] = 6000
	gudong[3] = 1227896117
	nd[3] = 500
	od[3] = 6000
	gudong[4] = 1227896118
	nd[4] = 1000
	od[4] = 20000
	gudong[5] = 1227896119
	nd[5] = 1000
	od[5] = 20000
	gudong[6] = 1227896120
	nd[6] = 1000
	od[6] = 20000
	gudong[7] = 1227896121
	nd[7] = 7000
	od[7] = 50000
	gudong[8] = 1227896129
	nd[8] = 7000
	od[8] = 50000
	gudong[9] = 1227896130
	nd[9] = 7000
	od[9] = 50000
	gudong[10] = 1227896131
	nd[10] = 20000
	od[10] = 100000
end
--古董价格变动
function u5()
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cfffff000古董商人收购价格发生变动了~")
	pd[1] = GetRandomInt(nd[1], od[1])
	pd[2] = GetRandomInt(nd[2], od[2])
	pd[3] = GetRandomInt(nd[3], od[3])
	pd[4] = GetRandomInt(nd[4], od[4])
	pd[5] = GetRandomInt(nd[5], od[5])
	pd[6] = GetRandomInt(nd[6], od[6])
	pd[7] = GetRandomInt(nd[7], od[7])
	pd[8] = GetRandomInt(nd[8], od[8])
	pd[9] = GetRandomInt(nd[9], od[9])
	pd[10] = GetRandomInt(nd[10], od[10])
end
--查询古董价格
function w5()
	return GetItemTypeId(GetManipulatedItem()) == 1227896112
end
function x5()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1
	i = 1
	for _ in _loop_() do
		if i > 10 then break end
		createitemloc(gudong[i], v7[9])
		if UnitHaveItem(u, gudong[i]) then
			DisplayTimedTextToPlayer(p, 0, 0, 30, "|cff00ff00" .. (GetItemName(bj_lastCreatedItem) or "") .. "：" .. (I2S(pd[i]) or "") .. " ( " .. (I2S(nd[i]) or "") .. " ， " .. (I2S(od[i]) or "") .. " )")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 30, (GetItemName(bj_lastCreatedItem) or "") .. "：" .. (I2S(pd[i]) or "") .. " ( " .. (I2S(nd[i]) or "") .. " ， " .. (I2S(od[i]) or "") .. " )")
		end
		RemoveItem(bj_lastCreatedItem)
		i = i + 1
	end
	u = nil
	p = nil
end
--卖古董
function z5()
	return GetItemTypeId(GetManipulatedItem()) == 1227896113
end
function A5()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1
	for _ in _loop_() do
		if i > 10 then break end
		if GetItemTypeId(UnitItemInSlotBJ(u, 1)) == gudong[i] then
			if Ce[1 + GetPlayerId(p)] ~= 4 then
				DisplayTimedTextToPlayer(p, 0, 0, 30, "|CFF00FF00卖出" .. (GetItemName(UnitItemInSlotBJ(u, 1)) or "") .. "，获得金钱+" .. (I2S(pd[i]) or ""))
				AdjustPlayerStateBJ(pd[i], p, PLAYER_STATE_RESOURCE_GOLD)
			else
				DisplayTimedTextToPlayer(p, 0, 0, 30, "|CFF00FF00你是鉴定师，以最高价格卖出" .. (GetItemName(UnitItemInSlotBJ(u, 1)) or "") .. "，获得金钱+" .. (I2S(od[i]) or ""))
				AdjustPlayerStateBJ(od[i], p, PLAYER_STATE_RESOURCE_GOLD)
			end
			RemoveItem(UnitItemInSlotBJ(u, 1))
		end
		i = i + 1
	end
	u = nil
	p = nil
end
function B5()
	return GetItemTypeId(GetManipulatedItem()) == 1227896114
end
function b5()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1
	local j = 1
	j = 1
	for _ in _loop_() do
		if j > 6 then break end
		i = 1
		for _ in _loop_() do
			if i > 10 then break end
			if GetItemTypeId(UnitItemInSlotBJ(u, j)) == gudong[i] then
				if Ce[1 + GetPlayerId(p)] ~= 4 then
					DisplayTimedTextToPlayer(p, 0, 0, 30, "|CFF00FF00卖出" .. (GetItemName(UnitItemInSlotBJ(u, j)) or "") .. "，获得金钱+" .. (I2S(pd[i]) or ""))
					AdjustPlayerStateBJ(pd[i], GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
				else
					DisplayTimedTextToPlayer(p, 0, 0, 30, "|CFF00FF00你是鉴定师，以最高价格卖出" .. (GetItemName(UnitItemInSlotBJ(u, j)) or "") .. "，获得金钱+" .. (I2S(od[i]) or ""))
					AdjustPlayerStateBJ(od[i], GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
				end
				RemoveItem(UnitItemInSlotBJ(u, j))
			end
			i = i + 1
		end
		j = j + 1
	end
	u = nil
	p = nil
end
--收集古董
function CollectGuDong_Conditions()
	return GetItemTypeId(GetManipulatedItem()) == 1227897139 or GetItemTypeId(GetManipulatedItem()) == 1227897140 or GetItemTypeId(GetManipulatedItem()) == 1227897141 or GetItemTypeId(GetManipulatedItem()) == 1227897142
end
function CollectGuDong_Actions()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if GetItemTypeId(GetManipulatedItem()) == 1227897139 then
		if Ce[i] == 4 then
			if udg_gudongD == 0 then
				DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00我自幼喜欢收集古董，如果你能收集一套D等级古董，我将送你一本秘籍")
				udg_gudongD = 1
			else
				if UnitHaveItem(u, 1227896115) and UnitHaveItem(u, 1227896116) and UnitHaveItem(u, 1227896117) then
					RemoveItem(FetchUnitItem(u, 1227896115))
					RemoveItem(FetchUnitItem(u, 1227896116))
					RemoveItem(FetchUnitItem(u, 1227896117))
					DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00谢谢你的古董，这本江湖秘籍送给你了")
					unitadditembyidswapped(udg_jianghu[GetRandomInt(1, 18)], u)
					udg_jdds[i] = udg_jdds[i] + 2
					if udg_jdds[i] <= 10 and udg_jddsbool[i] == false and Ce[i] == 4 then
						DisplayTextToPlayer(p, 0, 0, "|CFF66FF00您的鉴定师已经得了" .. (I2S(udg_jdds[i]) or "") .. "分，得到10分可获得鉴定大师哦")
					end
					--if Ce[1+GetPlayerId(p)]==4 then
					-- call unitadditembyidswapped(udg_jianghu[GetRandomInt(1,18)],u)
					-- call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00谢谢你教我鉴定古董，再送你一本江湖秘籍吧")
					--endif
					udg_gudongD = 0
				else
					DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00你还没有收集齐一套D古董哦")
				end
			end
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00非鉴定师不能接此任务")
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227897140 then
		if Ce[i] == 4 then
			if udg_gudongC == 0 then
				DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00我自幼喜欢收集古董，如果你能收集一套C等级古董，我将送你一本秘籍")
				udg_gudongC = 1
			else
				if UnitHaveItem(u, 1227896118) and UnitHaveItem(u, 1227896119) and UnitHaveItem(u, 1227896120) then
					RemoveItem(FetchUnitItem(u, 1227896118))
					RemoveItem(FetchUnitItem(u, 1227896119))
					RemoveItem(FetchUnitItem(u, 1227896120))
					DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00谢谢你的古董，这本绝学秘籍送给你了")
					unitadditembyidswapped(udg_juexue[GetRandomInt(1, 10)], u)
					udg_jdds[i] = udg_jdds[i] + 4
					if udg_jdds[i] <= 10 and udg_jddsbool[i] == false and Ce[i] == 4 then
						DisplayTextToPlayer(p, 0, 0, "|CFF66FF00您的鉴定师已经得了" .. (I2S(udg_jdds[i]) or "") .. "分，得到10分可获得鉴定大师哦")
					end
					--   if Ce[1+GetPlayerId(p)]==4 then
					-- call unitadditembyidswapped(udg_juexue[GetRandomInt(1,10)],u)
					-- call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00谢谢你教我鉴定古董，再送你一本绝学秘籍吧")
					--endif
					udg_gudongC = 0
				else
					DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00你还没有收集齐一套C古董哦")
				end
			end
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00非鉴定师不能接此任务")
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227897141 then
		if Ce[i] == 4 then
			if udg_gudongB == 0 then
				DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00我自幼喜欢收集古董，如果你能收集一套B等级古董，我将送你一本秘籍")
				udg_gudongB = 1
			else
				if UnitHaveItem(u, 1227896121) and UnitHaveItem(u, 1227896129) and UnitHaveItem(u, 1227896130) then
					RemoveItem(FetchUnitItem(u, 1227896121))
					RemoveItem(FetchUnitItem(u, 1227896129))
					RemoveItem(FetchUnitItem(u, 1227896130))
					DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00谢谢你的古董，这本绝内秘籍送给你了")
					unitadditembyidswapped(udg_juenei[GetRandomInt(1, 8)], u)
					udg_jdds[i] = udg_jdds[i] + 6
					if udg_jdds[i] <= 10 and udg_jddsbool[i] == false and Ce[i] == 4 then
						DisplayTextToPlayer(p, 0, 0, "|CFF66FF00您的鉴定师已经得了" .. (I2S(udg_jdds[i]) or "") .. "分，得到10分可获得鉴定大师哦")
					end
					--   if Ce[1+GetPlayerId(p)]==4 then
					-- call unitadditembyidswapped(udg_juenei[GetRandomInt(1,8)],u)
					-- call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00谢谢你教我鉴定古董，再送你一本绝内秘籍吧")
					--endif
					udg_gudongB = 0
				else
					DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00你还没有收集齐一套B古董哦")
				end
			end
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00非鉴定师不能接此任务")
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227897142 then
		if Ce[i] == 4 then
			if udg_gudongA == 0 then
				DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00我自幼喜欢收集古董，如果你能收集两个A等级古董，我将送你一本秘籍")
				udg_gudongA = 1
			else
				if UnitHaveItem(u, 1227896131) then
					RemoveItem(FetchUnitItem(u, 1227896131))
					if UnitHaveItem(u, 1227896131) then
						RemoveItem(FetchUnitItem(u, 1227896131))
						DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00谢谢你的古董，这本残章送给你了")
						unitadditembyidswapped(udg_canzhang[GetRandomInt(1, 10)], u)
						udg_jdds[i] = udg_jdds[i] + 10
						if udg_jdds[i] <= 10 and udg_jddsbool[i] == false and Ce[i] == 4 then
							DisplayTextToPlayer(p, 0, 0, "|CFF66FF00您的鉴定师已经得了" .. (I2S(udg_jdds[i]) or "") .. "分，得到10分可获得鉴定大师哦")
						end
						--   if Ce[1+GetPlayerId(p)]==4 then
						-- call unitadditembyidswapped(udg_canzhang[GetRandomInt(1,10)],u)
						-- call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00谢谢你教我鉴定古董，再送你一本残章吧")
						--endif
						udg_gudongA = 0
					else
						UnitAddItemById(u, 1227896131)
						DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00你还没有收集齐两个A古董哦")
					end
				else
					DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00你还没有收集齐两个A古董哦")
				end
			end
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFF00FF00非鉴定师不能接此任务")
		end
	end
	if udg_jdds[i] >= 10 and udg_jddsbool[i] == false and Ce[i] == 4 then
		udg_jddsbool[i] = true
		if udg_zhangmen[i] == true then
		else
			SaveStr(YDHT, GetHandleId(p), GetHandleId(p), "〓鉴定大师〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
		end
		DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜" .. (GetPlayerName(p) or "") .. "获得鉴定大师")
		SetPlayerName(p, "〓鉴定大师〓" .. (GetPlayerName(p) or ""))
	end
	u = nil
	p = nil
end

--遗忘武功
function YiWangJiNeng()
	return GetSpellAbilityId() == 1093678417
end
function ForgetAbility()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local j = 1
	if UnitHaveItem(u, 1227896395) or udg_yiwang[i] == true then
		DialogSetMessage(K7[i], "请选择遗忘的武功（遗忘后无法找回）！")
		if I7[(i - 1) * 20 + 1] ~= 1095067243 then
			DialogAddButtonBJ(K7[i], GetObjectName(I7[(i - 1) * 20 + 1]))
			S4[i] = bj_lastCreatedButton
		end
		if I7[(i - 1) * 20 + 2] ~= 1095067243 then
			DialogAddButtonBJ(K7[i], GetObjectName(I7[(i - 1) * 20 + 2]))
			T4[i] = bj_lastCreatedButton
		end
		if I7[(i - 1) * 20 + 3] ~= 1095067243 then
			DialogAddButtonBJ(K7[i], GetObjectName(I7[(i - 1) * 20 + 3]))
			U4[i] = bj_lastCreatedButton
		end
		if I7[(i - 1) * 20 + 4] ~= 1095067243 then
			DialogAddButtonBJ(K7[i], GetObjectName(I7[(i - 1) * 20 + 4]))
			V4[i] = bj_lastCreatedButton
		end
		if I7[(i - 1) * 20 + 5] ~= 1095067243 then
			DialogAddButtonBJ(K7[i], GetObjectName(I7[(i - 1) * 20 + 5]))
			W4[i] = bj_lastCreatedButton
		end
		if I7[(i - 1) * 20 + 6] ~= 1095067243 then
			DialogAddButtonBJ(K7[i], GetObjectName(I7[(i - 1) * 20 + 6]))
			X4[i] = bj_lastCreatedButton
		end
		if I7[(i - 1) * 20 + 7] ~= 1095067243 then
			DialogAddButtonBJ(K7[i], GetObjectName(I7[(i - 1) * 20 + 7]))
			J7[i] = bj_lastCreatedButton
		end
		if I7[(i - 1) * 20 + 8] ~= 1095067243 then
			DialogAddButtonBJ(K7[i], GetObjectName(I7[(i - 1) * 20 + 8]))
			J78[i] = bj_lastCreatedButton
		end
		if I7[(i - 1) * 20 + 9] ~= 1095067243 then
			DialogAddButtonBJ(K7[i], GetObjectName(I7[(i - 1) * 20 + 9]))
			J79[i] = bj_lastCreatedButton
		end
		if I7[(i - 1) * 20 + 10] ~= 1095067243 then
			DialogAddButtonBJ(K7[i], GetObjectName(I7[(i - 1) * 20 + 10]))
			J710[i] = bj_lastCreatedButton
		end
		if I7[(i - 1) * 20 + 11] ~= 1095067243 then
			DialogAddButtonBJ(K7[i], GetObjectName(I7[(i - 1) * 20 + 11]))
			J711[i] = bj_lastCreatedButton
		end
		DialogAddButtonBJ(K7[i], "取消")
		l7[i] = bj_lastCreatedButton
		DialogDisplay(p, K7[i], true)
	else
		DisplayTimedTextToPlayer(p, 0, 0, 30, "|cffff0000遗忘武功需要消耗道具遗忘之石！")
	end
	u = nil
	p = nil
end
function Forget(p, num)
	local i = 1 + GetPlayerId(p)
	if I7[(i - 1) * 20 + num] == 1093677902 and UnitHasBuffBJ(udg_hero[i], 1112504171) then
		DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|CFFFF9933" .. (GetObjectName(I7[(i - 1) * 20 + num]) or "") .. "施展期间不能遗忘！！！")
	else
		S9 = 1
		for _ in _loop_() do
			if S9 > 20 then break end
			if I7[20 * (i - 1) + num] == MM9[S9] then
				udg_shanghaijiacheng[i] = udg_shanghaijiacheng[i] - udg_jueneishjc[S9]
				ModifyHeroStat(1, udg_hero[i], 1, udg_jueneiminjie[S9])
				juexuelingwu[i] = juexuelingwu[i] - udg_jueneijxlw[S9]
				udg_baojilv[i] = udg_baojilv[i] - udg_jueneibaojilv[S9]
				udg_shanghaixishou[i] = udg_shanghaixishou[i] - udg_jueneishxs[S9]
			end
			S9 = S9 + 1
		end
		DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|CFFFF9933成功遗忘技能：" .. (GetObjectName(I7[(i - 1) * 20 + num]) or ""))
		UnitRemoveAbility(udg_hero[i], I7[20 * (i - 1) + num])
		if I7[(i - 1) * 20 + num] == 1093677904 then
			UnitRemoveAbility(udg_hero[i], 1093677901)
		end
		if I7[(i - 1) * 20 + num] == 1093677908 then
			UnitRemoveAbility(udg_hero[i], 1093682242)
		end
		if I7[20 * (i - 1) + num] == 1093677634 then
			udg_zhemei[i] = 0
		end
		I7[20 * (i - 1) + num] = 1095067243
		RemoveItem(FetchUnitItem(P4[i], 1227896395))
	end
end
function jB()
	local p = GetTriggerPlayer()
	local i = 1 + GetPlayerId(p)
	if GetClickedButton() == S4[i] then
		Forget(p, 1)
	elseif GetClickedButton() == T4[i] then
		Forget(p, 2)
	elseif GetClickedButton() == U4[i] then
		Forget(p, 3)
	elseif GetClickedButton() == V4[i] then
		Forget(p, 4)
	elseif GetClickedButton() == W4[i] then
		Forget(p, 5)
	elseif GetClickedButton() == X4[i] then
		Forget(p, 6)
	elseif GetClickedButton() == J7[i] then
		Forget(p, 7)
	elseif GetClickedButton() == J78[i] then
		Forget(p, 8)
	elseif GetClickedButton() == J79[i] then
		Forget(p, 9)
	elseif GetClickedButton() == J710[i] then
		Forget(p, 10)
	elseif GetClickedButton() == J711[i] then
		Forget(p, 11)
	end
	DialogClear(K7[i])
	p = nil
end
function GetBookNum(id)
	for i = 1, #kongfu do	
		if kongfu[i].itemid == id then
			return i
		end
	end
	return 0
end
function LearnJiNeng(l__ut, it)
	local p = GetOwningPlayer(l__ut)
	local i = 1 + GetPlayerId(p)
	local u = udg_hero[i]
	local num = GetBookNum(GetItemTypeId(it))
	local id = kongfu[num].abilityid
	local dp1 = kongfu[num].conditions['胆魄']
	local fy1 = kongfu[num].conditions['福缘']
	local gg1 = kongfu[num].conditions['根骨']
	local jm1 = kongfu[num].conditions['经脉']
	local wx1 = kongfu[num].conditions['悟性']
	local ys1 = kongfu[num].conditions['医术']
	if GetUnitAbilityLevel(u, id) > 0 then
		DisplayTextToPlayer(p, 0, 0, "|CFFFF0033你已经拥有此武功了")
		unitadditembyidswapped(GetItemTypeId(it), l__ut)
	else
		if danpo[i] >= dp1 and fuyuan[i] >= fy1 and gengu[i] >= gg1 and jingmai[i] >= jm1 and wuxing[i] >= wx1 and yishu[i] >= ys1 then
			if id == 1093677905 then
				UnitAddAbility(u, id)
				UnitMakeAbilityPermanent(u, true, id)
				DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033恭喜" .. (GetPlayerName(p) or "") .. "习得" .. (GetObjectName(id) or ""))
				AddPlayerTechResearched(p, 1382576745, 1)
			else
				L7[i] = 1
				for _ in _loop_() do
					if L7[i] > wugongshu[i] then break end
					if I7[20 * (i - 1) + L7[i]] ~= 1095067243 then
						if L7[i] == wugongshu[i] then
							DisplayTextToPlayer(p, 0, 0, "|CFFFF0033学习技能已达上限，请先遗忘部分技能")
							unitadditembyidswapped(GetItemTypeId(it), l__ut)
						end
					else
						UnitAddAbility(u, id)
						UnitMakeAbilityPermanent(u, true, id)
						if LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id * 5) >= 2 then
							SetUnitAbilityLevel(u, id, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id * 5))
						end
						I7[20 * (i - 1) + L7[i]] = id
						if GetUnitAbilityLevel(u, id) >= 2 then
							DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033恭喜" .. (GetPlayerName(p) or "") .. "想起" .. (GetObjectName(id) or ""))
						else
							DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033恭喜" .. (GetPlayerName(p) or "") .. "习得" .. (GetObjectName(id) or ""))
						end
						S9 = 1
						for _ in _loop_() do
							if S9 > 20 then break end
							if id == MM9[S9] then
								udg_shanghaijiacheng[i] = udg_shanghaijiacheng[i] + udg_jueneishjc[S9]
								ModifyHeroStat(1, u, 0, udg_jueneiminjie[S9])
								udg_baojilv[i] = udg_baojilv[i] + udg_jueneibaojilv[S9]
								juexuelingwu[i] = juexuelingwu[i] + udg_jueneijxlw[S9]
								udg_shanghaixishou[i] = udg_shanghaixishou[i] + udg_jueneishxs[S9]
							end
							S9 = S9 + 1
						end
						if true then break end
					end
					L7[i] = L7[i] + 1
				end
			end
		else
			DisplayTextToPlayer(p, 0, 0, "|CFFFF0033学习条件不足")
			if danpo[i] >= dp1 then
			else
				DisplayTextToPlayer(p, 0, 0, "|CFFFF0033胆魄缺少：" .. (I2S(dp1 - danpo[i]) or ""))
			end
			if gengu[i] >= gg1 then
			else
				DisplayTextToPlayer(p, 0, 0, "|CFFFF0033根骨缺少：" .. (I2S(gg1 - gengu[i]) or ""))
			end
			if fuyuan[i] >= fy1 then
			else
				DisplayTextToPlayer(p, 0, 0, "|CFFFF0033福缘缺少：" .. (I2S(fy1 - fuyuan[i]) or ""))
			end
			if wuxing[i] >= wx1 then
			else
				DisplayTextToPlayer(p, 0, 0, "|CFFFF0033悟性缺少：" .. (I2S(wx1 - wuxing[i]) or ""))
			end
			if jingmai[i] >= jm1 then
			else
				DisplayTextToPlayer(p, 0, 0, "|CFFFF0033经脉缺少：" .. (I2S(jm1 - jingmai[i]) or ""))
			end
			if yishu[i] >= ys1 then
			else
				DisplayTextToPlayer(p, 0, 0, "|CFFFF0033医术缺少：" .. (I2S(ys1 - yishu[i]) or ""))
			end
			unitadditembyidswapped(GetItemTypeId(it), l__ut)
		end
	end
	p = nil
	u = nil
end
--学习武功
function IsWuGongBook()
	return GetBookNum(GetItemTypeId(GetManipulatedItem())) ~= 0
end
function BookLearnWuGong()
	LearnJiNeng(GetTriggerUnit(), GetManipulatedItem())
end
--内功加成属性
function NeiGongJiaCheng(i, id, baoji, shxs, jxlw, minjie, shjc)
	MM9[i] = id
	udg_jueneibaojilv[i] = baoji
	udg_jueneishxs[i] = shxs
	udg_jueneijxlw[i] = jxlw
	udg_jueneiminjie[i] = minjie
	udg_jueneishjc[i] = shjc
end
function NeiGongJiaChengS()
	--序号、ID、暴击率、伤害吸收、绝学领悟、内力、伤害加成
	NeiGongJiaCheng(1, 1093682232, 0.15, 0.2, 5, 30, 1.0)
	NeiGongJiaCheng(2, 1093679154, 0.08, 0.25, 4, 150, 0.4)
	NeiGongJiaCheng(3, 1093679155, 0.05, 0.3, 3, 100, 0.3)
	NeiGongJiaCheng(4, 1093679428, 0.06, 0.4, 4, 120, 0.8)
	NeiGongJiaCheng(5, 1093679152, 0.12, 0.2, 3, 130, 0.7)
	NeiGongJiaCheng(6, 1093678936, 0.16, 0.15, 3, 60, 0.5)
	NeiGongJiaCheng(7, 1093679156, 0.1, 0.1, 2, 80, 0.6)
	NeiGongJiaCheng(8, 1395666994, 0.2, 0.2, 1, 50, 0.9)
	NeiGongJiaCheng(9, 1093678927, 0.04, 0, 0, 25, 0.2)
	NeiGongJiaCheng(10, 1093678928, 0.06, 0, 0, 30, 0.12)
	NeiGongJiaCheng(11, 1093678929, 0.08, 0, 0, 30, 0.14)
	NeiGongJiaCheng(12, 1093678930, 0.06, 0, 0, 20, 0.15)
	NeiGongJiaCheng(13, 1093678931, 0.1, 0, 0, 40, 0.25)
	NeiGongJiaCheng(14, 1093678932, 0.1, 0, 0, 30, 0.3)
	NeiGongJiaCheng(15, 1093678933, 0.07, 0, 0, 50, 0.18)
	NeiGongJiaCheng(16, 1093678935, 0.09, 0, 0, 50, 0.1)
	NeiGongJiaCheng(17, 1093682254, 0.03, 0, 0, 40, 0.18)
	NeiGongJiaCheng(18, 1093682226, 0.2, 0, 0, 80, 0.5)
	NeiGongJiaCheng(19, 1093682230, 0.8, 0, 0, 10, 0.15)
	NeiGongJiaCheng(20, 1093682228, -0.2, 0, 0, -40, -0.25)
end
--------学习武功系统结束------
--------武功效果系统开始------
function uC()
	return UnitHasBuffBJ(GetAttacker(), 1110454322)
end
function vC()
	local u = GetAttacker()
	if GetUnitState(u, UNIT_STATE_LIFE) <= 0.001 * GetUnitState(u, UNIT_STATE_MAX_LIFE) then
		SetWidgetLife(u, 1.0)
	else
		SetWidgetLife(u, GetUnitState(u, UNIT_STATE_LIFE) - 0.001 * GetUnitState(u, UNIT_STATE_MAX_LIFE))
	end
	u = nil
end
function xC()
	return UnitHasBuffBJ(GetAttacker(), 1112437615)
end
function yC()
	local u = GetAttacker()
	if GetUnitState(u, UNIT_STATE_LIFE) <= 0.003 * GetUnitState(u, UNIT_STATE_MAX_LIFE) then
		SetWidgetLife(u, 1.0)
	else
		SetWidgetLife(u, GetUnitState(u, UNIT_STATE_LIFE) - 0.003 * GetUnitState(u, UNIT_STATE_MAX_LIFE))
	end
	u = nil
end
function AC()
	return IsUnitAliveBJ(GetFilterUnit()) and (UnitHasBuffBJ(GetFilterUnit(), 1111847784) or UnitHasBuffBJ(GetFilterUnit(), 1110454602) or UnitHasBuffBJ(GetFilterUnit(), 1110454323) or UnitHasBuffBJ(GetFilterUnit(), 1113813609) or UnitHasBuffBJ(GetFilterUnit(), 1110454324) or UnitHasBuffBJ(GetFilterUnit(), 1110454342) or UnitHasBuffBJ(GetFilterUnit(), 1110454343))
end
function aC()
	local loc = GetUnitLoc(GetEnumUnit())
	local loc2 = nil
	if UnitHasBuffBJ(GetEnumUnit(), 1111847784) then
		if GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) <= 0.001 * GetUnitState(GetEnumUnit(), UNIT_STATE_MAX_LIFE) then
			SetWidgetLife(GetEnumUnit(), 1.0)
		else
			SetUnitState(GetEnumUnit(), UNIT_STATE_LIFE, GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) - 0.001 * GetUnitState(GetEnumUnit(), UNIT_STATE_MAX_LIFE))
		end
	end
	if UnitHasBuffBJ(GetEnumUnit(), 1110454602) then
		if GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) <= 0.003 * GetUnitState(GetEnumUnit(), UNIT_STATE_MAX_LIFE) then
			SetWidgetLife(GetEnumUnit(), 1.0)
		else
			SetUnitState(GetEnumUnit(), UNIT_STATE_LIFE, GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) - 0.003 * GetUnitState(GetEnumUnit(), UNIT_STATE_MAX_LIFE))
		end
	end
	if UnitHasBuffBJ(GetEnumUnit(), 1110454323) then
		if GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) <= 0.002 * GetUnitState(GetEnumUnit(), UNIT_STATE_MAX_LIFE) then
			SetWidgetLife(GetEnumUnit(), 1.0)
		else
			SetUnitState(GetEnumUnit(), UNIT_STATE_LIFE, GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) - 0.002 * GetUnitState(GetEnumUnit(), UNIT_STATE_MAX_LIFE))
		end
	end
	if UnitHasBuffBJ(GetEnumUnit(), 1113813609) then
		loc2 = pu(loc, 256.0, GetRandomReal(0, 360.0))
		IssuePointOrderByIdLoc(GetEnumUnit(), 851986, loc2)
		RemoveLocation(loc2)
	end
	if UnitHasBuffBJ(GetEnumUnit(), 1110454324) then
		if GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) <= 0.003 * GetUnitState(GetEnumUnit(), UNIT_STATE_MAX_LIFE) then
			SetWidgetLife(GetEnumUnit(), 1.0)
		else
			SetUnitState(GetEnumUnit(), UNIT_STATE_LIFE, GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) - 0.003 * GetUnitState(GetEnumUnit(), UNIT_STATE_MAX_LIFE))
		end
	end
	if UnitHasBuffBJ(GetEnumUnit(), 1110454342) then
		if ModuloInteger(GetUnitPointValue(GetEnumUnit()), 10) ~= 0 then
			if GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) <= 0.01 * GetUnitState(GetEnumUnit(), UNIT_STATE_MAX_LIFE) then
				SetWidgetLife(GetEnumUnit(), 1.0)
			else
				SetUnitState(GetEnumUnit(), UNIT_STATE_LIFE, GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) - 0.01 * GetUnitState(GetEnumUnit(), UNIT_STATE_MAX_LIFE))
			end
		else
			if GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) <= 0.03 * GetUnitState(GetEnumUnit(), UNIT_STATE_MAX_LIFE) then
				SetWidgetLife(GetEnumUnit(), 1.0)
			else
				SetUnitState(GetEnumUnit(), UNIT_STATE_LIFE, GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) - 0.03 * GetUnitState(GetEnumUnit(), UNIT_STATE_MAX_LIFE))
			end
		end
		CreateTextTagLocBJ("脑神丹效果", loc, 60.0, 12.0, 65.0, 55.0, 42.0, 0)
		Nw(3.0, bj_lastCreatedTextTag)
		SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, 90)
	end
	if UnitHasBuffBJ(GetEnumUnit(), 1110454343) then
		--if(GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)<=0.03*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))then
		--	call SetWidgetLife(GetEnumUnit(),1.)
		--else
		SetUnitState(GetEnumUnit(), UNIT_STATE_LIFE, GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) - 0.03 * GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE))
		--endif
		CreateTextTagLocBJ("化尸粉效果", loc, 60.0, 12.0, 65.0, 55.0, 42.0, 0)
		Nw(3.0, bj_lastCreatedTextTag)
		SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, 90)
	end
	RemoveLocation(loc)
	loc = nil
	loc2 = nil
end
--每秒钟做一次
function BC()
	ForGroupBJ(wv(bj_mapInitialPlayableArea, Condition(AC)), aC)
end

--学习门派内功
function pR()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895856 -- INLINED!!
end
function LearnNeiGong()
	local b = GetClickedButton()
	local u = LoadUnitHandle(YDHT, StringHash("门派内功"), 3)
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local id = LoadInteger(YDHT, StringHash("门派内功"), 4)
	local p = GetOwningPlayer(u)
	if b == LoadButtonHandle(YDHT, StringHash("门派内功"), 1) then
		UnitAddAbility(u, Q8[id])
		UnitMakeAbilityPermanent(u, true, Q8[id])
		DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|cff00FF66恭喜领悟技能：" .. (GetObjectName(Q8[id]) or ""))
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FF66玩家" .. (I2S(1 + GetPlayerId(p)) or "") .. "成为" .. (udg_menpainame[udg_runamen[i]] or "") .. "长老")
		SetPlayerName(p, "〓" .. (udg_menpainame[udg_runamen[i]] or "") .. "长老〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
		L7[i] = 1
		for _ in _loop_() do
			if L7[i] > wugongshu[i] then break end
			if I7[(i - 1) * 20 + L7[i]] ~= 1095067243 then
			else
				I7[(i - 1) * 20 + L7[i]] = Q8[id]
				if true then break end
			end
			L7[i] = L7[i] + 1
		end
	elseif b == LoadButtonHandle(YDHT, StringHash("门派内功"), 2) then
		if P8[id] == 1093678935 then
			if GetUnitAbilityLevel(u, 1093678935) >= 1 then
				IncUnitAbilityLevel(u, P8[id])
			else
				UnitAddAbility(u, P8[id])
				L7[i] = 1
				for _ in _loop_() do
					if L7[i] > wugongshu[i] then break end
					if I7[(i - 1) * 20 + L7[i]] ~= 1095067243 then
					else
						I7[(i - 1) * 20 + L7[i]] = P8[id]
						if true then break end
					end
					L7[i] = L7[i] + 1
				end
			end
			IncUnitAbilityLevel(u, P8[id])
		else
			UnitAddAbility(u, P8[id])
			UnitMakeAbilityPermanent(u, true, P8[id])
			L7[i] = 1
			for _ in _loop_() do
				if L7[i] > wugongshu[i] then break end
				if I7[(i - 1) * 20 + L7[i]] ~= 1095067243 then
				else
					I7[(i - 1) * 20 + L7[i]] = P8[id]
					if true then break end
				end
				L7[i] = L7[i] + 1
			end
		end
		DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|cff00FF66恭喜领悟技能：" .. (GetObjectName(P8[id]) or ""))
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FF66玩家" .. (I2S(1 + GetPlayerId(p)) or "") .. "成为" .. (udg_menpainame[udg_runamen[i]] or "") .. "长老")
		SetPlayerName(p, "〓" .. (udg_menpainame[udg_runamen[i]] or "") .. "长老〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
	end
	DialogClear(udg_menpaineigong)
	FlushChildHashtable(YDHT, StringHash("门派内功"))
	DialogDestroy(udg_menpaineigong)
	udg_menpaineigong = nil
	b = nil
	u = nil
	p = nil
end
function qR()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	local i = 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	local b1 = nil
	local b2 = nil
	local t = CreateTrigger()
	local j = 0
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, i)
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	if UnitHaveItem(GetTriggerUnit(), 1227895642) == false then
		DisplayTextToPlayer(Player(-1 + i), 0, 0, "|CFF34FF00你必须携带门派毕业卷才能获得修习资格")
	else
		if O8[LoadInteger(YDHT, id * cx, -1587459251)] == 1 then
			DisplayTextToPlayer(Player(-1 + i), 0, 0, "|CFF34FF00你已经修行过了")
		else
			if GetUnitAbilityLevel(udg_hero[i], Y7[udg_runamen[i]]) < 2 then
				DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 15, "你的" .. (GetAbilityName(Y7[udg_runamen[i]]) or "") .. "|r还没修炼到位")
			else
				j = 1
				for _ in _loop_() do
					if j > wugongshu[i] then break end
					if I7[GetPlayerId(GetOwningPlayer(GetTriggerUnit())) * 20 + j] ~= 1095067243 then
						--call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"j="+I2S(j))
						if j == wugongshu[i] then
							DisplayTextToPlayer(Player(-1 + i), 0, 0, "|CFF34FF00学习技能已达上限，请先遗忘部分技能")
						end
					else
						O8[LoadInteger(YDHT, id * cx, -1587459251)] = 1
						RemoveItem(FetchUnitItem(GetTriggerUnit(), 1227895642))
						bj_forLoopBIndex = 1
						bj_forLoopBIndexEnd = 20
						for _ in _loop_() do
							if bj_forLoopBIndex > bj_forLoopBIndexEnd then break end
							if udg_runamen[LoadInteger(YDHT, id * cx, -1587459251)] == 11 then
								DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 15, "自由门派没有内功")
								if true then break end
							elseif udg_runamen[LoadInteger(YDHT, id * cx, -1587459251)] == 13 then
								DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 15, "该门派不在此学习内功")
								unitadditembyidswapped(1227895642, GetTriggerUnit())
								O8[LoadInteger(YDHT, id * cx, -1587459251)] = 0
								if true then break end
							else
								if udg_runamen[LoadInteger(YDHT, id * cx, -1587459251)] == bj_forLoopBIndex then
									udg_menpaineigong = DialogCreate()
									DialogSetMessage(udg_menpaineigong, "请选择你要修习的内功")
									b1 = DialogAddButtonBJ(udg_menpaineigong, GetObjectName(Q8[bj_forLoopBIndex]))
									b2 = DialogAddButtonBJ(udg_menpaineigong, GetObjectName(P8[bj_forLoopBIndex]))
									SaveButtonHandle(YDHT, StringHash("门派内功"), 1, b1)
									SaveButtonHandle(YDHT, StringHash("门派内功"), 2, b2)
									SaveUnitHandle(YDHT, StringHash("门派内功"), 3, GetTriggerUnit())
									SaveInteger(YDHT, StringHash("门派内功"), 4, bj_forLoopBIndex)
									DialogDisplay(GetOwningPlayer(GetTriggerUnit()), udg_menpaineigong, true)
									TriggerRegisterDialogEvent(t, udg_menpaineigong)
									TriggerAddAction(t, LearnNeiGong)
								end
							end
							bj_forLoopBIndex = bj_forLoopBIndex + 1
						end
						if true then break end
					end
					j = j + 1
				end
			end
		end
	end
	FlushChildHashtable(YDHT, id * cx)
	b1 = nil
	b2 = nil
end
function IsMuRongNeiGong()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227897158 -- INLINED!!
end
function MuRongNeiGong()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local j = 1
	if udg_runamen[i] ~= 13 then
		DisplayTextToPlayer(p, 0, 0, "|CFF34FF00你没有拜入姑苏慕容")
	else
		if UnitHaveItem(u, 1227895642) == false then
			DisplayTextToPlayer(p, 0, 0, "|CFF34FF00你必须携带门派毕业卷才能获得修习资格")
		else
			if GetUnitAbilityLevel(u, Y7[udg_runamen[i]]) < 2 then
				DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 15, "你的" .. (GetAbilityName(Y7[udg_runamen[i]]) or "") .. "|r还没修炼到位")
			else
				if O8[i] == 1 then
					DisplayTextToPlayer(p, 0, 0, "|CFF34FF00你已经修行过了")
				else
					j = 1
					for _ in _loop_() do
						if j > wugongshu[i] then break end
						if I7[(i - 1) * 20 + j] ~= 1095067243 then
							if j == wugongshu[i] then
								DisplayTextToPlayer(p, 0, 0, "|CFF34FF00学习技能已达上限，请先遗忘部分技能")
							end
						else
							O8[i] = 1
							RemoveItem(FetchUnitItem(u, 1227895642))
							if danpo[i] > 20 then
								UnitAddAbility(u, P8[13])
								UnitMakeAbilityPermanent(u, true, P8[13])
								DisplayTextToPlayer(p, 0, 0, "|cff00FF66恭喜领悟技能：" .. (GetObjectName(P8[13]) or ""))
								DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FF66玩家" .. (I2S(1 + GetPlayerId(p)) or "") .. "成为" .. (udg_menpainame[udg_runamen[i]] or "") .. "长老")
								SetPlayerName(p, "〓" .. (udg_menpainame[udg_runamen[i]] or "") .. "长老〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
								L7[i] = 1
								for _ in _loop_() do
									if L7[i] > wugongshu[i] then break end
									if I7[(i - 1) * 20 + L7[i]] ~= 1095067243 then
									else
										I7[(i - 1) * 20 + L7[i]] = P8[13]
										if true then break end
									end
									L7[i] = L7[i] + 1
								end
							else
								UnitAddAbility(u, Q8[13])
								UnitMakeAbilityPermanent(u, true, Q8[13])
								DisplayTextToPlayer(p, 0, 0, "|cff00FF66你还是先掌握" .. (GetObjectName(Q8[13]) or "") .. "吧")
								DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FF66玩家" .. (I2S(1 + GetPlayerId(p)) or "") .. "成为" .. (udg_menpainame[udg_runamen[i]] or "") .. "长老")
								SetPlayerName(p, "〓" .. (udg_menpainame[udg_runamen[i]] or "") .. "长老〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
								L7[i] = 1
								for _ in _loop_() do
									if L7[i] > wugongshu[i] then break end
									if I7[(i - 1) * 20 + L7[i]] ~= 1095067243 then
									else
										I7[(i - 1) * 20 + L7[i]] = Q8[13]
										if true then break end
									end
									L7[i] = L7[i] + 1
								end
							end
							if true then break end
						end
						j = j + 1
					end
				end
			end
		end
	end
	u = nil
	p = nil
end


--===========================================================================
--合成物品
function HeCheng_Conditions()
	--call BJDebugMsg(I2S(GetUnitTypeId(GetTriggerUnit())))
	return Ce[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == 2 or GetItemTypeId(GetManipulatedItem()) == 1227897145 or GetItemTypeId(GetManipulatedItem()) == 1227897153 or GetItemTypeId(GetManipulatedItem()) == 1227897154 or GetItemTypeId(GetManipulatedItem()) == 1227897156
end
function HeCheng_Actions()
	--二合一
	--if GetItemTypeId(GetManipulatedItem()) == 'I09C' or GetItemTypeId(GetManipulatedItem()) == 'I09P' then
	--   	call YDWENewItemsFormula( 'I09C', 1, 'I09P', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'I00B' )
	--endif
	--if GetItemTypeId(GetManipulatedItem()) == 'I098' or GetItemTypeId(GetManipulatedItem()) == 'I09P' then
	--   	call YDWENewItemsFormula( 'I098', 1, 'I09P', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'I00D' )
	--endif
	if GetItemTypeId(GetManipulatedItem()) == 1227894850 or GetItemTypeId(GetManipulatedItem()) == 1227894852 then
		YDWENewItemsFormula(1227894850, 1, 1227894852, 1, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1227894852)
	end
	if GetItemTypeId(GetManipulatedItem()) == 1227895379 or GetItemTypeId(GetManipulatedItem()) == 1227897168 then
		YDWENewItemsFormula(1227895379, 1, 1227897168, 1, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1227895373)
	end
	if GetItemTypeId(GetManipulatedItem()) == 1227895373 or GetItemTypeId(GetManipulatedItem()) == 1227897168 then
		YDWENewItemsFormula(1227895373, 1, 1227897168, 1, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1227895377)
	end
	if GetItemTypeId(GetManipulatedItem()) == 1227895377 or GetItemTypeId(GetManipulatedItem()) == 1227897168 then
		YDWENewItemsFormula(1227895377, 1, 1227897168, 1, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1227895378)
	end
	if GetItemTypeId(GetManipulatedItem()) == 1227895378 or GetItemTypeId(GetManipulatedItem()) == 1227897168 then
		YDWENewItemsFormula(1227895378, 1, 1227897168, 1, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1227895376)
	end
	if GetItemTypeId(GetManipulatedItem()) == 1227897145 or GetItemTypeId(GetManipulatedItem()) == 1227897153 then
		YDWENewItemsFormula(1227897145, 1, 1227897153, 1, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1227897155)
	end
	--三合一
	if GetItemTypeId(GetManipulatedItem()) == 1227896115 or GetItemTypeId(GetManipulatedItem()) == 1227896120 or GetItemTypeId(GetManipulatedItem()) == 1227896129 then
		YDWENewItemsFormula(1227896115, 1, 1227896120, 1, 1227896129, 1, 1667786099, 0, 1667786099, 0, 1667786099, 0, 1227896131)
	end
	--四合一
	--五合一
	--六合一
	if GetItemTypeId(GetManipulatedItem()) == 1227895376 or GetItemTypeId(GetManipulatedItem()) == 1227897168 then
		YDWENewItemsFormula(1227895376, 1, 1227897168, 1, 1227897168, 1, 1227897168, 1, 1227897168, 1, 1227897168, 1, 1227896918)
	end
--call BJDebugMsg(GetItemName(GetLastCombinedItem())+"A")
--if GetItemType(GetLastCombinedItem())==ITEM_TYPE_ARTIFACT then
--    call SaveInteger(YDHT,GetHandleId(GetLastCombinedItem()),0,WeaponNaiJiu(GetLastCombinedItem()))
--   endif
end
--锻造大师补属性
function DZDSBuShuXing(u)
	local ii7 = 0
	local ii8 = 0
	local ii9 = 0
	local it = nil
	local j = 1
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	for _ in _loop_() do
		if j >= 7 then break end
		it = UnitItemInSlotBJ(u, j)
		ii7 = ModuloInteger(GetItemUserData(it) // 100, 10)
		ii8 = ModuloInteger(GetItemUserData(it) // 10, 10)
		ii9 = ModuloInteger(GetItemUserData(it) // 1, 10)
		--call BJDebugMsg("第"+I2S(j)+"格子物品的数值为"+I2S(ii7*100+ii8*10+ii9))
		if ii7 == 1 then
			gengu[i] = gengu[i] + 2
		elseif ii7 == 2 then
			wuxing[i] = wuxing[i] + 2
		elseif ii7 == 3 then
			jingmai[i] = jingmai[i] + 2
		elseif ii7 == 4 then
			fuyuan[i] = fuyuan[i] + 2
		elseif ii7 == 5 then
			danpo[i] = danpo[i] + 2
		elseif ii7 == 6 then
			yishu[i] = yishu[i] + 2
		end
		if ii8 == 1 then
			gengu[i] = gengu[i] + 2
		elseif ii8 == 2 then
			wuxing[i] = wuxing[i] + 2
		elseif ii8 == 3 then
			jingmai[i] = jingmai[i] + 2
		elseif ii8 == 4 then
			fuyuan[i] = fuyuan[i] + 2
		elseif ii8 == 5 then
			danpo[i] = danpo[i] + 2
		elseif ii8 == 6 then
			yishu[i] = yishu[i] + 2
		end
		if ii9 == 1 then
			gengu[i] = gengu[i] + 2
		elseif ii9 == 2 then
			wuxing[i] = wuxing[i] + 2
		elseif ii9 == 3 then
			jingmai[i] = jingmai[i] + 2
		elseif ii9 == 4 then
			fuyuan[i] = fuyuan[i] + 2
		elseif ii9 == 5 then
			danpo[i] = danpo[i] + 2
		elseif ii9 == 6 then
			yishu[i] = yishu[i] + 2
		end
		j = j + 1
	end
	it = nil
end
--为合成的武器增加耐久度
function WuPinHeCheng()
	local it = bj_lastCombinedItem -- INLINED!!
	local i = 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	if Ce[i] == 2 and LoadBoolean(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), GetItemTypeId(it)) == false and udg_dzds[i] <= 5 then
		udg_dzds[i] = udg_dzds[i] + 1
		DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|CFF66FF00恭喜您锻造成功第" .. (I2S(udg_dzds[i]) or "") .. "件装备，锻造成功5件装备可以获得锻造大师哦")
		SaveBoolean(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), GetItemTypeId(it), true)
	end
	if Ce[i] == 2 and udg_dzds[i] >= 5 and udg_dzdsbool[i] == false then
		udg_dzdsbool[i] = true
		DZDSBuShuXing(udg_hero[i])
		if udg_zhangmen[i] == true then
		else
			SaveStr(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), GetHandleId(GetOwningPlayer(GetTriggerUnit())), "〓锻造大师〓" .. (LoadStr(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), GetHandleId(GetOwningPlayer(GetTriggerUnit()))) or ""))
		end
		DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜" .. (GetPlayerName(GetOwningPlayer(GetTriggerUnit())) or "") .. "获得锻造大师")
		SetPlayerName(GetOwningPlayer(GetTriggerUnit()), "〓锻造大师〓" .. (GetPlayerName(GetOwningPlayer(GetTriggerUnit())) or ""))
	end
	--call BJDebugMsg(GetItemName(it))
	if GetItemType(it) == ITEM_TYPE_ARTIFACT then
		SaveInteger(YDHT, GetHandleId(it), 0, WeaponNaiJiu(it))
	end
	it = nil
end


--伴侣属性
function BanLvShuXing_1(num, id1, id2, blgg, blwx, bljm, blfy, bldp, blys)
	R8[num] = id1
	S8[num] = id2
	udg_blgg[num] = blgg
	udg_blwx[num] = blwx
	udg_bljm[num] = bljm
	udg_blfy[num] = blfy
	udg_bldp[num] = bldp
	udg_blys[num] = blys
end
function LO()
	BanLvShuXing_1(1, 1697656885, 1227895865, 2, 0, 0, 0, 3, 0)
	BanLvShuXing_1(2, 1697656886, 1227895874, 2, 2, 2, 2, 2, 2)
	BanLvShuXing_1(3, 1697656887, 1227895380, 0, 0, 0, 0, 1, 1)
	BanLvShuXing_1(4, 1697656888, 1227895864, 0, 2, 2, 1, 0, 0)
	BanLvShuXing_1(5, 1697656889, 1227895858, 2, 0, 1, 0, 0, 0)
	BanLvShuXing_1(6, 1697656898, 1227895859, 0, 2, 0, 0, 0, 1)
	BanLvShuXing_1(7, 1697656897, 1227895857, 0, 0, 0, 2, 0, 0)
	BanLvShuXing_1(8, 1697656899, 1227895873, 2, 2, 2, 2, 2, 2)
	BanLvShuXing_1(9, 1697656900, 1227895863, 2, 0, 0, 2, 1, 0)
	BanLvShuXing_1(10, 1697656901, 1227895862, 0, 1, 3, 0, 0, 1)
	BanLvShuXing_1(11, 1697656902, 1227895861, 1, 1, 0, 0, 0, 2)
	BanLvShuXing_1(12, 1697656903, 1227895860, 0, 0, 2, 1, 1, 0)
	BanLvShuXing_1(13, 1697657154, 1227899728, 2, 2, 2, 2, 2, 2)
	BanLvShuXing_1(14, 1697657155, 1227899731, 3, 3, 3, 3, 3, 3) --白猿
end
--结成伴侣
function NO()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemType(GetManipulatedItem()) == ITEM_TYPE_PERMANENT
end
function OO()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local j = 1
	local loc = GetUnitLoc(u)
	if IsUnitType(u, UNIT_TYPE_HERO) ~= nil then -- INLINED!!
		for _ in _loop_() do
			if j > MAX_BAN_LV_NUM then break end
			if GetUnitTypeId(k8[i]) == R8[j] then
				jingmai[i] = jingmai[i] - udg_bljm[j]
				fuyuan[i] = fuyuan[i] - udg_blfy[j]
				wuxing[i] = wuxing[i] - udg_blwx[j]
				yishu[i] = yishu[i] - udg_blys[j]
				gengu[i] = gengu[i] - udg_blgg[j]
				danpo[i] = danpo[i] - udg_bldp[j]
			end
			j = j + 1
		end
		RemoveUnit(k8[i])
		j = 1
		for _ in _loop_() do
			if j > MAX_BAN_LV_NUM then break end
			if GetItemTypeId(GetManipulatedItem()) == S8[j] then
				PlaySoundOnUnitBJ(Fh, 100, u)
				CreateNUnitsAtLoc(1, R8[j], p, loc, bj_UNIT_FACING)
				zw(bj_lastCreatedUnit, u, 1.0, 250.0, 1000.0, 1500.0, 75)
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00恭喜你与" .. (GetUnitName(bj_lastCreatedUnit) or "") .. "结成伴侣")
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00查看伴侣属性输入“bl”")
				k8[i] = bj_lastCreatedUnit
				jingmai[i] = jingmai[i] + udg_bljm[j]
				fuyuan[i] = fuyuan[i] + udg_blfy[j]
				wuxing[i] = wuxing[i] + udg_blwx[j]
				yishu[i] = yishu[i] + udg_blys[j]
				gengu[i] = gengu[i] + udg_blgg[j]
				danpo[i] = danpo[i] + udg_bldp[j]
				RemoveLocation(loc)
			end
			j = j + 1
		end
	else
		unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()), u)
	end
	u = nil
	p = nil
	loc = nil
end


--整理物品
function SO()
	if GetWidgetLife(GetEnumItem()) == 101.0 then --D古董
		SetItemPositionLoc(GetEnumItem(), GetRectCenter(nh))
		RemoveLocation(GetRectCenter(nh))
	elseif GetWidgetLife(GetEnumItem()) == 102.0 then --C古董
		SetItemPositionLoc(GetEnumItem(), GetRectCenter(oh))
		RemoveLocation(GetRectCenter(oh))
	elseif GetWidgetLife(GetEnumItem()) == 103.0 then --B古董
		SetItemPositionLoc(GetEnumItem(), GetRectCenter(ph))
		RemoveLocation(GetRectCenter(ph))
	elseif GetWidgetLife(GetEnumItem()) == 104.0 then --A古董
		SetItemPositionLoc(GetEnumItem(), GetRectCenter(qh))
		RemoveLocation(GetRectCenter(qh))
	elseif GetWidgetLife(GetEnumItem()) == 105.0 then --C草药
		SetItemPositionLoc(GetEnumItem(), GetRectCenter(rh))
		RemoveLocation(GetRectCenter(rh))
	elseif GetWidgetLife(GetEnumItem()) == 106.0 then --B草药
		SetItemPositionLoc(GetEnumItem(), GetRectCenter(sh))
		RemoveLocation(GetRectCenter(sh))
	elseif GetWidgetLife(GetEnumItem()) == 107.0 then --A草药
		SetItemPositionLoc(GetEnumItem(), GetRectCenter(th))
		RemoveLocation(GetRectCenter(th))
	elseif GetWidgetLife(GetEnumItem()) == 108.0 then --18种江湖武功
		SetItemPosition(GetEnumItem(), -1819.0, 484.0)
	elseif GetWidgetLife(GetEnumItem()) == 109.0 then
		SetItemPosition(GetEnumItem(), -1300.0, -300.0)
	end
end
function TO()
	EnumItemsInRectBJ(bj_mapInitialPlayableArea, SO)
end


--------轻功系统------//
function Trig_ttConditions()
	return GetSpellAbilityId() == 1093677653 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true
end
function qinggongxiaoshi()
	local tm = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(tm), 0)
	DestroyEffect(udg_JTX[GetPlayerId(GetOwningPlayer(u)) + 1])
	PauseTimer(tm)
	DestroyTimer(tm)
	u = nil
	tm = nil
end
function Trig_ttActions()
	local d1 = GetUnitLoc(GetTriggerUnit())
	local d2 = GetSpellTargetLoc()
	local agi = I2R(GetHeroAgi(GetTriggerUnit(), false))
	local l__jd = AngleBetweenPoints(d1, d2)
	local distance = 500 + I2R(GetHeroStr(GetTriggerUnit(), false)) / 3
	local velocity = 48.027 * Pow(agi, 0.3131)
	local lasttime = 5.0
	local tm = CreateTimer()
	if velocity > 1000 then
		velocity = 1000
	end
	if distance > 2000 then
		distance = 2000
	end
	SaveReal(YDHT, GetHandleId(GetTriggerUnit()), StringHash("轻功distance"), distance)
	if distance > DistanceBetweenPoints(d1, d2) then
		distance = DistanceBetweenPoints(d1, d2)
	end
	lasttime = distance / velocity
	SaveReal(YDHT, GetHandleId(GetTriggerUnit()), StringHash("轻功velocity"), velocity)
	SaveUnitHandle(YDHT, GetHandleId(tm), 0, GetTriggerUnit())
	SetUnitFacing(GetTriggerUnit(), l__jd)
	DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Weapons\\PhoenixMissile\\Phoenix_Missile.mdl"))
	udg_JTX[GetPlayerId(GetOwningPlayer(GetTriggerUnit())) + 1] = AddSpecialEffectTarget("Abilities\\Weapons\\PhoenixMissile\\Phoenix_Missile.mdl", GetTriggerUnit(), "origin")
	SetUnitAnimation(GetTriggerUnit(), "walk")
	YDWEJumpTimer(GetTriggerUnit(), l__jd, distance, lasttime, 0.03, 100)
	TimerStart(tm, lasttime, false, qinggongxiaoshi)
	RemoveLocation(d1)
	RemoveLocation(d2)
	d1 = nil
	d2 = nil
	tm = nil
end

--抽血术
function ChouXie_Condition()
	return IsUnitInGroup(GetAttacker(), w7) and GetPlayerTechCountSimple(1378889777, Player(6)) == 50 and GetTriggerUnit() ~= udg_ZhengPaiWL and GetUnitTypeId(GetTriggerUnit()) ~= 1214409837 and GetUnitTypeId(GetTriggerUnit()) ~= 1865429574 and GetUnitTypeId(GetTriggerUnit()) ~= 1865429575
end
function ChouXie_Action()
	if GetRandomInt(1, 100) <= 20 then
		SetUnitLifePercentBJ(GetTriggerUnit(), GetUnitLifePercent(GetTriggerUnit()) - 6.0)
	end
end
--杀怪(进攻怪及练功房)
function ey()
	return IsUnitEnemy(GetDyingUnit(), GetOwningPlayer(GetKillingUnit())) and (GetOwningPlayer(GetTriggerUnit()) == Player(6) or GetOwningPlayer(GetTriggerUnit()) == Player(7))
end
function KillGuai()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	local i = 1
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	if GetOwningPlayer(GetTriggerUnit()) == Player(7) then
		if UnitHaveItem(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))], 1227896391) then
			T7 = GetRandomReal(0.95, 0.95 + I2R(fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))]) / 50.0)
			U7 = T7 * (30.0 * (I2R(udg_boshu + 1) / 1.0))
			AdjustPlayerStateBJ(R2I(U7), GetOwningPlayer(GetKillingUnit()), PLAYER_STATE_RESOURCE_GOLD)
		else
			T7 = GetRandomReal(0.95, 0.95 + I2R(fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))]) / 50.0)
			U7 = T7 * (15.0 * (I2R(udg_boshu + 1) / 1.0))
			AdjustPlayerStateBJ(R2I(U7), GetOwningPlayer(GetKillingUnit()), PLAYER_STATE_RESOURCE_GOLD)
		end
		if UnitHaveItem(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))], 1227896393) then
			if GetRandomInt(1, 100) <= 15 then
				AdjustPlayerStateBJ(1, GetOwningPlayer(GetKillingUnit()), PLAYER_STATE_RESOURCE_LUMBER)
			end
		end
		if UnitHaveItem(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))], 1227896390) then
			shengwang[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] = shengwang[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] + udg_boshu // 5
		end
		if UnitHaveItem(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))], 1227896392) then
			AddHeroXP(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))], GetUnitLevel(GetTriggerUnit()) * 20, true)
		end
	else
		T7 = GetRandomReal(0.95, 0.95 + I2R(fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))]) / 50.0)
		U7 = T7 * (25.0 * (I2R(udg_boshu + 1) / 1.0))
		AdjustPlayerStateBJ(R2I(U7), GetOwningPlayer(GetKillingUnit()), PLAYER_STATE_RESOURCE_GOLD)
		if GetUnitPointValue(GetTriggerUnit()) == 102 then
			i = 1
			for _ in _loop_() do
				if i >= 6 then break end
				shoujiajf[i] = shoujiajf[i] + 15 * (10 - GetNumPlayer()) // 10
				i = i + 1
			end
			ae = ae + (10 + GetPlayerTechCountSimple(1378889777, Player(6)))
			DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "击杀名门高手，每位玩家获得守家积分+" .. (I2S(shoujiajf[i] + 15 * (10 - GetNumPlayer()) // 10) or ""))
			SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
			if GetRandomInt(1, 50) <= 5 then
				createitemloc(YaoCao[GetRandomInt(1, 12)], LoadLocationHandle(YDHT, id * cx, 392811314))
				if udg_lddsbool[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] then
					createitemloc(YaoCao[GetRandomInt(1, 12)], LoadLocationHandle(YDHT, id * cx, 392811314))
				end
			end
			if GetRandomInt(1, 50) <= 2 then
				createitemloc(1227897138, LoadLocationHandle(YDHT, id * cx, 392811314))
			else
				if GetRandomInt(1, 100) <= 10 then
					createitemloc(1227896398, LoadLocationHandle(YDHT, id * cx, 392811314))
				else
					if GetRandomInt(1, 90) <= 10 then
						createitemloc(1227896395, LoadLocationHandle(YDHT, id * cx, 392811314))
					else
						if GetRandomInt(1, 80) <= 10 then
							createitemloc(1227896397, LoadLocationHandle(YDHT, id * cx, 392811314))
						end
					end
				end
			end
			RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
		else
			--判断是否为进攻BOSS
			if GetUnitPointValue(GetTriggerUnit()) == 101 then
				i = 1
				for _ in _loop_() do
					if i >= 6 then break end
					shoujiajf[i] = shoujiajf[i] + 30 * (10 - GetNumPlayer()) // 10
					i = i + 1
				end
				ae = ae + (10 + GetPlayerTechCountSimple(1378889777, Player(6)))
				DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "击杀BOSS，每位玩家获得守家积分+" .. (I2S(shoujiajf[i] + 30 * (10 - GetNumPlayer()) // 10) or ""))
				ae = ae + (30 + GetPlayerTechCountSimple(1378889777, Player(6)))
				if GetRandomInt(1, 100) <= 50 then
					udg_shuxing[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] = udg_shuxing[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] + 1
					DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFF33CC00" .. (GetPlayerName(GetOwningPlayer(GetKillingUnit())) or "") .. "|cFF33CC00击杀了BOSS" .. (GetUnitName(GetTriggerUnit()) or "") .. "|cFF33CC00获得了一个自由属性点")
				end
				SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
				createitemloc(YaoCao[GetRandomInt(1, 12)], LoadLocationHandle(YDHT, id * cx, 392811314))
				createitemloc(YaoCao[GetRandomInt(1, 12)], LoadLocationHandle(YDHT, id * cx, 392811314))
				if udg_lddsbool[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] then
					createitemloc(YaoCao[GetRandomInt(1, 12)], LoadLocationHandle(YDHT, id * cx, 392811314))
					createitemloc(YaoCao[GetRandomInt(1, 12)], LoadLocationHandle(YDHT, id * cx, 392811314))
				end
				RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
			else
				if GetKillingUnit() ~= nil then
					shoujiajf[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] = shoujiajf[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] + 1
				end
			end
		end
	end
	FlushChildHashtable(YDHT, id * cx)
end

--杀怪加声望
function Xa()
	return GetPlayerController(GetOwningPlayer(GetKillingUnit())) == MAP_CONTROL_USER
end
function Ya()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))
	local x
	local y
	shengwang[i] = shengwang[i] + udg_boshu // 7 + 1
	if ModuloInteger(GetUnitPointValue(u), 10) == 1 then
		shengwang[i] = shengwang[i] + 8
	end
	if p == Player(6) then
		zd = zd + GetRandomInt(1, 2)
		if zd >= 100 then
			zd = 0
			x = GetUnitX(u)
			y = GetUnitY(u)
			createitem(gudong[GetRandomInt(1, 6 + udg_boshu // 5)], x, y)
		end
	end
	u = nil
	p = nil
end
function dB()
	return GetPlayerController(GetOwningPlayer(GetKillingUnit())) == MAP_CONTROL_USER
end
function eB()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))
	shengwang[i] = shengwang[i] + 1
	if ModuloInteger(GetUnitPointValue(GetTriggerUnit()), 10) == 1 then
		shengwang[i] = shengwang[i] + 5
	elseif ModuloInteger(GetUnitPointValue(GetTriggerUnit()), 10) == 2 then
		shengwang[i] = shengwang[i] + 10
	end
end
--经验符
function oQ()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1952807024
end
function pQ()
	AddHeroXP(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))], 200000, true)
end
--购买等级
function rQ()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896154
end
function sQ()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if GetUnitLevel(udg_hero[i]) >= 100 then
		AdjustPlayerStateBJ(10000, p, PLAYER_STATE_RESOURCE_GOLD)
		DisplayTimedTextToPlayer(p, 0, 0, 15, "|cFFFFCC00等级高于100无法购买等级")
	else
		if Ce[i] == 5 then
			AdjustPlayerStateBJ(10000, p, PLAYER_STATE_RESOURCE_GOLD)
			DisplayTimedTextToPlayer(p, 0, 0, 15, "|cFFFFCC00选择该副职无法购买等级")
		else
			SetHeroLevel(udg_hero[i], GetUnitLevel(udg_hero[i]) + 1, true)
		end
	end
	u = nil
	p = nil
end

--装备打孔
function xQ()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896398
end
function yQ()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i11 = 0
	local i12 = 0
	if GetItemType(UnitItemInSlotBJ(u, 1)) == ITEM_TYPE_ARTIFACT or GetItemType(UnitItemInSlotBJ(u, 1)) == ITEM_TYPE_PURCHASABLE or GetItemType(UnitItemInSlotBJ(u, 1)) == ITEM_TYPE_CHARGED then
		i12 = ModuloInteger(GetItemUserData(UnitItemInSlotBJ(u, 1)) // 1000, 10)
		i11 = ModuloInteger(GetItemUserData(UnitItemInSlotBJ(u, 1)) // 100, 10)
		if i11 > 0 then
			i12 = i12 + 1
		end
		i11 = ModuloInteger(GetItemUserData(UnitItemInSlotBJ(u, 1)) // 10, 10)
		if i11 > 0 then
			i12 = i12 + 1
		end
		i11 = ModuloInteger(GetItemUserData(UnitItemInSlotBJ(u, 1)), 10)
		if i11 > 0 then
			i12 = i12 + 1
		end
		if i12 < 3 then
			SetItemUserData(UnitItemInSlotBJ(u, 1), GetItemUserData(UnitItemInSlotBJ(u, 1)) + 1000)
			DisplayTimedTextToPlayer(p, 0, 0, 30, "|cff00ffff打孔成功！")
		else
			unitadditembyidswapped(1227896398, u)
			DisplayTimedTextToPlayer(p, 0, 0, 30, "|cffff0000第一格物品不能再打孔了")
		end
	else
		unitadditembyidswapped(1227896398, u)
		DisplayTimedTextToPlayer(p, 0, 0, 30, "|cffff0000第一格物品不是装备")
	end
	u = nil
	p = nil
end
--加入副职
function AQ()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and (GetItemTypeId(GetManipulatedItem()) == 1227896913 or GetItemTypeId(GetManipulatedItem()) == 1227899188 or GetItemTypeId(GetManipulatedItem()) == 1227899189 or GetItemTypeId(GetManipulatedItem()) == 1227899190 or GetItemTypeId(GetManipulatedItem()) == 1227899191 or GetItemTypeId(GetManipulatedItem()) == 1227896915 or GetItemTypeId(GetManipulatedItem()) == 1227896916 or GetItemTypeId(GetManipulatedItem()) == 1227899719)
end
function aQ()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	if Ce[i] == 0 then
		if GetItemTypeId(GetManipulatedItem()) == 1227896913 then
			yishu[i] = yishu[i] + 5
			Ce[i] = 1
			DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 5.0, "|cffffff00恭喜成为炼丹师，获得医术+5")
		elseif GetItemTypeId(GetManipulatedItem()) == 1227896915 then
			gengu[i] = gengu[i] + 5
			Ce[i] = 2
			DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 5.0, "|cffffff00恭喜成为锻造师，获得根骨+5")
		elseif GetItemTypeId(GetManipulatedItem()) == 1227896916 then
			danpo[i] = danpo[i] + 5
			Ce[i] = 3
			DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 5.0, "|cffffff00恭喜成为兵器师，获得胆魄+5")
		elseif GetItemTypeId(GetManipulatedItem()) == 1227899188 then
			wuxing[i] = wuxing[i] + 5
			Ce[i] = 4
			DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 5.0, "|cffffff00恭喜成为鉴定师，获得悟性+5")
		elseif GetItemTypeId(GetManipulatedItem()) == 1227899189 then
			jingmai[i] = jingmai[i] + 5
			Ce[i] = 5
			DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 5.0, "|cffffff00恭喜成为练气师，获得经脉+5")
		elseif GetItemTypeId(GetManipulatedItem()) == 1227899190 then
			fuyuan[i] = fuyuan[i] + 5
			Ce[i] = 6
			DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 5.0, "|cffffff00恭喜成为寻宝师，获得福缘+5")
		elseif GetItemTypeId(GetManipulatedItem()) == 1227899191 then
			if GetUnitTypeId(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]) == 1328558130 or GetUnitTypeId(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]) == 1328558131 or GetUnitTypeId(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]) == 1328558643 or GetUnitTypeId(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]) == 1328558664 or GetUnitTypeId(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]) == 1328558665 then
				Ce[i] = 7
				DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 5.0, "|cffffff00恭喜成为丫鬟，获得全属性+1")
				danpo[i] = danpo[i] + 1
				wuxing[i] = wuxing[i] + 1
				gengu[i] = gengu[i] + 1
				fuyuan[i] = fuyuan[i] + 1
				jingmai[i] = jingmai[i] + 1
				yishu[i] = yishu[i] + 1
			else
				DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 5.0, "|cffffff00男性角色不可加入该副职")
			end
		elseif GetItemTypeId(GetManipulatedItem()) == 1227899719 then
			if GetUnitTypeId(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]) ~= 1328558130 and GetUnitTypeId(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]) ~= 1328558131 and GetUnitTypeId(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]) ~= 1328558643 and GetUnitTypeId(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]) ~= 1328558664 and GetUnitTypeId(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]) ~= 1328558665 then
				Ce[i] = 8
				DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 5.0, "|cffffff00恭喜成为精武师，获得全属性+1")
				danpo[i] = danpo[i] + 1
				wuxing[i] = wuxing[i] + 1
				gengu[i] = gengu[i] + 1
				fuyuan[i] = fuyuan[i] + 1
				jingmai[i] = jingmai[i] + 1
				yishu[i] = yishu[i] + 1
			else
				DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 5.0, "|cffffff00女性角色不可加入该副职")
			end
		end
	else
		DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 5.0, "|cffff0000你已经加入专精了！（每个角色只能选择一种专精，也可以不选择）")
	end
end

function qT()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and (GetItemTypeId(GetManipulatedItem()) == 1227899471 or GetItemTypeId(GetManipulatedItem()) == 1227896659)
end
function rT()
	if GetItemTypeId(GetManipulatedItem()) == 1227896659 then
		famous_num = 5
		DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30.0, "|cff00ffff有玩家开始预约名门挑战，本波进攻怪物将会增加名门高手，大家要小心应付了！")
	end
	if GetItemTypeId(GetManipulatedItem()) == 1227899471 then
		famous_num = 0
		DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30.0, "|cff00ffff有玩家取消了预约名门挑战，下波进攻怪物将不会增加名门高手，大家要小心应付了！")
	end
end
-- 攻破城门
function cT()
	return GetUnitTypeId(GetTriggerUnit()) == 1752003700
end
function DT()
	ModifyGateBJ(1, Gt)
	YDWEPolledWaitNull((0.18 - 0.01 * I2R(O4)) * 2000.0)
	ModifyGateBJ(0, Gt)
end

--辽国进攻
function LiaoGuoJinGong_1()
	local t = GetExpiredTimer()
	local j = LoadInteger(YDHT, GetHandleId(t), 0)
	local jmax = 40
	if j < jmax then
		CreateNUnitsAtLocFacingLocBJ(1, 1751871081, Player(6), Location(-5600, 100), v7[4])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssueTargetOrderById(bj_lastCreatedUnit, 851983, udg_ZhengPaiWL)
		SaveInteger(YDHT, GetHandleId(t), 0, j + 1)
	else
		PauseTimer(t)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, GetHandleId(t))
	end
	t = nil
end
function LiaoGuoJinGong()
	local t
	if Sd[1] ~= 2 and Sd[2] ~= 2 and Sd[3] ~= 2 and Sd[4] ~= 2 and Sd[5] ~= 2 and udg_teshushijian then
		t = CreateTimer()
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033激活特殊事件|cFFDDA0DD※边境入侵※")
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033由于激活特殊事件，辽国派出骑兵前来进攻，请准备防御")
		TimerStart(t, 2.0, true, LiaoGuoJinGong_1)
	end
	t = nil
end
--灵鹫宫进攻：触发条件，有玩家选择了灵鹫宫
function LingJiuGongJinGong()
	if (udg_runamen[1] == 12 or udg_runamen[2] == 12 or udg_runamen[3] == 12 or udg_runamen[4] == 12 or udg_runamen[5] == 12) and udg_teshushijian then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033激活特殊事件|cFFDDA0DD※灵鹫宫劫※")
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033由于激活特殊事件，灵鹫宫派出高手前来进攻，请准备防御")
		CreateNUnitsAtLocFacingLocBJ(1, 1852270642, Player(6), Location(1800, -100), v7[4])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssueTargetOrderById(bj_lastCreatedUnit, 851983, udg_ZhengPaiWL)
		CreateNUnitsAtLocFacingLocBJ(1, 1852207984, Player(6), Location(1800, -100), v7[4])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssueTargetOrderById(bj_lastCreatedUnit, 851983, udg_ZhengPaiWL)
		CreateNUnitsAtLocFacingLocBJ(1, 1852663652, Player(6), Location(1800, -100), v7[4])
		GroupAddUnit(w7, bj_lastCreatedUnit)
		IssueTargetOrderById(bj_lastCreatedUnit, 851983, udg_ZhengPaiWL)
	end
end


function GameLogic_Trigger()
	local t = CreateTrigger()
	require 'map.rules.选择英雄'
	require 'map.rules.选择门派'
	require 'map.rules.伤害测试'
	require 'map.rules.查看属性'
	require 'map.rules.英雄死活'
	require 'map.rules.离开游戏'
	require 'map.rules.新手礼包'
	require 'map.rules.游戏胜负'
	require 'map.rules.生成F9'
	require 'map.rules.积分商店'
	require 'map.rules.武学精要'
	require 'map.rules.结拜'
	require 'map.rules.传送'
	require 'map.rules.练功房'
	require 'map.rules.特效'
	require 'map.rules.魔教救人'


	--TODO 分解文件

	-- 杀进攻怪及练功房怪
	gi = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(gi, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(gi, Condition(ey))
	TriggerAddAction(gi, KillGuai)
	-- 首次显示系统窗口信息
	ki = CreateTrigger()
	TriggerRegisterTimerEventSingle(ki, 10.0)
	TriggerAddAction(ki, SystemWindow)
	-- 刷新系统窗口信息
	mi = CreateTrigger()
	TriggerRegisterTimerEventPeriodic(mi, 4.0)
	TriggerAddAction(mi, uuyy)
	-- 计算玩家最大伤害
	ni = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(ni)
	TriggerAddCondition(ni, Condition(wy))
	TriggerAddAction(ni, SetMaxDamage)
	-- 开启试玩模式
	oi = CreateTrigger()
	TriggerRegisterPlayerChatEvent(oi, Player(0), "sw", true)
	TriggerAddCondition(oi, Condition(BeforeAttack))
	TriggerAddAction(oi, SetShiWan)
	--将地图上初始所有单位加入单位组
	Vi = CreateTrigger()
	TriggerRegisterTimerEventSingle(Vi, 2.0)
	TriggerAddAction(Vi, cA)
	--怪物死后重新刷怪
	Wi = CreateTrigger()
	TriggerRegisterPlayerUnitEventSimple(Wi, Player(12), EVENT_PLAYER_UNIT_DEATH)
	TriggerRegisterPlayerUnitEventSimple(Wi, Player(15), EVENT_PLAYER_UNIT_DEATH)
	TriggerAddAction(Wi, EA)
	--刷进攻怪
	Xi = CreateTrigger()
	TriggerAddCondition(Xi, Condition(GA))
	TriggerAddAction(Xi, HA)
	--刷正面的进攻怪
	Yi = CreateTrigger()
	DisableTrigger(Yi)
	TriggerRegisterTimerEventPeriodic(Yi, 3.0)
	TriggerAddAction(Yi, FrontAttack)
	--刷背面的进攻怪
	Zi = CreateTrigger()
	DisableTrigger(Zi)
	TriggerRegisterTimerEventPeriodic(Zi, 2.0)
	TriggerAddAction(Zi, BackAttack)
	-- 刷名门
	dj = CreateTrigger()
	TriggerAddCondition(dj, Condition(MA))
	TriggerAddAction(dj, NA)
	-- 时间到刷怪
	ej = CreateTrigger()
	TriggerRegisterTimerExpireEvent(ej, A7[1])
	TriggerAddAction(ej, PA)
	fj = CreateTrigger()
	TriggerRegisterTimerExpireEvent(fj, A7[2])
	TriggerAddAction(fj, RA)
	gj = CreateTrigger()
	TriggerRegisterTimerExpireEvent(gj, A7[3])
	TriggerAddAction(gj, TA)
	hj = CreateTrigger()
	TriggerAddAction(hj, VA)
	ij = CreateTrigger()
	TriggerAddAction(ij, XA)
	-- 停怪
	jj = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(jj, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(jj, Condition(ZA))
	TriggerAddAction(jj, ea)
	-- 将死亡单位从单位组移除
	mj = CreateTrigger()
	TriggerRegisterPlayerUnitEventSimple(mj, Player(6), EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(mj, Condition(ja))
	TriggerAddAction(mj, ka)

	-- 切换背包
	rj = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(rj, EVENT_PLAYER_UNIT_SPELL_CAST)
	TriggerAddCondition(rj, Condition(Ba))
	TriggerAddAction(rj, ba)
	-- 鸟的贩卖技能
	sj = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(sj, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(sj, Condition(ca))
	TriggerAddAction(sj, Da)
	-- 轻功系统
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(Trig_ttConditions))
	TriggerAddAction(t, Trig_ttActions)
	-- 切换物品
	tj = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(tj, EVENT_PLAYER_UNIT_SPELL_CAST)
	TriggerAddCondition(tj, Condition(IsQieHuanItem))
	TriggerAddAction(tj, QieHuanItem)
	-- 英雄达到某等级
	vj = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(vj, EVENT_PLAYER_HERO_LEVEL)
	TriggerAddCondition(vj, Condition(Ja))
	TriggerAddAction(vj, HeroLevel)
	-- 杀怪回血
	wj = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(wj, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(wj, Condition(Ma))
	TriggerAddAction(wj, KillGuaiJiaXie)
	-- 每秒回血回蓝
	xj = CreateTrigger()
	TriggerRegisterTimerEventPeriodic(xj, 1.0)
	TriggerAddAction(xj, YiShuHuiXie)
	-- 攻击回复（伤害回复）
	yj = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(yj, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(yj, Condition(Ra))
	TriggerAddAction(yj, Sa)
	-- 伤害吸收
	zj = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(zj)
	TriggerAddCondition(zj, Condition(Ua))
	TriggerAddAction(zj, Va)
	-- 杀怪加声望
	Aj = CreateTrigger()
	TriggerRegisterPlayerUnitEventSimple(Aj, Player(6), EVENT_PLAYER_UNIT_DEATH)
	TriggerRegisterPlayerUnitEventSimple(Aj, Player(7), EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Aj, Condition(Xa))
	TriggerAddAction(Aj, Ya)
	aj = CreateTrigger()
	TriggerRegisterPlayerUnitEventSimple(aj, Player(12), EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(aj, Condition(dB))
	TriggerAddAction(aj, eB)
	-- 遗忘武功
	Bj = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Bj, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(Bj, Condition(YiWangJiNeng))
	TriggerAddAction(Bj, ForgetAbility)
	-- 为合成的物品补属性
	t = CreateTrigger()
	YDWESyStemItemCombineRegistTrigger(t)
	TriggerAddAction(t, WuPinHeCheng)
	-- 选择遗忘的武功
	bj = CreateTrigger()
	TriggerRegisterDialogEvent(bj, K7[1])
	TriggerRegisterDialogEvent(bj, K7[2])
	TriggerRegisterDialogEvent(bj, K7[3])
	TriggerRegisterDialogEvent(bj, K7[4])
	TriggerRegisterDialogEvent(bj, K7[5])
	TriggerAddAction(bj, jB)
	-- 传送至桃花岛
	Cj = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Cj, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(Cj, Condition(mB))
	TriggerAddAction(Cj, nB)
	-- 学习武功
	cj = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(cj, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(cj, Condition(IsWuGongBook))
	TriggerAddAction(cj, BookLearnWuGong)
	-- 初始化内功加成
	fk = CreateTrigger()
	TriggerRegisterTimerEventSingle(fk, 0.1)
	TriggerAddAction(fk, NeiGongJiaChengS)
	pk = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(pk, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(pk, Condition(uC))
	TriggerAddAction(pk, vC)
	qk = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(qk, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(qk, Condition(xC))
	TriggerAddAction(qk, yC)
	rk = CreateTrigger()
	TriggerRegisterTimerEventPeriodic(rk, 1.0)
	TriggerAddAction(rk, BC)

	Bk = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(Bk)
	TriggerAddCondition(Bk, Condition(IsUnitBoss))
	TriggerAddAction(Bk, BossFangJiNeng)
	-- 预约名门和取消预约
	Gs = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Gs, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(Gs, Condition(qT))
	TriggerAddAction(Gs, rT)
	-- 攻破城门
	Ks = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Ks, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Ks, Condition(cT))
	TriggerAddAction(Ks, DT)


	--抽血术
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(ChouXie_Condition))
	TriggerAddAction(t, ChouXie_Action)
	-- 初始化伴侣属性
	uq = CreateTrigger()
	TriggerRegisterTimerEventSingle(uq, 0.2)
	TriggerAddAction(uq, LO)
	-- 结成伴侣
	vq = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(vq, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(vq, Condition(NO))
	TriggerAddAction(vq, OO)
	-- 整理物品
	xq = CreateTrigger()
	TriggerRegisterTimerEventPeriodic(xq, 400.0)
	TriggerAddAction(xq, TO)

	-- 吃经验符
	kr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(kr, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(kr, Condition(oQ))
	TriggerAddAction(kr, pQ)
	-- 购买等级
	mr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(mr, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(mr, Condition(rQ))
	TriggerAddAction(mr, sQ)

	-- 装备打孔
	pr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(pr, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(pr, Condition(xQ))
	TriggerAddAction(pr, yQ)
	-- 加入副职
	qr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(qr, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(qr, Condition(AQ))
	TriggerAddAction(qr, aQ)

	-- 学习门派内功
	br = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(br, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(br, Condition(pR))
	TriggerAddAction(br, qR)
	-- 学习慕容派内功
	br = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(br, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(br, Condition(IsMuRongNeiGong))
	TriggerAddAction(br, MuRongNeiGong)

	-- 初始化古董价格区间
	rs = CreateTrigger()
	TriggerRegisterTimerEventSingle(rs, 0.5)
	TriggerAddAction(rs, s5)
	-- 古董价格变动
	ss = CreateTrigger()
	TriggerRegisterTimerEventPeriodic(ss, 200.0)
	TriggerAddAction(ss, u5)
	-- 查询古董价格
	ts = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(ts, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(ts, Condition(w5))
	TriggerAddAction(ts, x5)
	-- 卖古董
	us = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(us, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(us, Condition(z5))
	TriggerAddAction(us, A5)
	vs = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(vs, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(vs, Condition(B5))
	TriggerAddAction(vs, b5)
	-- 收集古董
	vs = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(vs, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(vs, Condition(CollectGuDong_Conditions))
	TriggerAddAction(vs, CollectGuDong_Actions)
	-- 合成物品
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(HeCheng_Conditions))
	TriggerAddAction(t, HeCheng_Actions)

	t = CreateTrigger()
	TriggerRegisterDialogEvent(t, udg_index)
	TriggerAddAction(t, ChooseMoShi_Action)


	t = nil
end

require 'map.系统.装备'
require 'map.系统.套装'
require 'map.系统.镶嵌'

function Equipment_Trigger()
	require('map.rules.基地保护')
	local t = CreateTrigger()
	--鸟拿东西显示附加属性
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(Zy))
	TriggerAddAction(t, dz)
	--英雄拿东西显示附加属性
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(fz))
	TriggerAddAction(t, gz)
	--英雄放下东西显示失去附加属性
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DROP_ITEM)
	TriggerAddCondition(t, Condition(iz))
	TriggerAddAction(t, jz)
	--英雄穿上装备
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(mz))
	TriggerAddAction(t, nz)
	--英雄脱下装备
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DROP_ITEM)
	TriggerAddCondition(t, Condition(pz))
	TriggerAddAction(t, qz)
	--只能穿一件衣服或武器的判断
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(Mz))
	TriggerAddAction(t, ItemChongFu)
	--集齐套装
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(Pz))
	TriggerAddAction(t, Qz)
	--失去套装
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DROP_ITEM)
	TriggerAddCondition(t, Condition(Sz))
	TriggerAddAction(t, Tz)

	require 'map.系统.养武'
	
	--镶嵌宝石系统
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(kA))
	TriggerAddAction(t, mA)
	t = nil
end