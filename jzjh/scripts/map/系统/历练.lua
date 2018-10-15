--大战江南七怪
function XQ()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895630 -- INLINED!!
end
function YQ()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = GetRectCenter(tf)
	if GetUnitLevel(u) < 10 then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000等级不足10级无法接取该任务")
	else
		if shengwang[i] < 500 then
			DisplayTextToPlayer(p, 0, 0, "|cFFFF0000江湖声望不足500无法接取该任务")
		else
			if xiuxing[i] >= 1 then
				DisplayTextToPlayer(p, 0, 0, "|cFFFF0000你已经完成这个任务了")
			else
				if J8[i] == 0 then
					J8[i] = 1
					PlaySoundOnUnitBJ(bh, 100, u)
					DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00丘处机：|r |cFF99FFCC请前往挑战|r|cFFADFF2F江南七怪|r\n")
					PingMinimapLocForForce(ov(p), loc, 5.0)
					RemoveLocation(loc)
				else
					DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00丘处机：|r |cFF99FFCC请前往挑战|r|cFFADFF2F江南七怪|r\n")
				end
			end
		end
	end
	u = nil
	p = nil
	loc = nil
end
function dR()
	return J8[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 1 and (GetUnitTypeId(GetTriggerUnit()) == 1870094706 or GetUnitTypeId(GetTriggerUnit()) == 1853305463 or GetUnitTypeId(GetTriggerUnit()) == 1869116782 or GetUnitTypeId(GetTriggerUnit()) == 1869636975 or GetUnitTypeId(GetTriggerUnit()) == 1852794733 or GetUnitTypeId(GetTriggerUnit()) == 1752395634 or GetUnitTypeId(GetTriggerUnit()) == 1853123444)
end
function eR()
	local u = GetKillingUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if GetUnitTypeId(GetTriggerUnit()) == 1870094706 then
		LLguaiA[i] = 1
	end
	if GetUnitTypeId(GetTriggerUnit()) == 1853305463 then
		LLguaiG[i] = 1
		if Ce[i] == 8 then
			if GetRandomReal(1, 100) <= 40.0 then
				createitemloc(1227899702, GetUnitLoc(u))
			end
		else
			if GetRandomReal(1, 100) <= 20.0 then
				createitemloc(1227899702, GetUnitLoc(u))
			end
		end
	end
	if GetUnitTypeId(GetTriggerUnit()) == 1869116782 then
		LLguaiB[i] = 1
	end
	if GetUnitTypeId(GetTriggerUnit()) == 1869636975 then
		LLguaiC[i] = 1
	end
	if GetUnitTypeId(GetTriggerUnit()) == 1852794733 then
		LLguaiD[i] = 1
	end
	if GetUnitTypeId(GetTriggerUnit()) == 1752395634 then
		LLguaiE[i] = 1
	end
	if GetUnitTypeId(GetTriggerUnit()) == 1853123444 then
		LLguaiF[i] = 1
	end
	if LLguaiA[i] == 1 and LLguaiB[i] == 1 and LLguaiC[i] == 1 and LLguaiD[i] == 1 and LLguaiE[i] == 1 and LLguaiF[i] == 1 and LLguaiG[i] == 1 then
		--set shengwang[i]=shengwang[i]+350
		xiuxing[i] = 1
		if GetUnitAbilityLevel(GetKillingUnit(), 1093677905) ~= 0 then
			SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()), 1382576745, 2)
			SetUnitAcquireRange(GetKillingUnit(), 700)
		end
		udg_lilianxishu[i] = 1.7
		danpo[i] = danpo[i] + 1
		gengu[i] = gengu[i] + 1
		fuyuan[i] = fuyuan[i] + 1
		jingmai[i] = jingmai[i] + 1
		wuxing[i] = wuxing[i] + 1
		yishu[i] = yishu[i] + 1
		J8[i] = 2
		PlaySoundOnUnitBJ(Hh, 100, u)
		unitadditembyidswapped(1227895371, u)
		DisplayTextToPlayer(p, 0, 0, "|CFF34FF00完成任务大战江南七怪，修行+1，全性格属性+1，奖励乾坤丹一个")
		if GetRandomInt(1, 30) <= fuyuan[i] - 5 then
			unitadditembyidswapped(gudong[GetRandomInt(1, 3)], u)
			DisplayTextToPlayer(p, 0, 0, "|CFF34FF00你的运气（与福缘有关）太好了，竟然意外获得了一个古董")
		end
	else
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前进度：")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00韩小莹：" .. (I2S(LLguaiE[i]) or "") .. " / 1")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00全金发：" .. (I2S(LLguaiC[i]) or "") .. " / 1")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00张阿生：" .. (I2S(LLguaiF[i]) or "") .. " / 1")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00南希仁：" .. (I2S(LLguaiB[i]) or "") .. " / 1")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00韩宝驹：" .. (I2S(LLguaiD[i]) or "") .. " / 1")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00朱聪：" .. (I2S(LLguaiG[i]) or "") .. " / 1")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00柯镇恶：" .. (I2S(LLguaiA[i]) or "") .. " / 1")
	end
	u = nil
	p = nil
end
--十八罗汉阵
function gR()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895641 -- INLINED!!
end
function hR()
	return GetUnitTypeId(GetFilterUnit()) == 1852862003
end
function iR()
	RemoveUnit(GetEnumUnit())
end
function jR()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	if GetUnitLevel(LoadUnitHandle(YDHT, id * cx, -784714656)) < 25 then
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFF0000等级不足25级无法接取该任务")
	else
		if shengwang[LoadInteger(YDHT, id * cx, -1587459251)] < 1800 then
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFF0000江湖声望不足1800无法接取该任务")
		else
			if xiuxing[LoadInteger(YDHT, id * cx, -1587459251)] < 1 then
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFF0000你必须先完成历练1任务")
				SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Te))
				PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
				RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
			else
				if xiuxing[LoadInteger(YDHT, id * cx, -1587459251)] >= 2 then
					DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFF0000你已经完成这个任务了")
				else
					SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Mf))
					ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(1200.0, LoadLocationHandle(YDHT, id * cx, 1585647951), Condition(hR)), iR)
					SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
					PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
					DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00戒律主持：|r |cFF99FFCC想证明自己的能力就要通关少林|r|cFFADFF2F十八罗汉阵")
					RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
					TriggerSleepAction(2)
					SaveInteger(YDHT, id, -320330265, cx)
					SaveLocationHandle(YDHT, id * cx, 1585647951, GetRandomLocInRect(Mf))
					CreateNUnitsAtLoc(1, 1852862003, Player(12), LoadLocationHandle(YDHT, id * cx, 1585647951), bj_UNIT_FACING)
					RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
					SaveLocationHandle(YDHT, id * cx, 1585647951, GetRandomLocInRect(Mf))
					CreateNUnitsAtLoc(1, 1852862003, Player(12), LoadLocationHandle(YDHT, id * cx, 1585647951), bj_UNIT_FACING)
					RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
					SaveLocationHandle(YDHT, id * cx, 1585647951, GetRandomLocInRect(Mf))
					CreateNUnitsAtLoc(1, 1852862003, Player(12), LoadLocationHandle(YDHT, id * cx, 1585647951), bj_UNIT_FACING)
					RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
					SaveLocationHandle(YDHT, id * cx, 1585647951, GetRandomLocInRect(Mf))
					CreateNUnitsAtLoc(1, 1852862003, Player(12), LoadLocationHandle(YDHT, id * cx, 1585647951), bj_UNIT_FACING)
					RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
					TriggerSleepAction(4.0)
					SaveInteger(YDHT, id, -320330265, cx)
					SaveLocationHandle(YDHT, id * cx, 1585647951, GetRandomLocInRect(Mf))
					CreateNUnitsAtLoc(1, 1852862003, Player(12), LoadLocationHandle(YDHT, id * cx, 1585647951), bj_UNIT_FACING)
					RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
					SaveLocationHandle(YDHT, id * cx, 1585647951, GetRandomLocInRect(Mf))
					CreateNUnitsAtLoc(1, 1852862003, Player(12), LoadLocationHandle(YDHT, id * cx, 1585647951), bj_UNIT_FACING)
					RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
					SaveLocationHandle(YDHT, id * cx, 1585647951, GetRandomLocInRect(Mf))
					CreateNUnitsAtLoc(1, 1852862003, Player(12), LoadLocationHandle(YDHT, id * cx, 1585647951), bj_UNIT_FACING)
					RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
					SaveLocationHandle(YDHT, id * cx, 1585647951, GetRandomLocInRect(Mf))
					CreateNUnitsAtLoc(1, 1852862003, Player(12), LoadLocationHandle(YDHT, id * cx, 1585647951), bj_UNIT_FACING)
					RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
					SaveLocationHandle(YDHT, id * cx, 1585647951, GetRandomLocInRect(Mf))
					CreateNUnitsAtLoc(1, 1852862003, Player(12), LoadLocationHandle(YDHT, id * cx, 1585647951), bj_UNIT_FACING)
					RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
					SaveLocationHandle(YDHT, id * cx, 1585647951, GetRandomLocInRect(Mf))
					CreateNUnitsAtLoc(1, 1852862003, Player(12), LoadLocationHandle(YDHT, id * cx, 1585647951), bj_UNIT_FACING)
					RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
					TriggerSleepAction(6.0)
					SaveInteger(YDHT, id, -320330265, cx)
					SaveLocationHandle(YDHT, id * cx, 1585647951, GetRandomLocInRect(Mf))
					CreateNUnitsAtLoc(1, 1852862003, Player(12), LoadLocationHandle(YDHT, id * cx, 1585647951), bj_UNIT_FACING)
					RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
					SaveLocationHandle(YDHT, id * cx, 1585647951, GetRandomLocInRect(Mf))
					CreateNUnitsAtLoc(1, 1852862003, Player(12), LoadLocationHandle(YDHT, id * cx, 1585647951), bj_UNIT_FACING)
					RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
					SaveLocationHandle(YDHT, id * cx, 1585647951, GetRandomLocInRect(Mf))
					CreateNUnitsAtLoc(1, 1852862003, Player(12), LoadLocationHandle(YDHT, id * cx, 1585647951), bj_UNIT_FACING)
					RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
					SaveLocationHandle(YDHT, id * cx, 1585647951, GetRandomLocInRect(Mf))
					CreateNUnitsAtLoc(1, 1852862003, Player(12), LoadLocationHandle(YDHT, id * cx, 1585647951), bj_UNIT_FACING)
					RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
					SaveLocationHandle(YDHT, id * cx, 1585647951, GetRandomLocInRect(Mf))
					CreateNUnitsAtLoc(1, 1852862003, Player(12), LoadLocationHandle(YDHT, id * cx, 1585647951), bj_UNIT_FACING)
					RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
					SaveLocationHandle(YDHT, id * cx, 1585647951, GetRandomLocInRect(Mf))
					CreateNUnitsAtLoc(1, 1852862003, Player(12), LoadLocationHandle(YDHT, id * cx, 1585647951), bj_UNIT_FACING)
					RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
					SaveLocationHandle(YDHT, id * cx, 1585647951, GetRandomLocInRect(Mf))
					CreateNUnitsAtLoc(1, 1852862003, Player(12), LoadLocationHandle(YDHT, id * cx, 1585647951), bj_UNIT_FACING)
					RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
					SaveLocationHandle(YDHT, id * cx, 1585647951, GetRandomLocInRect(Mf))
					CreateNUnitsAtLoc(1, 1852862003, Player(12), LoadLocationHandle(YDHT, id * cx, 1585647951), bj_UNIT_FACING)
					RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
				end
			end
		end
	end
	FlushChildHashtable(YDHT, id * cx)
