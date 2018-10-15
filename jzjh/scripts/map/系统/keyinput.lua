--========================================================================
--键盘输入系统
--========================================================================
function KeyInput()
	local s = GetEventPlayerChatString()
	local it = nil
	local p = GetTriggerPlayer()
	local i = GetPlayerId(p) + 1
	local j = 0
	local loc = nil
	local str = nil
	local shanghai = _array_(0.0)
	if s == "+" then
		SetCameraFieldForPlayer(p, CAMERA_FIELD_TARGET_DISTANCE, GetCameraField(CAMERA_FIELD_TARGET_DISTANCE) + 200.0, 1.0)
	end
	if s == "-" then
		SetCameraFieldForPlayer(p, CAMERA_FIELD_TARGET_DISTANCE, GetCameraField(CAMERA_FIELD_TARGET_DISTANCE) - 200.0, 1.0)
	end
	if s == "hg" then
		SetUnitPosition(udg_hero[i], -1174, -678)
		PanCameraToTimedForPlayer(GetTriggerPlayer(), -1174, -678, 0)
	end
	if s == "q" then
		SetUnitPosition(udg_hero[i], -869, 796)
		PanCameraToTimedForPlayer(GetTriggerPlayer(), -869, 796, 0)
	end
	if s == "3" then
		SetUnitPosition(udg_hero[i], -869, -2000)
		PanCameraToTimedForPlayer(GetTriggerPlayer(), -869, -2000, 0)
	end
	if s == "4" then
		SetUnitPosition(udg_hero[i], 10692, -14847)
		PanCameraToTimedForPlayer(GetTriggerPlayer(), 10692, -14847, 0)
	end
	if SubStringBJ(s, 1, 2) == "wq" then
		if UnitHaveItem(udg_hero[i], 1227899464) == false then
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000当前未装备自制武器")
		else
			it = FetchUnitItem(udg_hero[i], 1227899464)
			SaveStr(YDHT, GetHandleId(it), StringHash("武器名称"), SubStringBJ(s, 3, 40))
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000自制武器已更名为" .. (SubStringBJ(s, 3, 40) or ""))
		end
	end
	--if s == "randreal" then
	--	call BJDebugMsg(R2S(GetGeoNormRandomReal(1., 3.)))
	--	call BJDebugMsg(R2S(GetGeoNormRandomReal(1., 3.)))
	--	call BJDebugMsg(R2S(GetGeoNormRandomReal(1., 3.)))
	--	call BJDebugMsg(R2S(GetGeoNormRandomReal(1., 3.)))
	--	call BJDebugMsg(R2S(GetGeoNormRandomReal(1., 3.)))
	--endif
	if SubStringBJ(s, 1, 2) == "tx" then
		if S2I(SubStringBJ(s, 3, 4)) >= 1 and S2I(SubStringBJ(s, 3, 4)) <= 10 then
			s__ZiZhiWuGong_texiao[zizhiwugong[i]] = S2I(SubStringBJ(s, 3, 4))
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000自创武功已更改为第" .. (SubStringBJ(s, 3, 40) or "") .. "种特效")
		end
	end
	if SubStringBJ(s, 1, 2) == "wg" then
		if GetUnitAbilityLevel(udg_hero[i], 1093677878) == 0 then
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000当前无自创武功")
		else
			s__ZiZhiWuGong_name[zizhiwugong[i]] = SubStringBJ(s, 3, 40)
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000自创武功已更名为" .. (SubStringBJ(s, 3, 40) or ""))
		end
	end
	if s == "ckwg" then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000剩余自创武功点：" .. (I2S(wuxuedian[i]) or ""))
		if GetUnitAbilityLevel(udg_hero[i], 1093677878) == 0 then
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000当前无自创武功")
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000武功：" .. (s__ZiZhiWuGong_name[zizhiwugong[i]] or ""))
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000伤害范围：" .. (I2S(R2I(400.0 + 100.0 * I2R(s__ZiZhiWuGong_range[zizhiwugong[i]]))) or ""))
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000伤害系数：" .. (R2S(1.0 + 0.5 * I2R(s__ZiZhiWuGong_xishu[zizhiwugong[i]])) or ""))
			j = 1
			for _ in _loop_() do
				if j > s__ZiZhiWuGong_dapeishu[zizhiwugong[i]] then break end
				DisplayTextToPlayer(p, 0, 0, sc__DaPei_XiaoGuoShuoMing(dapei[20 * i + j]))
				j = j + 1
			end
		end
	end
	if s == "ckwq" then
		if UnitHaveItem(udg_hero[i], 1227899464) == false then
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000当前未装备自制武器")
		else
			it = FetchUnitItem(udg_hero[i], 1227899464)
			if LoadStr(YDHT, GetHandleId(it), StringHash("武器名称")) == "" then
				DisplayTextToPlayer(p, 0, 0, "|cFF00FF00武器名称：尚未输入")
			else
				DisplayTextToPlayer(p, 0, 0, "|cFF00FF00武器名称：" .. (LoadStr(YDHT, GetHandleId(it), StringHash("武器名称")) or ""))
			end
			DisplayTextToPlayer(p, 0, 0, "|cFFFF6600升级概率：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("升级概率")))) or "") .. "%")
			DisplayTextToPlayer(p, 0, 0, "|cFFE500AF招式伤害：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("招式伤害")))) or "") .. " 内力：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("内力")))) or "") .. " 真实伤害：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("真实伤害")))) or ""))
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0033暴击伤害：" .. (I2S(R2I(100 * LoadReal(YDHT, GetHandleId(it), StringHash("暴击伤害")))) or "") .. "% 暴击率：" .. (I2S(R2I(100 * LoadReal(YDHT, GetHandleId(it), StringHash("暴击率")))) or "") .. "% 绝学领悟：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("绝学领悟")))) or ""))
			DisplayTextToPlayer(p, 0, 0, "|cFFFFFF33根骨：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("根骨")))) or "") .. " 胆魄：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("胆魄")))) or "") .. " 悟性：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("悟性")))) or ""))
			DisplayTextToPlayer(p, 0, 0, "|cFFFFFF33医术：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("医术")))) or "") .. " 经脉：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("经脉")))) or "") .. " 福缘：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("福缘")))) or ""))
			DisplayTextToPlayer(p, 0, 0, "|cFF9933FF伤害回复：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("伤害回复")))) or "") .. " 杀怪回复：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("杀怪回复")))) or "") .. " 生命回复：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("生命回复")))) or "") .. " 法力回复：" .. (I2S(R2I(LoadReal(YDHT, GetHandleId(it), StringHash("法力回复")))) or ""))
		end
	end
	if s == "ckjn" then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000人物性格：你学武资质" .. (XingGeA(udg_xinggeA[i]) or "") .. "，态度" .. (XingGeB(udg_xinggeB[i]) or ""))
		DisplayTextToPlayer(p, 0, 0, "|cFFcc99ff〓〓〓〓〓〓〓〓〓〓〓")
		j = 1
		for _ in _loop_() do
			if j > wugongshu[i] then break end
			DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF" .. (GetAbilityName(I7[(i - 1) * 20 + j]) or "") .. "第" .. (I2S(GetUnitAbilityLevel(udg_hero[i], I7[(i - 1) * 20 + j])) or "") .. "重，升级进度：" .. (LoadStr(YDHT, GetHandleId(p), I7[(i - 1) * 20 + j] * 2) or ""))
			j = j + 1
		end
		DisplayTextToPlayer(p, 0, 0, "|cFFcc99ff〓〓〓〓〓〓〓〓〓〓〓")
	end
	if s == "ckhf" then
		DisplayTextToPlayer(p, 0, 0, "|cFFcc99ff〓〓〓〓〓〓〓〓〓〓〓")
		DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF杀怪回复：" .. (I2S(R2I(shaguaihufui[i])) or ""))
		DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF伤害回复：" .. (I2S(R2I(shanghaihuifu[i])) or ""))
		DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF生命回复：" .. (I2S(R2I(shengminghuifu[i])) or ""))
		DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF法力回复：" .. (I2S(R2I(falihuifu[i])) or ""))
		DisplayTextToPlayer(p, 0, 0, "|cFFcc99ff〓〓〓〓〓〓〓〓〓〓〓")
	end
	if s == "ck" then
		j = 1
		for _ in _loop_() do
			if j > wugongshu[i] then break end
			shanghai[j] = LoadReal(YDHT, 1 + GetPlayerId(p), I7[(i - 1) * 20 + j] * 3)
			if I7[(i - 1) * 20 + j] == 1093677876 then
				shanghai[j] = LoadReal(YDHT, 1 + GetPlayerId(p), 1093677877 * 3)
			end
			if shanghai[j] < 10000.0 then
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF" .. (GetAbilityName(I7[(i - 1) * 20 + j]) or "") .. "伤害：" .. (R2S(shanghai[j]) or ""))
			elseif shanghai[j] < 100000000.0 then
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF" .. (GetAbilityName(I7[(i - 1) * 20 + j]) or "") .. "伤害：" .. (R2S(shanghai[j] / 10000.0) or "") .. "万")
			elseif shanghai[j] / 10000.0 < 100000000.0 then
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF" .. (GetAbilityName(I7[(i - 1) * 20 + j]) or "") .. "伤害：" .. (R2S(shanghai[j] / 100000000.0) or "") .. "亿")
			elseif shanghai[j] / 100000000.0 < 100000000.0 then
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF" .. (GetAbilityName(I7[(i - 1) * 20 + j]) or "") .. "伤害：" .. (R2S(shanghai[j] / 100000000.0 / 10000.0) or "") .. "万亿")
			else
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF" .. (GetAbilityName(I7[(i - 1) * 20 + j]) or "") .. "伤害：" .. (R2S(shanghai[j] / 100000000.0 / 100000000.0) or "") .. "亿亿")
			end
			j = j + 1
		end
	end
	if s == "1" and GetUnitAbilityLevel(udg_hero[i], 1093678935) > 0 and IsUnitAliveBJ(udg_hero[i]) then
		if RectContainsUnit(lh_r, udg_hero[i]) then
			DisplayTextToPlayer(p, 0, 0, "桃花岛不能创建飞行点")
		else
			RemoveUnit(J9[i])
			loc = GetUnitLoc(udg_hero[i])
			CreateNUnitsAtLoc(1, 1697656906, p, loc, bj_UNIT_FACING)
			J9[i] = bj_lastCreatedUnit
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "创建飞行点")
			RemoveLocation(loc)
			loc = nil
		end
	end
	if s == "2" and GetUnitAbilityLevel(udg_hero[i], 1093678935) > 0 and IsUnitAliveBJ(udg_hero[i]) then
		if J9[i] == nil then
			DisplayTextToPlayer(p, 0, 0, "你还没有设置飞行点，请输入聊天信息“1”来设置")
		else
			loc = GetUnitLoc(J9[i])
			SetUnitPositionLoc(udg_hero[i], loc)
			PanCameraToTimedLocForPlayer(p, loc, 0)
			RemoveLocation(loc)
			loc = nil
		end
	end
	if s == "11" and GetUnitAbilityLevel(udg_hero[i], 1093678935) > 1 and IsUnitAliveBJ(udg_hero[i]) then
		if RectContainsUnit(lh_r, udg_hero[i]) then
			DisplayTextToPlayer(p, 0, 0, "桃花岛不能创建飞行点")
		else
			RemoveUnit(qiankun2hao[i])
			loc = GetUnitLoc(udg_hero[i])
			CreateNUnitsAtLoc(1, 1697656906, p, loc, bj_UNIT_FACING)
			qiankun2hao[i] = bj_lastCreatedUnit
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "创建飞行点")
			RemoveLocation(loc)
			loc = nil
		end
	end
	if s == "22" and GetUnitAbilityLevel(udg_hero[i], 1093678935) > 1 and IsUnitAliveBJ(udg_hero[i]) then
		if qiankun2hao[i] == nil then
			DisplayTextToPlayer(p, 0, 0, "你还没有设置飞行点，请输入聊天信息“11”来设置")
		else
			loc = GetUnitLoc(qiankun2hao[i])
			SetUnitPositionLoc(udg_hero[i], loc)
			PanCameraToTimedLocForPlayer(p, loc, 0)
			RemoveLocation(loc)
			loc = nil
		end
	end
	if s == "111" and GetUnitAbilityLevel(udg_hero[i], 1093678935) > 2 and IsUnitAliveBJ(udg_hero[i]) then
		if RectContainsUnit(lh_r, udg_hero[i]) then
			DisplayTextToPlayer(p, 0, 0, "桃花岛不能创建飞行点")
		else
			RemoveUnit(qiankun3hao[i])
			loc = GetUnitLoc(udg_hero[i])
			CreateNUnitsAtLoc(1, 1697656906, p, loc, bj_UNIT_FACING)
			qiankun3hao[i] = bj_lastCreatedUnit
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "创建飞行点")
			RemoveLocation(loc)
			loc = nil
		end
	end
	if s == "222" and GetUnitAbilityLevel(udg_hero[i], 1093678935) > 2 and IsUnitAliveBJ(udg_hero[i]) then
		if qiankun3hao[i] == nil then
			DisplayTextToPlayer(p, 0, 0, "你还没有设置飞行点，请输入聊天信息“111”来设置")
		else
			loc = GetUnitLoc(qiankun3hao[i])
			SetUnitPositionLoc(udg_hero[i], loc)
			PanCameraToTimedLocForPlayer(p, loc, 0)
			RemoveLocation(loc)
			loc = nil
		end
	end
	if s == "-ms" then
		DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF您当前的移动速度为" .. (I2S(R2I(s__ModSpeed_getSpeed(udg_hero[i]))) or "")) -- INLINED!!
	end
	if s == "-random" and udg_runamen[i] == 0 and udg_hero[i] ~= nil then
		if GetRandomInt(1, 100) <= 90 then
			if GetRandomInt(1, 12) <= 11 then
				udg_runamen[i] = GetRandomInt(1, 11)
			else
				udg_runamen[i] = 15
			end
		else
			udg_runamen[i] = GetRandomInt(12, 14)
		end
		if udg_runamen[i] == 11 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓自由门派〓|r")
			SetPlayerName(p, "〓自由门派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			AdjustPlayerStateBJ(60, p, PLAYER_STATE_RESOURCE_LUMBER)
			udg_shuxing[i] = udg_shuxing[i] + 5
		elseif udg_runamen[i] == 14 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓明教〓|r")
			SetPlayerName(p, "〓明教〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			wuxing[i] = wuxing[i] + 3
			jingmai[i] = jingmai[i] + 2
			fuyuan[i] = fuyuan[i] + 2
		elseif udg_runamen[i] == 12 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓灵鹫宫〓|r")
			SetPlayerName(p, "〓灵鹫宫〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			danpo[i] = danpo[i] + 2
			jingmai[i] = jingmai[i] + 2
			fuyuan[i] = fuyuan[i] + 1
		elseif udg_runamen[i] == 13 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓姑苏慕容〓|r")
			SetPlayerName(p, "〓姑苏慕容〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			udg_shuxing[i] = udg_shuxing[i] + 5
		elseif udg_runamen[i] == 1 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓少林派〓|r")
			SetPlayerName(p, "〓少林派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			gengu[i] = gengu[i] + 3
			jingmai[i] = jingmai[i] + 2
		elseif udg_runamen[i] == 3 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓丐帮〓|r")
			SetPlayerName(p, "〓丐帮〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			danpo[i] = danpo[i] + 3
			jingmai[i] = jingmai[i] + 2
		elseif udg_runamen[i] == 4 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓华山派〓|r")
			SetPlayerName(p, "〓华山派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			wuxing[i] = wuxing[i] + 3
			danpo[i] = danpo[i] + 2
		elseif udg_runamen[i] == 5 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓全真教〓|r")
			SetPlayerName(p, "〓全真教〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			jingmai[i] = jingmai[i] + 3
			fuyuan[i] = fuyuan[i] + 2
		elseif udg_runamen[i] == 6 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓血刀门〓|r")
			SetPlayerName(p, "〓血刀门〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			gengu[i] = gengu[i] + 2
			danpo[i] = danpo[i] + 3
		elseif udg_runamen[i] == 7 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓恒山派〓|r")
			SetPlayerName(p, "〓恒山派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			yishu[i] = yishu[i] + 3
			fuyuan[i] = fuyuan[i] + 2
		elseif udg_runamen[i] == 8 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓峨眉派〓|r")
			SetPlayerName(p, "〓峨眉派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			yishu[i] = yishu[i] + 1
			jingmai[i] = jingmai[i] + 1
			fuyuan[i] = fuyuan[i] + 3
		elseif udg_runamen[i] == 10 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓星宿派〓|r")
			SetPlayerName(p, "〓星宿派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			danpo[i] = danpo[i] + 2
			yishu[i] = yishu[i] + 1
			jingmai[i] = jingmai[i] + 2
		elseif udg_runamen[i] == 9 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓武当派〓|r")
			SetPlayerName(p, "〓武当派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			gengu[i] = gengu[i] + 1
			jingmai[i] = jingmai[i] + 2
			fuyuan[i] = fuyuan[i] + 2
		elseif udg_runamen[i] == 2 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓古墓派〓|r")
			SetPlayerName(p, "〓古墓派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			wuxing[i] = wuxing[i] + 2
			jingmai[i] = jingmai[i] + 1
			fuyuan[i] = fuyuan[i] + 2
		elseif udg_runamen[i] == 15 then
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "随机选择了〓衡山派〓|r")
			SetPlayerName(p, "〓衡山派〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			wuxing[i] = wuxing[i] + 3
			yishu[i] = yishu[i] + 2
		end
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933获得武功：凌波微步，你可以在主城和传送石之间任意传送了，请在NPC郭靖处选择副职")
		UnitAddAbility(udg_hero[i], 1093678418)
		AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
		AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
		UnitAddAbility(udg_hero[i], 1093678128)
		UnitAddAbility(udg_hero[i], 1093678129)
		UnitAddAbility(udg_hero[i], 1093678130)
		I7[(i - 1) * 20 + 8] = 1093678418
		UnitRemoveAbility(udg_hero[i], 1098282348)
		Q4 = GetRandomLocInRect(He)
		SetUnitPositionLoc(udg_hero[i], Q4)
		PanCameraToTimedLocForPlayer(p, Q4, 0)
		CreateNUnitsAtLoc(1, 1853257068, p, Q4, bj_UNIT_FACING)
		AdjustPlayerStateBJ(50, p, PLAYER_STATE_RESOURCE_LUMBER)
		P4[i] = bj_lastCreatedUnit
		RemoveLocation(Q4)
		UnitAddItemByIdSwapped(1227896394, udg_hero[i])
	end
	if s == "www.juezhanjianghu.com" and udg_runamen[i] == 0 and udg_hero[i] ~= nil then
		udg_runamen[i] = 12
		DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "选择了隐藏门派〓灵鹫宫〓|r")
		SetPlayerName(p, "〓灵鹫宫〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
		danpo[i] = danpo[i] + 2
		jingmai[i] = jingmai[i] + 2
		fuyuan[i] = fuyuan[i] + 1
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933获得武功：凌波微步，你可以在主城和传送石之间任意传送了")
		AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
		AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
		UnitAddAbility(udg_hero[i], 1093678418)
		UnitAddAbility(udg_hero[i], 1093678128)
		UnitAddAbility(udg_hero[i], 1093678129)
		UnitAddAbility(udg_hero[i], 1093678130)
		I7[(i - 1) * 20 + 8] = 1093678418
		UnitRemoveAbility(udg_hero[i], 1098282348)
		Q4 = GetRandomLocInRect(He)
		SetUnitPositionLoc(udg_hero[i], Q4)
		PanCameraToTimedLocForPlayer(p, Q4, 0)
		CreateNUnitsAtLoc(1, 1853257068, p, Q4, bj_UNIT_FACING)
		P4[i] = bj_lastCreatedUnit
		RemoveLocation(Q4)
		UnitAddItemByIdSwapped(1227896394, udg_hero[i])
	end	
	if s == "jzjh.uuu9.com" and udg_runamen[i] == 0 and udg_hero[i] ~= nil then
		udg_runamen[i] = 13
		DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15.0, "|CFFff9933玩家" .. (GetPlayerName(p) or "") .. "选择了隐藏门派〓姑苏慕容〓|r")
		SetPlayerName(p, "〓姑苏慕容〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
		udg_shuxing[i] = udg_shuxing[i] + 5
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFff9933获得武功：凌波微步，你可以在主城和传送石之间任意传送了")
		UnitAddAbility(udg_hero[i], 1093678418)
		AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
		AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
		UnitAddAbility(udg_hero[i], 1093678128)
		UnitAddAbility(udg_hero[i], 1093678129)
		UnitAddAbility(udg_hero[i], 1093678130)
		I7[(i - 1) * 20 + 8] = 1093678418
		UnitRemoveAbility(udg_hero[i], 1098282348)
		Q4 = GetRandomLocInRect(He)
		SetUnitPositionLoc(udg_hero[i], Q4)
		PanCameraToTimedLocForPlayer(p, Q4, 0)
		CreateNUnitsAtLoc(1, 1853257068, p, Q4, bj_UNIT_FACING)
		P4[i] = bj_lastCreatedUnit
		RemoveLocation(Q4)
		UnitAddItemByIdSwapped(1227896394, udg_hero[i])
	end
	--if s=="jiafuyuan" then
	--	set fuyuan[i]=fuyuan[i]+20
	--	call DisplayTextToPlayer(p,0,0,"|cFFFF0000福缘+20")
	--endif
	if s == "cksx" then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
	end
	if s == "ckjf" then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000剩余守家积分：" .. (I2S(shoujiajf[i]) or ""))
	end
	if s == "累积积分" then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000累积游戏积分：" .. (I2S(udg_MeiJuJiFen[i]) or ""))
	end
	if SubStringBJ(s, 1, 5) == "zy500" and udg_MeiJuJiFen[i] >= 500 then
		udg_MeiJuJiFen[S2I(SubStringBJ(s, 6, 6))] = udg_MeiJuJiFen[S2I(SubStringBJ(s, 6, 6))] + 500
		udg_MeiJuJiFen[i] = udg_MeiJuJiFen[i] - 500
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFF0000" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or "") .. "已向" .. (LoadStr(YDHT, GetHandleId(Player(S2I(SubStringBJ(s, 6, 6)) - 1)), GetHandleId(Player(S2I(SubStringBJ(s, 6, 6)) - 1))) or "") .. "转移500点积分")
	end
	if s == "baolv" then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000锁喉枪的爆率为：" .. (I2S(udg_baolv[1]) or ""))
	end
	if s == "+ys" or s == "+YS" then
		SetCameraFieldForPlayer(GetTriggerPlayer(), CAMERA_FIELD_TARGET_DISTANCE, GetCameraField(CAMERA_FIELD_TARGET_DISTANCE) + 200.0, 1.0)
	end
	if s == "+js" or s == "+JS" then
		SetCameraFieldForPlayer(GetTriggerPlayer(), CAMERA_FIELD_TARGET_DISTANCE, GetCameraField(CAMERA_FIELD_TARGET_DISTANCE) - 200.0, 1.0)
	end
	if s == "sj" then
		SetCameraFieldForPlayer(GetTriggerPlayer(), CAMERA_FIELD_TARGET_DISTANCE, 1800.0, 0)
	end
	if s == "fb" then
		FBdaojishi()
	end
	if s == "bl" then
		BanLvShuXing()
	end
	if s == "yx" then
		YaoXing()
	end
	if s == "jy" then
		TransferJY()
	end
	--自由属性点系统
	if SubStringBJ(s, 1, 2) == "wx" then
		if udg_shuxing[i] >= 1 then
			if S2I(SubStringBJ(s, 3, 5)) <= 0 or S2I(SubStringBJ(s, 3, 5)) > udg_shuxing[i] then
				wuxing[i] = wuxing[i] + 1
				udg_shuxing[i] = udg_shuxing[i] - 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000分配1点悟性，剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
			else
				wuxing[i] = wuxing[i] + S2I(SubStringBJ(s, 3, 5))
				udg_shuxing[i] = udg_shuxing[i] - S2I(SubStringBJ(s, 3, 5))
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000分配" .. (SubStringBJ(s, 3, 5) or "") .. "点悟性，剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
			end
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000属性点已用完")
		end
	elseif SubStringBJ(s, 1, 2) == "fy" then
		if udg_shuxing[i] >= 1 then
			if S2I(SubStringBJ(s, 3, 5)) <= 0 or S2I(SubStringBJ(s, 3, 5)) > udg_shuxing[i] then
				fuyuan[i] = fuyuan[i] + 1
				udg_shuxing[i] = udg_shuxing[i] - 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000分配1点福缘，剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
			else
				fuyuan[i] = fuyuan[i] + S2I(SubStringBJ(s, 3, 5))
				udg_shuxing[i] = udg_shuxing[i] - S2I(SubStringBJ(s, 3, 5))
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000分配" .. (SubStringBJ(s, 3, 5) or "") .. "点福缘，剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
			end
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000属性点已用完")
		end
	elseif SubStringBJ(s, 1, 2) == "gg" then
		if udg_shuxing[i] >= 1 then
			if S2I(SubStringBJ(s, 3, 5)) <= 0 or S2I(SubStringBJ(s, 3, 5)) > udg_shuxing[i] then
				gengu[i] = gengu[i] + 1
				udg_shuxing[i] = udg_shuxing[i] - 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000分配1点根骨，剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
			else
				gengu[i] = gengu[i] + S2I(SubStringBJ(s, 3, 5))
				udg_shuxing[i] = udg_shuxing[i] - S2I(SubStringBJ(s, 3, 5))
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000分配" .. (SubStringBJ(s, 3, 5) or "") .. "点根骨，剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
			end
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000属性点已用完")
		end
	elseif SubStringBJ(s, 1, 2) == "dp" then
		if udg_shuxing[i] >= 1 then
			if S2I(SubStringBJ(s, 3, 5)) <= 0 or S2I(SubStringBJ(s, 3, 5)) > udg_shuxing[i] then
				danpo[i] = danpo[i] + 1
				udg_shuxing[i] = udg_shuxing[i] - 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000分配1点胆魄，剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
			else
				danpo[i] = danpo[i] + S2I(SubStringBJ(s, 3, 5))
				udg_shuxing[i] = udg_shuxing[i] - S2I(SubStringBJ(s, 3, 5))
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000分配" .. (SubStringBJ(s, 3, 5) or "") .. "点胆魄，剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
			end
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000属性点已用完")
		end
	elseif SubStringBJ(s, 1, 2) == "ys" then
		if udg_shuxing[i] >= 1 then
			if S2I(SubStringBJ(s, 3, 5)) <= 0 or S2I(SubStringBJ(s, 3, 5)) > udg_shuxing[i] then
				yishu[i] = yishu[i] + 1
				udg_shuxing[i] = udg_shuxing[i] - 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000分配1点医术，剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
			else
				yishu[i] = yishu[i] + S2I(SubStringBJ(s, 3, 5))
				udg_shuxing[i] = udg_shuxing[i] - S2I(SubStringBJ(s, 3, 5))
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000分配" .. (SubStringBJ(s, 3, 5) or "") .. "点医术，剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
			end
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000属性点已用完")
		end
	elseif SubStringBJ(s, 1, 2) == "jm" then
		if udg_shuxing[i] >= 1 then
			if S2I(SubStringBJ(s, 3, 5)) <= 0 or S2I(SubStringBJ(s, 3, 5)) > udg_shuxing[i] then
				jingmai[i] = jingmai[i] + 1
				udg_shuxing[i] = udg_shuxing[i] - 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000分配1点经脉，剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
			else
				jingmai[i] = jingmai[i] + S2I(SubStringBJ(s, 3, 5))
				udg_shuxing[i] = udg_shuxing[i] - S2I(SubStringBJ(s, 3, 5))
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000分配" .. (SubStringBJ(s, 3, 5) or "") .. "点经脉，剩余属性点：" .. (I2S(udg_shuxing[i]) or ""))
			end
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000属性点已用完")
		end
	end
	p = nil
	it = nil
	--测试码
	if s == "要高冷一点" then
		SetHeroLevel(udg_hero[i], GetHeroLevel(udg_hero[i]) + 5, true)
		wuxuedian[i] = wuxuedian[i] + 5
		unitadditembyidswapped(1227895642, udg_hero[i])
		unitadditembyidswapped(1227896115, udg_hero[i])
		unitadditembyidswapped(1227896116, udg_hero[i])
		unitadditembyidswapped(1227896117, udg_hero[i])
		unitadditembyidswapped(1227895877, udg_hero[i])
		unitadditembyidswapped(1227895379, udg_hero[i])
		--call CreateNUnitsAtLoc(1,'o01U',GetTriggerPlayer(),GetUnitLoc(udg_hero[i]),bj_UNIT_FACING)
		shengwang[i] = shengwang[i] + 5000
		xiuxing[i] = 5
		udg_lilianxishu[i] = udg_lilianxishu[i] + 3
		udg_shuxing[i] = udg_shuxing[i] + 300
		shoujiajf[i] = shoujiajf[i] + 1000
	end
	if s == "boshu" then
		udg_boshu = udg_boshu + 1
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000已跳转至下一波")
	end
	if s == "ChuBoss1" then
		CreateNUnitsAtLocFacingLocBJ(1, u7[1], Player(6), v7[6], v7[4])
		CreateNUnitsAtLocFacingLocBJ(1, u7[1], Player(0), v7[6], v7[4])
	elseif s == "ChuBoss2" then
		CreateNUnitsAtLocFacingLocBJ(1, u7[2], Player(6), v7[6], v7[4])
	elseif s == "ChuBoss3" then
		CreateNUnitsAtLocFacingLocBJ(1, u7[3], Player(6), v7[6], v7[4])
	elseif s == "ChuBoss4" then
		CreateNUnitsAtLocFacingLocBJ(1, u7[4], Player(6), v7[6], v7[4])
	elseif s == "ChuBoss5" then
		CreateNUnitsAtLocFacingLocBJ(1, u7[5], Player(6), v7[6], v7[4])
	elseif s == "ChuBoss6" then
		CreateNUnitsAtLocFacingLocBJ(1, u7[6], Player(6), v7[6], v7[4])
	elseif s == "ChuBoss7" then
		CreateNUnitsAtLocFacingLocBJ(1, u7[7], Player(6), v7[6], v7[4])
	elseif s == "ChuBoss8" then
		CreateNUnitsAtLocFacingLocBJ(1, u7[8], Player(6), v7[6], v7[4])
	elseif s == "ChuLiaoGuo" then
		LiaoGuoJinGong()
	elseif s == "ChuLingJiu" then
		LingJiuGongJinGong()
	end
end
function KeyInputSystem()
	local t = CreateTrigger()
	local i = 0
	for _ in _loop_() do
		if i > 6 then break end
		TriggerRegisterPlayerChatEvent(t, Player(i), "", true)
		i = i + 1
	end
	TriggerAddAction(t, KeyInput)
	t = nil
end