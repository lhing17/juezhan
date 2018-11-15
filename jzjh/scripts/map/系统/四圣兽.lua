--===========================================================
--决战江湖1.6之圣兽来了
--===========================================================
function qinglongjie_condition()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if udg_qlover == true then
		return false
	end
	if udg_ql == true or IsUnitType(u, UNIT_TYPE_HERO) == false then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000青龙圣兽正在安睡")
		u = nil
		p = nil
		return false
	end
	u = nil
	p = nil
	return true
end
function qinglongjie()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if fuyuan[i] < 30 or GetRandomInt(1, 3) ~= 1 then
		udg_ql = true
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000汝等凡夫俗子与圣兽无缘")
		YDWEPolledWaitNull(2.0)
		udg_ql = false
	elseif fuyuan[i] >= 40 and GetRandomInt(1, 5) == 1 then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000少侠为有缘人，青龙圣兽愿助尔一臂之力")
		UnitRemoveAbility(udg_qinglong, 1098282348)
		SetUnitOwner(udg_qinglong, p, true)
		ShowUnitShow(udg_qinglong)
		udg_qlover = true
	else
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000青龙圣兽现世，你能打败它吗？")
		UnitRemoveAbility(udg_qinglong, 1098282348)
		SetUnitOwner(udg_qinglong, Player(12), true)
		ShowUnitShow(udg_qinglong)
		udg_qlover = true
	end
	u = nil
	p = nil
end
function baihujie_condition()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if udg_bhover == true then
		return false
	end
	if udg_bh == true or IsUnitType(u, UNIT_TYPE_HERO) == false then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000白虎圣兽正在安睡")
		u = nil
		p = nil
		return false
	end
	u = nil
	p = nil
	return true
end
function baihujie()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if fuyuan[i] < 20 or GetRandomInt(1, 3) ~= 1 then
		udg_bh = true
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000汝等凡夫俗子与圣兽无缘")
		YDWEPolledWaitNull(2.0)
		udg_bh = false
	elseif fuyuan[i] >= 30 and GetRandomInt(1, 5) == 1 then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000少侠为有缘人，白虎圣兽愿助尔一臂之力")
		UnitRemoveAbility(udg_baihu, 1098282348)
		SetUnitOwner(udg_baihu, p, true)
		ShowUnitShow(udg_baihu)
		udg_bhover = true
	else
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000白虎圣兽现世，你能打败它吗？")
		UnitRemoveAbility(udg_baihu, 1098282348)
		SetUnitOwner(udg_baihu, Player(12), true)
		ShowUnitShow(udg_baihu)
		udg_bhover = true
	end
	u = nil
	p = nil
end
function xuanwujie_condition()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if udg_xwover == true then
		return false
	end
	if udg_xw == true or IsUnitType(u, UNIT_TYPE_HERO) == false then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000玄武圣兽正在安睡")
		u = nil
		p = nil
		return false
	end
	u = nil
	p = nil
	return true
end
function xuanwujie()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if fuyuan[i] < 15 or GetRandomInt(1, 3) ~= 1 then
		udg_xw = true
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000汝等凡夫俗子与圣兽无缘")
		YDWEPolledWaitNull(2.0)
		udg_xw = false
	elseif fuyuan[i] >= 25 and GetRandomInt(1, 5) == 1 then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000少侠为有缘人，玄武圣兽愿助尔一臂之力")
		UnitRemoveAbility(udg_xuanwu, 1098282348)
		SetUnitOwner(udg_xuanwu, p, true)
		ShowUnitShow(udg_xuanwu)
		udg_xwover = true
	else
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000玄武圣兽现世，你能打败它吗？")
		UnitRemoveAbility(udg_xuanwu, 1098282348)
		SetUnitOwner(udg_xuanwu, Player(12), true)
		ShowUnitShow(udg_xuanwu)
		udg_xwover = true
	end
	u = nil
	p = nil
end
function zhuquejie_condition()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if udg_zqover == true then
		return false
	end
	if udg_zq == true or IsUnitType(u, UNIT_TYPE_HERO) == false then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000朱雀圣兽正在安睡")
		u = nil
		p = nil
		return false
	end
	u = nil
	p = nil
	return true