end
function mR()
	return GetUnitTypeId(GetTriggerUnit()) == 1852862003 and xiuxing[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 1
end
function nR()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit())))
	N8[LoadInteger(YDHT, id * cx, -1587459251)] = N8[LoadInteger(YDHT, id * cx, -1587459251)] + 1
	if N8[LoadInteger(YDHT, id * cx, -1587459251)] >= 18 then
		xiuxing[LoadInteger(YDHT, id * cx, -1587459251)] = 2
		if GetUnitAbilityLevel(GetKillingUnit(), 1093677905) ~= 0 then
			SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()), 1382576745, 3)
			SetUnitAcquireRange(GetKillingUnit(), 800)
		end
		udg_lilianxishu[LoadInteger(YDHT, id * cx, -1587459251)] = 2.6
		danpo[LoadInteger(YDHT, id * cx, -1587459251)] = danpo[LoadInteger(YDHT, id * cx, -1587459251)] + 1
		gengu[LoadInteger(YDHT, id * cx, -1587459251)] = gengu[LoadInteger(YDHT, id * cx, -1587459251)] + 1
		fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] = fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] + 1
		jingmai[LoadInteger(YDHT, id * cx, -1587459251)] = jingmai[LoadInteger(YDHT, id * cx, -1587459251)] + 1
		wuxing[LoadInteger(YDHT, id * cx, -1587459251)] = wuxing[LoadInteger(YDHT, id * cx, -1587459251)] + 1
		yishu[LoadInteger(YDHT, id * cx, -1587459251)] = yishu[LoadInteger(YDHT, id * cx, -1587459251)] + 1
		PlaySoundOnUnitBJ(Hh, 100, GetKillingUnit())
		if udg_runamen[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] ~= 11 then
			unitadditembyidswapped(1227895642, GetKillingUnit())
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务十八罗汉阵，获得修行+1，全性格属性+1，门派毕业卷")
		else
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务十八罗汉阵，获得修行+1，全性格属性+1")
		end
	else
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "十八罗汉：" .. (I2S(N8[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 18")
	end
	FlushChildHashtable(YDHT, id * cx)
end
--十恶不赦
function sR()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895879 -- INLINED!!
end
function tR()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	if GetUnitLevel(LoadUnitHandle(YDHT, id * cx, -784714656)) < 40 then
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFF0000等级不足40级无法接取该任务")
	else
		if shengwang[LoadInteger(YDHT, id * cx, -1587459251)] < 3200 then
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFF0000江湖声望不足3200无法接取该任务")
		else
			if xiuxing[LoadInteger(YDHT, id * cx, -1587459251)] < 2 then
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFF0000你必须先完成历练2任务")
				SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(ag))
				PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
				RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
			else
				if xiuxing[LoadInteger(YDHT, id * cx, -1587459251)] >= 3 then
					DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFF0000你已经完成这个任务了")
				else
					if h9[LoadInteger(YDHT, id * cx, -1587459251)] then
						SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Ag))
						SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
						PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00黄蓉：|r|cFFADFF2F十恶不赦 |r|cFF99FFCC危害武林江湖多年，你须在|r|cFFADFF2F2分钟内|r|cFF99FFCC击杀超过100只，才能完成任务")
						RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
					else
						SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Ag))
						SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
						PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00黄蓉：|r|cFFADFF2F十恶不赦 |r|cFF99FFCC危害武林江湖多年，你须在|r|cFFADFF2F150秒内|r|cFF99FFCC击杀超过100只，才能完成任务")
						RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
						StartTimerBJ(f9[LoadInteger(YDHT, id * cx, -1587459251)], false, 150.0)
						CreateTimerDialogBJ(bj_lastStartedTimer, "闯关倒计时:")
						TimerDialogDisplayForPlayerBJ(true, bj_lastCreatedTimerDialog, GetOwningPlayer(GetTriggerUnit()))
						g9[LoadInteger(YDHT, id * cx, -1587459251)] = bj_lastCreatedTimerDialog
						h9[LoadInteger(YDHT, id * cx, -1587459251)] = true
						i9[LoadInteger(YDHT, id * cx, -1587459251)] = 0
					end
				end
			end
		end
	end
	FlushChildHashtable(YDHT, id * cx)
end
function vR()
	return GetUnitTypeId(GetTriggerUnit()) == 1852077154 and h9[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))]
end
function wR()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit())))
	i9[LoadInteger(YDHT, id * cx, -1587459251)] = i9[LoadInteger(YDHT, id * cx, -1587459251)] + 1
	if i9[LoadInteger(YDHT, id * cx, -1587459251)] >= 100 then
		PlaySoundOnUnitBJ(Hh, 100, GetKillingUnit())
		xiuxing[LoadInteger(YDHT, id * cx, -1587459251)] = 3
		if GetUnitAbilityLevel(GetKillingUnit(), 1093677905) ~= 0 then
			SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()), 1382576745, 4)
			SetUnitAcquireRange(GetKillingUnit(), 900)
		end
		udg_lilianxishu[LoadInteger(YDHT, id * cx, -1587459251)] = 4.2
		danpo[LoadInteger(YDHT, id * cx, -1587459251)] = danpo[LoadInteger(YDHT, id * cx, -1587459251)] + 1
		gengu[LoadInteger(YDHT, id * cx, -1587459251)] = gengu[LoadInteger(YDHT, id * cx, -1587459251)] + 1
		fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] = fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] + 1
		jingmai[LoadInteger(YDHT, id * cx, -1587459251)] = jingmai[LoadInteger(YDHT, id * cx, -1587459251)] + 1
		wuxing[LoadInteger(YDHT, id * cx, -1587459251)] = wuxing[LoadInteger(YDHT, id * cx, -1587459251)] + 1
		yishu[LoadInteger(YDHT, id * cx, -1587459251)] = yishu[LoadInteger(YDHT, id * cx, -1587459251)] + 1
		h9[LoadInteger(YDHT, id * cx, -1587459251)] = false
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务勇闯十恶不赦岛，获得修行+1，全性格属性+1，脱胎换骨丹1个，你可以前往藏经阁了")
		DestroyTimerDialog(g9[LoadInteger(YDHT, id * cx, -1587459251)])
		DestroyTimer(f9[LoadInteger(YDHT, id * cx, -1587459251)])
		SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Bg))
		SetUnitPositionLoc(udg_hero[LoadInteger(YDHT, id * cx, -1587459251)], LoadLocationHandle(YDHT, id * cx, 1585647951))
		PanCameraToTimedLocForPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
		unitadditembyidswapped(1227895374, GetKillingUnit())
	else
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "十恶不赦：" .. (I2S(i9[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 100")
	end
	FlushChildHashtable(YDHT, id * cx)
end
function yR()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1676716706, 1)
	DestroyTimerDialog(g9[LoadInteger(YDHT, id * cx, -1676716706)])
	if RectContainsUnit(bg, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)]) then
		SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Bg))
		SetUnitPositionLoc(udg_hero[LoadInteger(YDHT, id * cx, -1676716706)], LoadLocationHandle(YDHT, id * cx, 1585647951))
		PanCameraToTimedLocForPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	end
	DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), 0, 0, "|cFFFF0000时间到，任务失败了")
	h9[LoadInteger(YDHT, id * cx, -1676716706)] = false
	PlaySoundOnUnitBJ(Gh, 100, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)])
	FlushChildHashtable(YDHT, id * cx)
