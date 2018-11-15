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
		game.config.mode = 'normal'
	end
	if GetClickedButton() == udg_index1 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF主机选择了特殊事件模式")
		game.config.mode = 'special'
	end
	if GetClickedButton() == udg_index2 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF主机选择了生存模式")
		game.config.mode = 'survive'
	end
	if GetClickedButton() == udg_index3 then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF主机选择了快速通关模式")
		game.config.mode = 'fast'
	end
end

--玩家英雄阵亡
function Ex()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end





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

--抽血术
function ChouXie_Condition()
	return game.variable.attack_creeps[jass.GetAttacker()] and GetPlayerTechCountSimple(1378889777, Player(6)) == 50 and GetTriggerUnit() ~= udg_ZhengPaiWL and GetUnitTypeId(GetTriggerUnit()) ~= 1214409837 and GetUnitTypeId(GetTriggerUnit()) ~= 1865429574 and GetUnitTypeId(GetTriggerUnit()) ~= 1865429575
end
function ChouXie_Action()
	if GetRandomInt(1, 100) <= 20 then
		SetUnitLifePercentBJ(GetTriggerUnit(), GetUnitLifePercent(GetTriggerUnit()) - 6.0)
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
	YDWEPolledWaitNull((0.18 - 0.01 * I2R(et.player.countAlive())) * 2000.0)
	ModifyGateBJ(0, Gt)
end

--辽国进攻
function LiaoGuoJinGong_1()
	local t = GetExpiredTimer()
	local j = LoadInteger(YDHT, GetHandleId(t), 0)
	local jmax = 40
	if j < jmax then
		CreateNUnitsAtLocFacingLocBJ(1, 1751871081, Player(6), Location(-5600, 100), v7[4])
		game.variable.attack_creeps[bj_lastCreatedUnit] = et.unit(bj_lastCreatedUnit)
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
	if Sd[1] ~= 2 and Sd[2] ~= 2 and Sd[3] ~= 2 and Sd[4] ~= 2 and Sd[5] ~= 2 and game.config.mode == 'special' then
		t = CreateTimer()
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033激活特殊事件|cFFDDA0DD※边境入侵※")
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033由于激活特殊事件，辽国派出骑兵前来进攻，请准备防御")
		TimerStart(t, 2.0, true, LiaoGuoJinGong_1)
	end
	t = nil
end
--灵鹫宫进攻：触发条件，有玩家选择了灵鹫宫
function LingJiuGongJinGong()
	if (udg_runamen[1] == 12 or udg_runamen[2] == 12 or udg_runamen[3] == 12 or udg_runamen[4] == 12 or udg_runamen[5] == 12) and game.config.mode == 'special' then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033激活特殊事件|cFFDDA0DD※灵鹫宫劫※")
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033由于激活特殊事件，灵鹫宫派出高手前来进攻，请准备防御")
		CreateNUnitsAtLocFacingLocBJ(1, 1852270642, Player(6), Location(1800, -100), v7[4])
		game.variable.attack_creeps[bj_lastCreatedUnit] = et.unit(bj_lastCreatedUnit)
		IssueTargetOrderById(bj_lastCreatedUnit, 851983, udg_ZhengPaiWL)
		CreateNUnitsAtLocFacingLocBJ(1, 1852207984, Player(6), Location(1800, -100), v7[4])
		game.variable.attack_creeps[bj_lastCreatedUnit] = et.unit(bj_lastCreatedUnit)
		IssueTargetOrderById(bj_lastCreatedUnit, 851983, udg_ZhengPaiWL)
		CreateNUnitsAtLocFacingLocBJ(1, 1852663652, Player(6), Location(1800, -100), v7[4])
		game.variable.attack_creeps[bj_lastCreatedUnit] = et.unit(bj_lastCreatedUnit)
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
	require 'map.rules.刷进攻怪'
	require 'map.rules.系统窗口'
	require 'map.rules.古董系统'
	require 'map.rules.加入副职'
	require 'map.rules.合成物品'
	require 'map.rules.野怪复活'
	require 'map.rules.学习武功'
	require 'map.rules.轻功系统'
	require 'map.rules.遗忘武功'
	require 'map.rules.试玩模式'
	require 'map.rules.杀怪'
	require 'map.rules.宠物技能'
	require 'map.rules.英雄升级'
	require 'map.rules.各类回复'
	require 'map.rules.伴侣系统'
	require 'map.rules.整理物品'

	--TODO 分解文件


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