end
function zhuquejie()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if fuyuan[i] < 25 or GetRandomInt(1, 3) ~= 1 then
		udg_zq = true
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000汝等凡夫俗子与圣兽无缘")
		YDWEPolledWaitNull(2.0)
		udg_zq = false
	elseif fuyuan[i] >= 35 and GetRandomInt(1, 5) == 1 then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000少侠为有缘人，朱雀圣兽愿助尔一臂之力")
		UnitRemoveAbility(udg_zhuque, 1098282348)
		SetUnitOwner(udg_zhuque, p, true)
		ShowUnitShow(udg_zhuque)
		udg_zqover = true
	else
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000朱雀圣兽现世，你能打败它吗？")
		UnitRemoveAbility(udg_zhuque, 1098282348)
		SetUnitOwner(udg_zhuque, Player(12), true)
		ShowUnitShow(udg_zhuque)
		udg_zqover = true
	end
	u = nil
	p = nil
end
function IsMonsterAttack()
	return IsUnitEnemy(GetAttackedUnitBJ(), GetOwningPlayer(GetAttacker())) and IsUnitType(GetAttackedUnitBJ(), UNIT_TYPE_STRUCTURE) == false
end
function MonsterAttack()
	local u = GetAttacker()
	local loc = GetUnitLoc(u)
	--龙之分身：每次攻击有20%概率创造一个分身，持续5秒，分身可继承分身。
	if GetRandomInt(1, 100) <= 20 and GetUnitAbilityLevel(u, 1395666996) ~= 0 and u == udg_qinglong then
		CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc, bj_UNIT_FACING)
		ShowUnitHide(bj_lastCreatedUnit)
		UnitAddAbility(bj_lastCreatedUnit, 1093678403)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 3.0)
		IssueTargetOrderById(bj_lastCreatedUnit, 852274, u)
		CreateTextTagLocBJ("龙之分身", loc, 0, 14.0, 90.0, 21.0, 15.0, 0.0)
		SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, GetRandomReal(80.0, 100.0))
		Nw(4.0, bj_lastCreatedTextTag)
	end
	--圣兽之击：1%概率击杀攻击者
	if GetRandomInt(1, 100) == 1 and GetUnitAbilityLevel(GetAttacker(), 1093678149) ~= 0 then
		KillUnit(GetAttackedUnitBJ())
		CreateTextTagLocBJ("圣兽之击", loc, 0, 14.0, 90.0, 21.0, 15.0, 0.0)
		SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, GetRandomReal(80.0, 100.0))
		Nw(4.0, bj_lastCreatedTextTag)
	end
end
--青龙逆鳞：血量低于50%后攻速加快
--@id 'A05D' 加速手套：1级攻速0%，逐级递增50%
function QingLongNiLin()
	if GetUnitLifePercent(udg_qinglong) <= 50.0 then
		SetUnitAbilityLevel(udg_qinglong, 1093678404, 70 - R2I(GetUnitLifePercent(udg_qinglong)) // 10)
	else
		SetUnitAbilityLevel(udg_qinglong, 1093678404, 1)
	end
end
--挑战四圣兽团队副本
function IsTiaoZhanSiShengShou()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) and xiuxing[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] >= 6 and (GetItemTypeId(GetManipulatedItem()) == 1227899724 or GetItemTypeId(GetManipulatedItem()) == 1227899725 or GetItemTypeId(GetManipulatedItem()) == 1227899726 or GetItemTypeId(GetManipulatedItem()) == 1227899727)
end
--挑战四圣是否成功
function IsSiShengChallengeSuccess()
	local t = LoadTimerHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0)
	local tmd = LoadTimerDialogHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 1)
	local u = LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 2)
	local name = LoadStr(YDHT, GetHandleId(GetTriggeringTrigger()), 3)
	local loc = GetUnitLoc(u)
	if EVENT_PLAYER_UNIT_DEATH == GetTriggerEventId() == false then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFFF00玩家在十分钟之内挑战" .. (name or "") .. "圣兽失败，" .. (name or "") .. "圣兽将进攻基地")
		SetUnitPositionLocFacingLocBJ(u, v7[GetRandomInt(5, 7)], v7[4])
		SetUnitOwner(u, Player(6), true)
		SetUnitLifePercentBJ(u, 100.0)
		GroupAddUnit(w7, u)
		IssuePointOrderByIdLoc(u, 851983, v7[4])
		PauseTimer(t)
		DestroyTimer(t)
		DestroyTimerDialog(tmd)
		DestroyTrigger(GetTriggeringTrigger())
	else
		if GetTriggerUnit() == u then
			DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFFF00恭喜成功打败" .. (name or "") .. "圣兽！！")
			CreateItemLoc(1227899728, loc)
			--call CreateItemLoc('I0CQ', loc)
			if GetRandomInt(1, 100) <= 20 then
				CreateItemLoc(1227899729, loc)
			end
			PauseTimer(t)
			DestroyTimer(t)
			DestroyTimerDialog(tmd)
			DestroyTrigger(GetTriggeringTrigger())
		end
	end
	RemoveLocation(loc)
	loc = nil
	t = nil
	return false