end
function AR()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1676716706, 2)
	DestroyTimerDialog(g9[LoadInteger(YDHT, id * cx, -1676716706)])
	if RectContainsUnit(bg, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)]) then
		SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Bg))
		SetUnitPositionLoc(udg_hero[LoadInteger(YDHT, id * cx, -1676716706)], LoadLocationHandle(YDHT, id * cx, 1585647951))
		PanCameraToTimedLocForPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	end
	DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), 0, 0, "|cFFFF0000时间到，任务失败了")
	h9[LoadInteger(YDHT, id * cx, -1676716706)] = false
	PlaySoundOnUnitBJ(Gh, 100, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)])
	FlushChildHashtable(YDHT, id * cx)
end
function BR()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1676716706, 3)
	DestroyTimerDialog(g9[LoadInteger(YDHT, id * cx, -1676716706)])
	if RectContainsUnit(bg, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)]) then
		SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Bg))
		SetUnitPositionLoc(udg_hero[LoadInteger(YDHT, id * cx, -1676716706)], LoadLocationHandle(YDHT, id * cx, 1585647951))
		PanCameraToTimedLocForPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	end
	DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), 0, 0, "|cFFFF0000时间到，任务失败了")
	h9[LoadInteger(YDHT, id * cx, -1676716706)] = false
	PlaySoundOnUnitBJ(Gh, 100, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)])
	FlushChildHashtable(YDHT, id * cx)
end
function CR()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1676716706, 4)
	DestroyTimerDialog(g9[LoadInteger(YDHT, id * cx, -1676716706)])
	if RectContainsUnit(bg, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)]) then
		SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Bg))
		SetUnitPositionLoc(udg_hero[LoadInteger(YDHT, id * cx, -1676716706)], LoadLocationHandle(YDHT, id * cx, 1585647951))
		PanCameraToTimedLocForPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	end
	DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), 0, 0, "|cFFFF0000时间到，任务失败了")
	h9[LoadInteger(YDHT, id * cx, -1676716706)] = false
	PlaySoundOnUnitBJ(Gh, 100, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)])
	FlushChildHashtable(YDHT, id * cx)
end
function DR()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1676716706, 5)
	DestroyTimerDialog(g9[LoadInteger(YDHT, id * cx, -1676716706)])
	if RectContainsUnit(bg, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)]) then
		SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Bg))
		SetUnitPositionLoc(udg_hero[LoadInteger(YDHT, id * cx, -1676716706)], LoadLocationHandle(YDHT, id * cx, 1585647951))
		PanCameraToTimedLocForPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	end
	DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), 0, 0, "|cFFFF0000时间到，任务失败了")
	h9[LoadInteger(YDHT, id * cx, -1676716706)] = false
	PlaySoundOnUnitBJ(Gh, 100, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)])
	FlushChildHashtable(YDHT, id * cx)
