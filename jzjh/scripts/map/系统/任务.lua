----------------------------
--游戏中的任务
-- 1. 店小二新手任务
-- 2. 游骐寻找物品任务
-- 3. 阳寿已尽任务
-- 4. 帮郭靖求婚任务、偷玉箫任务、寻找杨过
-- 5. 鲁有脚送信任务
-- 6. 杀野猪首领
-- 7. 林远图押镖任务
-- 8. 杀熊、桃花岛哑仆的任务
-- 9. 升到10级自动奖励丹药
-- 10. 采集断肠草任务
-- 11. 护送耶律楚材
-- 12. 高昌迷宫任务
-- 13. 辽国军心任务 + 拯救阿紫任务
----------------------------

function IsNewBeeTask()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895349 -- INLINED!!
end
function AcceptNewBeeTask()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = nil
	if newbeeTaskId[i] == 0 then
		if GetRandomInt(1, 100) <= 35 then
			loc = GetRectCenter(Pe)
			newbeeTaskId[i] = 1
			PlaySoundOnUnitBJ(bh, 100, u)
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00店小二：|r |cFF99FFCC我这有一壶上等女儿红专程送给襄阳城郭靖的，你能帮我跑一趟吗|r\n|cFFFFCC00提示：|r |cFF99FFCC前往正派武林主城的|cFFADFF2F郭靖|r\n")
			PingMinimapLocForForce(ov(p), loc, 5.0)
			RemoveLocation(loc)
		elseif GetRandomInt(1, 70) <= 35 then
			loc = GetRectCenter(Qe)
			newbeeTaskId[i] = 2
			PlaySoundOnUnitBJ(bh, 100, u)
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00店小二：|r |cFF99FFCC旁边树林里的野狼经常来袭击村民，你能帮助我们吗|r\n|cFFFFCC00提示：|r |cFF99FFCC杀死|cFFADFF2F6只野狼|r\n")
			PingMinimapLocForForce(ov(p), loc, 5.0)
			RemoveLocation(loc)
		else
			newbeeTaskId[i] = 3
			loc = GetRectCenter(Re)
			PlaySoundOnUnitBJ(bh, 100, u)
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00店小二：|r |cFF99FFCC听说少林寺的练功房升级特别快，为何不去看看呢|r\n|cFFFFCC00提示：|r |cFF99FFCC前往少林寺的|cFFADFF2F练功房|r，可以通过主城传送\n")
			PingMinimapLocForForce(ov(p), loc, 5.0)
			RemoveLocation(loc)
		end
	elseif newbeeTaskId[i] == 1 then
		loc = GetRectCenter(Pe)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00店小二：|r |cFF99FFCC你怎么还不出发啊？|r\n|cFFFFCC00提示：|r |cFF99FFCC前往正派武林主城的|cFFADFF2F郭靖|r\n")
		PingMinimapLocForForce(ov(p), loc, 5.0)
		RemoveLocation(loc)
	elseif newbeeTaskId[i] == 2 then
		loc = GetRectCenter(Qe)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00店小二：|r |cFF99FFCC请帮助我们杀死野狼吧|r\n|cFFFFCC00提示：|r |cFF99FFCC杀死|cFFADFF2F6只野狼|r\n")
		PingMinimapLocForForce(ov(p), loc, 5.0)
		RemoveLocation(loc)
	elseif newbeeTaskId[i] == 3 then
		loc = GetRectCenter(Re)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00店小二：|r |cFF99FFCC听说少林寺的练功房升级特别快，为何不去看看呢|r\n|cFFFFCC00提示：|r |cFF99FFCC前往少林寺的|cFFADFF2F练功房|r，可以通过主城传送")
		PingMinimapLocForForce(ov(p), loc, 5.0)
		RemoveLocation(loc)
	elseif newbeeTaskId[i] == 4 then
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00店小二：|r |cFF99FFCC你已经完成新手任务了")
	end
	u = nil
	p = nil
	loc = nil