end
function ChallengeSiSheng(item_id, unit_id, unit_name, it)
	local loc = Location(1000, -10750)
	local j = 0
	local t = CreateTrigger()
	local tm = CreateTimer()
	local tmd = CreateTimerDialog(tm)
	if GetItemTypeId(it) == item_id then
		CreateNUnitsAtLoc(1, unit_id, Player(12), loc, bj_UNIT_FACING)
		SaveUnitHandle(YDHT, GetHandleId(t), 2, bj_lastCreatedUnit)
		SaveStr(YDHT, GetHandleId(t), 3, unit_name)
		game.variable.stop_time = game.variable.stop_time + 10 --停怪10分钟
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFFF00有玩家作死挑战" .. (unit_name or "") .. "圣兽，下波怪进攻前将停怪10分钟，请在10分钟内杀死" .. (unit_name or "") .. "圣兽，否则10分钟后它将进攻基地！！！")
		if unit_id == 1865429316 then
			udg_qinglong = bj_lastCreatedUnit
		elseif unit_id == 1865429317 then
			udg_baihu = bj_lastCreatedUnit
		elseif unit_id == 1865429318 then
			udg_xuanwu = bj_lastCreatedUnit
		elseif unit_id == 1865429319 then
			udg_zhuque = bj_lastCreatedUnit
		end
		--集体传送过去
		j = 1
		for _ in _loop_() do
			if j > GetNumPlayer() then break end
			SetUnitPosition(udg_hero[j], 2000, -10750)
			PanCameraToTimedForPlayer(Player(j - 1), 2000, -10750, 0)
			j = j + 1
		end
		StartTimerBJ(tm, false, 600)
		TimerDialogDisplay(tmd, true)
		SaveTimerHandle(YDHT, GetHandleId(t), 0, tm)
		SaveTimerDialogHandle(YDHT, GetHandleId(t), 1, tmd)
		TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
		TriggerRegisterTimerExpireEvent(t, tm)
		TriggerAddCondition(t, Condition(IsSiShengChallengeSuccess))
	end
	RemoveLocation(loc)
	loc = nil
	t = nil
	tmd = nil
	tm = nil
end
function TiaoZhanSiShengShou()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if GetNumPlayer() < 2 then
		--if GetNumPlayer() < 2 then
		DisplayTimedTextToPlayer(p, 0, 0, 15, "|cFFFFFF00游戏人数不少于2人方可使用团队副本")
		AdjustPlayerStateBJ(50000, p, PLAYER_STATE_RESOURCE_GOLD)
	else
		ChallengeSiSheng(1227899726, 1865429316, "青龙", GetManipulatedItem())
		ChallengeSiSheng(1227899725, 1865429317, "白虎", GetManipulatedItem())
		ChallengeSiSheng(1227899727, 1865429318, "玄武", GetManipulatedItem())
		ChallengeSiSheng(1227899724, 1865429319, "朱雀", GetManipulatedItem())
	end
	u = nil
	p = nil