end
--挑战光明顶
function FR()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895893 -- INLINED!!
end
function GR()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	if GetUnitLevel(LoadUnitHandle(YDHT, id * cx, -784714656)) < 55 then
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFF0000等级不足55级无法接取该任务")
	else
		if shengwang[LoadInteger(YDHT, id * cx, -1587459251)] < 5500 then
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFF0000江湖声望不足5500无法接取该任务")
		else
			if xiuxing[LoadInteger(YDHT, id * cx, -1587459251)] < 3 then
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFF0000你必须先完成历练3任务")
				SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Bg))
				PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
				RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
			else
				if xiuxing[LoadInteger(YDHT, id * cx, -1587459251)] >= 4 then
					DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFF0000你已经完成这个任务了")
				else
					if T9[LoadInteger(YDHT, id * cx, -1587459251)] then
						SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Jg))
						SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
						PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00当前进度：")
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00紫杉龙王：" .. (I2S(LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00青翼蝠王：" .. (I2S(LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00金毛狮王：" .. (I2S(LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00白眉鹰王：" .. (I2S(LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00阳顶天：" .. (I2S(LLguaiE[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
						RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
					else
						SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Jg))
						SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
						PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
						RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
						LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)] = 0
						LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)] = 0
						LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)] = 0
						LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)] = 0
						LLguaiE[LoadInteger(YDHT, id * cx, -1587459251)] = 0
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00当前进度：")
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00紫杉龙王：" .. (I2S(LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00青翼蝠王：" .. (I2S(LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00金毛狮王：" .. (I2S(LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00白眉鹰王：" .. (I2S(LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00阳顶天：" .. (I2S(LLguaiE[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
						StartTimerBJ(Z9[LoadInteger(YDHT, id * cx, -1587459251)], false, 240.0)
						CreateTimerDialogBJ(bj_lastStartedTimer, "攻打光明顶倒计时:")
						TimerDialogDisplayForPlayerBJ(true, bj_lastCreatedTimerDialog, GetOwningPlayer(GetTriggerUnit()))
						dd[LoadInteger(YDHT, id * cx, -1587459251)] = bj_lastCreatedTimerDialog
						T9[LoadInteger(YDHT, id * cx, -1587459251)] = true
					end
				end
			end
		end
	end
	FlushChildHashtable(YDHT, id * cx)
end
function IR()
	return GetUnitTypeId(GetTriggerUnit()) == 1853056884 and T9[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))]
end
function lR()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit())))
	if LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)] == 0 then
		LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)] = 1
		if LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)] == 1 and LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)] == 1 and LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)] == 1 and LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)] == 1 and LLguaiE[LoadInteger(YDHT, id * cx, -1587459251)] == 1 then
			PlaySoundOnUnitBJ(Hh, 100, GetKillingUnit())
			xiuxing[LoadInteger(YDHT, id * cx, -1587459251)] = 4
			if GetUnitAbilityLevel(GetKillingUnit(), 1093677905) ~= 0 then
				SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()), 1382576745, 5)
				SetUnitAcquireRange(GetKillingUnit(), 1000)
			end
			udg_lilianxishu[LoadInteger(YDHT, id * cx, -1587459251)] = 7.0
			T9[LoadInteger(YDHT, id * cx, -1587459251)] = false
			danpo[LoadInteger(YDHT, id * cx, -1587459251)] = danpo[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			gengu[LoadInteger(YDHT, id * cx, -1587459251)] = gengu[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] = fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			jingmai[LoadInteger(YDHT, id * cx, -1587459251)] = jingmai[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			wuxing[LoadInteger(YDHT, id * cx, -1587459251)] = wuxing[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			yishu[LoadInteger(YDHT, id * cx, -1587459251)] = yishu[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务勇闯光明顶，获得修行+1，全性格属性+1，你可以前往逍遥宫了")
			DestroyTimerDialog(dd[LoadInteger(YDHT, id * cx, -1587459251)])
			DestroyTimer(Z9[LoadInteger(YDHT, id * cx, -1587459251)])
			SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Lg))
			SetUnitPositionLoc(udg_hero[LoadInteger(YDHT, id * cx, -1587459251)], LoadLocationHandle(YDHT, id * cx, 1585647951))
			PanCameraToTimedLocForPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
			RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
		else
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00当前进度：")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00紫杉龙王：" .. (I2S(LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00青翼蝠王：" .. (I2S(LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00金毛狮王：" .. (I2S(LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00白眉鹰王：" .. (I2S(LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00阳顶天：" .. (I2S(LLguaiE[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
		end
	else
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00当前进度：")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00紫杉龙王：" .. (I2S(LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00青翼蝠王：" .. (I2S(LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00金毛狮王：" .. (I2S(LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00白眉鹰王：" .. (I2S(LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00阳顶天：" .. (I2S(LLguaiE[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
	end
	FlushChildHashtable(YDHT, id * cx)
end
function KR()
	return GetUnitTypeId(GetTriggerUnit()) == 1853056866 and T9[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))]
end
function LR()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit())))
	if LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)] == 0 then
		LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)] = 1
		if LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)] == 1 and LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)] == 1 and LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)] == 1 and LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)] == 1 and LLguaiE[LoadInteger(YDHT, id * cx, -1587459251)] == 1 then
			PlaySoundOnUnitBJ(Hh, 100, GetKillingUnit())
			xiuxing[LoadInteger(YDHT, id * cx, -1587459251)] = 4
			if GetUnitAbilityLevel(GetKillingUnit(), 1093677905) ~= 0 then
				SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()), 1382576745, 5)
				SetUnitAcquireRange(GetKillingUnit(), 1000)
			end
			udg_lilianxishu[LoadInteger(YDHT, id * cx, -1587459251)] = 7.0
			T9[LoadInteger(YDHT, id * cx, -1587459251)] = false
			danpo[LoadInteger(YDHT, id * cx, -1587459251)] = danpo[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			gengu[LoadInteger(YDHT, id * cx, -1587459251)] = gengu[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] = fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			jingmai[LoadInteger(YDHT, id * cx, -1587459251)] = jingmai[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			wuxing[LoadInteger(YDHT, id * cx, -1587459251)] = wuxing[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			yishu[LoadInteger(YDHT, id * cx, -1587459251)] = yishu[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务勇闯光明顶，获得修行+1，全性格属性+1，你可以前往逍遥宫了")
			DestroyTimerDialog(dd[LoadInteger(YDHT, id * cx, -1587459251)])
			DestroyTimer(Z9[LoadInteger(YDHT, id * cx, -1587459251)])
			SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Lg))
			SetUnitPositionLoc(udg_hero[LoadInteger(YDHT, id * cx, -1587459251)], LoadLocationHandle(YDHT, id * cx, 1585647951))
			PanCameraToTimedLocForPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
			RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
		else
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00当前进度：")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00紫杉龙王：" .. (I2S(LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00青翼蝠王：" .. (I2S(LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00金毛狮王：" .. (I2S(LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00白眉鹰王：" .. (I2S(LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00阳顶天：" .. (I2S(LLguaiE[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
		end
	else
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00当前进度：")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00紫杉龙王：" .. (I2S(LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00青翼蝠王：" .. (I2S(LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00金毛狮王：" .. (I2S(LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00白眉鹰王：" .. (I2S(LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00阳顶天：" .. (I2S(LLguaiE[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
	end
	FlushChildHashtable(YDHT, id * cx)
end
function NR()
	return GetUnitTypeId(GetTriggerUnit()) == 1853056878 and T9[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))]
end
function OR()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit())))
	if LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)] == 0 then
		LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)] = 1
		if LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)] == 1 and LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)] == 1 and LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)] == 1 and LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)] == 1 and LLguaiE[LoadInteger(YDHT, id * cx, -1587459251)] == 1 then
			PlaySoundOnUnitBJ(Hh, 100, GetKillingUnit())
			xiuxing[LoadInteger(YDHT, id * cx, -1587459251)] = 4
			if GetUnitAbilityLevel(GetKillingUnit(), 1093677905) ~= 0 then
				SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()), 1382576745, 5)
				SetUnitAcquireRange(GetKillingUnit(), 1000)
			end
			udg_lilianxishu[LoadInteger(YDHT, id * cx, -1587459251)] = 7.0
			T9[LoadInteger(YDHT, id * cx, -1587459251)] = false
			danpo[LoadInteger(YDHT, id * cx, -1587459251)] = danpo[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			gengu[LoadInteger(YDHT, id * cx, -1587459251)] = gengu[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] = fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			jingmai[LoadInteger(YDHT, id * cx, -1587459251)] = jingmai[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			wuxing[LoadInteger(YDHT, id * cx, -1587459251)] = wuxing[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			yishu[LoadInteger(YDHT, id * cx, -1587459251)] = yishu[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务勇闯光明顶，获得修行+1，全性格属性+1，你可以前往逍遥宫了")
			DestroyTimerDialog(dd[LoadInteger(YDHT, id * cx, -1587459251)])
			DestroyTimer(Z9[LoadInteger(YDHT, id * cx, -1587459251)])
			SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Lg))
			SetUnitPositionLoc(udg_hero[LoadInteger(YDHT, id * cx, -1587459251)], LoadLocationHandle(YDHT, id * cx, 1585647951))
			PanCameraToTimedLocForPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
			RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
		else
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00当前进度：")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00紫杉龙王：" .. (I2S(LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00青翼蝠王：" .. (I2S(LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00金毛狮王：" .. (I2S(LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00白眉鹰王：" .. (I2S(LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00阳顶天：" .. (I2S(LLguaiE[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
		end
	else
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00当前进度：")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00紫杉龙王：" .. (I2S(LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00青翼蝠王：" .. (I2S(LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00金毛狮王：" .. (I2S(LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00白眉鹰王：" .. (I2S(LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00阳顶天：" .. (I2S(LLguaiE[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
	end
	FlushChildHashtable(YDHT, id * cx)
end
function QR()
	return GetUnitTypeId(GetTriggerUnit()) == 1853123427 and T9[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))]
end
function RR()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit())))
	if LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)] == 0 then
		LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)] = 1
		if LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)] == 1 and LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)] == 1 and LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)] == 1 and LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)] == 1 and LLguaiE[LoadInteger(YDHT, id * cx, -1587459251)] == 1 then
			PlaySoundOnUnitBJ(Hh, 100, GetKillingUnit())
			xiuxing[LoadInteger(YDHT, id * cx, -1587459251)] = 4
			if GetUnitAbilityLevel(GetKillingUnit(), 1093677905) ~= 0 then
				SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()), 1382576745, 5)
				SetUnitAcquireRange(GetKillingUnit(), 1000)
			end
			udg_lilianxishu[LoadInteger(YDHT, id * cx, -1587459251)] = 7.0
			T9[LoadInteger(YDHT, id * cx, -1587459251)] = false
			danpo[LoadInteger(YDHT, id * cx, -1587459251)] = danpo[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			gengu[LoadInteger(YDHT, id * cx, -1587459251)] = gengu[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] = fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			jingmai[LoadInteger(YDHT, id * cx, -1587459251)] = jingmai[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			wuxing[LoadInteger(YDHT, id * cx, -1587459251)] = wuxing[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			yishu[LoadInteger(YDHT, id * cx, -1587459251)] = yishu[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务勇闯光明顶，获得修行+1，全性格属性+1，你可以前往逍遥宫了")
			DestroyTimerDialog(dd[LoadInteger(YDHT, id * cx, -1587459251)])
			DestroyTimer(Z9[LoadInteger(YDHT, id * cx, -1587459251)])
			SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Lg))
			SetUnitPositionLoc(udg_hero[LoadInteger(YDHT, id * cx, -1587459251)], LoadLocationHandle(YDHT, id * cx, 1585647951))
			PanCameraToTimedLocForPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
			RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
		else
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00当前进度：")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00紫杉龙王：" .. (I2S(LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00青翼蝠王：" .. (I2S(LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00金毛狮王：" .. (I2S(LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00白眉鹰王：" .. (I2S(LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00阳顶天：" .. (I2S(LLguaiE[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
		end
	else
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00当前进度：")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00紫杉龙王：" .. (I2S(LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00青翼蝠王：" .. (I2S(LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00金毛狮王：" .. (I2S(LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00白眉鹰王：" .. (I2S(LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00阳顶天：" .. (I2S(LLguaiE[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
	end
	FlushChildHashtable(YDHT, id * cx)
end
function TR()
	return GetUnitTypeId(GetTriggerUnit()) == 1853323890 and T9[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))]
end
function UR()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit())))
	if LLguaiE[LoadInteger(YDHT, id * cx, -1587459251)] == 0 then
		LLguaiE[LoadInteger(YDHT, id * cx, -1587459251)] = 1
		if LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)] == 1 and LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)] == 1 and LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)] == 1 and LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)] == 1 and LLguaiE[LoadInteger(YDHT, id * cx, -1587459251)] == 1 then
			PlaySoundOnUnitBJ(Hh, 100, GetKillingUnit())
			xiuxing[LoadInteger(YDHT, id * cx, -1587459251)] = 4
			if GetUnitAbilityLevel(GetKillingUnit(), 1093677905) ~= 0 then
				SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()), 1382576745, 5)
				SetUnitAcquireRange(GetKillingUnit(), 1000)
			end
			udg_lilianxishu[LoadInteger(YDHT, id * cx, -1587459251)] = 7.0
			T9[LoadInteger(YDHT, id * cx, -1587459251)] = false
			danpo[LoadInteger(YDHT, id * cx, -1587459251)] = danpo[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			gengu[LoadInteger(YDHT, id * cx, -1587459251)] = gengu[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] = fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			jingmai[LoadInteger(YDHT, id * cx, -1587459251)] = jingmai[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			wuxing[LoadInteger(YDHT, id * cx, -1587459251)] = wuxing[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			yishu[LoadInteger(YDHT, id * cx, -1587459251)] = yishu[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务勇闯光明顶，获得修行+1，全性格属性+1，你可以前往逍遥宫了")
			DestroyTimerDialog(dd[LoadInteger(YDHT, id * cx, -1587459251)])
			DestroyTimer(Z9[LoadInteger(YDHT, id * cx, -1587459251)])
			SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Lg))
			SetUnitPositionLoc(udg_hero[LoadInteger(YDHT, id * cx, -1587459251)], LoadLocationHandle(YDHT, id * cx, 1585647951))
			PanCameraToTimedLocForPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
			RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
		else
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00当前进度：")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00紫杉龙王：" .. (I2S(LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00青翼蝠王：" .. (I2S(LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00金毛狮王：" .. (I2S(LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00白眉鹰王：" .. (I2S(LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00阳顶天：" .. (I2S(LLguaiE[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
		end
	else
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00当前进度：")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00紫杉龙王：" .. (I2S(LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00青翼蝠王：" .. (I2S(LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00金毛狮王：" .. (I2S(LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00白眉鹰王：" .. (I2S(LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00阳顶天：" .. (I2S(LLguaiE[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 1")
	end
	FlushChildHashtable(YDHT, id * cx)
end
--任务失败
function WR()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1676716706, 1)
	DestroyTimerDialog(dd[LoadInteger(YDHT, id * cx, -1676716706)])
	if RectContainsUnit(Kg, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)]) then
		SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Lg))
		SetUnitPositionLoc(udg_hero[LoadInteger(YDHT, id * cx, -1676716706)], LoadLocationHandle(YDHT, id * cx, 1585647951))
		PanCameraToTimedLocForPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	end
	DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), 0, 0, "|cFFFF0000时间到，任务失败了")
	T9[LoadInteger(YDHT, id * cx, -1676716706)] = false
	PlaySoundOnUnitBJ(Gh, 100, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)])
	FlushChildHashtable(YDHT, id * cx)
end
function YR()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1676716706, 2)
	DestroyTimerDialog(dd[LoadInteger(YDHT, id * cx, -1676716706)])
	if RectContainsUnit(Kg, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)]) then
		SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Lg))
		SetUnitPositionLoc(udg_hero[LoadInteger(YDHT, id * cx, -1676716706)], LoadLocationHandle(YDHT, id * cx, 1585647951))
		PanCameraToTimedLocForPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	end
	DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), 0, 0, "|cFFFF0000时间到，任务失败了")
	T9[LoadInteger(YDHT, id * cx, -1676716706)] = false
	PlaySoundOnUnitBJ(Gh, 100, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)])
	FlushChildHashtable(YDHT, id * cx)