end
--郭靖——环戒
function IsNewBeeTaskVisitGuoJing()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and newbeeTaskId[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == 1 -- INLINED!!
end
function CompleteVisitGuoJing()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if GetRandomInt(1, 100) <= 85 then
		unitadditembyidswapped(1227895348, GetTriggerUnit())
	else
		unitadditembyidswapped(1227899720, GetTriggerUnit())
	end
	AddHeroXP(u, 100, true)
	shengwang[i] = shengwang[i] + 10
	PlaySoundOnUnitBJ(Hh, 100, u)
	DisplayTextToPlayer(p, 0, 0, "|CFF34FF00完成任务获得经验+100、江湖声望+10和" .. (GetItemName(bj_lastCreatedItem) or ""))
	newbeeTaskId[i] = 4
	u = nil
	p = nil
end
--杀狼任务——青铜刀
function IsKillingWolves()
	return GetUnitTypeId(GetTriggerUnit()) == 1853320308
end
function CompleteKillingWolves()
	local u = GetKillingUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if newbeeTaskId[i] == 2 then
		P7[i] = P7[i] + 1
		if P7[i] >= 6 then
			P7[i] = 0
			newbeeTaskId[i] = 4
			if GetRandomInt(1, 100) <= 85 then
				unitadditembyidswapped(1227895344, GetTriggerUnit())
			else
				unitadditembyidswapped(1227899721, GetTriggerUnit())
			end
			AddHeroXP(GetKillingUnit(), 100, true)
			shengwang[i] = shengwang[i] + 50
			PlaySoundOnUnitBJ(Hh, 100, GetKillingUnit())
			DisplayTextToPlayer(p, 0, 0, "|CFF34FF00完成任务获得经验+100、江湖声望+50和" .. (GetItemName(bj_lastCreatedItem) or ""))
		else
			DisplayTextToPlayer(p, 0, 0, "野狼：" .. (I2S(P7[i]) or "") .. " / 6")
		end
	end
	u = nil
	p = nil
end
--少林练功房——养精蓄锐令
function IsVisitShaoLin()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and newbeeTaskId[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == 3 -- INLINED!!
end
function CompleteVisitShaoLin()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	unitadditembyidswapped(1227896392, GetTriggerUnit())
	AddHeroXP(u, 100, true)
	shengwang[i] = shengwang[i] + 10
	PlaySoundOnUnitBJ(Hh, 100, u)
	DisplayTextToPlayer(p, 0, 0, "|CFF34FF00完成任务获得经验+100、江湖声望+10和" .. (GetItemName(bj_lastCreatedItem) or ""))
	newbeeTaskId[i] = 4
	u = nil
	p = nil
end

function IsLookingForGoods()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227899458 -- INLINED!!
end
function LookingForGoods()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local id = LoadInteger(YDHT, GetHandleId(p), StringHash("item"))
	local s
	if xunwu[i] == 0 then
		if xiuxing[i] <= 2 then
			if GetRandomInt(1, 2) == 1 then
				id = ZhuangBei[GetRandomInt(1, 6)]
			else
				id = ShiPin[GetRandomInt(1, 18)]
			end
		elseif xiuxing[i] <= 4 then
			if GetRandomInt(1, 2) == 1 then
				id = ZhuangBei[GetRandomInt(7, 9)]
			else
				id = ShiPin[GetRandomInt(9, 33)]
			end
		else
			if GetRandomInt(1, 3) == 1 then
				id = ZhuangBei[GetRandomInt(10, 14)]
			else
				id = ShiPin[GetRandomInt(34, 44)]
			end
		end
		xunwu[i] = 1
		SaveInteger(YDHT, GetHandleId(p), StringHash("item"), id)
		createitemloc(id, v7[11])
		s = GetItemName(bj_lastCreatedItem)
		RemoveItem(bj_lastCreatedItem)
		PlaySoundOnUnitBJ(bh, 100, u)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00游骐：|r |cFF99FFCC我需要" .. (s or "") .. "，你能帮我找来么|r\n|cFFFFCC00提示：|r |cFF99FFCC帮助游骐寻找|cFFADFF2F" .. (s or "") .. "|r\n")
	else
		createitemloc(id, v7[11])
		s = GetItemName(bj_lastCreatedItem)
		RemoveItem(bj_lastCreatedItem)
		PlaySoundOnUnitBJ(bh, 100, u)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00游骐：|r |cFF99FFCC帮我找到" .. (s or "") .. "了吗|r\n|cFFFFCC00提示：|r |cFF99FFCC帮助游骐寻找|cFFADFF2F" .. (s or "") .. "|r\n")
	end
	u = nil
	p = nil
end
function IsGiveUpCurrentGoods()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227899459 -- INLINED!!
end
function GiveUpCurrentGoods()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if xunwu[i] == 0 then
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00游骐：|r |cFF99FFCC当前没有接任务哦|r\n")
	else
		shengwang[i] = shengwang[i] - 100
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00游骐：|r |cFF99FFCC堂堂大侠，居然找不到小女子需要的东西吗|r\n")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00放弃任务，声望减少100|r\n")
		xunwu[i] = 0
	end
	u = nil
	p = nil
end
function IsCompleteLookingForGoods()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227899460 -- INLINED!!
end
function CompleteLookingForGoods()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local id = LoadInteger(YDHT, GetHandleId(p), StringHash("item"))
	if xunwu[i] == 1 and UnitHaveItem(u, id) and id ~= 0 then
		RemoveItem(FetchUnitItem(u, id))
		shengwang[i] = shengwang[i] + 40 * (xiuxing[i] + 1)
		AddHeroXP(udg_hero[i], 15 * GetHeroLevel(udg_hero[i]) * GetHeroLevel(udg_hero[i]) * (xiuxing[i] + 1), true)
		xunwu[i] = 0
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00游骐：|r |cFF99FFCC谢谢你的帮助|r\n")
		if GetRandomInt(1, 10) <= xiuxing[i] + 1 then
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00完成任务，奖励声望" .. (I2S(40 * (xiuxing[i] + 1)) or "") .. "点，经验" .. (I2S(15 * GetHeroLevel(udg_hero[i]) * GetHeroLevel(udg_hero[i]) * (xiuxing[i] + 1)) or "") .. "点|r\n")
		else
			unitadditembyidswapped(1227895892, udg_hero[i])
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00完成任务，奖励声望" .. (I2S(40 * (xiuxing[i] + 1)) or "") .. "点，经验" .. (I2S(15 * GetHeroLevel(udg_hero[i]) * GetHeroLevel(udg_hero[i]) * (xiuxing[i] + 1)) or "") .. "点，九阳丹一颗|r\n")
		end
		if Ce[i] == 6 then
			if udg_xbds[i] < 9 then
				udg_xbds[i] = udg_xbds[i] + 1
				DisplayTextToPlayer(p, 0, 0, "|CFF66FF00恭喜您完成了" .. (I2S(udg_xbds[i]) or "") .. "次寻宝任务，完成10次可获得寻宝大师哦")
			else
				if udg_xbdsbool[i] == false then
					udg_xbdsbool[i] = true
					if udg_zhangmen[i] == true then
					else
						SaveStr(YDHT, GetHandleId(p), GetHandleId(p), "〓寻宝大师〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
					end
					DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜" .. (GetPlayerName(p) or "") .. "获得寻宝大师")
					SetPlayerName(p, "〓寻宝大师〓" .. (GetPlayerName(p) or ""))
				end
			end
		end
	elseif xunwu[i] == 1 then
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00游骐：|r |cFF99FFCC还没有找到小女子需要的东西吗|r\n")
	else
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00游骐：|r |cFF99FFCC当前没有接任务哦|r\n")
	end
	u = nil
	p = nil
end

function IsYangShou()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227899462 -- INLINED!!
end
function KillYangShou()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local id = LoadInteger(YDHT, GetHandleId(p), StringHash("life"))
	local j = GetRandomInt(1, xiuxing[i] * 3 + 3)
	local s
	if yangshou[i] == 0 then
		id = udg_yangshou[j]
		yangshou[i] = 1
		SaveInteger(YDHT, GetHandleId(p), StringHash("life"), id)
		SaveInteger(YDHT, GetHandleId(p), StringHash("life") * 2, (j - 1) // 3)
		CreateNUnitsAtLoc(1, id, Player(15), v7[11], 270.0)
		s = GetUnitName(bj_lastCreatedUnit)
		RemoveUnit(bj_lastCreatedUnit)
		PlaySoundOnUnitBJ(bh, 100, u)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00游骏：|r |cFF99FFCC老夫夜观天象，" .. (s or "") .. "阳寿已尽，速去与老夫解决他|r\n|cFFFFCC00提示：|r |cFF99FFCC帮助游骏解决|cFFADFF2F" .. (s or "") .. "|r\n")
	else
		CreateNUnitsAtLoc(1, id, Player(15), v7[11], 270.0)
		s = GetUnitName(bj_lastCreatedUnit)
		RemoveUnit(bj_lastCreatedUnit)
		PlaySoundOnUnitBJ(bh, 100, u)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00游骏：|r |cFF99FFCC解决" .. (s or "") .. "了吗|r\n|cFFFFCC00提示：|r |cFF99FFCC帮助游骏解决|cFFADFF2F" .. (s or "") .. "|r\n")
	end
	u = nil
	p = nil
end
function IsFangQiYangShou()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227899461 -- INLINED!!
end
function FangQiYangShou()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if yangshou[i] == 0 then
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00游骏：|r |cFF99FFCC当前没有接任务|r\n")
	else
		shengwang[i] = shengwang[i] - 100
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00游骏：|r |cFF99FFCC堂堂大侠，竟解决不了一个小喽啰|r\n")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00放弃任务，声望减少100|r\n")
		yangshou[i] = 0
	end
	u = nil
	p = nil
end
function IsWanChengYangShou()
	return GetUnitTypeId(GetTriggerUnit()) == LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), StringHash("life")) and yangshou[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 1
end
function WanChengYangShou()
	local u = GetKillingUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local id = LoadInteger(YDHT, GetHandleId(p), StringHash("life"))
	local j = GetRandomInt(25, 45)
	local l__l = LoadInteger(YDHT, GetHandleId(p), StringHash("life") * 2)
	shengwang[i] = shengwang[i] + j * (l__l + 1)
	AdjustPlayerStateBJ(5000 * (l__l + 1), p, PLAYER_STATE_RESOURCE_GOLD)
	AdjustPlayerStateBJ(10 * (l__l + 1), p, PLAYER_STATE_RESOURCE_LUMBER)
	--call AddHeroXP(udg_hero[i],200*GetHeroLevel(udg_hero[i])*GetHeroLevel(udg_hero[i])*(xiuxing[i]+1),true)
	yangshou[i] = 0
	if GetRandomInt(1, 10) <= l__l + 1 then
		unitadditembyidswapped(1227895892, udg_hero[i])
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00完成任务，奖励声望" .. (I2S(j * (l__l + 1)) or "") .. "点，金钱" .. (I2S(5000 * (l__l + 1)) or "") .. "，珍稀币" .. (I2S(10 * (l__l + 1)) or "") .. "，九阳丹一颗|r\n")
	else
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00完成任务，奖励声望" .. (I2S(j * (l__l + 1)) or "") .. "点，金钱" .. (I2S(5000 * (l__l + 1)) or "") .. "，珍稀币" .. (I2S(10 * (l__l + 1)) or ""))
	end
	u = nil
	p = nil
end

function IsQiuHun()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and (GetItemTypeId(GetManipulatedItem()) == 1227897172 or GetItemTypeId(GetManipulatedItem()) == 1227897173 or GetItemTypeId(GetManipulatedItem()) == 1227897164 or GetItemTypeId(GetManipulatedItem()) == 1227897165 or GetItemTypeId(GetManipulatedItem()) == 1227899223 or GetItemTypeId(GetManipulatedItem()) == 1227899220 or GetItemTypeId(GetManipulatedItem()) == 1227899222) -- INLINED!!
end
function QiuHun_Action()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if GetItemTypeId(GetManipulatedItem()) == 1227897172 then
		if qiuhun[i] == 0 then
			qiuhun[i] = 1
			PlaySoundOnUnitBJ(bh, 100, u)
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00周伯通：|r |cFF99FFCC我要教郭靖兄弟九阴真经帮助他向蓉儿求婚，可是九阴真经突然找不到了|r\n|cFFFFCC00提示：|r |cFF99FFCC帮助周伯通寻找|cFFADFF2F九阴真经上下卷（九阴真经和九阴白骨爪）|r\n")
		else
			PlaySoundOnUnitBJ(bh, 100, u)
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00周伯通：|r |cFF99FFCC帮我找到经书了吗|r\n|cFFFFCC00提示：|r |cFF99FFCC帮助周伯通寻找|cFFADFF2F九阴真经上下卷（九阴真经和九阴白骨爪）|r\n")
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227899220 and udg_runamen[i] == 2 then
		if zhaoyangguo[i] == 0 then
			zhaoyangguo[i] = 1
			PlaySoundOnUnitBJ(bh, 100, u)
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00小龙女：|r |cFF99FFCC少侠如果见到过儿，把玉蜂交给他，他就知道我没有死了|r\n|cFFFFCC00提示：|r |cFF99FFCC帮助小龙女找到|cFFADFF2F杨过|r\n")
			unitadditembyidswapped(1227899221, u)
		elseif zhaoyangguo[i] == 1 then
			PlaySoundOnUnitBJ(bh, 100, u)
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00小龙女：|r |cFF99FFCC见到过儿了吗|r\n|cFFFFCC00提示：|r |cFF99FFCC帮助小龙女找到|cFFADFF2F杨过|r\n")
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00小龙女：|r |cFF99FFCC感谢少侠相助，帮我找到了过儿|r\n")
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227899222 and udg_runamen[i] == 2 then
		if zhaoyangguo[i] == 0 then
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00你还没有到小龙女处接任务|r\n")
		elseif zhaoyangguo[i] == 1 then
			if UnitHaveItem(u, 1227899221) then
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00杨过：|r |cFF99FFCC太好了，姑姑没有死！谢谢少侠，这本残章送给你了|r\n")
				RemoveItem(FetchUnitItem(u, 1227899221))
				unitadditembyidswapped(1227896373, u)
				zhaoyangguo[i] = 2
			else
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00杨过：|r |cFF99FFCC姑姑已经死去多年，哪里来的狂小子在胡言乱语|r\n")
			end
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00杨过：|r |cFF99FFCC感谢少侠相助，帮我找到了姑姑|r\n")
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227897173 then
		if touxiao[i] == 0 then
			touxiao[i] = 1
			PlaySoundOnUnitBJ(bh, 100, u)
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00周伯通：|r |cFF99FFCC黄老邪把我关在这好久，天天吹箫烦死了，你能帮我把他的玉箫偷来吗？|r\n|cFFFFCC00提示：|r |cFF99FFCC帮助周伯通偷到|cFFADFF2F玉箫|r\n")
		else
			PlaySoundOnUnitBJ(bh, 100, u)
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00周伯通：|r |cFF99FFCC帮我偷到玉箫了吗|r\n|cFFFFCC00提示：|r |cFF99FFCC帮助周伯通偷到|cFFADFF2F玉箫|r\n")
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227897164 then
		if GetUnitAbilityLevel(u, 1093682225) >= 1 then
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00周伯通：|r |cFF99FFCC小子，你已经掌握此武功了")
		else
			if UnitHaveItem(u, 1227895625) and GetUnitAbilityLevel(u, 1093678931) >= 1 and wuxing[i] >= 35 then
				RemoveItem(FetchUnitItem(u, 1227895625))
				unitadditembyidswapped(1227897162, u)
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00周伯通：|r |cFF99FFCC看你资质不错，书的这几页就是摧坚神抓的修习法门|r\n")
			else
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00周伯通：|r |cFF99FFCC小子，你的条件不足|r\n")
			end
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227899223 and linganran[i] == 0 then
		if GetUnitAbilityLevel(u, 1093678919) >= 1 then
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00杨过：|r |cFF99FFCC少侠，你已经掌握此武功了")
		else
			if fuyuan[i] >= 25 and wuxing[i] >= 25 then
				unitadditembyidswapped(1227895609, u)
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00杨过：|r |cFF99FFCC看你资质不错，这本黯然销魂掌的秘籍就给你了|r\n")
				linganran[i] = 1
			else
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00杨过：|r |cFF99FFCC少侠，你的条件不足|r\n")
			end
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227897165 then
		if GetUnitAbilityLevel(u, 1093682228) >= 1 then
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00洪七公：|r |cFF99FFCC年轻人，你已经掌握此武功了")
		else
			if UnitHaveItem(u, 1227895384) and yishu[i] >= 35 then
				RemoveItem(FetchUnitItem(u, 1227895384))
				unitadditembyidswapped(1227897160, u)
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00洪七公：|r |cFF99FFCC看你资质不错，书的这几页就是医疗篇的修习法门|r\n")
			else
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00洪七公：|r |cFF99FFCC年轻人，你的条件不足|r\n")
			end
		end
		ShowUnitHide(gg_unit_n00E_0066)
	end
	u = nil
	p = nil
end
function IsQiuHunWan()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and (qiuhun[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == 1 and UnitHaveItem(GetTriggerUnit(), 1227895384) and UnitHaveItem(GetTriggerUnit(), 1227895625) or touxiao[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == 1 and UnitHaveItem(GetTriggerUnit(), 1227899185)) -- INLINED!!
end
function QiuHunWanCheng()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	--call BJDebugMsg("有没有？")
	if qiuhun[i] == 1 and UnitHaveItem(u, 1227895384) and UnitHaveItem(u, 1227895625) then
		L7[i] = 1
		for _ in _loop_() do
			if L7[i] > wugongshu[i] then break end
			if I7[(i - 1) * 20 + L7[i]] ~= 1095067243 then
				if L7[i] == wugongshu[i] then
					RemoveItem(FetchUnitItem(u, 1227895384))
					RemoveItem(FetchUnitItem(u, 1227895625))
					DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00周伯通：|r |cFF99FFCC不错小子，居然被你找到了，不能让你白跑，我把这遗忘技能的法门传给你，今后你遗忘技能就不需要遗忘之石了|r\n")
					udg_yiwang[i] = true
					qiuhun[i] = 0
					if true then break end
				end
			else
				UnitAddAbility(u, 1093677367)
				I7[(i - 1) * 20 + L7[i]] = 1093677367
				RemoveItem(FetchUnitItem(u, 1227895384))
				RemoveItem(FetchUnitItem(u, 1227895625))
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00周伯通：|r |cFF99FFCC不错小子，居然被你找到了，不能让你白跑，我这七十二路空明拳传给你了|r\n")
				DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033恭喜" .. (GetPlayerName(p) or "") .. "习得空明拳")
				qiuhun[i] = 0
				if true then break end
			end
			L7[i] = L7[i] + 1
		end
	elseif touxiao[i] == 1 and UnitHaveItem(u, 1227899185) then
		L7[i] = 1
		for _ in _loop_() do
			if L7[i] > wugongshu[i] then break end
			if I7[(i - 1) * 20 + L7[i]] ~= 1095067243 then
				if L7[i] == wugongshu[i] then
					DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00周伯通：|r |cFF99FFCC小子，你学的武功太多了，遗忘一些再过来找我吧|r\n")
					if true then break end
				end
			else
				UnitAddAbility(u, 1093677368)
				I7[(i - 1) * 20 + L7[i]] = 1093677368
				RemoveItem(FetchUnitItem(u, 1227899185))
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00周伯通：|r |cFF99FFCC不错小子，居然被你偷到了，不能让你白跑，我把从黄老邪那偷学的碧海潮生曲传给你|r\n")
				DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033恭喜" .. (GetPlayerName(p) or "") .. "习得碧海潮生曲")
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00周伯通：|r |cFF99FFCC这把玉箫其实是一把难得的神器，就送给你了吧|r\n")
				unitadditembyidswapped(1227897156, u)
				touxiao[i] = 0
				if true then break end
			end
			L7[i] = L7[i] + 1
		end
	end
	u = nil
	p = nil
end
-----------帮郭靖求婚结束
---------任务系统-------

function QJ()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895898 -- INLINED!!
end
function RJ()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	if kd[LoadInteger(YDHT, id * cx, -1587459251)] >= 3 then
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFF0000你无法再接取此任务了")
	else
		if jd[LoadInteger(YDHT, id * cx, -1587459251)] == 0 then
			if GetRandomInt(1, 100) <= 35 then
				SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Bg))
				jd[LoadInteger(YDHT, id * cx, -1587459251)] = 1
				PlaySoundOnUnitBJ(bh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00鲁有脚：|r |cFF99FFCC丐帮乃江湖第一大帮派，负责传送各种情报|r\n|cFFFFCC00提示：|r |cFF99FFCC送信给|cFFADFF2F黄蓉|r\n")
				PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
				RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
			else
				if GetRandomInt(1, 70) <= 35 then
					SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Xe))
					jd[LoadInteger(YDHT, id * cx, -1587459251)] = 2
					PlaySoundOnUnitBJ(bh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
					DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00鲁有脚：|r |cFF99FFCC丐帮乃江湖第一大帮派，负责传送各种情报|r\n|cFFFFCC00提示：|r |cFF99FFCC送信给|cFFADFF2F达摩祖师|r\n")
					PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
					RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
				else
					jd[LoadInteger(YDHT, id * cx, -1587459251)] = 3
					SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Pe))
					PlaySoundOnUnitBJ(bh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
					DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00鲁有脚：|r |cFF99FFCC丐帮乃江湖第一大帮派，负责传送各种情报|r\n|cFFFFCC00提示：|r |cFF99FFCC送信给|cFFADFF2F郭靖\n")
					PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
					RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
				end
			end
		else
			if jd[LoadInteger(YDHT, id * cx, -1587459251)] == 1 then
				SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Bg))
				PlaySoundOnUnitBJ(bh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00鲁有脚：|r |cFF99FFCC丐帮乃江湖第一大帮派，负责传送各种情报|r\n|cFFFFCC00提示：|r |cFF99FFCC送信给|cFFADFF2F黄蓉|r\n")
				PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
				RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
			else
				if jd[LoadInteger(YDHT, id * cx, -1587459251)] == 2 then
					SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Xe))
					PlaySoundOnUnitBJ(bh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
					DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00鲁有脚：|r |cFF99FFCC丐帮乃江湖第一大帮派，负责传送各种情报|r\n|cFFFFCC00提示：|r |cFF99FFCC送信给|cFFADFF2F达摩祖师|r\n")
					PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
					RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
				else
					if jd[LoadInteger(YDHT, id * cx, -1587459251)] == 3 then
						SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Pe))
						PlaySoundOnUnitBJ(bh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00鲁有脚：|r |cFF99FFCC丐帮乃江湖第一大帮派，负责传送各种情报|r\n|cFFFFCC00提示：|r |cFF99FFCC送信给|cFFADFF2F郭靖\n")
						PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
						RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
					end
				end
			end
		end
	end
	FlushChildHashtable(YDHT, id * cx)
end
function TJ()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and jd[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == 1 -- INLINED!!
end
function UJ()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	if GetRandomInt(1, 50) <= 25 then
		YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 0, 0, 500)
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务获得经验+100、江湖声望+15、生命+500\n")
	else
		if GetRandomInt(1, 50) <= 25 then
			YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 3, 0, 200)
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务获得经验+100、江湖声望+15、攻击+200")
		else
			YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 2, 0, 30)
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务获得经验+100、江湖声望+15、防御+30\n")
		end
	end
	if GetRandomInt(1, 50) <= 40 then
		unitadditembyidswapped(YaoCao[5], GetTriggerUnit())
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00意外获得了一个锦灯笼")
	end
	AddHeroXP(LoadUnitHandle(YDHT, id * cx, -784714656), 100, true)
	PlaySoundOnUnitBJ(Hh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
	jd[LoadInteger(YDHT, id * cx, -1587459251)] = 0
	kd[LoadInteger(YDHT, id * cx, -1587459251)] = kd[LoadInteger(YDHT, id * cx, -1587459251)] + 1
	shengwang[LoadInteger(YDHT, id * cx, -1587459251)] = shengwang[LoadInteger(YDHT, id * cx, -1587459251)] + 15
	FlushChildHashtable(YDHT, id * cx)
end
function WJ()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and jd[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == 2 -- INLINED!!
end
function XJ()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	if GetRandomInt(1, 50) <= 25 then
		YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 0, 0, 500)
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务获得经验+100、江湖声望+15、生命+500\n")
	else
		if GetRandomInt(1, 50) <= 25 then
			YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 3, 0, 200)
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务获得经验+100、江湖声望+15、攻击+200")
		else
			YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 2, 0, 30)
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务获得经验+100、江湖声望+15、防御+30\n")
		end
	end
	if GetRandomInt(1, 50) <= 40 then
		unitadditembyidswapped(YaoCao[5], GetTriggerUnit())
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00意外获得了一个锦灯笼")
	end
	AddHeroXP(LoadUnitHandle(YDHT, id * cx, -784714656), 100, true)
	PlaySoundOnUnitBJ(Hh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
	jd[LoadInteger(YDHT, id * cx, -1587459251)] = 0
	kd[LoadInteger(YDHT, id * cx, -1587459251)] = kd[LoadInteger(YDHT, id * cx, -1587459251)] + 1
	shengwang[LoadInteger(YDHT, id * cx, -1587459251)] = shengwang[LoadInteger(YDHT, id * cx, -1587459251)] + 15
	FlushChildHashtable(YDHT, id * cx)
end
function ZJ()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and jd[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == 3 -- INLINED!!
end
function dK()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	if GetRandomInt(1, 50) <= 25 then
		YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 0, 0, 500)
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务获得经验+100、江湖声望+15、生命+500\n")
	else
		if GetRandomInt(1, 50) <= 25 then
			YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 3, 0, 200)
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务获得经验+100、江湖声望+15、攻击+200")
		else
			YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 2, 0, 30)
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务获得经验+100、江湖声望+15、防御+30\n")
		end
	end
	if GetRandomInt(1, 50) <= 40 then
		unitadditembyidswapped(YaoCao[5], GetTriggerUnit())
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00意外获得了一个锦灯笼")
	end
	AddHeroXP(LoadUnitHandle(YDHT, id * cx, -784714656), 100, true)
	PlaySoundOnUnitBJ(Hh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
	jd[LoadInteger(YDHT, id * cx, -1587459251)] = 0
	kd[LoadInteger(YDHT, id * cx, -1587459251)] = kd[LoadInteger(YDHT, id * cx, -1587459251)] + 1
	shengwang[LoadInteger(YDHT, id * cx, -1587459251)] = shengwang[LoadInteger(YDHT, id * cx, -1587459251)] + 15
	FlushChildHashtable(YDHT, id * cx)
end
function fK()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895352 -- INLINED!!
end

function gK()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	if e8[LoadInteger(YDHT, id * cx, -1587459251)] == 0 then
		SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Se))
		e8[LoadInteger(YDHT, id * cx, -1587459251)] = 1
		PlaySoundOnUnitBJ(bh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00耶律齐：|r |cFF99FFCC我一生酷爱打猎，平时有时间就会出来试试身手，你愿意一同前往吗|r\n|cFFFFCC00提示：|r |cFF99FFCC击杀山林中的|cFFADFF2F野猪首领|r\n")
		PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	else
		if e8[LoadInteger(YDHT, id * cx, -1587459251)] == 1 then
			SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Se))
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00你已经接下任务了\n|cFFFFCC00提示：|r |cFF99FFCC击杀山林中的|cFFADFF2F野猪首领|r\n")
			PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
			RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
		end
	end
	FlushChildHashtable(YDHT, id * cx)