end
--捡起青龙之戒
function IsPickUpQingLong()
	return GetItemTypeId(GetManipulatedItem()) == 1227899729 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function PickUpQingLong()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local it = GetManipulatedItem()
	for _ in _loop_() do
		if E8 > 6 then break end
		if GetItemTypeId(UnitItemInSlotBJ(u, E8)) == GetItemTypeId(GetManipulatedItem()) and UnitItemInSlotBJ(u, E8) ~= GetManipulatedItem() then
			UnitRemoveItemSwapped(UnitItemInSlotBJ(u, E8), u)
			DisplayTimedTextToPlayer(p, 0, 0, 30, "|cffff0000只能携带一个青龙之戒")
		end
		E8 = E8 + 1
	end
	ModifyHeroStat(0, u, 0, LoadInteger(YDHT, GetHandleId(it), StringHash("招式伤害")))
	ModifyHeroStat(1, u, 0, LoadInteger(YDHT, GetHandleId(it), StringHash("内力")))
	ModifyHeroStat(2, u, 0, LoadInteger(YDHT, GetHandleId(it), StringHash("真实伤害")))
	gengu[i] = gengu[i] + LoadInteger(YDHT, GetHandleId(it), StringHash("根骨"))
	wuxing[i] = wuxing[i] + LoadInteger(YDHT, GetHandleId(it), StringHash("悟性"))
	jingmai[i] = jingmai[i] + LoadInteger(YDHT, GetHandleId(it), StringHash("经脉"))
	fuyuan[i] = fuyuan[i] + LoadInteger(YDHT, GetHandleId(it), StringHash("福缘"))
	danpo[i] = danpo[i] + LoadInteger(YDHT, GetHandleId(it), StringHash("胆魄"))
	yishu[i] = yishu[i] + LoadInteger(YDHT, GetHandleId(it), StringHash("医术"))
	udg_baojishanghai[i] = udg_baojishanghai[i] + I2R(LoadInteger(YDHT, GetHandleId(it), StringHash("暴击伤害"))) / 100.0
	juexuelingwu[i] = juexuelingwu[i] + LoadInteger(YDHT, GetHandleId(it), StringHash("绝学领悟"))
	u = nil
	p = nil
	it = nil
end
--扔下青龙之戒
function IsDropQingLong()
	return GetItemTypeId(GetManipulatedItem()) == 1227899729 and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function DropQingLong()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local it = GetManipulatedItem()
	ModifyHeroStat(0, u, 1, LoadInteger(YDHT, GetHandleId(it), StringHash("招式伤害")))
	ModifyHeroStat(1, u, 1, LoadInteger(YDHT, GetHandleId(it), StringHash("内力")))
	ModifyHeroStat(2, u, 1, LoadInteger(YDHT, GetHandleId(it), StringHash("真实伤害")))
	gengu[i] = gengu[i] - LoadInteger(YDHT, GetHandleId(it), StringHash("根骨"))
	wuxing[i] = wuxing[i] - LoadInteger(YDHT, GetHandleId(it), StringHash("悟性"))
	jingmai[i] = jingmai[i] - LoadInteger(YDHT, GetHandleId(it), StringHash("经脉"))
	fuyuan[i] = fuyuan[i] - LoadInteger(YDHT, GetHandleId(it), StringHash("福缘"))
	danpo[i] = danpo[i] - LoadInteger(YDHT, GetHandleId(it), StringHash("胆魄"))
	yishu[i] = yishu[i] - LoadInteger(YDHT, GetHandleId(it), StringHash("医术"))
	udg_baojishanghai[i] = udg_baojishanghai[i] - I2R(LoadInteger(YDHT, GetHandleId(it), StringHash("暴击伤害"))) / 100.0
	juexuelingwu[i] = juexuelingwu[i] - LoadInteger(YDHT, GetHandleId(it), StringHash("绝学领悟"))
	u = nil
	p = nil
	it = nil
end
--青龙戒成长
function IsQingLongGrowup()
	return UnitHaveItem(GetKillingUnit(), 1227899729)