end
function dS()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1676716706, 3)
	DestroyTimerDialog(dd[LoadInteger(YDHT, id * cx, -1676716706)])
	if RectContainsUnit(Kg, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)]) then
		SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Lg))
		SetUnitPositionLoc(udg_hero[LoadInteger(YDHT, id * cx, -1676716706)], LoadLocationHandle(YDHT, id * cx, 1585647951))
		PanCameraToTimedLocForPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	end
	DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), 0, 0, "|cFFFF0000时间到，任务失败了")
	T9[LoadInteger(YDHT, id * cx, -1676716706)] = false
	PlaySoundOnUnitBJ(Gh, 100, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)])
	FlushChildHashtable(YDHT, id * cx)
end
function fS()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1676716706, 4)
	DestroyTimerDialog(dd[LoadInteger(YDHT, id * cx, -1676716706)])
	if RectContainsUnit(Kg, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)]) then
		SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Lg))
		SetUnitPositionLoc(udg_hero[LoadInteger(YDHT, id * cx, -1676716706)], LoadLocationHandle(YDHT, id * cx, 1585647951))
		PanCameraToTimedLocForPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	end
	DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), 0, 0, "|cFFFF0000时间到，任务失败了")
	T9[LoadInteger(YDHT, id * cx, -1676716706)] = false
	PlaySoundOnUnitBJ(Gh, 100, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)])
	FlushChildHashtable(YDHT, id * cx)
end
function hS()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1676716706, 5)
	DestroyTimerDialog(dd[LoadInteger(YDHT, id * cx, -1676716706)])
	if RectContainsUnit(Kg, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)]) then
		SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Lg))
		SetUnitPositionLoc(udg_hero[LoadInteger(YDHT, id * cx, -1676716706)], LoadLocationHandle(YDHT, id * cx, 1585647951))
		PanCameraToTimedLocForPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	end
	DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), 0, 0, "|cFFFF0000时间到，任务失败了")
	T9[LoadInteger(YDHT, id * cx, -1676716706)] = false
	PlaySoundOnUnitBJ(Gh, 100, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)])
	FlushChildHashtable(YDHT, id * cx)
end
--华山论剑
function jS()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895896 -- INLINED!!
end
function kS()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	if GetUnitLevel(LoadUnitHandle(YDHT, id * cx, -784714656)) < 70 then
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFF0000等级不足70级无法接取该任务")
	else
		if shengwang[LoadInteger(YDHT, id * cx, -1587459251)] < 7500 then
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFF0000江湖声望不足7500无法接取该任务")
		else
			if xiuxing[LoadInteger(YDHT, id * cx, -1587459251)] < 4 then
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFF0000你必须先完成历练4任务")
				SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Lg))
				PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
				RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
			else
				if xiuxing[LoadInteger(YDHT, id * cx, -1587459251)] >= 5 then
					DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFF0000你已经完成这个任务了")
				else
					if ed[LoadInteger(YDHT, id * cx, -1587459251)] then
						SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Qg))
						SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
						PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00当前进度：")
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00黄药师：" .. (I2S(LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)] - 1) or "") .. " / 1")
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00欧阳锋：" .. (I2S(LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)] - 1) or "") .. " / 1")
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00一灯大师：" .. (I2S(LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)] - 1) or "") .. " / 1")
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00洪七公：" .. (I2S(LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)] - 1) or "") .. " / 1")
						RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
					else
						SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Qg))
						SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
						PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
						RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
						LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)] = 1
						LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)] = 1
						LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)] = 1
						LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)] = 1
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00当前进度：")
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00黄药师：" .. (I2S(LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)] - 1) or "") .. " / 1")
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00欧阳锋：" .. (I2S(LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)] - 1) or "") .. " / 1")
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00一灯大师：" .. (I2S(LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)] - 1) or "") .. " / 1")
						DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00洪七公：" .. (I2S(LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)] - 1) or "") .. " / 1")
						StartTimerBJ(fd[LoadInteger(YDHT, id * cx, -1587459251)], false, 280.0)
						CreateTimerDialogBJ(bj_lastStartedTimer, "华山论剑倒计时")
						TimerDialogDisplayForPlayerBJ(true, bj_lastCreatedTimerDialog, GetOwningPlayer(GetTriggerUnit()))
						gd[LoadInteger(YDHT, id * cx, -1587459251)] = bj_lastCreatedTimerDialog
						ed[LoadInteger(YDHT, id * cx, -1587459251)] = true
					end
				end
			end
		end
	end
	FlushChildHashtable(YDHT, id * cx)
end
function nS()
	return GetUnitTypeId(GetTriggerUnit()) == 1869050475 and ed[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))]
end
function oS()
	local u = GetKillingUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = nil
	if LLguaiA[i] == 1 then
		LLguaiA[i] = 2
		if LLguaiA[i] == 2 and LLguaiB[i] == 2 and LLguaiC[i] == 2 and LLguaiD[i] == 2 then
			PlaySoundOnUnitBJ(Hh, 100, GetKillingUnit())
			xiuxing[i] = 5
			if GetUnitAbilityLevel(GetKillingUnit(), 1093677905) ~= 0 then
				SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()), 1382576745, 6)
				SetUnitAcquireRange(GetKillingUnit(), 1100)
			end
			udg_lilianxishu[i] = 12.0
			ed[i] = false
			danpo[i] = danpo[i] + 1
			gengu[i] = gengu[i] + 1
			fuyuan[i] = fuyuan[i] + 1
			jingmai[i] = jingmai[i] + 1
			wuxing[i] = wuxing[i] + 1
			yishu[i] = yishu[i] + 1
			DisplayTextToPlayer(p, 0, 0, "|CFF34FF00完成任务华山论剑，获得修行+1全性格属性+1，你可以前往黑木崖了")
			DestroyTimerDialog(gd[i])
			loc = GetRectCenter(Rg)
			SetUnitPositionLoc(udg_hero[i], loc)
			PanCameraToTimedLocForPlayer(p, loc, 0)
			RemoveLocation(loc)
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前进度：")
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00黄药师：" .. (I2S(LLguaiA[i] - 1) or "") .. " / 1")
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00欧阳锋：" .. (I2S(LLguaiB[i] - 1) or "") .. " / 1")
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00一灯大师：" .. (I2S(LLguaiC[i] - 1) or "") .. " / 1")
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00洪七公：" .. (I2S(LLguaiD[i] - 1) or "") .. " / 1")
		end
	else
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前进度：")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00黄药师：" .. (I2S(LLguaiA[i] - 1) or "") .. " / 1")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00欧阳锋：" .. (I2S(LLguaiB[i] - 1) or "") .. " / 1")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00一灯大师：" .. (I2S(LLguaiC[i] - 1) or "") .. " / 1")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00洪七公：" .. (I2S(LLguaiD[i] - 1) or "") .. " / 1")
	end
	u = nil
	p = nil
	loc = nil
end
function qS()
	return GetUnitTypeId(GetTriggerUnit()) == 1853058150 and ed[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))]
end
function rS()
	local u = GetKillingUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = nil
	if LLguaiB[i] == 1 then
		LLguaiB[i] = 2
		if LLguaiA[i] == 2 and LLguaiB[i] == 2 and LLguaiC[i] == 2 and LLguaiD[i] == 2 then
			PlaySoundOnUnitBJ(Hh, 100, GetKillingUnit())
			xiuxing[i] = 5
			if GetUnitAbilityLevel(GetKillingUnit(), 1093677905) ~= 0 then
				SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()), 1382576745, 6)
				SetUnitAcquireRange(GetKillingUnit(), 1100)
			end
			udg_lilianxishu[i] = 12.0
			ed[i] = false
			danpo[i] = danpo[i] + 1
			gengu[i] = gengu[i] + 1
			fuyuan[i] = fuyuan[i] + 1
			jingmai[i] = jingmai[i] + 1
			wuxing[i] = wuxing[i] + 1
			yishu[i] = yishu[i] + 1
			DisplayTextToPlayer(p, 0, 0, "|CFF34FF00完成任务华山论剑，获得修行+1全性格属性+1，你可以前往黑木崖了")
			DestroyTimerDialog(gd[i])
			loc = GetRectCenter(Rg)
			SetUnitPositionLoc(udg_hero[i], loc)
			PanCameraToTimedLocForPlayer(p, loc, 0)
			RemoveLocation(loc)
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前进度：")
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00黄药师：" .. (I2S(LLguaiA[i] - 1) or "") .. " / 1")
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00欧阳锋：" .. (I2S(LLguaiB[i] - 1) or "") .. " / 1")
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00一灯大师：" .. (I2S(LLguaiC[i] - 1) or "") .. " / 1")
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00洪七公：" .. (I2S(LLguaiD[i] - 1) or "") .. " / 1")
		end
	else
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前进度：")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00黄药师：" .. (I2S(LLguaiA[i] - 1) or "") .. " / 1")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00欧阳锋：" .. (I2S(LLguaiB[i] - 1) or "") .. " / 1")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00一灯大师：" .. (I2S(LLguaiC[i] - 1) or "") .. " / 1")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00洪七公：" .. (I2S(LLguaiD[i] - 1) or "") .. " / 1")
	end
	u = nil
	p = nil
	loc = nil