end
function iK()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895353 -- INLINED!!
end

function jK()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	if g8[LoadInteger(YDHT, id * cx, -1587459251)] == 0 then
		if GetRandomInt(1, 70) <= 10 then
			SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Te))
			g8[LoadInteger(YDHT, id * cx, -1587459251)] = 1
			PlaySoundOnUnitBJ(bh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00林远图：|r |cFF99FFCC我这有一封信，你帮我送给全真教的丘掌门吧|r\n|cFFFFCC00提示：|r |cFF99FFCC前往全真教的|cFFADFF2F丘处机|r\n")
			PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
			RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
		else
			if GetRandomInt(1, 60) <= 10 then
				SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Ue))
				g8[LoadInteger(YDHT, id * cx, -1587459251)] = 2
				PlaySoundOnUnitBJ(bh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00林远图：|r |cFF99FFCC全真教山下附近的豺狼经常出没攻击镖车，你能前往消灭他们吗|r\n|cFFFFCC00提示：|r |cFF99FFCC前往全真教山下的杀死10只|cFFADFF2F豺狼|r\n")
				PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
				RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
			else
				if GetRandomInt(1, 50) <= 10 then
					SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Ve))
					g8[LoadInteger(YDHT, id * cx, -1587459251)] = 3
					PlaySoundOnUnitBJ(bh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
					DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00林远图：|r |cFF99FFCC我这有一封信，你帮我送给燕子坞的慕容复吧|r\n|cFFFFCC00提示：|r |cFF99FFCC前往燕子坞的|cFFADFF2F慕容复|r\n")
					PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
					RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
				else
					if GetRandomInt(1, 40) <= 10 then
						SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(We))
						g8[LoadInteger(YDHT, id * cx, -1587459251)] = 4
						PlaySoundOnUnitBJ(bh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00林远图：|r |cFF99FFCC燕子坞的蝎子王经常出没攻击镖车，你能前往消灭他们吗|r\n|cFFFFCC00提示：|r |cFF99FFCC前往燕子坞的杀死3只|cFFADFF2F蝎子王|r\n")
						PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
						RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
					else
						if GetRandomInt(1, 30) <= 10 then
							SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Xe))
							g8[LoadInteger(YDHT, id * cx, -1587459251)] = 5
							PlaySoundOnUnitBJ(bh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
							DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00林远图：|r |cFF99FFCC我这有一封信，你帮我送给少林寺的达摩祖师吧|r\n|cFFFFCC00提示：|r |cFF99FFCC前往少林寺的|cFFADFF2F达摩祖师|r\n")
							PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
							RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
						else
							if GetRandomInt(1, 20) <= 10 then
								SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Ye))
								g8[LoadInteger(YDHT, id * cx, -1587459251)] = 6
								PlaySoundOnUnitBJ(bh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
								DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00林远图：|r |cFF99FFCC我这有一封信，你帮我送给雁门关的乔峰吧|r\n|cFFFFCC00提示：|r |cFF99FFCC前往雁门关的|cFFADFF2F乔峰|r\n")
								PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
								RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
							else
								g8[LoadInteger(YDHT, id * cx, -1587459251)] = 7
								SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Je))
								PlaySoundOnUnitBJ(bh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
								DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00林远图：|r |cFF99FFCC西域邪教持续骚扰我中原武林，是时候给他们一点颜色了|r\n|cFFFFCC00提示：|r |cFF99FFCC守住武林正派，杀死10只|cFFADFF2F进攻的西域教徒|r\n")
								PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
								RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
							end
						end
					end
				end
			end
		end
	else
		if g8[LoadInteger(YDHT, id * cx, -1587459251)] == 1 then
			SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Te))
			PlaySoundOnUnitBJ(bh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00林远图：|r |cFF99FFCC我这有一封信，你帮我送给全真教的邱掌门吧|r\n|cFFFFCC00提示：|r |cFF99FFCC前往全真教的|cFFADFF2F丘处机|r\n")
			PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
			RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
		else
			if g8[LoadInteger(YDHT, id * cx, -1587459251)] == 2 then
				SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Ue))
				PlaySoundOnUnitBJ(bh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00林远图：|r |cFF99FFCC全真教山下附近的豺狼经常出没攻击镖车，你能前往消灭他们吗|r\n|cFFFFCC00提示：|r |cFF99FFCC前往全真教山下的杀死10只|cFFADFF2F豺狼|r\n")
				PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
				RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
			else
				if g8[LoadInteger(YDHT, id * cx, -1587459251)] == 3 then
					SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Ve))
					PlaySoundOnUnitBJ(bh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
					DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00林远图：|r |cFF99FFCC我这有一封信，你帮我送给燕子坞的慕容复吧|r\n|cFFFFCC00提示：|r |cFF99FFCC前往燕子坞的|cFFADFF2F慕容复|r\n")
					PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
					RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
				else
					if g8[LoadInteger(YDHT, id * cx, -1587459251)] == 4 then
						SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(We))
						PlaySoundOnUnitBJ(bh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00林远图：|r |cFF99FFCC燕子坞的蝎子王经常出没攻击镖车，你能前往消灭他们吗|r\n|cFFFFCC00提示：|r |cFF99FFCC前往燕子坞的杀死5只|cFFADFF2F蝎子王|r\n")
						PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
						RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
					else
						if g8[LoadInteger(YDHT, id * cx, -1587459251)] == 5 then
							SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Xe))
							PlaySoundOnUnitBJ(bh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
							DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00林远图：|r |cFF99FFCC我这有一封信，你帮我送给少林寺的达摩祖师吧|r\n|cFFFFCC00提示：|r |cFF99FFCC前往少林寺的|cFFADFF2F达摩祖师|r\n")
							PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
							RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
						else
							if g8[LoadInteger(YDHT, id * cx, -1587459251)] == 6 then
								SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Ye))
								PlaySoundOnUnitBJ(bh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
								DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00林远图：|r |cFF99FFCC我这有一封信，你帮我送给雁门关的乔峰吧|r\n|cFFFFCC00提示：|r |cFF99FFCC前往雁门关的|cFFADFF2F乔峰|r\n")
								PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
								RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
							else
								if g8[LoadInteger(YDHT, id * cx, -1587459251)] == 7 then
									SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Je))
									PlaySoundOnUnitBJ(bh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
									DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00林远图：|r |cFF99FFCC西域邪教持续骚扰我中原武林，是时候给他们一点颜色了|r\n|cFFFFCC00提示：|r |cFF99FFCC守住武林正派，杀死10只|cFFADFF2F进攻的西域教徒|r\n")
									PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
									RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
								end
							end
						end
					end
				end
			end
		end
	end
	FlushChildHashtable(YDHT, id * cx)
end
function mK()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and g8[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == 1 -- INLINED!!
end
function nK()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	PlaySoundOnUnitBJ(Hh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
	DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务获得江湖声望+20，经验值+300")
	g8[LoadInteger(YDHT, id * cx, -1587459251)] = 0
	qd[LoadInteger(YDHT, id * cx, -1587459251)] = qd[LoadInteger(YDHT, id * cx, -1587459251)] + 1
	shengwang[LoadInteger(YDHT, id * cx, -1587459251)] = shengwang[LoadInteger(YDHT, id * cx, -1587459251)] + 20
	AddHeroXP(LoadUnitHandle(YDHT, id * cx, -784714656), 300, true)
	if GetRandomInt(1, 35) <= fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] - 5 then
		unitadditembyidswapped(gudong[GetRandomInt(1, 3)], LoadUnitHandle(YDHT, id * cx, -784714656))
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00你的运气（与福缘有关）太好了，竟然意外获得了一个古董")
	end
	FlushChildHashtable(YDHT, id * cx)
end
function pK()
	return GetUnitTypeId(GetTriggerUnit()) == 1852272243 and g8[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 2
end
function qK()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetKillingUnit())
	h8[LoadInteger(YDHT, id * cx, -1587459251)] = h8[LoadInteger(YDHT, id * cx, -1587459251)] + 1
	if h8[LoadInteger(YDHT, id * cx, -1587459251)] >= 10 then
		h8[LoadInteger(YDHT, id * cx, -1587459251)] = 0
		PlaySoundOnUnitBJ(Hh, 100, GetKillingUnit())
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务获得江湖声望+25，经验值+300")
		g8[LoadInteger(YDHT, id * cx, -1587459251)] = 0
		shengwang[LoadInteger(YDHT, id * cx, -1587459251)] = shengwang[LoadInteger(YDHT, id * cx, -1587459251)] + 25
		AddHeroXP(GetKillingUnit(), 300, true)
		qd[LoadInteger(YDHT, id * cx, -1587459251)] = qd[LoadInteger(YDHT, id * cx, -1587459251)] + 1
		if GetRandomInt(1, 35) <= fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] - 5 then
			unitadditembyidswapped(gudong[GetRandomInt(1, 3)], LoadUnitHandle(YDHT, id * cx, -784714656))
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00你的运气（与福缘有关）太好了，竟然意外获得了一个古董")
		end
	else
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "豺狼：" .. (I2S(h8[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 10")
	end
	FlushChildHashtable(YDHT, id * cx)
end
function sK()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and g8[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == 3 -- INLINED!!
end
function tK()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	PlaySoundOnUnitBJ(Hh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
	DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务获得江湖声望+20，经验值+300")
	g8[LoadInteger(YDHT, id * cx, -1587459251)] = 0
	shengwang[LoadInteger(YDHT, id * cx, -1587459251)] = shengwang[LoadInteger(YDHT, id * cx, -1587459251)] + 20
	AddHeroXP(LoadUnitHandle(YDHT, id * cx, -784714656), 300, true)
	qd[LoadInteger(YDHT, id * cx, -1587459251)] = qd[LoadInteger(YDHT, id * cx, -1587459251)] + 1
	if GetRandomInt(1, 35) <= fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] - 5 then
		unitadditembyidswapped(gudong[GetRandomInt(1, 3)], LoadUnitHandle(YDHT, id * cx, -784714656))
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00你的运气（与福缘有关）太好了，竟然意外获得了一个古董")
	end
	FlushChildHashtable(YDHT, id * cx)
end
function vK()
	return GetUnitTypeId(GetTriggerUnit()) == 1851879010 and g8[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 4
end
function wK()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit())))
	i8[LoadInteger(YDHT, id * cx, -1587459251)] = i8[LoadInteger(YDHT, id * cx, -1587459251)] + 1
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	if i8[LoadInteger(YDHT, id * cx, -1587459251)] >= 3 then
		i8[LoadInteger(YDHT, id * cx, -1587459251)] = 0
		PlaySoundOnUnitBJ(Hh, 100, GetKillingUnit())
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务获得江湖声望+30，经验值+300")
		qd[LoadInteger(YDHT, id * cx, -1587459251)] = qd[LoadInteger(YDHT, id * cx, -1587459251)] + 1
		g8[LoadInteger(YDHT, id * cx, -1587459251)] = 0
		shengwang[LoadInteger(YDHT, id * cx, -1587459251)] = shengwang[LoadInteger(YDHT, id * cx, -1587459251)] + 30
		AddHeroXP(GetKillingUnit(), 300, true)
		if GetRandomInt(1, 35) <= fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] - 5 then
			unitadditembyidswapped(gudong[GetRandomInt(1, 3)], LoadUnitHandle(YDHT, id * cx, -784714656))
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00你的运气（与福缘有关）太好了，竟然意外获得了一个古董")
		end
	else
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "蝎子王：" .. (I2S(i8[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 3")
	end
	FlushChildHashtable(YDHT, id * cx)
end
function yK()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and g8[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == 5 -- INLINED!!
end
function zK()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	PlaySoundOnUnitBJ(Hh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
	DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务获得江湖声望+20，经验值+300")
	g8[LoadInteger(YDHT, id * cx, -1587459251)] = 0
	shengwang[LoadInteger(YDHT, id * cx, -1587459251)] = shengwang[LoadInteger(YDHT, id * cx, -1587459251)] + 20
	AddHeroXP(LoadUnitHandle(YDHT, id * cx, -784714656), 300, true)
	qd[LoadInteger(YDHT, id * cx, -1587459251)] = qd[LoadInteger(YDHT, id * cx, -1587459251)] + 1
	if GetRandomInt(1, 35) <= fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] - 5 then
		unitadditembyidswapped(gudong[GetRandomInt(1, 3)], LoadUnitHandle(YDHT, id * cx, -784714656))
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00你的运气（与福缘有关）太好了，竟然意外获得了一个古董")
	end
	FlushChildHashtable(YDHT, id * cx)
end
function aK()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and g8[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == 6 -- INLINED!!
end
function BK()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	PlaySoundOnUnitBJ(Hh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
	DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务获得江湖声望+20，经验值+300")
	g8[LoadInteger(YDHT, id * cx, -1587459251)] = 0
	shengwang[LoadInteger(YDHT, id * cx, -1587459251)] = shengwang[LoadInteger(YDHT, id * cx, -1587459251)] + 20
	AddHeroXP(LoadUnitHandle(YDHT, id * cx, -784714656), 300, true)
	qd[LoadInteger(YDHT, id * cx, -1587459251)] = qd[LoadInteger(YDHT, id * cx, -1587459251)] + 1
	if GetRandomInt(1, 35) <= fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] - 5 then
		unitadditembyidswapped(gudong[GetRandomInt(1, 3)], LoadUnitHandle(YDHT, id * cx, -784714656))
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00你的运气（与福缘有关）太好了，竟然意外获得了一个古董")
	end
	FlushChildHashtable(YDHT, id * cx)
end
function CK()
	return GetKillingUnit() ~= nil and g8[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 7
end
function cK()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit())))
	j8[LoadInteger(YDHT, id * cx, -1587459251)] = j8[LoadInteger(YDHT, id * cx, -1587459251)] + 1
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	if j8[LoadInteger(YDHT, id * cx, -1587459251)] >= 10 then
		j8[LoadInteger(YDHT, id * cx, -1587459251)] = 0
		PlaySoundOnUnitBJ(Hh, 100, GetKillingUnit())
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务获得江湖声望+30，经验值+300")
		g8[LoadInteger(YDHT, id * cx, -1587459251)] = 0
		shengwang[LoadInteger(YDHT, id * cx, -1587459251)] = shengwang[LoadInteger(YDHT, id * cx, -1587459251)] + 30
		AddHeroXP(GetKillingUnit(), 300, true)
		qd[LoadInteger(YDHT, id * cx, -1587459251)] = qd[LoadInteger(YDHT, id * cx, -1587459251)] + 1
		if GetRandomInt(1, 35) <= fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] - 5 then
			unitadditembyidswapped(gudong[GetRandomInt(1, 3)], LoadUnitHandle(YDHT, id * cx, -784714656))
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00你的运气（与福缘有关）太好了，竟然意外获得了一个古董")
		end
	else
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "西域邪教：" .. (I2S(j8[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 10")
	end
	FlushChildHashtable(YDHT, id * cx)
end
function EK()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895364 -- INLINED!!
end
function FK()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	if qd[LoadInteger(YDHT, id * cx, -1587459251)] >= 3 then
		if o8[LoadInteger(YDHT, id * cx, -1587459251)] == false then
			if GetRandomInt(1, 100) <= 25 then
				unitadditembyidswapped(1227895125, GetTriggerUnit())
				o8[LoadInteger(YDHT, id * cx, -1587459251)] = true
				PlaySoundOnUnitBJ(Hh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00获得" .. (GetItemName(bj_lastCreatedItem) or ""))
			else
				if GetRandomInt(1, 60) <= 20 then
					unitadditembyidswapped(1227895130, GetTriggerUnit())
					o8[LoadInteger(YDHT, id * cx, -1587459251)] = true
					PlaySoundOnUnitBJ(Hh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
					DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00获得" .. (GetItemName(bj_lastCreatedItem) or ""))
				else
					if GetRandomInt(1, 60) <= 30 then
						unitadditembyidswapped(1227895124, GetTriggerUnit())
						o8[LoadInteger(YDHT, id * cx, -1587459251)] = true
						PlaySoundOnUnitBJ(Hh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00获得" .. (GetItemName(bj_lastCreatedItem) or ""))
					else
						unitadditembyidswapped(1227895109, GetTriggerUnit())
						o8[LoadInteger(YDHT, id * cx, -1587459251)] = true
						PlaySoundOnUnitBJ(Hh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00获得" .. (GetItemName(bj_lastCreatedItem) or ""))
					end
				end
			end
			SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
			if GetRandomInt(1, 180) <= 10 then
				createitemloc(1227895627, LoadLocationHandle(YDHT, id * cx, 392811314))
			else
				if GetRandomInt(1, 170) <= 10 then
					createitemloc(1227895385, LoadLocationHandle(YDHT, id * cx, 392811314))
				else
					if GetRandomInt(1, 160) <= 10 then
						createitemloc(1227895620, LoadLocationHandle(YDHT, id * cx, 392811314))
					else
						if GetRandomInt(1, 150) <= 10 then
							createitemloc(1227895382, LoadLocationHandle(YDHT, id * cx, 392811314))
						else
							if GetRandomInt(1, 140) <= 10 then
								createitemloc(1227895624, LoadLocationHandle(YDHT, id * cx, 392811314))
							else
								if GetRandomInt(1, 130) <= 10 then
									createitemloc(1227895621, LoadLocationHandle(YDHT, id * cx, 392811314))
								else
									if GetRandomInt(1, 120) <= 10 then
										createitemloc(1227895603, LoadLocationHandle(YDHT, id * cx, 392811314))
									else
										if GetRandomInt(1, 110) <= 10 then
											createitemloc(1227895383, LoadLocationHandle(YDHT, id * cx, 392811314))
										else
											if GetRandomInt(1, 100) <= 10 then
												createitemloc(1227895601, LoadLocationHandle(YDHT, id * cx, 392811314))
											else
												if GetRandomInt(1, 90) <= 10 then
													createitemloc(1227895623, LoadLocationHandle(YDHT, id * cx, 392811314))
												else
													if GetRandomInt(1, 80) <= 10 then
														createitemloc(1227895381, LoadLocationHandle(YDHT, id * cx, 392811314))
													else
														if GetRandomInt(1, 70) <= 10 then
															createitemloc(1227895626, LoadLocationHandle(YDHT, id * cx, 392811314))
														else
															if GetRandomInt(1, 60) <= 10 then
																createitemloc(1227895600, LoadLocationHandle(YDHT, id * cx, 392811314))
															else
																if GetRandomInt(1, 50) <= 10 then
																	createitemloc(1227895384, LoadLocationHandle(YDHT, id * cx, 392811314))
																else
																	if GetRandomInt(1, 40) <= 10 then
																		createitemloc(1227895625, LoadLocationHandle(YDHT, id * cx, 392811314))
																	else
																		if GetRandomInt(1, 30) <= 10 then
																			createitemloc(1227895386, LoadLocationHandle(YDHT, id * cx, 392811314))
																		else
																			if GetRandomInt(1, 20) <= 10 then
																				createitemloc(1227895628, LoadLocationHandle(YDHT, id * cx, 392811314))
																			else
																				createitemloc(1227895622, LoadLocationHandle(YDHT, id * cx, 392811314))
																			end
																		end
																	end
																end
															end
														end
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00获得" .. (GetItemName(bj_lastCreatedItem) or ""))
			RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
		else
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00林远图：|r |cFF99FFCC你已经领过奖励了\n")
		end
	else
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00林远图：|r |cFF99FFCC需要完成至少3次押镖任务才可以领取奖励哦")
	end
	FlushChildHashtable(YDHT, id * cx)
end

function HK()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and (GetItemTypeId(GetManipulatedItem()) == 1227896132 or GetItemTypeId(GetManipulatedItem()) == 1227897175) -- INLINED!!
end
function IK()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = nil
	if GetItemTypeId(GetManipulatedItem()) == 1227896132 then
		if rd[i] == 0 then
			loc = GetRectCenter(Nf)
			rd[i] = 1
			PlaySoundOnUnitBJ(bh, 100, u)
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00胡斐：|r |cFF99FFCC这一代时常有熊出没，能搞点熊皮来的话应该可以卖个好价钱|r\n|cFFFFCC00提示：|r |cFF99FFCC杀死|cFFADFF2F30只熊|r\n")
			PingMinimapLocForForce(ov(p), loc, 5.0)
			RemoveLocation(loc)
		elseif rd[i] == 1 then
			loc = GetRectCenter(Nf)
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00胡斐：|r |cFF99FFCC这一代时常有熊出没，能搞点熊皮来的话应该可以卖个好价钱|r\n|cFFFFCC00提示：|r |cFF99FFCC杀死|cFFADFF2F30只熊|r\n")
			PingMinimapLocForForce(ov(p), loc, 5.0)
			RemoveLocation(loc)
		elseif rd[i] == 2 then
			DisplayTextToPlayer(p, 0, 0, "|cFfff0000这个任务你已经完成过了")
		end
	elseif GetItemTypeId(GetManipulatedItem()) == 1227897175 then
		if LoadInteger(YDHT, StringHash("哑仆任务"), i) == 0 then
			SaveInteger(YDHT, StringHash("哑仆任务"), i, 1)
			PlaySoundOnUnitBJ(bh, 100, u)
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00周伯通：|r |cFF99FFCC黄老邪把我腿打断的时候，桃花岛上的哑仆一直欺负我，你能帮我杀掉十个哑仆吗|r\n|cFFFFCC00提示：|r |cFF99FFCC杀死|cFFADFF2F十个哑仆|r\n")
		elseif LoadInteger(YDHT, StringHash("哑仆任务"), i) == 1 then
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00周伯通：|r |cFF99FFCC杀掉十个哑仆了吗|r\n|cFFFFCC00提示：|r |cFF99FFCC杀死|cFFADFF2F十个哑仆|r\n")
		end
	end
end

function PK()
	return (GetTriggerUnit() == udg_hero[1] or GetTriggerUnit() == udg_hero[2] or GetTriggerUnit() == udg_hero[3] or GetTriggerUnit() == udg_hero[4] or GetTriggerUnit() == udg_hero[5]) and GetUnitLevel(GetTriggerUnit()) == 10 and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER
end
function QK()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	PlaySoundOnUnitBJ(Hh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
	if GetRandomInt(1, 60) <= 10 then
		unitadditembyidswapped(1227895375, GetTriggerUnit())
	else
		if GetRandomInt(1, 50) <= 10 then
			unitadditembyidswapped(1227895370, GetTriggerUnit())
		else
			if GetRandomInt(1, 40) <= 10 then
				unitadditembyidswapped(1227895363, GetTriggerUnit())
			else
				if GetRandomInt(1, 30) <= 10 then
					unitadditembyidswapped(1227895368, GetTriggerUnit())
				else
					if GetRandomInt(1, 60) <= 30 then
						unitadditembyidswapped(1227895369, GetTriggerUnit())
					else
						unitadditembyidswapped(1227895365, GetTriggerUnit())
					end
				end
			end
		end
	end
	DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00恭喜升到10级，获得" .. (GetItemName(bj_lastCreatedItem) or ""))
	FlushChildHashtable(YDHT, id * cx)
end

function SK()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895890 -- INLINED!!
end
function TK()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	if z9[LoadInteger(YDHT, id * cx, -1587459251)] == 0 then
		SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Gg))
		z9[LoadInteger(YDHT, id * cx, -1587459251)] = 1
		PlaySoundOnUnitBJ(bh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00公孙绿萼：|r |cFF99FFCC杨过中了情花剧毒，你能替我想想办法救救他吗|r\n|cFFFFCC00提示：|r |cFF99FFCC采集绝情谷副本中的|cFFADFF2F断肠草|r\n")
		PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	else
		if z9[LoadInteger(YDHT, id * cx, -1587459251)] == 1 then
			SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Gg))
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00你已经接下任务了\n|cFFFFCC00提示：|r |cFF99FFCC采集绝情谷副本的|cFFADFF2F断肠草|r\n")
			PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
			RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
		end
	end
	FlushChildHashtable(YDHT, id * cx)
end
--采集到断肠草
function VK()
	local id = GetHandleId(GetTriggeringTrigger())
	if GetItemTypeId(GetEnumItem()) == 1227895891 then
		SaveInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -1587459251, LoadInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -1587459251) + 1)
		a9[LoadInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -1587459251)] = GetEnumItem()
		B9[LoadInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -1587459251)] = GetItemLoc(GetEnumItem())
	end
end
function WK()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 0)
	EnumItemsInRectBJ(Gg, VK)
	FlushChildHashtable(YDHT, id * cx)
end
--断肠草
function YK()
	return GetItemTypeId(GetManipulatedItem()) == 1227895891
end
function ZK()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	SaveItemHandle(YDHT, id * cx, 392811314, GetManipulatedItem())
	if IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil == false then -- INLINED!!
		bj_forLoopAIndex = 1
		bj_forLoopAIndexEnd = 12
		for _ in _loop_() do
			if bj_forLoopAIndex > bj_forLoopAIndexEnd then break end
			if GetManipulatedItem() == a9[bj_forLoopAIndex] then
				createitemloc(1227895891, B9[bj_forLoopAIndex])
				a9[bj_forLoopAIndex] = bj_lastCreatedItem
				DisplayTimedTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, 15.0, "|CFFFF0000只能由主角来采集")
			end
			bj_forLoopAIndex = bj_forLoopAIndex + 1
		end
	else
		if z9[LoadInteger(YDHT, id * cx, -1587459251)] == 1 then
			A9[LoadInteger(YDHT, id * cx, -1587459251)] = A9[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			if A9[LoadInteger(YDHT, id * cx, -1587459251)] >= 10 then
				z9[LoadInteger(YDHT, id * cx, -1587459251)] = 2
				A9[LoadInteger(YDHT, id * cx, -1587459251)] = 0
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务请前往公孙绿萼换取奖励")
			else
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "断肠草：" .. (I2S(A9[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 10")
			end
			CreateNUnitsAtLoc(1, 1752196449, Player(15), v7[1], bj_UNIT_FACING)
			ShowUnitHide(bj_lastCreatedUnit)
			UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, GetRandomReal(20.0, 25.0))
			bj_forLoopAIndex = 1
			bj_forLoopAIndexEnd = 12
			for _ in _loop_() do
				if bj_forLoopAIndex > bj_forLoopAIndexEnd then break end
				if LoadItemHandle(YDHT, id * cx, 392811314) == a9[bj_forLoopAIndex] then
					b9[bj_forLoopAIndex] = bj_lastCreatedUnit
				end
				bj_forLoopAIndex = bj_forLoopAIndex + 1
			end
		else
			bj_forLoopAIndex = 1
			bj_forLoopAIndexEnd = 12
			for _ in _loop_() do
				if bj_forLoopAIndex > bj_forLoopAIndexEnd then break end
				if LoadItemHandle(YDHT, id * cx, 392811314) == a9[bj_forLoopAIndex] then
					createitemloc(1227895891, B9[bj_forLoopAIndex])
					a9[bj_forLoopAIndex] = bj_lastCreatedItem
					DisplayTimedTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, 15.0, "|CFFFF0000身上没有该任务或已经完成了")
				end
				bj_forLoopAIndex = bj_forLoopAIndex + 1
			end
		end
	end
	FlushChildHashtable(YDHT, id * cx)
end
--完成断肠草任务
function eL()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and z9[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == 2 -- INLINED!!
end
function fL()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	PlaySoundOnUnitBJ(Hh, 100, GetTriggerUnit())
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	z9[LoadInteger(YDHT, id * cx, -1587459251)] = 0
	shengwang[LoadInteger(YDHT, id * cx, -1587459251)] = shengwang[LoadInteger(YDHT, id * cx, -1587459251)] + 100
	if GetRandomInt(1, 40) <= 20 then
		unitadditembyidswapped(1227894872, GetTriggerUnit())
	else
		unitadditembyidswapped(1227894873, GetTriggerUnit())
	end
	DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务江湖声望+100，并获得" .. (GetItemName(bj_lastCreatedItem) or ""))
	FlushChildHashtable(YDHT, id * cx)
end
function hL()
	return GetUnitTypeId(GetTriggerUnit()) == 1752196449
end
function iL()
	bj_forLoopAIndex = 1
	bj_forLoopAIndexEnd = 12
	for _ in _loop_() do
		if bj_forLoopAIndex > bj_forLoopAIndexEnd then break end
		if GetTriggerUnit() == b9[bj_forLoopAIndex] then
			createitemloc(1227895891, B9[bj_forLoopAIndex])
			a9[bj_forLoopAIndex] = bj_lastCreatedItem
		end
		bj_forLoopAIndex = bj_forLoopAIndex + 1
	end
end

function kL()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896387 -- INLINED!!
end
function mL()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	if Sd[LoadInteger(YDHT, id * cx, -1587459251)] == 0 then
		SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(gh))
		Sd[LoadInteger(YDHT, id * cx, -1587459251)] = 1
		PlaySoundOnUnitBJ(bh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00完颜萍：|r |cFF99FFCC耶律楚材受伤了，你能帮个忙啊|r\n|cFFFFCC00提示：|r |cFF99FFCC护送耶律楚材回|cFFADFF2F大辽国|r\n")
		PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
		SaveLocationHandle(YDHT, id * cx, 1231311908, GetRectCenter(hh))
		CreateNUnitsAtLoc(1, 1853254706, GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1231311908), bj_UNIT_FACING)
		IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851986, LoadLocationHandle(YDHT, id * cx, 1585647951))
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1231311908))
	else
		if Sd[LoadInteger(YDHT, id * cx, -1587459251)] == 1 then
			SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(gh))
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00你已经接下任务了\n|cFFFFCC00提示：|r |cFF99FFCC护送耶律楚材回|cFFADFF2F大辽国|r\n")
			PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
			RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
		else
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00你已经完成了这个任务了（不可重复接取）")
		end
	end
	FlushChildHashtable(YDHT, id * cx)
end
function oL()
	return GetUnitTypeId(GetTriggerUnit()) == 1853254706
end
function pL()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetTriggerPlayer()))
	DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFF0000任务失败了")
	Sd[LoadInteger(YDHT, id * cx, -1587459251)] = 0
	PlaySoundOnUnitBJ(Gh, 100, udg_hero[LoadInteger(YDHT, id * cx, -1587459251)])
	FlushChildHashtable(YDHT, id * cx)