end
function QingLongGrowup()
	local u = GetKillingUnit()
	local it = FetchUnitItem(u, 1227899729)
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local j = 0
	SaveInteger(YDHT, GetHandleId(it), StringHash("杀人数"), LoadInteger(YDHT, GetHandleId(it), StringHash("杀人数")) + 1)
	if LoadInteger(YDHT, GetHandleId(it), StringHash("杀人数")) >= 10000 then
		SaveInteger(YDHT, GetHandleId(it), StringHash("杀人数"), 0)
		if GetRandomInt(1, 11) == 1 then
			j = GetRandomInt(1, 2)
			wuxing[i] = wuxing[i] + j
			DisplayTextToPlayer(p, 0, 0, "|cff00ff00青龙之戒获得属性成长：悟性+" .. (I2S(j) or ""))
			SaveInteger(YDHT, GetHandleId(it), StringHash("悟性"), LoadInteger(YDHT, GetHandleId(it), StringHash("悟性")) + j)
		elseif GetRandomInt(1, 10) == 1 then
			j = GetRandomInt(1, 2)
			gengu[i] = gengu[i] + j
			DisplayTextToPlayer(p, 0, 0, "|cff00ff00青龙之戒获得属性成长：根骨+" .. (I2S(j) or ""))
			SaveInteger(YDHT, GetHandleId(it), StringHash("根骨"), LoadInteger(YDHT, GetHandleId(it), StringHash("根骨")) + j)
		elseif GetRandomInt(1, 9) == 1 then
			j = GetRandomInt(1, 2)
			danpo[i] = danpo[i] + j
			DisplayTextToPlayer(p, 0, 0, "|cff00ff00青龙之戒获得属性成长：胆魄+" .. (I2S(j) or ""))
			SaveInteger(YDHT, GetHandleId(it), StringHash("胆魄"), LoadInteger(YDHT, GetHandleId(it), StringHash("胆魄")) + j)
		elseif GetRandomInt(1, 8) == 1 then
			j = GetRandomInt(1, 2)
			yishu[i] = yishu[i] + j
			DisplayTextToPlayer(p, 0, 0, "|cff00ff00青龙之戒获得属性成长：医术+" .. (I2S(j) or ""))
			SaveInteger(YDHT, GetHandleId(it), StringHash("医术"), LoadInteger(YDHT, GetHandleId(it), StringHash("医术")) + j)
		elseif GetRandomInt(1, 7) == 1 then
			j = GetRandomInt(1, 2)
			jingmai[i] = jingmai[i] + j
			DisplayTextToPlayer(p, 0, 0, "|cff00ff00青龙之戒获得属性成长：经脉+" .. (I2S(j) or ""))
			SaveInteger(YDHT, GetHandleId(it), StringHash("经脉"), LoadInteger(YDHT, GetHandleId(it), StringHash("经脉")) + j)
		elseif GetRandomInt(1, 6) == 1 then
			j = GetRandomInt(1, 2)
			fuyuan[i] = fuyuan[i] + j
			DisplayTextToPlayer(p, 0, 0, "|cff00ff00青龙之戒获得属性成长：福缘+" .. (I2S(j) or ""))
			SaveInteger(YDHT, GetHandleId(it), StringHash("福缘"), LoadInteger(YDHT, GetHandleId(it), StringHash("福缘")) + j)
		elseif GetRandomInt(1, 5) == 1 then
			j = GetRandomInt(1, 50)
			ModifyHeroStat(0, u, 0, j)
			DisplayTextToPlayer(p, 0, 0, "|cff00ff00青龙之戒获得属性成长：招式伤害+" .. (I2S(j) or ""))
			SaveInteger(YDHT, GetHandleId(it), StringHash("招式伤害"), LoadInteger(YDHT, GetHandleId(it), StringHash("招式伤害")) + j)
		elseif GetRandomInt(1, 4) == 1 then
			j = GetRandomInt(1, 50)
			ModifyHeroStat(1, u, 0, j)
			DisplayTextToPlayer(p, 0, 0, "|cff00ff00青龙之戒获得属性成长：内力+" .. (I2S(j) or ""))
			SaveInteger(YDHT, GetHandleId(it), StringHash("内力"), LoadInteger(YDHT, GetHandleId(it), StringHash("内力")) + j)
		elseif GetRandomInt(1, 3) == 1 then
			j = GetRandomInt(1, 50)
			ModifyHeroStat(2, u, 0, j)
			DisplayTextToPlayer(p, 0, 0, "|cff00ff00青龙之戒获得属性成长：真实伤害+" .. (I2S(j) or ""))
			SaveInteger(YDHT, GetHandleId(it), StringHash("真实伤害"), LoadInteger(YDHT, GetHandleId(it), StringHash("真实伤害")) + j)
		elseif GetRandomInt(1, 2) == 1 then
			j = 1
			juexuelingwu[i] = juexuelingwu[i] + j
			DisplayTextToPlayer(p, 0, 0, "|cff00ff00青龙之戒获得属性成长：绝学领悟力+" .. (I2S(j) or ""))
			SaveInteger(YDHT, GetHandleId(it), StringHash("绝学领悟"), LoadInteger(YDHT, GetHandleId(it), StringHash("绝学领悟")) + j)
		else
			j = GetRandomInt(1, 10)
			udg_baojishanghai[i] = udg_baojishanghai[i] + R2I(j) // 100
			DisplayTextToPlayer(p, 0, 0, "|cff00ff00青龙之戒获得属性成长：暴击伤害+" .. (I2S(j) or "") .. "%")
			SaveInteger(YDHT, GetHandleId(it), StringHash("暴击伤害"), LoadInteger(YDHT, GetHandleId(it), StringHash("暴击伤害")) + j)
		end
	end
	u = nil
	it = nil