end
function tS()
	return GetUnitTypeId(GetTriggerUnit()) == 1853323879 and ed[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))]
end
function uS()
	local u = GetKillingUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = nil
	if LLguaiC[i] == 1 then
		LLguaiC[i] = 2
		if LLguaiA[i] == 2 and LLguaiB[i] == 2 and LLguaiC[i] == 2 and LLguaiD[i] == 2 then
			PlaySoundOnUnitBJ(Hh, 100, GetKillingUnit())
			xiuxing[i] = 5
			if GetUnitAbilityLevel(GetKillingUnit(), 1093677905) ~= 0 then
				SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()), 1382576745, 6)
				SetUnitAcquireRange(GetKillingUnit(), 1100)
			end
			udg_lilianxishu[i] = 12.0
			ed[i] = false
			danpo[i] = danpo[i] + 1
			gengu[i] = gengu[i] + 1
			fuyuan[i] = fuyuan[i] + 1
			jingmai[i] = jingmai[i] + 1
			wuxing[i] = wuxing[i] + 1
			yishu[i] = yishu[i] + 1
			DisplayTextToPlayer(p, 0, 0, "|CFF34FF00完成任务华山论剑，获得修行+1全性格属性+1，你可以前往黑木崖了")
			DestroyTimerDialog(gd[i])
			loc = GetRectCenter(Rg)
			SetUnitPositionLoc(udg_hero[i], loc)
			PanCameraToTimedLocForPlayer(p, loc, 0)
			RemoveLocation(loc)
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前进度：")
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00黄药师：" .. (I2S(LLguaiA[i] - 1) or "") .. " / 1")
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00欧阳锋：" .. (I2S(LLguaiB[i] - 1) or "") .. " / 1")
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00一灯大师：" .. (I2S(LLguaiC[i] - 1) or "") .. " / 1")
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00洪七公：" .. (I2S(LLguaiD[i] - 1) or "") .. " / 1")
		end
	else
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前进度：")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00黄药师：" .. (I2S(LLguaiA[i] - 1) or "") .. " / 1")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00欧阳锋：" .. (I2S(LLguaiB[i] - 1) or "") .. " / 1")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00一灯大师：" .. (I2S(LLguaiC[i] - 1) or "") .. " / 1")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00洪七公：" .. (I2S(LLguaiD[i] - 1) or "") .. " / 1")
	end
	u = nil
	p = nil
	loc = nil
end
function wS()
	return GetUnitTypeId(GetTriggerUnit()) == 1853320818 and ed[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))]
end
function xS()
	local u = GetKillingUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = nil
	if LLguaiD[i] == 1 then
		LLguaiD[i] = 2
		if LLguaiA[i] == 2 and LLguaiB[i] == 2 and LLguaiC[i] == 2 and LLguaiD[i] == 2 then
			PlaySoundOnUnitBJ(Hh, 100, GetKillingUnit())
			xiuxing[i] = 5
			if GetUnitAbilityLevel(GetKillingUnit(), 1093677905) ~= 0 then
				SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()), 1382576745, 6)
				SetUnitAcquireRange(GetKillingUnit(), 1100)
			end
			udg_lilianxishu[i] = 12.0
			ed[i] = false
			danpo[i] = danpo[i] + 1
			gengu[i] = gengu[i] + 1
			fuyuan[i] = fuyuan[i] + 1
			jingmai[i] = jingmai[i] + 1
			wuxing[i] = wuxing[i] + 1
			yishu[i] = yishu[i] + 1
			DisplayTextToPlayer(p, 0, 0, "|CFF34FF00完成任务华山论剑，获得修行+1全性格属性+1，你可以前往黑木崖了")
			DestroyTimerDialog(gd[i])
			loc = GetRectCenter(Rg)
			SetUnitPositionLoc(udg_hero[i], loc)
			PanCameraToTimedLocForPlayer(p, loc, 0)
			RemoveLocation(loc)
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前进度：")
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00黄药师：" .. (I2S(LLguaiA[i] - 1) or "") .. " / 1")
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00欧阳锋：" .. (I2S(LLguaiB[i] - 1) or "") .. " / 1")
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00一灯大师：" .. (I2S(LLguaiC[i] - 1) or "") .. " / 1")
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00洪七公：" .. (I2S(LLguaiD[i] - 1) or "") .. " / 1")
		end
	else
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前进度：")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00黄药师：" .. (I2S(LLguaiA[i] - 1) or "") .. " / 1")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00欧阳锋：" .. (I2S(LLguaiB[i] - 1) or "") .. " / 1")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00一灯大师：" .. (I2S(LLguaiC[i] - 1) or "") .. " / 1")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00洪七公：" .. (I2S(LLguaiD[i] - 1) or "") .. " / 1")
	end
	u = nil
	p = nil
	loc = nil
end
--任务失败
function zS()
	return ed[1]
end
function AS()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1676716706, 1)
	DestroyTimerDialog(gd[LoadInteger(YDHT, id * cx, -1676716706)])
	if RectContainsUnit(Rf, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)]) then
		SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Rg))
		SetUnitPositionLoc(udg_hero[LoadInteger(YDHT, id * cx, -1676716706)], LoadLocationHandle(YDHT, id * cx, 1585647951))
		PanCameraToTimedLocForPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	end
	DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), 0, 0, "|cFFFF0000时间到，任务失败了")
	ed[LoadInteger(YDHT, id * cx, -1676716706)] = false
	PlaySoundOnUnitBJ(Gh, 100, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)])
	FlushChildHashtable(YDHT, id * cx)
end
function BS()
	return ed[2]
end
function bS()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1676716706, 2)
	DestroyTimerDialog(gd[LoadInteger(YDHT, id * cx, -1676716706)])
	if RectContainsUnit(Rf, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)]) then
		SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Rg))
		SetUnitPositionLoc(udg_hero[LoadInteger(YDHT, id * cx, -1676716706)], LoadLocationHandle(YDHT, id * cx, 1585647951))
		PanCameraToTimedLocForPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	end
	DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), 0, 0, "|cFFFF0000时间到，任务失败了")
	ed[LoadInteger(YDHT, id * cx, -1676716706)] = false
	PlaySoundOnUnitBJ(Gh, 100, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)])
	FlushChildHashtable(YDHT, id * cx)
end
function cS()
	return ed[3]
end
function DS()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1676716706, 3)
	DestroyTimerDialog(gd[LoadInteger(YDHT, id * cx, -1676716706)])
	if RectContainsUnit(Rf, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)]) then
		SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Rg))
		SetUnitPositionLoc(udg_hero[LoadInteger(YDHT, id * cx, -1676716706)], LoadLocationHandle(YDHT, id * cx, 1585647951))
		PanCameraToTimedLocForPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	end
	DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), 0, 0, "|cFFFF0000时间到，任务失败了")
	ed[LoadInteger(YDHT, id * cx, -1676716706)] = false
	PlaySoundOnUnitBJ(Gh, 100, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)])
	FlushChildHashtable(YDHT, id * cx)
end
function FS()
	return ed[4]
end
function GS()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1676716706, 4)
	DestroyTimerDialog(gd[LoadInteger(YDHT, id * cx, -1676716706)])
	if RectContainsUnit(Rf, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)]) then
		SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Rg))
		SetUnitPositionLoc(udg_hero[LoadInteger(YDHT, id * cx, -1676716706)], LoadLocationHandle(YDHT, id * cx, 1585647951))
		PanCameraToTimedLocForPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	end
	DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), 0, 0, "|cFFFF0000时间到，任务失败了")
	ed[LoadInteger(YDHT, id * cx, -1676716706)] = false
	PlaySoundOnUnitBJ(Gh, 100, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)])
	FlushChildHashtable(YDHT, id * cx)
end
function IS()
	return ed[5]
end
function lS()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1676716706, 5)
	DestroyTimerDialog(gd[LoadInteger(YDHT, id * cx, -1676716706)])
	if RectContainsUnit(Rf, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)]) then
		SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Rg))
		SetUnitPositionLoc(udg_hero[LoadInteger(YDHT, id * cx, -1676716706)], LoadLocationHandle(YDHT, id * cx, 1585647951))
		PanCameraToTimedLocForPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	end
	DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1676716706)), 0, 0, "|cFFFF0000时间到，任务失败了")
	ed[LoadInteger(YDHT, id * cx, -1676716706)] = false
	PlaySoundOnUnitBJ(Gh, 100, udg_hero[LoadInteger(YDHT, id * cx, -1676716706)])
	FlushChildHashtable(YDHT, id * cx)