end
function rL()
	return GetUnitTypeId(GetTriggerUnit()) == 1853254706
end
function sL()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	PlaySoundOnUnitBJ(Hh, 100, udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	Sd[LoadInteger(YDHT, id * cx, -1587459251)] = 2
	shengwang[LoadInteger(YDHT, id * cx, -1587459251)] = shengwang[LoadInteger(YDHT, id * cx, -1587459251)] + 150
	juexuelingwu[LoadInteger(YDHT, id * cx, -1587459251)] = juexuelingwu[LoadInteger(YDHT, id * cx, -1587459251)] + 1
	RemoveUnit(GetTriggerUnit())
	AdjustPlayerStateBJ(30000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
	AdjustPlayerStateBJ(20, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
	DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务江湖声望+150，并获得金钱+30000、稀有币+20、绝学领悟力+1")
	ShowUnitShow(YELV_CHUCAI)
	FlushChildHashtable(YDHT, id * cx)
end

function uL()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896388 -- INLINED!!
end
function vL()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	if Td[LoadInteger(YDHT, id * cx, -1587459251)] == 0 then
		SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(xg))
		Td[LoadInteger(YDHT, id * cx, -1587459251)] = 1
		PlaySoundOnUnitBJ(bh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00苗人凤：|r |cFF99FFCC很多武林恶势力犯事之后都躲到了高昌迷宫里|r\n|cFFFFCC00提示：|r |cFF99FFCC分别杀死|cFFADFF2F10个门派叛徒和武林恶徒|r\n")
		PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	else
		if Td[LoadInteger(YDHT, id * cx, -1587459251)] == 1 then
			SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(xg))
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00苗人凤：|r |cFF99FFCC很多武林恶势力犯事之后都躲到了高昌迷宫里|r\n|cFFFFCC00提示：|r |cFF99FFCC分别杀死|cFFADFF2F10个门派叛徒和武林恶徒|r\n")
			PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
			RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
		else
			if Td[LoadInteger(YDHT, id * cx, -1587459251)] == 2 then
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFfff0000这个任务你无法再接取了")
			end
		end
	end
	FlushChildHashtable(YDHT, id * cx)
end
-- 完成高昌迷宫任务
function xL()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and Td[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == 1 and Vd[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == 10 and Ud[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == 10 -- INLINED!!
end
function yL()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	PlaySoundOnUnitBJ(Hh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
	if GetRandomInt(1, 50) <= fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] then
		SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
		if GetRandomInt(1, 100) <= 10 then
			createitemloc(1227896370, LoadLocationHandle(YDHT, id * cx, 392811314))
		else
			if GetRandomInt(1, 90) <= 10 then
				createitemloc(1227896371, LoadLocationHandle(YDHT, id * cx, 392811314))
			else
				if GetRandomInt(1, 80) <= 10 then
					createitemloc(1227896369, LoadLocationHandle(YDHT, id * cx, 392811314))
				else
					if GetRandomInt(1, 70) <= 10 then
						createitemloc(1227896374, LoadLocationHandle(YDHT, id * cx, 392811314))
					else
						if GetRandomInt(1, 60) <= 10 then
							createitemloc(1227896372, LoadLocationHandle(YDHT, id * cx, 392811314))
						else
							if GetRandomInt(1, 50) <= 10 then
								createitemloc(1227896368, LoadLocationHandle(YDHT, id * cx, 392811314))
							else
								if GetRandomInt(1, 40) <= 10 then
									createitemloc(1227896377, LoadLocationHandle(YDHT, id * cx, 392811314))
								else
									if GetRandomInt(1, 30) <= 10 then
										createitemloc(1227896376, LoadLocationHandle(YDHT, id * cx, 392811314))
									else
										if GetRandomInt(1, 20) <= 10 then
											createitemloc(1227896375, LoadLocationHandle(YDHT, id * cx, 392811314))
										else
											createitemloc(1227896373, LoadLocationHandle(YDHT, id * cx, 392811314))
										end
									end
								end
							end
						end
					end
				end
			end
		end
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务获得江湖声望+200和绝学隐藏招式残章一本\n")
		Td[LoadInteger(YDHT, id * cx, -1587459251)] = 0
	else
		if GetRandomInt(1, 50) <= 15 then
			unitadditembyidswapped(1227896390, GetTriggerUnit())
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务获得江湖声望+200和号令天下令\n")
			Td[LoadInteger(YDHT, id * cx, -1587459251)] = 0
		else
			SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
			createitemloc(gudong[GetRandomInt(4, 9)], LoadLocationHandle(YDHT, id * cx, 392811314))
			RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务获得江湖声望+200和古董一个")
			Td[LoadInteger(YDHT, id * cx, -1587459251)] = 0
		end
	end
	shengwang[LoadInteger(YDHT, id * cx, -1587459251)] = shengwang[LoadInteger(YDHT, id * cx, -1587459251)] + 200
	Vd[LoadInteger(YDHT, id * cx, -1587459251)] = 0
	Ud[LoadInteger(YDHT, id * cx, -1587459251)] = 0
	FlushChildHashtable(YDHT, id * cx)
end

function AL()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and (GetItemTypeId(GetManipulatedItem()) == 1227896389 or GetItemTypeId(GetManipulatedItem()) == 1227899214) -- INLINED!!
end
function aL()
	local u = GetTriggerUnit()
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local loc = GetRectCenter(mh)
	if GetItemTypeId(GetManipulatedItem()) == 1227896389 then
		if Wd[i] == 0 then
			Wd[i] = 1
			PlaySoundOnUnitBJ(bh, 100, u)
			DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|cFFFFCC00乔峰：|r |cFF99FFCC最近辽国养兵蓄锐，似乎对大宋有所企图，若能擒住辽国第一先锋，百姓才能避免战祸|r\n|cFFFFCC00提示：|r |cFF99FFCC杀死|cFFADFF2F辽国第一先锋|r\n")
			PingMinimapLocForForce(bj_FORCE_ALL_PLAYERS, loc, 5.0)
			RemoveLocation(loc)
		else
			DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|cFFFFCC00乔峰：|r |cFF99FFCC最近辽国养兵蓄锐，似乎对大宋有所企图，若能擒住辽国第一先锋，百姓才能避免战祸|r\n|cFFFFCC00提示：|r |cFF99FFCC杀死|cFFADFF2F辽国第一先锋|r\n")
			PingMinimapLocForForce(bj_FORCE_ALL_PLAYERS, loc, 5.0)
			RemoveLocation(loc)
		end
	else
		if jiuazi[i] == 0 then
			if udg_runamen[i] == 10 then
				jiuazi[i] = 1
				DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|cFFFFCC00乔峰：|r |cFF99FFCC阿紫被丁老头抓走了，请英雄帮我击败丁春秋，救出阿紫|r\n|cFFFFCC00提示：|r |cFF99FFCC杀死|cFFADFF2F丁春秋|r\n")
			else
				DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|cFFFFCC00乔峰：|r |cFF99FFCC你不是星宿派中人，无法接此任务|r\n")
			end
		else
			DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|cFFFFCC00乔峰：|r |cFF99FFCC你已完成任务|r\n")
		end
	end
end
function bL()
	return GetUnitTypeId(GetTriggerUnit()) == 1751543663 or GetUnitTypeId(GetTriggerUnit()) == 1868852084 or GetUnitTypeId(GetTriggerUnit()) == 1747988554
end
function CL()
	local p = GetOwningPlayer(GetKillingUnit())
	local i = 1 + GetPlayerId(p)
	local loc = GetUnitLoc(GetTriggerUnit())
	if GetUnitTypeId(GetTriggerUnit()) == 1751543663 and GetOwningPlayer(GetTriggerUnit()) == Player(12) then
		if Wd[i] == 1 then
			Wd[i] = 2
			DisplayTextToPlayer(p, 0, 0, "|CFF34FF00恭喜击破辽国第一先锋，你可以回去领奖励了")
		elseif Wd[i] == 2 then
			DisplayTextToPlayer(p, 0, 0, "|CFF34FF00你已经杀过这个怪了，还是先回去交任务把")
		end
	elseif GetUnitTypeId(GetTriggerUnit()) == 1868852084 then
		if jiuazi[i] == 1 then
			jiuazi[i] = 2
			DisplayTextToPlayer(p, 0, 0, "|CFF34FF00击败丁春秋，阿紫现身")
			CreateNUnitsAtLoc(1, 1747988554, Player(12), loc, bj_UNIT_FACING)
		end
	elseif GetUnitTypeId(GetTriggerUnit()) == 1747988554 then
		createitemloc(1227899213, loc)
		SetItemUserData(bj_lastCreatedItem, GetRandomInt(1, 5) * 10000000 + GetRandomInt(1, 5) * 1000000 + GetRandomInt(1, 5) * 100000 + GetRandomInt(1, 5) * 10000)
		DisplayTextToPlayer(p, 0, 0, "|CFF34FF00击败阿紫，获得神木王鼎")
	end
	RemoveLocation(loc)
	p = nil
	loc = nil
end
function DL()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and Wd[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] == 2 -- INLINED!!
end
function EL()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	PlaySoundOnUnitBJ(Hh, 100, LoadUnitHandle(YDHT, id * cx, -784714656))
	unitadditembyidswapped(YaoCao[4], GetTriggerUnit())
	if GetRandomInt(1, 75) <= 25 then
		--遗忘石
		unitadditembyidswapped(1227896395, GetTriggerUnit())
	else
		if GetRandomInt(1, 50) <= 25 then
			--打孔符
			unitadditembyidswapped(1227896398, GetTriggerUnit())
		else
			--神偷令
			unitadditembyidswapped(1227896393, GetTriggerUnit())
		end
	end
	--三分之一概率双倍掉落
	if GetRandomInt(1, 3) == 1 then
		if GetRandomInt(1, 75) <= 25 then
			--遗忘石
			unitadditembyidswapped(1227896395, GetTriggerUnit())
		else
			if GetRandomInt(1, 50) <= 25 then
				--打孔符
				unitadditembyidswapped(1227896398, GetTriggerUnit())
			else
				--神偷令
				unitadditembyidswapped(1227896393, GetTriggerUnit())
			end
		end
	end
	shengwang[LoadInteger(YDHT, id * cx, -1587459251)] = shengwang[LoadInteger(YDHT, id * cx, -1587459251)] + 250
	Wd[LoadInteger(YDHT, id * cx, -1587459251)] = 0
	DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务获得江湖声望+250，金银花一个和" .. (GetItemName(bj_lastCreatedItem) or ""))
	FlushChildHashtable(YDHT, id * cx)
end
function Tasks_Trigger()
	local t = CreateTrigger()
	Fo = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Fo, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(Fo, Condition(IsNewBeeTask))
	TriggerAddAction(Fo, AcceptNewBeeTask)
	Go = CreateTrigger()
	TriggerAddRect(Go, Pe)
	TriggerAddCondition(Go, Condition(IsNewBeeTaskVisitGuoJing))
	TriggerAddAction(Go, CompleteVisitGuoJing)
	Jn = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Jn, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Jn, Condition(IsKillingWolves))
	TriggerAddAction(Jn, CompleteKillingWolves)
	Ho = CreateTrigger()
	TriggerAddRect(Ho, Re)
	TriggerAddRect(Ho, Ie)
	TriggerAddRect(Ho, le)
	TriggerAddCondition(Ho, Condition(IsVisitShaoLin))
	TriggerAddAction(Ho, CompleteVisitShaoLin)
	-- 杀人系统
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(IsLookingForGoods))
	TriggerAddAction(t, LookingForGoods)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(IsGiveUpCurrentGoods))
	TriggerAddAction(t, GiveUpCurrentGoods)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(IsCompleteLookingForGoods))
	TriggerAddAction(t, CompleteLookingForGoods)
	-- 寻宝系统
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(IsYangShou))
	TriggerAddAction(t, KillYangShou)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(IsFangQiYangShou))
	TriggerAddAction(t, FangQiYangShou)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(IsWanChengYangShou))
	TriggerAddAction(t, WanChengYangShou)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(IsQiuHun))
	TriggerAddAction(t, QiuHun_Action)
	t = CreateTrigger()
	TriggerAddRect(t, botong)
	TriggerAddCondition(t, Condition(IsQiuHunWan))
	TriggerAddAction(t, QiuHunWanCheng)
	Io = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Io, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(Io, Condition(QJ))
	TriggerAddAction(Io, RJ)
	lo = CreateTrigger()
	TriggerAddRect(lo, Bg)
	TriggerAddCondition(lo, Condition(TJ))
	TriggerAddAction(lo, UJ)
	Jo = CreateTrigger()
	TriggerAddRect(Jo, Xe)
	TriggerAddCondition(Jo, Condition(WJ))
	TriggerAddAction(Jo, XJ)
	Ko = CreateTrigger()
	TriggerAddRect(Ko, Pe)
	TriggerAddCondition(Ko, Condition(ZJ))
	TriggerAddAction(Ko, dK)
	Lo = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Lo, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(Lo, Condition(fK))
	TriggerAddAction(Lo, gK)
	Mo = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Mo, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(Mo, Condition(iK))
	TriggerAddAction(Mo, jK)
	No = CreateTrigger()
	TriggerAddRect(No, Te)
	TriggerAddCondition(No, Condition(mK))
	TriggerAddAction(No, nK)
	Oo = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Oo, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Oo, Condition(pK))
	TriggerAddAction(Oo, qK)
	Po = CreateTrigger()
	TriggerAddRect(Po, Ve)
	TriggerAddCondition(Po, Condition(sK))
	TriggerAddAction(Po, tK)
	Qo = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Qo, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Qo, Condition(vK))
	TriggerAddAction(Qo, wK)
	Ro = CreateTrigger()
	TriggerAddRect(Ro, Xe)
	TriggerAddCondition(Ro, Condition(yK))
	TriggerAddAction(Ro, zK)
	So = CreateTrigger()
	TriggerAddRect(So, Ye)
	TriggerAddCondition(So, Condition(aK))
	TriggerAddAction(So, BK)
	-- 杀10个西域邪教单位
	To = CreateTrigger()
	TriggerRegisterPlayerUnitEventSimple(To, Player(6), EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(To, Condition(CK))
	TriggerAddAction(To, cK)
	-- 押镖三次奖励
	Uo = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Uo, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(Uo, Condition(EK))
	TriggerAddAction(Uo, FK)
	--接杀熊、桃花岛哑仆的任务
	Vo = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Vo, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(Vo, Condition(HK))
	TriggerAddAction(Vo, IK)

	--升10级自动奖励丹药
	Yo = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Yo, EVENT_PLAYER_HERO_LEVEL)
	TriggerAddCondition(Yo, Condition(PK))
	TriggerAddAction(Yo, QK)
	-- 接断肠草任务
	Zo = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Zo, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(Zo, Condition(SK))
	TriggerAddAction(Zo, TK)
	-- 生成断肠草
	dp = CreateTrigger()
	TriggerRegisterTimerEventSingle(dp, 1.0)
	TriggerAddAction(dp, WK)
	-- 采集到断肠草
	ep = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(ep, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(ep, Condition(YK))
	TriggerAddAction(ep, ZK)
	-- 完成断肠草任务
	fp = CreateTrigger()
	TriggerAddRect(fp, lg)
	TriggerAddCondition(fp, Condition(eL))
	TriggerAddAction(fp, fL)
	-- TODO
	gp = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(gp, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(gp, Condition(hL))
	TriggerAddAction(gp, iL)
	-- 护送耶律楚材任务
	hp = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(hp, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(hp, Condition(kL))
	TriggerAddAction(hp, mL)
	-- 护送耶律楚材任务失败
	jp = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(jp, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(jp, Condition(oL))
	TriggerAddAction(jp, pL)
	-- 完成护送耶律楚材任务
	kp = CreateTrigger()
	TriggerAddRect(kp, gh)
	TriggerAddCondition(kp, Condition(rL))
	TriggerAddAction(kp, sL)
	-- 高昌迷宫任务
	mp = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(mp, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(mp, Condition(uL))
	TriggerAddAction(mp, vL)
	-- 完成高昌迷宫任务
	np = CreateTrigger()
	TriggerAddRect(np, kh)
	TriggerAddCondition(np, Condition(xL))
	TriggerAddAction(np, yL)
	--辽国第一先锋任务+拯救阿紫任务
	op = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(op, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(op, Condition(AL))
	TriggerAddAction(op, aL)
	-- 击败辽国第一先锋、丁春秋、阿紫
	pp = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(pp, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(pp, Condition(bL))
	TriggerAddAction(pp, CL)
	-- 完成辽国军心任务
	qp = CreateTrigger()
	TriggerAddRect(qp, Ye)
	TriggerAddCondition(qp, Condition(DL))
	TriggerAddAction(qp, EL)

	t = nil
end