end
function MonsterCome()
	local t = CreateTrigger()
	--set udg_qinglong=CreateUnit(Player(15),'o01D',920.,-10149.,276.63)
	--set udg_baihu=CreateUnit(Player(15),'o01E',1850.1,-10171.1,270.564)
	--set udg_xuanwu=CreateUnit(Player(15),'o01F',947.7,-11312.4,93.469)
	--set udg_zhuque=CreateUnit(Player(15),'o01G',1816.8,-11288.6,96.447)
	--call ShowUnitHide(udg_qinglong)
	--call ShowUnitHide(udg_baihu)
	--call ShowUnitHide(udg_xuanwu)
	--call ShowUnitHide(udg_zhuque)
	--call TriggerRegisterUnitInRangeSimple(t,256,udg_qinglong)
	--call TriggerAddCondition(t,Condition(function qinglongjie_condition))
	--call TriggerAddAction(t,function qinglongjie)
	--set t=CreateTrigger()
	--call TriggerRegisterUnitInRangeSimple (t,256,udg_baihu)
	--call TriggerAddCondition(t,Condition(function baihujie_condition))
	--call TriggerAddAction(t,function baihujie)
	--set t=CreateTrigger()
	--call TriggerRegisterUnitInRangeSimple (t,256,udg_xuanwu)
	--call TriggerAddCondition(t,Condition(function xuanwujie_condition))
	--call TriggerAddAction(t,function xuanwujie)
	--set t=CreateTrigger()
	--call TriggerRegisterUnitInRangeSimple (t,256,udg_zhuque)
	--call TriggerAddCondition(t,Condition(function zhuquejie_condition))
	--call TriggerAddAction(t,function zhuquejie)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsMonsterAttack))
	TriggerAddAction(t, MonsterAttack)
	t = CreateTrigger()
	TriggerRegisterTimerEventPeriodic(t, 0.5)
	TriggerAddAction(t, QingLongNiLin)
	--挑战圣兽
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(IsTiaoZhanSiShengShou))
	TriggerAddAction(t, TiaoZhanSiShengShou)
	--拾起青龙戒
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(IsPickUpQingLong))
	TriggerAddAction(t, PickUpQingLong)
	--放下青龙戒
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DROP_ITEM)
	TriggerAddCondition(t, Condition(IsDropQingLong))
	TriggerAddAction(t, DropQingLong)
	--青龙戒成长
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(IsQingLongGrowup))
	TriggerAddAction(t, QingLongGrowup)
	t = nil
end
--------四圣兽任务结束------//