end
--古龙传奇
function KS()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896386 -- INLINED!!
end
function LS()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = nil
	if GetUnitLevel(u) < 100 then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000等级不足100级无法接取该任务")
	elseif shengwang[i] < 11000 then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000江湖声望不足11000无法接取该任务")
	elseif xiuxing[i] < 5 then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000你必须先完成历练5任务")
		loc = GetRectCenter(Rg)
		PingMinimapLocForForce(ov(p), loc, 5.0)
		RemoveLocation(loc)
	elseif xiuxing[i] >= 6 then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000你已经完成这个任务了")
	elseif Rd[i] then
		loc = GetRectCenter(dh)
		SetUnitPositionLoc(u, loc)
		PanCameraToTimedLocForPlayer(p, loc, 0)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前进度：")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00楚留香：" .. (I2S(LLguaiA[i] - 2) or "") .. " / 1")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00叶孤城：" .. (I2S(LLguaiB[i] - 2) or "") .. " / 1")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00西门吹雪：" .. (I2S(LLguaiC[i] - 2) or "") .. " / 1")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00陆小凤：" .. (I2S(LLguaiD[i] - 2) or "") .. " / 1")
		RemoveLocation(loc)
	else
		loc = GetRectCenter(dh)
		SetUnitPositionLoc(u, loc)
		PanCameraToTimedLocForPlayer(p, loc, 0)
		RemoveLocation(loc)
		LLguaiA[i] = 2
		LLguaiB[i] = 2
		LLguaiC[i] = 2
		LLguaiD[i] = 2
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前进度：")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00楚留香：0 / 1")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00叶孤城：0 / 1")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00西门吹雪： 0 / 1")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00陆小凤： 0 / 1")
		StartTimerBJ(fd[i], false, 120.0)
		CreateTimerDialogBJ(bj_lastStartedTimer, "紫禁决战倒计时")
		TimerDialogDisplayForPlayerBJ(true, bj_lastCreatedTimerDialog, GetOwningPlayer(GetTriggerUnit()))
		gd[i] = bj_lastCreatedTimerDialog
		Rd[i] = true
	end
	u = nil
	p = nil
	loc = nil
end
function NS()
	return GetUnitTypeId(GetTriggerUnit()) == 1852794732 and Rd[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))]
end
function OS()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit())))
	if LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)] == 2 then
		LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)] = 3
		if LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)] == 3 and LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)] == 3 and LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)] == 3 and LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)] == 3 then
			PlaySoundOnUnitBJ(Hh, 100, GetKillingUnit())
			xiuxing[LoadInteger(YDHT, id * cx, -1587459251)] = 6
			if GetUnitAbilityLevel(GetKillingUnit(), 1093677905) ~= 0 then
				SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()), 1382576745, 7)
				SetUnitAcquireRange(GetKillingUnit(), 1200)
			end
			udg_lilianxishu[LoadInteger(YDHT, id * cx, -1587459251)] = 20.0
			Rd[LoadInteger(YDHT, id * cx, -1587459251)] = false
			danpo[LoadInteger(YDHT, id * cx, -1587459251)] = danpo[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			gengu[LoadInteger(YDHT, id * cx, -1587459251)] = gengu[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] = fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			jingmai[LoadInteger(YDHT, id * cx, -1587459251)] = jingmai[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			wuxing[LoadInteger(YDHT, id * cx, -1587459251)] = wuxing[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			yishu[LoadInteger(YDHT, id * cx, -1587459251)] = yishu[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务决战紫禁之巅，获得修行+1全性格属性+1，你可以前往一品居了")
			DestroyTimerDialog(gd[LoadInteger(YDHT, id * cx, -1587459251)])
			DestroyTimer(fd[LoadInteger(YDHT, id * cx, -1587459251)])
			SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Zg))
			SetUnitPositionLoc(udg_hero[LoadInteger(YDHT, id * cx, -1587459251)], LoadLocationHandle(YDHT, id * cx, 1585647951))
			PanCameraToTimedLocForPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
			RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
		else
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00当前进度：")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00楚留香：" .. (I2S(LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00叶孤城：" .. (I2S(LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00西门吹雪：" .. (I2S(LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00陆小凤：" .. (I2S(LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
		end
	else
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00当前进度：")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00楚留香：" .. (I2S(LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00叶孤城：" .. (I2S(LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00西门吹雪：" .. (I2S(LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00陆小凤：" .. (I2S(LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
	end
	FlushChildHashtable(YDHT, id * cx)
end
function QS()
	return GetUnitTypeId(GetTriggerUnit()) == 1853252716 and Rd[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))]
end
function RS()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit())))
	if LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)] == 2 then
		LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)] = 3
		if LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)] == 3 and LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)] == 3 and LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)] == 3 and LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)] == 3 then
			PlaySoundOnUnitBJ(Hh, 100, GetKillingUnit())
			xiuxing[LoadInteger(YDHT, id * cx, -1587459251)] = 6
			if GetUnitAbilityLevel(GetKillingUnit(), 1093677905) ~= 0 then
				SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()), 1382576745, 7)
				SetUnitAcquireRange(GetKillingUnit(), 1200)
			end
			udg_lilianxishu[LoadInteger(YDHT, id * cx, -1587459251)] = 20.0
			Rd[LoadInteger(YDHT, id * cx, -1587459251)] = false
			danpo[LoadInteger(YDHT, id * cx, -1587459251)] = danpo[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			gengu[LoadInteger(YDHT, id * cx, -1587459251)] = gengu[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] = fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			jingmai[LoadInteger(YDHT, id * cx, -1587459251)] = jingmai[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			wuxing[LoadInteger(YDHT, id * cx, -1587459251)] = wuxing[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			yishu[LoadInteger(YDHT, id * cx, -1587459251)] = yishu[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务决战紫禁之巅，获得修行+1全性格属性+1，你可以前往一品居了")
			DestroyTimerDialog(gd[LoadInteger(YDHT, id * cx, -1587459251)])
			DestroyTimer(fd[LoadInteger(YDHT, id * cx, -1587459251)])
			SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Zg))
			SetUnitPositionLoc(udg_hero[LoadInteger(YDHT, id * cx, -1587459251)], LoadLocationHandle(YDHT, id * cx, 1585647951))
			PanCameraToTimedLocForPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
			RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
		else
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00当前进度：")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00楚留香：" .. (I2S(LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00叶孤城：" .. (I2S(LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00西门吹雪：" .. (I2S(LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00陆小凤：" .. (I2S(LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
		end
	else
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00当前进度：")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00楚留香：" .. (I2S(LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00叶孤城：" .. (I2S(LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00西门吹雪：" .. (I2S(LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00陆小凤：" .. (I2S(LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
	end
	FlushChildHashtable(YDHT, id * cx)
end
function TS()
	return GetUnitTypeId(GetTriggerUnit()) == 1852995177 and Rd[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))]
end
function US()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit())))
	if LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)] == 2 then
		LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)] = 3
		if LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)] == 3 and LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)] == 3 and LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)] == 3 and LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)] == 3 then
			PlaySoundOnUnitBJ(Hh, 100, GetKillingUnit())
			xiuxing[LoadInteger(YDHT, id * cx, -1587459251)] = 6
			if GetUnitAbilityLevel(GetKillingUnit(), 1093677905) ~= 0 then
				SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()), 1382576745, 7)
				SetUnitAcquireRange(GetKillingUnit(), 1200)
			end
			udg_lilianxishu[LoadInteger(YDHT, id * cx, -1587459251)] = 20.0
			Rd[LoadInteger(YDHT, id * cx, -1587459251)] = false
			danpo[LoadInteger(YDHT, id * cx, -1587459251)] = danpo[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			gengu[LoadInteger(YDHT, id * cx, -1587459251)] = gengu[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] = fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			jingmai[LoadInteger(YDHT, id * cx, -1587459251)] = jingmai[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			wuxing[LoadInteger(YDHT, id * cx, -1587459251)] = wuxing[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			yishu[LoadInteger(YDHT, id * cx, -1587459251)] = yishu[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务决战紫禁之巅，获得修行+1全性格属性+1，你可以前往一品居了")
			DestroyTimerDialog(gd[LoadInteger(YDHT, id * cx, -1587459251)])
			DestroyTimer(fd[LoadInteger(YDHT, id * cx, -1587459251)])
			SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Zg))
			SetUnitPositionLoc(udg_hero[LoadInteger(YDHT, id * cx, -1587459251)], LoadLocationHandle(YDHT, id * cx, 1585647951))
			PanCameraToTimedLocForPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
			RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
		else
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00当前进度：")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00楚留香：" .. (I2S(LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00叶孤城：" .. (I2S(LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00西门吹雪：" .. (I2S(LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00陆小凤：" .. (I2S(LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
		end
	else
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00当前进度：")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00楚留香：" .. (I2S(LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00叶孤城：" .. (I2S(LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00西门吹雪：" .. (I2S(LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00陆小凤：" .. (I2S(LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
	end
	FlushChildHashtable(YDHT, id * cx)
end
function WS()
	return GetUnitTypeId(GetTriggerUnit()) == 1851944036 and Rd[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))]
end
function XS()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit())))
	if LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)] == 2 then
		LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)] = 3
		if LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)] == 3 and LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)] == 3 and LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)] == 3 and LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)] == 3 then
			PlaySoundOnUnitBJ(Hh, 100, GetKillingUnit())
			xiuxing[LoadInteger(YDHT, id * cx, -1587459251)] = 6
			if GetUnitAbilityLevel(GetKillingUnit(), 1093677905) ~= 0 then
				SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()), 1382576745, 7)
				SetUnitAcquireRange(GetKillingUnit(), 1200)
			end
			udg_lilianxishu[LoadInteger(YDHT, id * cx, -1587459251)] = 20.0
			Rd[LoadInteger(YDHT, id * cx, -1587459251)] = false
			danpo[LoadInteger(YDHT, id * cx, -1587459251)] = danpo[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			gengu[LoadInteger(YDHT, id * cx, -1587459251)] = gengu[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] = fuyuan[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			jingmai[LoadInteger(YDHT, id * cx, -1587459251)] = jingmai[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			wuxing[LoadInteger(YDHT, id * cx, -1587459251)] = wuxing[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			yishu[LoadInteger(YDHT, id * cx, -1587459251)] = yishu[LoadInteger(YDHT, id * cx, -1587459251)] + 1
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务决战紫禁之巅，获得修行+1全性格属性+1，你可以前往一品居了")
			DestroyTimerDialog(gd[LoadInteger(YDHT, id * cx, -1587459251)])
			DestroyTimer(fd[LoadInteger(YDHT, id * cx, -1587459251)])
			SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Zg))
			SetUnitPositionLoc(udg_hero[LoadInteger(YDHT, id * cx, -1587459251)], LoadLocationHandle(YDHT, id * cx, 1585647951))
			PanCameraToTimedLocForPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
			RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
		else
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00当前进度：")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00楚留香：" .. (I2S(LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00叶孤城：" .. (I2S(LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00西门吹雪：" .. (I2S(LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00陆小凤：" .. (I2S(LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
		end
	else
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00当前进度：")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00楚留香：" .. (I2S(LLguaiA[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00叶孤城：" .. (I2S(LLguaiB[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00西门吹雪：" .. (I2S(LLguaiC[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00陆小凤：" .. (I2S(LLguaiD[LoadInteger(YDHT, id * cx, -1587459251)] - 2) or "") .. " / 1")
	end
	FlushChildHashtable(YDHT, id * cx)
end
--任务失败
function RenWuFail(i)
	DestroyTimerDialog(gd[i])
	if RectContainsUnit(eh, udg_hero[i]) then
		SetUnitPosition(udg_hero[i], -9984, 700)
		PanCameraToTimedForPlayer(Player(i - 1), -9984, 700, 0)
	end
	DisplayTextToPlayer(Player(i - 1), 0, 0, "|cFFFF0000时间到，任务失败了")
	Rd[i] = false
	PlaySoundOnUnitBJ(Gh, 100, udg_hero[i])
end
function ZS()
	return Rd[1]
end
function d5()
	RenWuFail(1)
end
function f5()
	return Rd[2]
end
function g5()
	RenWuFail(2)
end
function i5()
	return Rd[3]
end
function j5()
	RenWuFail(3)
end
function m5()
	return Rd[4]
end
function nn5()
	RenWuFail(4)
end
function p5()
	return Rd[5]
end
function q5()
	RenWuFail(5)
end
function Experiences_Trigger()
	local t = CreateTrigger()

	zr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(zr, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(zr, Condition(XQ))
	TriggerAddAction(zr, YQ)
	Ar = CreateTrigger()
	TriggerRegisterPlayerUnitEventSimple(Ar, Player(12), EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Ar, Condition(dR))
	TriggerAddAction(Ar, eR)
	ar = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(ar, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(ar, Condition(gR))
	TriggerAddAction(ar, jR)
	Br = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Br, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Br, Condition(mR))
	TriggerAddAction(Br, nR)

	Cr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Cr, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(Cr, Condition(sR))
	TriggerAddAction(Cr, tR)
	cr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(cr, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(cr, Condition(vR))
	TriggerAddAction(cr, wR)
	Dr = CreateTrigger()
	TriggerRegisterTimerExpireEvent(Dr, f9[1])
	TriggerAddAction(Dr, yR)
	Er = CreateTrigger()
	TriggerRegisterTimerExpireEvent(Er, f9[2])
	TriggerAddAction(Er, AR)
	Fr = CreateTrigger()
	TriggerRegisterTimerExpireEvent(Fr, f9[3])
	TriggerAddAction(Fr, BR)
	Gr = CreateTrigger()
	TriggerRegisterTimerExpireEvent(Gr, f9[4])
	TriggerAddAction(Gr, CR)
	Hr = CreateTrigger()
	TriggerRegisterTimerExpireEvent(Hr, f9[5])
	TriggerAddAction(Hr, DR)
	Ir = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Ir, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(Ir, Condition(FR))
	TriggerAddAction(Ir, GR)
	lr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(lr, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(lr, Condition(IR))
	TriggerAddAction(lr, lR)
	Jr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Jr, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Jr, Condition(KR))
	TriggerAddAction(Jr, LR)
	Kr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Kr, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Kr, Condition(NR))
	TriggerAddAction(Kr, OR)
	Lr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Lr, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Lr, Condition(QR))
	TriggerAddAction(Lr, RR)
	Mr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Mr, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Mr, Condition(TR))
	TriggerAddAction(Mr, UR)
	Nr = CreateTrigger()
	TriggerRegisterTimerExpireEvent(Nr, Z9[1])
	TriggerAddAction(Nr, WR)
	Pr = CreateTrigger()
	TriggerRegisterTimerExpireEvent(Pr, Z9[2])
	TriggerAddAction(Pr, YR)
	Qr = CreateTrigger()
	TriggerRegisterTimerExpireEvent(Qr, Z9[3])
	TriggerAddAction(Qr, dS)
	Rr = CreateTrigger()
	TriggerRegisterTimerExpireEvent(Rr, Z9[4])
	TriggerAddAction(Rr, fS)
	Sr = CreateTrigger()
	TriggerRegisterTimerExpireEvent(Sr, Z9[5])
	TriggerAddAction(Sr, hS)
	Tr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Tr, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(Tr, Condition(jS))
	TriggerAddAction(Tr, kS)
	Ur = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Ur, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Ur, Condition(nS))
	TriggerAddAction(Ur, oS)
	Vr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Vr, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Vr, Condition(qS))
	TriggerAddAction(Vr, rS)
	Wr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Wr, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Wr, Condition(tS))
	TriggerAddAction(Wr, uS)
	Xr = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Xr, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Xr, Condition(wS))
	TriggerAddAction(Xr, xS)
	Yr = CreateTrigger()
	TriggerRegisterTimerExpireEvent(Yr, fd[1])
	TriggerAddCondition(Yr, Condition(zS))
	TriggerAddAction(Yr, AS)
	Zr = CreateTrigger()
	TriggerRegisterTimerExpireEvent(Zr, fd[2])
	TriggerAddCondition(Zr, Condition(BS))
	TriggerAddAction(Zr, bS)
	ds = CreateTrigger()
	TriggerRegisterTimerExpireEvent(ds, fd[3])
	TriggerAddCondition(ds, Condition(cS))
	TriggerAddAction(ds, DS)
	es = CreateTrigger()
	TriggerRegisterTimerExpireEvent(es, fd[4])
	TriggerAddCondition(es, Condition(FS))
	TriggerAddAction(es, GS)
	fs = CreateTrigger()
	TriggerRegisterTimerExpireEvent(fs, fd[5])
	TriggerAddCondition(fs, Condition(IS))
	TriggerAddAction(fs, lS)
	gs = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(gs, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(gs, Condition(KS))
	TriggerAddAction(gs, LS)
	hs = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(hs, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(hs, Condition(NS))
	TriggerAddAction(hs, OS)
	is = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(is, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(is, Condition(QS))
	TriggerAddAction(is, RS)
	js = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(js, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(js, Condition(TS))
	TriggerAddAction(js, US)
	ks = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(ks, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(ks, Condition(WS))
	TriggerAddAction(ks, XS)
	ms = CreateTrigger()
	TriggerRegisterTimerExpireEvent(ms, fd[1])
	TriggerAddCondition(ms, Condition(ZS))
	TriggerAddAction(ms, d5)
	ns = CreateTrigger()
	TriggerRegisterTimerExpireEvent(ns, fd[2])
	TriggerAddCondition(ns, Condition(f5))
	TriggerAddAction(ns, g5)
	oss = CreateTrigger()
	TriggerRegisterTimerExpireEvent(oss, fd[3])
	TriggerAddCondition(oss, Condition(i5))
	TriggerAddAction(oss, j5)
	ps = CreateTrigger()
	TriggerRegisterTimerExpireEvent(ps, fd[4])
	TriggerAddCondition(ps, Condition(m5))
	TriggerAddAction(ps, nn5)
	qs = CreateTrigger()
	TriggerRegisterTimerExpireEvent(qs, fd[5])
	TriggerAddCondition(qs, Condition(p5))
	TriggerAddAction(qs, q5)
	t = nil
end