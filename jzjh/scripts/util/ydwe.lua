--library WuQiQiHeSystem ends
--library YDTriggerSaveLoadSystem:
function YDTriggerSaveLoadSystem__Init()
	YDHT = InitHashtable()
	YDLOC = InitHashtable()
end

--library YDTriggerSaveLoadSystem ends
--library YDWEBase:
--===========================================================================
--HashTable
--===========================================================================
--===========================================================================
--Return bug
--===========================================================================
function YDWEH2I(h)
	return GetHandleId(h)
end
--����
function YDWEFlushAllData()
	FlushParentHashtable(YDHT)
end
function YDWEFlushMissionByInteger(i)
	FlushChildHashtable(YDHT, i)
end
function YDWEFlushMissionByString(s)
	FlushChildHashtable(YDHT, StringHash(s))
end
function YDWEFlushStoredIntegerByInteger(i, j)
	RemoveSavedInteger(YDHT, i, j)
end
function YDWEFlushStoredIntegerByString(s1, s2)
	RemoveSavedInteger(YDHT, StringHash(s1), StringHash(s2))
end
function YDWEHaveSavedIntegerByInteger(i, j)
	return HaveSavedInteger(YDHT, i, j)
end
function YDWEHaveSavedIntegerByString(s1, s2)
	return HaveSavedInteger(YDHT, StringHash(s1), StringHash(s2))
end
--store and get integer
function YDWESaveIntegerByInteger(pTable, pKey, i)
	SaveInteger(YDHT, pTable, pKey, i)
end
function YDWESaveIntegerByString(pTable, pKey, i)
	SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), i)
end
function YDWEGetIntegerByInteger(pTable, pKey)
	return LoadInteger(YDHT, pTable, pKey)
end
function YDWEGetIntegerByString(pTable, pKey)
	return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
end
--store and get real
function YDWESaveRealByInteger(pTable, pKey, r)
	SaveReal(YDHT, pTable, pKey, r)
end
function YDWESaveRealByString(pTable, pKey, r)
	SaveReal(YDHT, StringHash(pTable), StringHash(pKey), r)
end
function YDWEGetRealByInteger(pTable, pKey)
	return LoadReal(YDHT, pTable, pKey)
end
function YDWEGetRealByString(pTable, pKey)
	return LoadReal(YDHT, StringHash(pTable), StringHash(pKey))
end
--store and get string
function YDWESaveStringByInteger(pTable, pKey, s)
	SaveStr(YDHT, pTable, pKey, s)
end
function YDWESaveStringByString(pTable, pKey, s)
	SaveStr(YDHT, StringHash(pTable), StringHash(pKey), s)
end
function YDWEGetStringByInteger(pTable, pKey)
	return LoadStr(YDHT, pTable, pKey)
end
function YDWEGetStringByString(pTable, pKey)
	return LoadStr(YDHT, StringHash(pTable), StringHash(pKey))
end
--store and get boolean
function YDWESaveBooleanByInteger(pTable, pKey, b)
	SaveBoolean(YDHT, pTable, pKey, b)
end
function YDWESaveBooleanByString(pTable, pKey, b)
	SaveBoolean(YDHT, StringHash(pTable), StringHash(pKey), b)
end
function YDWEGetBooleanByInteger(pTable, pKey)
	return LoadBoolean(YDHT, pTable, pKey)
end
function YDWEGetBooleanByString(pTable, pKey)
	return LoadBoolean(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert Unit
function YDWESaveUnitByInteger(pTable, pKey, u)
	SaveUnitHandle(YDHT, pTable, pKey, u)
end
function YDWESaveUnitByString(pTable, pKey, u)
	SaveUnitHandle(YDHT, StringHash(pTable), StringHash(pKey), u)
end
function YDWEGetUnitByInteger(pTable, pKey)
	return LoadUnitHandle(YDHT, pTable, pKey)
end
function YDWEGetUnitByString(pTable, pKey)
	return LoadUnitHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert UnitID
function YDWESaveUnitIDByInteger(pTable, pKey, uid)
	SaveInteger(YDHT, pTable, pKey, uid)
end
function YDWESaveUnitIDByString(pTable, pKey, uid)
	SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), uid)
end
function YDWEGetUnitIDByInteger(pTable, pKey)
	return LoadInteger(YDHT, pTable, pKey)
end
function YDWEGetUnitIDByString(pTable, pKey)
	return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert AbilityID
function YDWESaveAbilityIDByInteger(pTable, pKey, abid)
	SaveInteger(YDHT, pTable, pKey, abid)
end
function YDWESaveAbilityIDByString(pTable, pKey, abid)
	SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), abid)
end
function YDWEGetAbilityIDByInteger(pTable, pKey)
	return LoadInteger(YDHT, pTable, pKey)
end
function YDWEGetAbilityIDByString(pTable, pKey)
	return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert Player
function YDWESavePlayerByInteger(pTable, pKey, p)
	SavePlayerHandle(YDHT, pTable, pKey, p)
end
function YDWESavePlayerByString(pTable, pKey, p)
	SavePlayerHandle(YDHT, StringHash(pTable), StringHash(pKey), p)
end
function YDWEGetPlayerByInteger(pTable, pKey)
	return LoadPlayerHandle(YDHT, pTable, pKey)
end
function YDWEGetPlayerByString(pTable, pKey)
	return LoadPlayerHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert Item
function YDWESaveItemByInteger(pTable, pKey, it)
	SaveItemHandle(YDHT, pTable, pKey, it)
end
function YDWESaveItemByString(pTable, pKey, it)
	SaveItemHandle(YDHT, StringHash(pTable), StringHash(pKey), it)
end
function YDWEGetItemByInteger(pTable, pKey)
	return LoadItemHandle(YDHT, pTable, pKey)
end
function YDWEGetItemByString(pTable, pKey)
	return LoadItemHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert ItemID
function YDWESaveItemIDByInteger(pTable, pKey, itid)
	SaveInteger(YDHT, pTable, pKey, itid)
end
function YDWESaveItemIDByString(pTable, pKey, itid)
	SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), itid)
end
function YDWEGetItemIDByInteger(pTable, pKey)
	return LoadInteger(YDHT, pTable, pKey)
end
function YDWEGetItemIDByString(pTable, pKey)
	return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert Timer
function YDWESaveTimerByInteger(pTable, pKey, t)
	SaveTimerHandle(YDHT, pTable, pKey, t)
end
function YDWESaveTimerByString(pTable, pKey, t)
	SaveTimerHandle(YDHT, StringHash(pTable), StringHash(pKey), t)
end
function YDWEGetTimerByInteger(pTable, pKey)
	return LoadTimerHandle(YDHT, pTable, pKey)
end
function YDWEGetTimerByString(pTable, pKey)
	return LoadTimerHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert Trigger
function YDWESaveTriggerByInteger(pTable, pKey, trg)
	SaveTriggerHandle(YDHT, pTable, pKey, trg)
end
function YDWESaveTriggerByString(pTable, pKey, trg)
	SaveTriggerHandle(YDHT, StringHash(pTable), StringHash(pKey), trg)
end
function YDWEGetTriggerByInteger(pTable, pKey)
	return LoadTriggerHandle(YDHT, pTable, pKey)
end
function YDWEGetTriggerByString(pTable, pKey)
	return LoadTriggerHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert Location
function YDWESaveLocationByInteger(pTable, pKey, pt)
	SaveLocationHandle(YDHT, pTable, pKey, pt)
end
function YDWESaveLocationByString(pTable, pKey, pt)
	SaveLocationHandle(YDHT, StringHash(pTable), StringHash(pKey), pt)
end
function YDWEGetLocationByInteger(pTable, pKey)
	return LoadLocationHandle(YDHT, pTable, pKey)
end
function YDWEGetLocationByString(pTable, pKey)
	return LoadLocationHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert Group
function YDWESaveGroupByInteger(pTable, pKey, g)
	SaveGroupHandle(YDHT, pTable, pKey, g)
end
function YDWESaveGroupByString(pTable, pKey, g)
	SaveGroupHandle(YDHT, StringHash(pTable), StringHash(pKey), g)
end
function YDWEGetGroupByInteger(pTable, pKey)
	return LoadGroupHandle(YDHT, pTable, pKey)
end
function YDWEGetGroupByString(pTable, pKey)
	return LoadGroupHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert Multiboard
function YDWESaveMultiboardByInteger(pTable, pKey, m)
	SaveMultiboardHandle(YDHT, pTable, pKey, m)
end
function YDWESaveMultiboardByString(pTable, pKey, m)
	SaveMultiboardHandle(YDHT, StringHash(pTable), StringHash(pKey), m)
end
function YDWEGetMultiboardByInteger(pTable, pKey)
	return LoadMultiboardHandle(YDHT, pTable, pKey)
end
function YDWEGetMultiboardByString(pTable, pKey)
	return LoadMultiboardHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert MultiboardItem
function YDWESaveMultiboardItemByInteger(pTable, pKey, mt)
	SaveMultiboardItemHandle(YDHT, pTable, pKey, mt)
end
function YDWESaveMultiboardItemByString(pTable, pKey, mt)
	SaveMultiboardItemHandle(YDHT, StringHash(pTable), StringHash(pKey), mt)
end
function YDWEGetMultiboardItemByInteger(pTable, pKey)
	return LoadMultiboardItemHandle(YDHT, pTable, pKey)
end
function YDWEGetMultiboardItemByString(pTable, pKey)
	return LoadMultiboardItemHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert TextTag
function YDWESaveTextTagByInteger(pTable, pKey, tt)
	SaveTextTagHandle(YDHT, pTable, pKey, tt)
end
function YDWESaveTextTagByString(pTable, pKey, tt)
	SaveTextTagHandle(YDHT, StringHash(pTable), StringHash(pKey), tt)
end
function YDWEGetTextTagByInteger(pTable, pKey)
	return LoadTextTagHandle(YDHT, pTable, pKey)
end
function YDWEGetTextTagByString(pTable, pKey)
	return LoadTextTagHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert Lightning
function YDWESaveLightningByInteger(pTable, pKey, ln)
	SaveLightningHandle(YDHT, pTable, pKey, ln)
end
function YDWESaveLightningByString(pTable, pKey, ln)
	SaveLightningHandle(YDHT, StringHash(pTable), StringHash(pKey), ln)
end
function YDWEGetLightningByInteger(pTable, pKey)
	return LoadLightningHandle(YDHT, pTable, pKey)
end
function YDWEGetLightningByString(pTable, pKey)
	return LoadLightningHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert Region
function YDWESaveRegionByInteger(pTable, pKey, rn)
	SaveRegionHandle(YDHT, pTable, pKey, rn)
end
function YDWESaveRegionByString(pTable, pKey, rt)
	SaveRegionHandle(YDHT, StringHash(pTable), StringHash(pKey), rt)
end
function YDWEGetRegionByInteger(pTable, pKey)
	return LoadRegionHandle(YDHT, pTable, pKey)
end
function YDWEGetRegionByString(pTable, pKey)
	return LoadRegionHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert Rect
function YDWESaveRectByInteger(pTable, pKey, rn)
	SaveRectHandle(YDHT, pTable, pKey, rn)
end
function YDWESaveRectByString(pTable, pKey, rt)
	SaveRectHandle(YDHT, StringHash(pTable), StringHash(pKey), rt)
end
function YDWEGetRectByInteger(pTable, pKey)
	return LoadRectHandle(YDHT, pTable, pKey)
end
function YDWEGetRectByString(pTable, pKey)
	return LoadRectHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert Leaderboard
function YDWESaveLeaderboardByInteger(pTable, pKey, lb)
	SaveLeaderboardHandle(YDHT, pTable, pKey, lb)
end
function YDWESaveLeaderboardByString(pTable, pKey, lb)
	SaveLeaderboardHandle(YDHT, StringHash(pTable), StringHash(pKey), lb)
end
function YDWEGetLeaderboardByInteger(pTable, pKey)
	return LoadLeaderboardHandle(YDHT, pTable, pKey)
end
function YDWEGetLeaderboardByString(pTable, pKey)
	return LoadLeaderboardHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert Effect
function YDWESaveEffectByInteger(pTable, pKey, e)
	SaveEffectHandle(YDHT, pTable, pKey, e)
end
function YDWESaveEffectByString(pTable, pKey, e)
	SaveEffectHandle(YDHT, StringHash(pTable), StringHash(pKey), e)
end
function YDWEGetEffectByInteger(pTable, pKey)
	return LoadEffectHandle(YDHT, pTable, pKey)
end
function YDWEGetEffectByString(pTable, pKey)
	return LoadEffectHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert Destructable
function YDWESaveDestructableByInteger(pTable, pKey, da)
	SaveDestructableHandle(YDHT, pTable, pKey, da)
end
function YDWESaveDestructableByString(pTable, pKey, da)
	SaveDestructableHandle(YDHT, StringHash(pTable), StringHash(pKey), da)
end
function YDWEGetDestructableByInteger(pTable, pKey)
	return LoadDestructableHandle(YDHT, pTable, pKey)
end
function YDWEGetDestructableByString(pTable, pKey)
	return LoadDestructableHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert triggercondition
function YDWESaveTriggerConditionByInteger(pTable, pKey, tc)
	SaveTriggerConditionHandle(YDHT, pTable, pKey, tc)
end
function YDWESaveTriggerConditionByString(pTable, pKey, tc)
	SaveTriggerConditionHandle(YDHT, StringHash(pTable), StringHash(pKey), tc)
end
function YDWEGetTriggerConditionByInteger(pTable, pKey)
	return LoadTriggerConditionHandle(YDHT, pTable, pKey)
end
function YDWEGetTriggerConditionByString(pTable, pKey)
	return LoadTriggerConditionHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert triggeraction
function YDWESaveTriggerActionByInteger(pTable, pKey, ta)
	SaveTriggerActionHandle(YDHT, pTable, pKey, ta)
end
function YDWESaveTriggerActionByString(pTable, pKey, ta)
	SaveTriggerActionHandle(YDHT, StringHash(pTable), StringHash(pKey), ta)
end
function YDWEGetTriggerActionByInteger(pTable, pKey)
	return LoadTriggerActionHandle(YDHT, pTable, pKey)
end
function YDWEGetTriggerActionByString(pTable, pKey)
	return LoadTriggerActionHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert event
function YDWESaveTriggerEventByInteger(pTable, pKey, et)
	SaveTriggerEventHandle(YDHT, pTable, pKey, et)
end
function YDWESaveTriggerEventByString(pTable, pKey, et)
	SaveTriggerEventHandle(YDHT, StringHash(pTable), StringHash(pKey), et)
end
function YDWEGetTriggerEventByInteger(pTable, pKey)
	return LoadTriggerEventHandle(YDHT, pTable, pKey)
end
function YDWEGetTriggerEventByString(pTable, pKey)
	return LoadTriggerEventHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert force
function YDWESaveForceByInteger(pTable, pKey, fc)
	SaveForceHandle(YDHT, pTable, pKey, fc)
end
function YDWESaveForceByString(pTable, pKey, fc)
	SaveForceHandle(YDHT, StringHash(pTable), StringHash(pKey), fc)
end
function YDWEGetForceByInteger(pTable, pKey)
	return LoadForceHandle(YDHT, pTable, pKey)
end
function YDWEGetForceByString(pTable, pKey)
	return LoadForceHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert boolexpr
function YDWESaveBoolexprByInteger(pTable, pKey, be)
	SaveBooleanExprHandle(YDHT, pTable, pKey, be)
end
function YDWESaveBoolexprByString(pTable, pKey, be)
	SaveBooleanExprHandle(YDHT, StringHash(pTable), StringHash(pKey), be)
end
function YDWEGetBoolexprByInteger(pTable, pKey)
	return LoadBooleanExprHandle(YDHT, pTable, pKey)
end
function YDWEGetBoolexprByString(pTable, pKey)
	return LoadBooleanExprHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert sound
function YDWESaveSoundByInteger(pTable, pKey, sd)
	SaveSoundHandle(YDHT, pTable, pKey, sd)
end
function YDWESaveSoundByString(pTable, pKey, sd)
	SaveSoundHandle(YDHT, StringHash(pTable), StringHash(pKey), sd)
end
function YDWEGetSoundByInteger(pTable, pKey)
	return LoadSoundHandle(YDHT, pTable, pKey)
end
function YDWEGetSoundByString(pTable, pKey)
	return LoadSoundHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert timerdialog
function YDWESaveTimerDialogByInteger(pTable, pKey, td)
	SaveTimerDialogHandle(YDHT, pTable, pKey, td)
end
function YDWESaveTimerDialogByString(pTable, pKey, td)
	SaveTimerDialogHandle(YDHT, StringHash(pTable), StringHash(pKey), td)
end
function YDWEGetTimerDialogByInteger(pTable, pKey)
	return LoadTimerDialogHandle(YDHT, pTable, pKey)
end
function YDWEGetTimerDialogByString(pTable, pKey)
	return LoadTimerDialogHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert trackable
function YDWESaveTrackableByInteger(pTable, pKey, ta)
	SaveTrackableHandle(YDHT, pTable, pKey, ta)
end
function YDWESaveTrackableByString(pTable, pKey, ta)
	SaveTrackableHandle(YDHT, StringHash(pTable), StringHash(pKey), ta)
end
function YDWEGetTrackableByInteger(pTable, pKey)
	return LoadTrackableHandle(YDHT, pTable, pKey)
end
function YDWEGetTrackableByString(pTable, pKey)
	return LoadTrackableHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert dialog
function YDWESaveDialogByInteger(pTable, pKey, d)
	SaveDialogHandle(YDHT, pTable, pKey, d)
end
function YDWESaveDialogByString(pTable, pKey, d)
	SaveDialogHandle(YDHT, StringHash(pTable), StringHash(pKey), d)
end
function YDWEGetDialogByInteger(pTable, pKey)
	return LoadDialogHandle(YDHT, pTable, pKey)
end
function YDWEGetDialogByString(pTable, pKey)
	return LoadDialogHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert button
function YDWESaveButtonByInteger(pTable, pKey, bt)
	SaveButtonHandle(YDHT, pTable, pKey, bt)
end
function YDWESaveButtonByString(pTable, pKey, bt)
	SaveButtonHandle(YDHT, StringHash(pTable), StringHash(pKey), bt)
end
function YDWEGetButtonByInteger(pTable, pKey)
	return LoadButtonHandle(YDHT, pTable, pKey)
end
function YDWEGetButtonByString(pTable, pKey)
	return LoadButtonHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert quest
function YDWESaveQuestByInteger(pTable, pKey, qt)
	SaveQuestHandle(YDHT, pTable, pKey, qt)
end
function YDWESaveQuestByString(pTable, pKey, qt)
	SaveQuestHandle(YDHT, StringHash(pTable), StringHash(pKey), qt)
end
function YDWEGetQuestByInteger(pTable, pKey)
	return LoadQuestHandle(YDHT, pTable, pKey)
end
function YDWEGetQuestByString(pTable, pKey)
	return LoadQuestHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
--Covert questitem
function YDWESaveQuestItemByInteger(pTable, pKey, qi)
	SaveQuestItemHandle(YDHT, pTable, pKey, qi)
end
function YDWESaveQuestItemByString(pTable, pKey, qi)
	SaveQuestItemHandle(YDHT, StringHash(pTable), StringHash(pKey), qi)
end
function YDWEGetQuestItemByInteger(pTable, pKey)
	return LoadQuestItemHandle(YDHT, pTable, pKey)
end
function YDWEGetQuestItemByString(pTable, pKey)
	return LoadQuestItemHandle(YDHT, StringHash(pTable), StringHash(pKey))
end
function YDWES2I(s)
	return StringHash(s)
end
function YDWESaveAbilityHandleBJ(AbilityID, key, missionKey, table)
	SaveInteger(table, missionKey, key, AbilityID)
end
function YDWESaveAbilityHandle(table, parentKey, childKey, AbilityID)
	SaveInteger(table, parentKey, childKey, AbilityID)
end
function YDWELoadAbilityHandleBJ(key, missionKey, table)
	return LoadInteger(table, missionKey, key)
end
function YDWELoadAbilityHandle(table, parentKey, childKey)
	return LoadInteger(table, parentKey, childKey)
end
--===========================================================================
--返回参数
--===========================================================================
--地图边界判断
function YDWECoordinateX(x)
	return RMinBJ(RMaxBJ(x, yd_MapMinX), yd_MapMaxX)
end
function YDWECoordinateY(y)
	return RMinBJ(RMaxBJ(y, yd_MapMinY), yd_MapMaxY)
end
--两个单位之间的距离
function YDWEDistanceBetweenUnits(a, b)
	return SquareRoot((GetUnitX(a) - GetUnitX(b)) * (GetUnitX(a) - GetUnitX(b)) + (GetUnitY(a) - GetUnitY(b)) * (GetUnitY(a) - GetUnitY(b)))
end
--两个单位之间的角度
function YDWEAngleBetweenUnits(fromUnit, toUnit)
	return bj_RADTODEG * Atan2(GetUnitY(toUnit) - GetUnitY(fromUnit), GetUnitX(toUnit) - GetUnitX(fromUnit))
end
--生成区域
function YDWEGetRect(x, y, width, height)
	return Rect(x - width * 0.5, y - height * 0.5, x + width * 0.5, y + height * 0.5)
end
--===========================================================================
--设置单位可以飞行
--===========================================================================
function YDWEFlyEnable(u)
	UnitAddAbility(u, 1097691750)
	UnitRemoveAbility(u, 1097691750)
end
--===========================================================================
--字符窜与ID转换
--===========================================================================
function YDWEId2S(value)
	local charMap = bj_AllString
	local result = ""
	local remainingValue = value
	local charValue
	local byteno
	byteno = 0
	for _ in _loop_() do
		charValue = ModuloInteger(remainingValue, 256)
		remainingValue = remainingValue // 256
		result = (SubString(charMap, charValue, charValue + 1) or "") .. (result or "")
		byteno = byteno + 1
		if byteno == 4 then break end
	end
	return result
end
function YDWES2Id(targetstr)
	local originstr = bj_AllString
	local strlength = StringLength(targetstr)
	local a = 0
	local b = 0
	local numx = 1
	local result = 0
	for _ in _loop_() do
		if b > strlength - 1 then break end
		numx = R2I(Pow(256, strlength - 1 - b))
		a = 1
		for _ in _loop_() do
			if a > 255 then break end
			if SubString(targetstr, b, b + 1) == SubString(originstr, a, a + 1) then
				result = result + a * numx
				a = 256
			end
			a = a + 1
		end
		b = b + 1
	end
	return result
end
function YDWES2UnitId(targetstr)
	return YDWES2Id(targetstr)
end
function YDWES2ItemId(targetstr)
	return YDWES2Id(targetstr)
end
function GetLastAbilityCastingUnit()
	return bj_lastAbilityCastingUnit
end
function GetLastAbilityTargetUnit()
	return bj_lastAbilityTargetUnit
end
function YDWESetMapLimitCoordinate(MinX, MaxX, MinY, MaxY)
	yd_MapMaxX = MaxX
	yd_MapMinX = MinX
	yd_MapMaxY = MaxY
	yd_MapMinY = MinY
end
--===========================================================================
--===========================================================================
--地图初始化
--===========================================================================
--YDWE特殊技能结束事件 
function YDWESyStemAbilityCastingOverTriggerAction(hero, index)
	local i = 0
	for _ in _loop_() do
		if i >= YDWEBase__AbilityCastingOverEventNumber then break end
		if YDWEBase__AbilityCastingOverEventType[i] == index then
			bj_lastAbilityCastingUnit = hero
			if YDWEBase__AbilityCastingOverEventQueue[i] ~= nil and TriggerEvaluate(YDWEBase__AbilityCastingOverEventQueue[i]) and IsTriggerEnabled(YDWEBase__AbilityCastingOverEventQueue[i]) then
				TriggerExecute(YDWEBase__AbilityCastingOverEventQueue[i])
			end
		end
		i = i + 1
	end
end
--===========================================================================  
--YDWE技能捕捉事件 
--===========================================================================  
function YDWESyStemAbilityCastingOverRegistTrigger(trg, index)
	YDWEBase__AbilityCastingOverEventQueue[YDWEBase__AbilityCastingOverEventNumber] = trg
	YDWEBase__AbilityCastingOverEventType[YDWEBase__AbilityCastingOverEventNumber] = index
	YDWEBase__AbilityCastingOverEventNumber = YDWEBase__AbilityCastingOverEventNumber + 1
end
--===========================================================================
--系统函数完善
--===========================================================================
function YDWECreateUnitPool()
	bj_lastCreatedUnitPool = CreateUnitPool()
end
function YDWEPlaceRandomUnit(up, p, x, y, face)
	bj_lastPoolAbstractedUnit = PlaceRandomUnit(up, p, x, y, face)
end
function YDWEGetLastUnitPool()
	return bj_lastCreatedUnitPool
end
function YDWEGetLastPoolAbstractedUnit()
	return bj_lastPoolAbstractedUnit
end
function YDWECreateItemPool()
	bj_lastCreatedItemPool = CreateItemPool()
end
function YDWEPlaceRandomItem(ip, x, y)
	bj_lastPoolAbstractedItem = PlaceRandomItem(ip, x, y)
end
function YDWEGetLastItemPool()
	return bj_lastCreatedItemPool
end
function YDWEGetLastPoolAbstractedItem()
	return bj_lastPoolAbstractedItem
end
function YDWESetAttackDamageWeaponType(at, dt, wt)
	bj_lastSetAttackType = at
	bj_lastSetDamageType = dt
	bj_lastSetWeaponType = wt
end
--unitpool bj_lastCreatedPool=null
--unit bj_lastPoolAbstractedUnit=null
function YDWEGetPlayerColorString(p, s)
	return (YDWEBase__yd_PlayerColor[GetHandleId(GetPlayerColor(p))] or "") .. (s or "") .. "|r"
end
--===========================================================================
--===========================================================================
--系统函数补充
--===========================================================================
--===========================================================================
function YDWEGetUnitItemSoftId(hero, it)
	local i = 0
	for _ in _loop_() do
		if i > 5 then break end
		if UnitItemInSlot(hero, i) == it then
			return i + 1
		end
		i = i + 1
	end
	return 0
end
--===========================================================================
--===========================================================================
--地图初始化
--===========================================================================
--===========================================================================
--显示版本
function YDWEVersion_Display()
	DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 30, "|cFF1E90FF当前编辑器版本为： |r|cFF00FF00YDWE 0.0.0.0")
	return false
end
function YDWEVersion_Init()
	local t = CreateTrigger()
	local i = 0
	for _ in _loop_() do
		if i == 12 then break end
		TriggerRegisterPlayerChatEvent(t, Player(i), "YDWE Version", true)
		i = i + 1
	end
	TriggerAddCondition(t, Condition(YDWEVersion_Display))
	t = nil
end
function InitializeYD()
	YDHT = InitHashtable()
	--=================设置变量=====================
	yd_MapMinX = GetCameraBoundMinX() - GetCameraMargin(CAMERA_MARGIN_LEFT)
	yd_MapMinY = GetCameraBoundMinY() - GetCameraMargin(CAMERA_MARGIN_BOTTOM)
	yd_MapMaxX = GetCameraBoundMaxX() + GetCameraMargin(CAMERA_MARGIN_RIGHT)
	yd_MapMaxY = GetCameraBoundMaxY() + GetCameraMargin(CAMERA_MARGIN_TOP)

	YDWEBase__yd_PlayerColor[0] = "|cFFFF0303"
	YDWEBase__yd_PlayerColor[1] = "|cFF0042FF"
	YDWEBase__yd_PlayerColor[2] = "|cFF1CE6B9"
	YDWEBase__yd_PlayerColor[3] = "|cFF540081"
	YDWEBase__yd_PlayerColor[4] = "|cFFFFFC01"
	YDWEBase__yd_PlayerColor[5] = "|cFFFE8A0E"
	YDWEBase__yd_PlayerColor[6] = "|cFF20C000"
	YDWEBase__yd_PlayerColor[7] = "|cFFE55BB0"
	YDWEBase__yd_PlayerColor[8] = "|cFF959697"
	YDWEBase__yd_PlayerColor[9] = "|cFF7EBFF1"
	YDWEBase__yd_PlayerColor[10] = "|cFF106246"
	YDWEBase__yd_PlayerColor[11] = "|cFF4E2A04"
	YDWEBase__yd_PlayerColor[12] = "|cFF282828"
	YDWEBase__yd_PlayerColor[13] = "|cFF282828"
	YDWEBase__yd_PlayerColor[14] = "|cFF282828"
	YDWEBase__yd_PlayerColor[15] = "|cFF282828"
	--=================显示版本=====================
	YDWEVersion_Init()
end

--library YDWEBase ends
--library YDWEGeneralBounsSystem:

--以下函数仅仅是让技能ID出现在代码里，不然SLK优化器会删除这些技能
function YDWEGeneralBounsSystem__DisplayAllAbilityId()
	local aid = 0
	aid = 1497656368
	aid = 1497656369
	aid = 1497656370
	aid = 1497656371
	aid = 1497656372
	aid = 1497656373
	aid = 1497656374
	aid = 1497656375
	aid = 1497656376
	aid = 1497656377
	aid = 1497656417
	aid = 1497656418
	aid = 1497656419
	aid = 1497656420
	aid = 1497656421
	aid = 1497656422
	aid = 1497656624
	aid = 1497656625
	aid = 1497656626
	aid = 1497656627
	aid = 1497656628
	aid = 1497656629
	aid = 1497656630
	aid = 1497656631
	aid = 1497656632
	aid = 1497656633
	aid = 1497656673
	aid = 1497656674
	aid = 1497656675
	aid = 1497656676
	aid = 1497656677
	aid = 1497656678
	aid = 1497654064
	aid = 1497654065
	aid = 1497654066
	aid = 1497654067
	aid = 1497654068
	aid = 1497654069
	aid = 1497654070
	aid = 1497654071
	aid = 1497654072
	aid = 1497654073
	aid = 1497654113
	aid = 1497654114
	aid = 1497654115
	aid = 1497653808
	aid = 1497653809
	aid = 1497653810
	aid = 1497653811
	aid = 1497653812
	aid = 1497653813
	aid = 1497653814
	aid = 1497653815
	aid = 1497653816
	aid = 1497653817
	aid = 1497653857
	aid = 1497653858
	aid = 1497653859
	aid = 1497653860
	aid = 1497653861
	aid = 1497653862
	aid = 1497653863
	aid = 1497653864
	aid = 1497653865
	aid = 1497653866
	aid = 1497653867
	aid = 1497653868
	aid = 1497653869
	aid = 1497653870
end
function YDWEGeneralBounsSystem__UnitClearBonus(u, bonusType)
	local i = YDWEGeneralBounsSystem__ABILITY_COUNT[bonusType + 1] - 1
	for _ in _loop_() do
		if i < YDWEGeneralBounsSystem__ABILITY_COUNT[bonusType] then break end
		UnitRemoveAbility(u, YDWEGeneralBounsSystem__BonusAbilitys[i])
		i = i - 1
	end
	SaveInteger(YDHT, StringHash(I2S(GetHandleId(u))), StringHash("bonusType" .. (I2S(bonusType) or "")), 0) -- INLINED!!
end
function YDWEGeneralBounsSystem__SetUnitMaxState(u, bonusType, value)
	local v = R2I(value)
	local s = 0
	local o = 0
	local state
	local i = YDWEGeneralBounsSystem__ABILITY_COUNT[bonusType + 1] - 2
	local a = YDWEGeneralBounsSystem__ABILITY_NUM[bonusType]
	if value > 65535 or value <= 0 then
		return false
	end
	if bonusType == 0 then
		state = UNIT_STATE_MAX_LIFE
	elseif bonusType == 1 then
		state = UNIT_STATE_MAX_MANA
	else
		return false
	end
	v = v - R2I(GetUnitState(u, state))
	SaveInteger(YDHT, StringHash(I2S(GetHandleId(u))), StringHash("bonusType" .. (I2S(bonusType) or "")), v) -- INLINED!!
	if v > 0 then
		o = 3
	elseif v < 0 then
		o = 2
		v =  - v
	else
		return false
	end
	for _ in _loop_() do
		if i < YDWEGeneralBounsSystem__ABILITY_COUNT[bonusType] then break end
		if v >= YDWEGeneralBounsSystem__PowersOf2[i] then
			UnitAddAbility(u, YDWEGeneralBounsSystem__BonusAbilitys[i])
			SetUnitAbilityLevel(u, YDWEGeneralBounsSystem__BonusAbilitys[i], o)
			UnitRemoveAbility(u, YDWEGeneralBounsSystem__BonusAbilitys[i])
			v = v - YDWEGeneralBounsSystem__PowersOf2[i]
		end
		i = i - 1
	end
	return true
end
function YDWEGeneralBounsSystem__UnitSetBonus(u, bonusType, ammount)
	local i
	--设置属性为0不进行Loop
	if ammount == 0 then
		YDWEGeneralBounsSystem__UnitClearBonus(u, bonusType)
		return false
	end
	if ammount < YDWEGeneralBounsSystem__MinBonus[bonusType] or ammount > YDWEGeneralBounsSystem__MaxBonus[bonusType] then
		return false
	elseif bonusType < 0 or bonusType >= YDWEGeneralBounsSystem__BONUS_TYPES then
		return false
	end
	SaveInteger(YDHT, StringHash(I2S(GetHandleId(u))), StringHash("bonusType" .. (I2S(bonusType) or "")), ammount) -- INLINED!!
	if ammount < 0 then
		ammount = YDWEGeneralBounsSystem__MaxBonus[bonusType] + ammount + 1
		UnitAddAbility(u, YDWEGeneralBounsSystem__BonusAbilitys[YDWEGeneralBounsSystem__ABILITY_COUNT[bonusType + 1] - 1])
		UnitMakeAbilityPermanent(u, true, YDWEGeneralBounsSystem__BonusAbilitys[YDWEGeneralBounsSystem__ABILITY_COUNT[bonusType + 1] - 1])
	else
		UnitRemoveAbility(u, YDWEGeneralBounsSystem__BonusAbilitys[YDWEGeneralBounsSystem__ABILITY_COUNT[bonusType + 1] - 1])
	end
	i = YDWEGeneralBounsSystem__ABILITY_COUNT[bonusType + 1] - 2
	for _ in _loop_() do
		if i < YDWEGeneralBounsSystem__ABILITY_COUNT[bonusType] then break end
		if ammount >= YDWEGeneralBounsSystem__PowersOf2[i] then
			UnitAddAbility(u, YDWEGeneralBounsSystem__BonusAbilitys[i])
			UnitMakeAbilityPermanent(u, true, YDWEGeneralBounsSystem__BonusAbilitys[i])
			ammount = ammount - YDWEGeneralBounsSystem__PowersOf2[i]
		else
			UnitRemoveAbility(u, YDWEGeneralBounsSystem__BonusAbilitys[i])
		end
		i = i - 1
	end
	if not LoadBoolean(YDHT, StringHash(I2S(GetHandleId(u))), StringHash("bonusMark")) then -- INLINED!!
		SaveBoolean(YDHT, StringHash(I2S(GetHandleId(u))), StringHash("bonusMark"), true) -- INLINED!!
		YDWEGeneralBounsSystem__UnitCount = YDWEGeneralBounsSystem__UnitCount + 1
		YDWEGeneralBounsSystem__Units[YDWEGeneralBounsSystem__UnitCount] = u
	end
	return true
end
function YDWEGeneralBounsSystem__UnitGetBonus(u, bonusType)
	return LoadInteger(YDHT, StringHash(I2S(GetHandleId(u))), StringHash("bonusType" .. (I2S(bonusType) or ""))) -- INLINED!!
end
function YDWEGeneralBounsSystem__AddUnitMaxState(u, bonusType, value)
	local state
	if bonusType == 0 then
		state = UNIT_STATE_MAX_LIFE
	elseif bonusType == 1 then
		state = UNIT_STATE_MAX_MANA
	else
		return false
	end
	return YDWEGeneralBounsSystem__SetUnitMaxState(u, bonusType, value + GetUnitState(u, state))
end
function YDWEGeneralBounsSystem__UnitAddBonus(u, bonusType, ammount)
	return YDWEGeneralBounsSystem__UnitSetBonus(u, bonusType, LoadInteger(YDHT, StringHash(I2S(GetHandleId(u))), StringHash("bonusType" .. (I2S(bonusType) or ""))) + ammount) -- INLINED!!
end
function YDWEGeneralBounsSystem__FlushUnits()
	local i = YDWEGeneralBounsSystem__UnitCount
	local h
	for _ in _loop_() do
		if i < 1 then break end
		if GetUnitTypeId(YDWEGeneralBounsSystem__Units[i]) == 0 then
			h = I2S(GetHandleId(YDWEGeneralBounsSystem__Units[i])) -- INLINED!!
			SaveInteger(YDHT, StringHash(h), StringHash("bonusType0"), 0) -- INLINED!!
			SaveInteger(YDHT, StringHash(h), StringHash("bonusType1"), 0) -- INLINED!!
			SaveInteger(YDHT, StringHash(h), StringHash("bonusType2"), 0) -- INLINED!!
			SaveInteger(YDHT, StringHash(h), StringHash("bonusType3"), 0) -- INLINED!!
			SaveBoolean(YDHT, StringHash(h), StringHash("bonusMark"), false) -- INLINED!!
			YDWEGeneralBounsSystem__Units[i] = YDWEGeneralBounsSystem__Units[YDWEGeneralBounsSystem__UnitCount]
			YDWEGeneralBounsSystem__Units[YDWEGeneralBounsSystem__UnitCount] = nil
			YDWEGeneralBounsSystem__UnitCount = YDWEGeneralBounsSystem__UnitCount - 1
		end
		i = i - 1
	end
end
function YDWEUnitSetBonus(u, bonusType, ammount)
	if bonusType == 0 or bonusType == 1 then
		YDWEGeneralBounsSystem__SetUnitMaxState(u, bonusType, ammount)
	else
		YDWEGeneralBounsSystem__UnitSetBonus(u, bonusType, ammount)
	end
end
function YDWEUnitAddBonus(u, bonusType, ammount)
	if bonusType == 0 or bonusType == 1 then
		YDWEGeneralBounsSystem__AddUnitMaxState(u, bonusType, ammount)
	else
		YDWEGeneralBounsSystem__UnitAddBonus(u, bonusType, ammount)
	end
end
function YDWEGeneralBounsSystemUnitSetBonus(u, bonusType, mod, ammount)
	if mod == 0 then
		YDWEUnitAddBonus(u, bonusType, ammount)
	elseif mod == 1 then
		YDWEUnitAddBonus(u, bonusType, 0 - ammount)
	else
		YDWEUnitSetBonus(u, bonusType, ammount)
	end
end
function YDWEGeneralBounsSystemUnitGetBonus(u, bonusType)
	return LoadInteger(YDHT, StringHash(I2S(GetHandleId(u))), StringHash("bonusType" .. (I2S(bonusType) or ""))) -- INLINED!!
end
--private keyword BonusAbilitys
function YDWEGeneralBounsSystem__InitializeAbilitys()
	local i = 0
	local m = 0
	YDWEGeneralBounsSystem__ABILITY_COUNT[0] = 0 --life max
	YDWEGeneralBounsSystem__ABILITY_COUNT[1] = 15 --mana max
	YDWEGeneralBounsSystem__ABILITY_COUNT[2] = 30 --armor
	YDWEGeneralBounsSystem__ABILITY_COUNT[3] = 43 --attack
	YDWEGeneralBounsSystem__ABILITY_COUNT[4] = 67
	YDWEGeneralBounsSystem__ABILITY_NUM[0] = 15
	YDWEGeneralBounsSystem__ABILITY_NUM[1] = 15
	YDWEGeneralBounsSystem__ABILITY_NUM[2] = 13
	YDWEGeneralBounsSystem__ABILITY_NUM[3] = 24
	-- Bonus Mod - armor abilitys
	for _ in _loop_() do
		if i > 9 then break end
		YDWEGeneralBounsSystem__YDWEBONUS_MyChar[i] = 48 + m
		m = m + 1
		i = i + 1
	end
	m = 0
	for _ in _loop_() do
		if i > 26 then break end
		YDWEGeneralBounsSystem__YDWEBONUS_MyChar[i] = 97 + m
		m = m + 1
		i = i + 1
	end
	i = 0
	m = 0
	for _ in _loop_() do
		if m > YDWEGeneralBounsSystem__ABILITY_NUM[0] - 1 then break end
		YDWEGeneralBounsSystem__BonusAbilitys[i] = 1497656368 - 48 + YDWEGeneralBounsSystem__YDWEBONUS_MyChar[m] -- +1
		i = i + 1
		m = m + 1
	end
	-- Bonus Mod - Damage abilitys
	m = 0
	for _ in _loop_() do
		if m > YDWEGeneralBounsSystem__ABILITY_NUM[1] - 1 then break end
		YDWEGeneralBounsSystem__BonusAbilitys[i] = 1497656624 - 48 + YDWEGeneralBounsSystem__YDWEBONUS_MyChar[m] -- +1
		i = i + 1
		m = m + 1
	end
	-- Bonus Mod - Life MaxState abilitys
	m = 0
	for _ in _loop_() do
		if m > YDWEGeneralBounsSystem__ABILITY_NUM[2] - 1 then break end
		YDWEGeneralBounsSystem__BonusAbilitys[i] = 1497654064 - 48 + YDWEGeneralBounsSystem__YDWEBONUS_MyChar[m] -- +1
		i = i + 1
		m = m + 1
	end
	-- Bonus Mod - Mana MaxState abilitys
	m = 0
	for _ in _loop_() do
		if m > YDWEGeneralBounsSystem__ABILITY_NUM[3] - 1 then break end
		YDWEGeneralBounsSystem__BonusAbilitys[i] = 1497653808 - 48 + YDWEGeneralBounsSystem__YDWEBONUS_MyChar[m] -- +1
		i = i + 1
		m = m + 1
	end
end
function YDWEGeneralBounsSystem__Initialize()
	local i = 1
	local u
	local n = 0
	local add = 0
	YDWEGeneralBounsSystem__InitializeAbilitys()
	for _ in _loop_() do
		i = 1
		YDWEGeneralBounsSystem__PowersOf2[add] = 1
		for _ in _loop_() do
			YDWEGeneralBounsSystem__PowersOf2[add + 1] = YDWEGeneralBounsSystem__PowersOf2[add] * 2
			add = add + 1
			i = i + 1
			if i == YDWEGeneralBounsSystem__ABILITY_NUM[n] then break end
		end
		YDWEGeneralBounsSystem__MaxBonus[n] = YDWEGeneralBounsSystem__PowersOf2[add] - 1
		YDWEGeneralBounsSystem__MinBonus[n] =  - YDWEGeneralBounsSystem__PowersOf2[add]
		add = add + 1
		n = n + 1
		if n >= 4 then break end
	end
	--预读技能
	if YDWEGeneralBounsSystem__PRELOAD_ABILITYS then
		u = CreateUnit(Player(15), YDWEGeneralBounsSystem__PRELOAD_DUMMY_UNIT, 0, 0, 0)
		i = 0
		for _ in _loop_() do
			if i == YDWEGeneralBounsSystem__ABILITY_COUNT[5] then break end
			UnitAddAbility(u, YDWEGeneralBounsSystem__BonusAbilitys[i])
			i = i + 1
		end
		RemoveUnit(u)
		u = nil
	end
	--回收数据
	TimerStart(CreateTimer(), 10, true, YDWEGeneralBounsSystem__FlushUnits)
end
function YDWELifeChange(u, mod, ch, id)
	local a
	local b
	local c
	local d
	local aid = id
	if mod == 1 then
		ch =  - ch
	elseif mod == 2 then
		ch = ch - R2I(GetUnitState(u, UNIT_STATE_MAX_LIFE))
	end
	--set YDWEADDBONUS_LIFE=YDWEADDBONUS_LIFE+ch
	if ch > 99999 then
		ch = 99999
	end
	if ch < -99999 then
		ch = -99999
	end
	if ch < 0 then
		a = 2
		ch =  - ch
	else
		a = 7
	end
	b = 0
	for _ in _loop_() do
		if b == 5 then break end
		c = ch - ch // 10 * 10
		d = 0
		for _ in _loop_() do
			if d == c then break end
			UnitAddAbility(u, aid)
			SetUnitAbilityLevel(u, aid, a)
			UnitRemoveAbility(u, aid)
			d = d + 1
		end
		ch = ch // 10
		a = a + 1
		b = b + 1
	end
end
--===========================================================================
--修改魔法
--===========================================================================
function YDWEManaChange(u, mod, ch, id)
	local a
	local b
	local c
	local d
	local aid = id
	if mod == 1 then
		ch =  - ch
	elseif mod == 2 then
		ch = ch - R2I(GetUnitState(u, UNIT_STATE_MAX_MANA))
	end
	--set YDWEADDBONUS_MANA=YDWEADDBONUS_MANA+ch
	if ch > 99999 then
		ch = 99999
	end
	if ch < -99999 then
		ch = -99999
	end
	if ch < 0 then
		a = 2
		ch =  - ch
	else
		a = 7
	end
	b = 0
	for _ in _loop_() do
		if b == 5 then break end
		c = ch - ch // 10 * 10
		d = 0
		for _ in _loop_() do
			if d == c then break end
			UnitAddAbility(u, aid)
			SetUnitAbilityLevel(u, aid, a)
			UnitRemoveAbility(u, aid)
			d = d + 1
		end
		ch = ch // 10
		a = a + 1
		b = b + 1
	end
end

--library YDWEGeneralBounsSystem ends
--library YDWEGetUnitsInRangeOfLocMatchingNull:
function YDWEGetUnitsInRangeOfLocMatchingNull(radius, whichLocation, filter)
	local g = CreateGroup()
	GroupEnumUnitsInRangeOfLoc(g, whichLocation, radius, filter)
	DestroyBoolExpr(filter)
	yd_NullTempGroup = g
	g = nil
	return yd_NullTempGroup
end

--library YDWEGetUnitsInRangeOfLocMatchingNull ends
--library YDWELogarithm:
-- Author : zyl910
-- Modified by : c kuhn
-- [private]用级数计算以e为底的对数
-- Returns 0 if x <= 0
function YDWELogarithm__ln_taylor(x)
	-- ln( (1+x) / (1-x) ) = ln(1+x) - ln(1-x) = 2 * ( x + x^3 / 3 + x^5 / 5 + ... )
	-- x = (y-1) / (y+1)
	-- (0 < y < +∞, -1 < x < 1)
	local fRet = 0.0
	local x2
	local fCur
	local fDiv = 1.0

	if x > 0 then
		x = (x - 1.0) / (x + 1.0)
		x2 = x * x
		for _ in _loop_() do
			fCur = fRet + x * 2.0 / fDiv
			if fRet >= fCur and fRet <= fCur then break end
			fRet = fCur
			x = x * x2
			fDiv = fDiv + 2.0
		end
	end

	return fRet
end
-- Author : c kuhn
-- 通过满二叉树特性快速找到大的部分
function YDWELogarithm__Log2(x)
	local res = 0.0
	local sign = 1.0
	local i = 64.0
	local level = 32.0
	local mid
	local temp
	local fac = 0.0
	local count = 6
	if x > 0 and (x < 1 or x > 1) then
		if x < 1 then
			sign = -1.0
			x = 1.0 / x
		end
		if x >= 2.0 then
			mid = YDWELogarithm__base[7]
			for _ in _loop_() do
				temp = x / mid
				if temp >= 1.0 and temp < 2.0 then break end
				if x < mid then
					i = i - level
					mid = mid / YDWELogarithm__base[count]
				else
					i = i + level
					mid = mid * YDWELogarithm__base[count]
				end
				level = level / 2.0
				count = count - 1
			end
			fac = i
			x = temp
		end
		--根号2
		if x > 1.4142135 then
			x = x / 1.4142135
			fac = fac + 0.5
		end
		res = sign * (fac + YDWELogarithm__ln_taylor(x) * 1.442695)
	end

	return res
end
-- 以 10 为底的对数
-- Returns 0 if x <= 0
function YDWELogarithmLg(x)
	return YDWELogarithm__Log2(x) * 0.30103 -- 1/log2(10) = 0.30102999566398119521373889472449
end
-- 以 e 为底的对数
-- Returns 0 if x <= 0
function YDWELogarithmLn(x)
	return YDWELogarithm__Log2(x) * 0.6931472 -- 1/log2(e) = 0.69314718055994530941723212145818
end
-- 以 任意数 为底的对数 
function YDWELogarithmLog(a, x)
	if a <= 0 or a <= 1 and a >= 1 then
		return 0.0
	end
	return YDWELogarithm__Log2(x) / YDWELogarithm__Log2(a)
end
function YDWELogarithm__onInit()
	YDWELogarithm__base[1] = 2.0
	YDWELogarithm__base[2] = 4.0
	YDWELogarithm__base[3] = 16.0
	YDWELogarithm__base[4] = 256.0
	YDWELogarithm__base[5] = 65536.0
	--过大的数必须用乘法
	YDWELogarithm__base[6] = 65536.0 * 65536.0 --2^32
	YDWELogarithm__base[7] = YDWELogarithm__base[6] * YDWELogarithm__base[6] --2^64
end

--library YDWELogarithm ends
--library YDWEPolledWaitNull:
YDWEPolledWaitNull = PolledWait

--library YDWEPolledWaitNull ends
--library YDWEStringHash:

--library YDWEStringHash ends
--library YDWESync:
function YDWESync__IsLivingPlayer(p)
	return GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING and GetPlayerController(p) == MAP_CONTROL_USER
end
function YDWESync__GetLivingfPlayer()
	local i = 0
	for _ in _loop_() do
		if YDWESync__IsLivingPlayer(Player(i)) or i >= 11 then break end
		i = i + 1
	end
	return Player(i)
end

function YDWESync_Lock()
	for _ in _loop_() do
		if not YDWESync__m_mutex_state then
			YDWESync__m_mutex_state = true
			return
		end
		TriggerSleepAction(0.2)
	end
end

function YDWESync_Unlock()
	YDWESync__m_mutex_state = false
end

function YDWESync_Join(p)
	if GetLocalPlayer() == p then
		StoreInteger(YDWESync__m_gc, "-", "-", 1497651013)
	end
	TriggerSyncStart()
	if GetLocalPlayer() == p then
		SyncStoredInteger(YDWESync__m_gc, "-", "-")
	end
	StoreInteger(YDWESync__m_gc, "-", "-", 0)
	TriggerSyncReady()
	for _ in _loop_() do
		if 1497651013 == GetStoredInteger(YDWESync__m_gc, "-", "-") then
			return
		end
		TriggerSleepAction(0.2)
	end
end

function YDWESync_Set(table, key, value)
	StoreInteger(YDWESync__m_gc, table, key, value)
end

function YDWESync_Get(table, key)
	return GetStoredInteger(YDWESync__m_gc, table, key)
end

function YDWESync_Start()
	TriggerSyncStart()
end

function YDWESync_Ready()
	TriggerSyncReady()
end

function YDWESync_Send(table, key)
	SyncStoredInteger(YDWESync__m_gc, table, key)
end

function YDWESync__onInit()
	FlushGameCache(InitGameCache("@"))
	YDWESync__m_gc = InitGameCache("@")
end

--library YDWESync ends
--library YDWETriggerEvent:

--===========================================================================  
--���ⵥλ�˺��¼� 
--===========================================================================
function YDWEAnyUnitDamagedTriggerAction()
	local i = 0

	for _ in _loop_() do
		if i >= YDWETriggerEvent__DamageEventNumber then break end
		if YDWETriggerEvent__DamageEventQueue[i] ~= nil and IsTriggerEnabled(YDWETriggerEvent__DamageEventQueue[i]) and TriggerEvaluate(YDWETriggerEvent__DamageEventQueue[i]) then
			TriggerExecute(YDWETriggerEvent__DamageEventQueue[i])
		end
		i = i + 1
	end
end
function YDWEAnyUnitDamagedFilter()
	if GetUnitAbilityLevel(GetFilterUnit(), 1097625443) <= 0 then
		TriggerRegisterUnitEvent(yd_DamageEventTrigger, GetFilterUnit(), EVENT_UNIT_DAMAGED)
	end
	return false
end
function YDWEAnyUnitDamagedEnumUnit()
	local t = CreateTrigger()
	local r = CreateRegion()
	local g = CreateGroup()
	RegionAddRect(r, GetWorldBounds())
	TriggerRegisterEnterRegion(t, r, Condition(YDWEAnyUnitDamagedFilter))
	GroupEnumUnitsInRect(g, GetWorldBounds(), Condition(YDWEAnyUnitDamagedFilter))
	DestroyGroup(g)
	r = nil
	t = nil
	g = nil
end

function YDWESyStemAnyUnitDamagedRegistTrigger(trg)
	if trg == nil then
		return
	end

	if YDWETriggerEvent__DamageEventNumber == 0 then
		yd_DamageEventTrigger = CreateTrigger()
		TriggerAddAction(yd_DamageEventTrigger, YDWEAnyUnitDamagedTriggerAction)
		YDWEAnyUnitDamagedEnumUnit()
	end

	YDWETriggerEvent__DamageEventQueue[YDWETriggerEvent__DamageEventNumber] = trg
	YDWETriggerEvent__DamageEventNumber = YDWETriggerEvent__DamageEventNumber + 1
end
--===========================================================================  
--�ƶ���Ʒ�¼� 
--===========================================================================  
function YDWESyStemItemUnmovableTriggerAction()
	local i = 0

	if GetIssuedOrderId() >= 852002 and GetIssuedOrderId() <= 852007 then
		bj_lastMovedItemInItemSlot = GetOrderTargetItem()
		for _ in _loop_() do
			if i >= YDWETriggerEvent__MoveItemEventNumber then break end
			if YDWETriggerEvent__MoveItemEventQueue[i] ~= nil and IsTriggerEnabled(YDWETriggerEvent__MoveItemEventQueue[i]) and TriggerEvaluate(YDWETriggerEvent__MoveItemEventQueue[i]) then
				TriggerExecute(YDWETriggerEvent__MoveItemEventQueue[i])
			end
			i = i + 1
		end
	end
end
function YDWESyStemItemUnmovableRegistTrigger(trg)
	if trg == nil then
		return
	end

	if YDWETriggerEvent__MoveItemEventNumber == 0 then
		YDWETriggerEvent__MoveItemEventTrigger = CreateTrigger()
		TriggerAddAction(YDWETriggerEvent__MoveItemEventTrigger, YDWESyStemItemUnmovableTriggerAction)
		TriggerRegisterAnyUnitEventBJ(YDWETriggerEvent__MoveItemEventTrigger, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
	end

	YDWETriggerEvent__MoveItemEventQueue[YDWETriggerEvent__MoveItemEventNumber] = trg
	YDWETriggerEvent__MoveItemEventNumber = YDWETriggerEvent__MoveItemEventNumber + 1
end
function GetLastMovedItemInItemSlot()
	return bj_lastMovedItemInItemSlot
end

--library YDWETriggerEvent ends
--library YDWETriggerRegisterLeaveRectSimpleNull:
function YDWETriggerRegisterLeaveRectSimpleNull(trig, r)
	local rectRegion = CreateRegion()
	RegionAddRect(rectRegion, r)
	yd_NullTempRegion = rectRegion
	rectRegion = nil
	return TriggerRegisterLeaveRegion(trig, yd_NullTempRegion, nil)
end

--library YDWETriggerRegisterLeaveRectSimpleNull ends
--library YDWEUnitHasItemOfTypeBJNull:
function YDWEUnitHasItemOfTypeBJNull(whichUnit, itemId)
	local index = 0
	if itemId ~= 0 then
		for _ in _loop_() do
			if GetItemTypeId(UnitItemInSlot(whichUnit, index)) == itemId then
				return true
			end
			index = index + 1
			if index >= bj_MAX_INVENTORY then break end
		end
	end
	return false
end

--library YDWEUnitHasItemOfTypeBJNull ends
--library YDWEJumpTimer:
function YDWEJumpTimerLoop()
	local t = GetExpiredTimer()
	local hero = LoadUnitHandle(YDHT, StringHash(I2S(GetHandleId(t))), StringHash("Hero")) -- INLINED!!
	local angle = LoadReal(YDHT, StringHash(I2S(GetHandleId(t))), StringHash("Angle")) -- INLINED!!
	local steeps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(t))), StringHash("steeps")) -- INLINED!!
	local steepsMax = LoadInteger(YDHT, StringHash(I2S(GetHandleId(t))), StringHash("steepsMax")) -- INLINED!!
	local heightMax = LoadReal(YDHT, StringHash(I2S(GetHandleId(t))), StringHash("heightMax")) -- INLINED!!
	local dist = LoadReal(YDHT, StringHash(I2S(GetHandleId(t))), StringHash("dist")) -- INLINED!!
	local dheig = LoadReal(YDHT, StringHash(I2S(GetHandleId(t))), StringHash("dheig")) -- INLINED!!
	local OriginHeight = LoadReal(YDHT, StringHash(I2S(GetHandleId(t))), StringHash("OriginHeight")) -- INLINED!!
	local x = LoadReal(YDHT, StringHash(I2S(GetHandleId(t))), StringHash("X")) -- INLINED!!
	local y = LoadReal(YDHT, StringHash(I2S(GetHandleId(t))), StringHash("Y")) -- INLINED!!
	local x1 = 0
	local y1 = 0
	local height = 0
	local lvJumpTimer = MoveMoreLevel_JumpTimer
	local lvUnitMove = LoadInteger(YDHT, StringHash(I2S(GetHandleId(hero))), StringHash("lvUnitMove")) -- INLINED!!
	if steeps < steepsMax and lvJumpTimer >= lvUnitMove then
		x1 = x + steeps * dist * Cos(angle * 3.14159 / 180.0)
		y1 = y + steeps * dist * Sin(angle * 3.14159 / 180.0)
		x1 = RMinBJ(RMaxBJ(x1 * 1.0, yd_MapMinX), yd_MapMaxX) -- INLINED!!
		y1 = RMinBJ(RMaxBJ(y1 * 1.0, yd_MapMinY), yd_MapMaxY) -- INLINED!!
		SetUnitX(hero, x1)
		SetUnitY(hero, y1)
		steeps = steeps + 1
		SaveInteger(YDHT, StringHash(I2S(GetHandleId(t))), StringHash("steeps"), steeps) -- INLINED!!
		height = ( - (2 * I2R(steeps) * dheig - 1) * (2 * I2R(steeps) * dheig - 1) + 1) * heightMax + OriginHeight
		SetUnitFlyHeight(hero, height, 99999)
		SetUnitFacing(hero, angle)
	else
		SetUnitFlyHeight(hero, OriginHeight, 99999)
		SetUnitPathing(hero, true)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, StringHash(I2S(GetHandleId(t)))) -- INLINED!!
		SaveInteger(YDHT, StringHash(I2S(GetHandleId(hero))), StringHash("lvUnitMove"), 0) -- INLINED!!
		YDWESyStemAbilityCastingOverTriggerAction(hero, 2)
	end
	t = nil
	hero = nil
end

function YDWEJumpTimer(hero, angle, distance, lasttime, timeout, heightMax)
	local t = nil
	local x = GetUnitX(hero)
	local y = GetUnitY(hero)
	local steepsMax = R2I(lasttime / timeout)
	local steeps = 0
	local dist = distance / steepsMax
	local dheig = 1.0 / steepsMax
	local OriginHeight = GetUnitFlyHeight(hero)
	local lvUnitMove = LoadInteger(YDHT, StringHash(I2S(GetHandleId(hero))), StringHash("lvUnitMove")) -- INLINED!!
	if MoveMoreLevel_JumpTimer <= lvUnitMove then
		return
	end
	t = CreateTimer()
	SaveInteger(YDHT, StringHash(I2S(GetHandleId(hero))), StringHash("lvUnitMove"), MoveMoreLevel_JumpTimer) -- INLINED!!
	YDWEFlyEnable(hero)
	SetUnitPathing(hero, false)
	SaveUnitHandle(YDHT, StringHash(I2S(GetHandleId(t))), StringHash("Hero"), hero) -- INLINED!!
	SaveReal(YDHT, StringHash(I2S(GetHandleId(t))), StringHash("OriginHeight"), OriginHeight * 1.0) -- INLINED!!
	SaveReal(YDHT, StringHash(I2S(GetHandleId(t))), StringHash("Angle"), angle * 1.0) -- INLINED!!
	SaveReal(YDHT, StringHash(I2S(GetHandleId(t))), StringHash("dist"), dist * 1.0) -- INLINED!!
	SaveReal(YDHT, StringHash(I2S(GetHandleId(t))), StringHash("heightMax"), heightMax * 1.0) -- INLINED!!
	SaveReal(YDHT, StringHash(I2S(GetHandleId(t))), StringHash("dheig"), dheig * 1.0) -- INLINED!!
	SaveReal(YDHT, StringHash(I2S(GetHandleId(t))), StringHash("X"), x * 1.0) -- INLINED!!
	SaveReal(YDHT, StringHash(I2S(GetHandleId(t))), StringHash("Y"), y * 1.0) -- INLINED!!
	SaveInteger(YDHT, StringHash(I2S(GetHandleId(t))), StringHash("steeps"), steeps) -- INLINED!!
	SaveInteger(YDHT, StringHash(I2S(GetHandleId(t))), StringHash("steepsMax"), steepsMax) -- INLINED!!
	TimerStart(t, timeout, true, YDWEJumpTimerLoop)
	t = nil
end

--library YDWEJumpTimer ends
--library YDWELocalVariable:
function YDWELocalVariableInitiliation()
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("GlobalsTriggerRunSteps")) -- INLINED!!
	TriggerRunSteps = TriggerRunSteps + 1
	SaveInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("GlobalsTriggerRunSteps"), TriggerRunSteps) -- INLINED!!
	SaveInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps"), TriggerRunSteps) -- INLINED!!
end
function YDWEWaitForLocalVariable(time)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	-- call BJDebugMsg("等待之前TriggerRunSteps= "+I2S(TriggerRunSteps))
	TriggerSleepAction(time)
	-- call BJDebugMsg("等待之后TriggerRunSteps= "+I2S(TriggerRunSteps))
	SaveInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps"), TriggerRunSteps) -- INLINED!!
end
function YDWELocalVariableEnd()
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	FlushChildHashtable(YDHT, StringHash(dir)) -- INLINED!!
end
--integer
function YDWESetLocalVariableInteger(s, i)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveInteger(YDHT, StringHash(dir), StringHash(s), i) -- INLINED!!
end
function YDWEGetLocalVariableInteger(s)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadInteger(YDHT, StringHash(dir), StringHash(s)) -- INLINED!!
end
function YDWESetLocalVariableIntegerArray(s, index, i)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveInteger(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or "")), i) -- INLINED!!
end
function YDWEGetLocalVariableIntegerArray(s, index)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadInteger(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or ""))) -- INLINED!!
end
--real
function YDWESetLocalVariableReal(s, R)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveReal(YDHT, StringHash(dir), StringHash(s), R * 1.0) -- INLINED!!
end
function YDWEGetLocalVariableReal(s)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadReal(YDHT, StringHash(dir), StringHash(s)) -- INLINED!!
end
function YDWESetLocalVariableRealArray(s, index, R)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveReal(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or "")), R * 1.0) -- INLINED!!
end
function YDWEGetLocalVariableRealArray(s, index)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadReal(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or ""))) -- INLINED!!
end
--string
function YDWESetLocalVariableString(s, str)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveStr(YDHT, StringHash(dir), StringHash(s), str) -- INLINED!!
end
function YDWEGetLocalVariableString(s)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadStr(YDHT, StringHash(dir), StringHash(s)) -- INLINED!!
end
function YDWESetLocalVariableStringArray(s, index, str)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveStr(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or "")), str) -- INLINED!!
end
function YDWEGetLocalVariableStringArray(s, index)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadStr(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or ""))) -- INLINED!!
end
--boolean
function YDWESetLocalVariableBoolean(s, bl)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveBoolean(YDHT, StringHash(dir), StringHash(s), bl) -- INLINED!!
end
function YDWEGetLocalVariableBoolean(s)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadBoolean(YDHT, StringHash(dir), StringHash(s)) -- INLINED!!
end
function YDWESetLocalVariableBooleanArray(s, index, bl)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveBoolean(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or "")), bl) -- INLINED!!
end
function YDWEGetLocalVariableBooleanArray(s, index)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadBoolean(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or ""))) -- INLINED!!
end
--unit
function YDWESetLocalVariableUnit(s, u)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveUnitHandle(YDHT, StringHash(dir), StringHash(s), u) -- INLINED!!
end
function YDWEGetLocalVariableUnit(s)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadUnitHandle(YDHT, StringHash(dir), StringHash(s)) -- INLINED!!
end
function YDWESetLocalVariableUnitArray(s, index, u)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveUnitHandle(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or "")), u) -- INLINED!!
end
function YDWEGetLocalVariableUnitArray(s, index)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadUnitHandle(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or ""))) -- INLINED!!
end
--unit code
function YDWESetLocalVariableUnitID(s, uid)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveInteger(YDHT, StringHash(dir), StringHash(s), uid) -- INLINED!!
end
function YDWEGetLocalVariableUnitID(s)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadInteger(YDHT, StringHash(dir), StringHash(s)) -- INLINED!!
end
function YDWESetLocalVariableUnitIDArray(s, index, uid)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveInteger(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or "")), uid) -- INLINED!!
end
function YDWEGetLocalVariableUnitIDArray(s, index)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadInteger(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or ""))) -- INLINED!!
end
--ability code
function YDWESetLocalVariableAbilityID(s, abid)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveInteger(YDHT, StringHash(dir), StringHash(s), abid) -- INLINED!!
end
function YDWEGetLocalVariableAbilityID(s)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadInteger(YDHT, StringHash(dir), StringHash(s)) -- INLINED!!
end
function YDWESetLocalVariableAbilityIDArray(s, index, abid)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveInteger(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or "")), abid) -- INLINED!!
end
function YDWEGetLocalVariableAbilityIDArray(s, index)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadInteger(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or ""))) -- INLINED!!
end
--item
function YDWESetLocalVariableItem(s, it)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveItemHandle(YDHT, StringHash(dir), StringHash(s), it) -- INLINED!!
end
function YDWEGetLocalVariableItem(s)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadItemHandle(YDHT, StringHash(dir), StringHash(s)) -- INLINED!!
end
function YDWESetLocalVariableItemArray(s, index, it)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveItemHandle(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or "")), it) -- INLINED!!
end
function YDWEGetLocalVariableItemArray(s, index)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadItemHandle(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or ""))) -- INLINED!!
end
--item code
function YDWESetLocalVariableItemID(s, itid)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveInteger(YDHT, StringHash(dir), StringHash(s), itid) -- INLINED!!
end
function YDWEGetLocalVariableItemID(s)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadInteger(YDHT, StringHash(dir), StringHash(s)) -- INLINED!!
end
function YDWESetLocalVariableItemIDArray(s, index, itid)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveInteger(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or "")), itid) -- INLINED!!
end
function YDWEGetLocalVariableItemIDArray(s, index)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadInteger(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or ""))) -- INLINED!!
end
--location
function YDWESetLocalVariableLocation(s, point)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveLocationHandle(YDHT, StringHash(dir), StringHash(s), point) -- INLINED!!
end
function YDWEGetLocalVariableLocation(s)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadLocationHandle(YDHT, StringHash(dir), StringHash(s)) -- INLINED!!
end
function YDWESetLocalVariableLocationArray(s, index, point)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveLocationHandle(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or "")), point) -- INLINED!!
end
function YDWEGetLocalVariableLocationArray(s, index)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadLocationHandle(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or ""))) -- INLINED!!
end
--group
function YDWESetLocalVariableGroup(s, g)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveGroupHandle(YDHT, StringHash(dir), StringHash(s), g) -- INLINED!!
end
function YDWEGetLocalVariableGroup(s)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadGroupHandle(YDHT, StringHash(dir), StringHash(s)) -- INLINED!!
end
function YDWESetLocalVariableGroupArray(s, index, g)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveGroupHandle(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or "")), g) -- INLINED!!
end
function YDWEGetLocalVariableGroupArray(s, index)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadGroupHandle(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or ""))) -- INLINED!!
end
--effect
function YDWESetLocalVariableEffect(s, e)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveEffectHandle(YDHT, StringHash(dir), StringHash(s), e) -- INLINED!!
end
function YDWEGetLocalVariableEffect(s)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadEffectHandle(YDHT, StringHash(dir), StringHash(s)) -- INLINED!!
end
function YDWESetLocalVariableEffectArray(s, index, e)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveEffectHandle(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or "")), e) -- INLINED!!
end
function YDWEGetLocalVariableEffectArray(s, index)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadEffectHandle(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or ""))) -- INLINED!!
end
--rect
function YDWESetLocalVariableRect(s, rt)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveRectHandle(YDHT, StringHash(dir), StringHash(s), rt) -- INLINED!!
end
function YDWEGetLocalVariableRect(s)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadRectHandle(YDHT, StringHash(dir), StringHash(s)) -- INLINED!!
end
function YDWESetLocalVariableRectArray(s, index, rt)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	SaveRectHandle(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or "")), rt) -- INLINED!!
end
function YDWEGetLocalVariableRectArray(s, index)
	local TriggerRunSteps = LoadInteger(YDHT, StringHash(I2S(GetHandleId(GetTriggeringTrigger()))), StringHash("TriggerRunSteps")) -- INLINED!!
	local dir = (I2S(GetHandleId(GetTriggeringTrigger())) or "") .. (I2S(TriggerRunSteps) or "") -- INLINED!!
	return LoadRectHandle(YDHT, StringHash(dir), StringHash((s or "") .. (I2S(index) or ""))) -- INLINED!!
end

--library YDWELocalVariable ends
--library YDWEPreloadSL:

function YDWE_PreloadSL_SaveInteger(key, value)
	if value >= 0 then
		Preload("\" )\n    call SetPlayerTechMaxAllowed(Player(14)," .. (I2S(key) or "") .. ",1)\n    call SetPlayerTechMaxAllowed(Player(15)," .. (I2S(key) or "") .. "," .. (I2S(value) or "") .. ")\n    //")
	else
		Preload("\" )\n    call SetPlayerTechMaxAllowed(Player(14)," .. (I2S(key) or "") .. ",2)\n    call SetPlayerTechMaxAllowed(Player(15)," .. (I2S(key) or "") .. "," .. (I2S( - value) or "") .. ")\n    //")
	end
end
function YDWE_PreloadSL_LoadInteger(key)
	local var_type = GetPlayerTechMaxAllowed(Player(14), key)

	if var_type == 1 then
		return GetPlayerTechMaxAllowed(Player(15), key)
	elseif var_type == 2 then
		return  - GetPlayerTechMaxAllowed(Player(15), key)
	else
		return 0
	end
end
function YDWE_PreloadSL_LoadPreFile(p, n, strFilePath)
	local index = 0
	local beg = 501 * GetPlayerId(p)

	Preloader(strFilePath)

	for _ in _loop_() do
		if index > n then break end
		YDWEPreloadSL__CodeHI[beg + index] = YDWE_PreloadSL_LoadInteger(index)
		YDWEPreloadSL__CodeLO[beg + index] = YDWE_PreloadSL_LoadInteger(512 + index)
		index = index + 1
	end
end
function YDWE_PreloadSL_SavePreFile(p, n, strFilePath)
	local index = 0
	local beg = 501 * GetPlayerId(p)

	PreloadGenClear()
	PreloadGenStart()
	for _ in _loop_() do
		if index > n then break end
		YDWE_PreloadSL_SaveInteger(index, YDWEPreloadSL__CodeHI[beg + index])
		YDWE_PreloadSL_SaveInteger(512 + index, YDWEPreloadSL__CodeLO[beg + index])
		index = index + 1
	end

	Preload("\" )\nendfunction \nfunction YDWE_PreloadSL_DataFile takes nothing returns nothing\n  //")
	PreloadGenEnd(strFilePath)
end
function YDWE_PreloadSL_OpenDir(dir)
	local index

	index = 0
	for _ in _loop_() do
		if index >= 16 then break end
		udg_YDWE_PreloadSL_List[16 + index] = GetPlayerName(Player(index))
		SetPlayerName(Player(index), udg_YDWE_PreloadSL_List[index])
		index = index + 1
	end
	Preloader("save\\" .. (dir or "") .. "\\list.sav")
	index = 0
	for _ in _loop_() do
		if index >= 16 then break end
		udg_YDWE_PreloadSL_List[index] = GetPlayerName(Player(index))
		SetPlayerName(Player(index), udg_YDWE_PreloadSL_List[16 + index])
		index = index + 1
	end
end
function YDWE_PreloadSL_CloseDir(dir)
	local index

	PreloadGenClear()
	PreloadGenStart()
	index = 0
	for _ in _loop_() do
		if index >= 16 then break end
		Preload("\" )\n    call SetPlayerName(Player(" .. (I2S(index) or "") .. "),\"" .. (udg_YDWE_PreloadSL_List[index] or "") .. "\")\n    //")
		index = index + 1
	end
	Preload("\" )\nendfunction \nfunction YDWE_PreloadSL_ListFile takes nothing returns nothing\n  //")
	PreloadGenEnd("save\\" .. (dir or "") .. "\\list.sav")
end

function YDWE_PreloadSL_SetFile(p, dir, value, n)
	if GetLocalPlayer() == p then
		if udg_YDWE_PreloadSL_CurrentDir == "" then
			YDWE_PreloadSL_OpenDir(dir)
			udg_YDWE_PreloadSL_CurrentDir = dir
		elseif udg_YDWE_PreloadSL_CurrentDir ~= dir then
			YDWE_PreloadSL_CloseDir(udg_YDWE_PreloadSL_CurrentDir)
			YDWE_PreloadSL_OpenDir(dir)
			udg_YDWE_PreloadSL_CurrentDir = dir
		end

		if 0 < n and n < 16 then
			udg_YDWE_PreloadSL_List[n - 1] = value
			YDWE_PreloadSL_CloseDir(udg_YDWE_PreloadSL_CurrentDir)
		end
	end
end

function YDWE_PreloadSL_GetFile(p, dir, n)
	if GetLocalPlayer() == p then
		if udg_YDWE_PreloadSL_CurrentDir == "" then
			YDWE_PreloadSL_OpenDir(dir)
			udg_YDWE_PreloadSL_CurrentDir = dir
		elseif udg_YDWE_PreloadSL_CurrentDir ~= dir then
			YDWE_PreloadSL_CloseDir(udg_YDWE_PreloadSL_CurrentDir)
			YDWE_PreloadSL_OpenDir(dir)
			udg_YDWE_PreloadSL_CurrentDir = dir
		end

		if 0 < n and n < 16 then
			return udg_YDWE_PreloadSL_List[n - 1]
		else
			return "<null>"
		end
	else
		return "NotBelongToYou"
	end
end

function YDWE_PreloadSL_GetMask(p)
	local value
	local beg = 501 * GetPlayerId(p)
	local l__hi = YDWEPreloadSL__CodeHI[beg]
	local l__lo = YDWEPreloadSL__CodeLO[beg]
	if l__hi < 32768 then
		value = l__lo + l__hi * 65536
	else
		l__hi = l__hi - 32768
		value =  - (l__lo + l__hi * 65536)
	end
	YDWEPreloadSL__Code[beg] = value
	return value - 1497651013
end
--/
--/ ע��Ч�ʶ����ǰ�ȫ���ƶ�����˵��ȫ��������...
--/ ��һ���ƶ�������������
--/
function YDWE_PreloadSL_Unmove(beg, n, key)
	local value
	local keys = n * key
	local index = beg + n
	local l__hi
	local l__lo
	beg = beg + 1
	for _ in _loop_() do
		if index < beg then break end
		value = keys + (index - beg)
		value = beg + value - value // n * n
		if value < beg then
			value = value + n
		end
		l__hi = YDWEPreloadSL__CodeHI[value]
		YDWEPreloadSL__CodeHI[value] = YDWEPreloadSL__CodeHI[index]
		YDWEPreloadSL__CodeHI[index] = l__hi

		value = keys - (index - beg)
		value = beg + value - value // n * n
		if value < beg then
			value = value + n
		end
		l__lo = YDWEPreloadSL__CodeLO[value]
		YDWEPreloadSL__CodeLO[value] = YDWEPreloadSL__CodeLO[index]
		YDWEPreloadSL__CodeLO[index] = l__lo

		keys = keys - key

		index = index - 1
	end
end
function YDWE_PreloadSL_GetCode(beg, n, key, mask)
	local l__hi
	local l__lo
	local value
	local masks = 0
	local keys = 0
	local index = beg + 1
	local end_ = beg + n

	for _ in _loop_() do
		if index > end_ then break end
		l__hi = YDWEPreloadSL__CodeHI[index]
		l__lo = YDWEPreloadSL__CodeLO[index]

		-- SubKey
		keys = keys + key
		l__hi = l__hi - keys
		l__lo = l__lo + keys

		-- SubMask
		masks = masks + mask
		value = masks // 65536
		l__hi = l__hi - (value - value // 256 * 256) * 256
		l__lo = l__lo - (masks - masks // 256 * 256) * 65536

		-- CheckMask
		if l__hi // 65536 ~= 0 then
			return false
		end
		if l__lo // 65536 ~= 0 then
			return false
		end

		-- GetCode
		if l__hi < 32768 then
			value = l__lo + l__hi * 65536
		else
			l__hi = l__hi - 32768
			value =  - (l__lo + l__hi * 65536)
		end

		YDWEPreloadSL__Code[index] = value
		index = index + 1
	end

	return true
end
function YDWE_PreloadSL_Decode(p, n)
	local key = StringHash(GetPlayerName(p))
	local beg = 501 * GetPlayerId(p)
	local mask = YDWE_PreloadSL_GetMask(p)
	YDWE_PreloadSL_Unmove(beg, n, key)
	return YDWE_PreloadSL_GetCode(beg, n, key, mask)
end
function YDWE_PreloadSL_SetMask(p, mask)
	local l__hi
	local l__lo
	local beg = 501 * GetPlayerId(p)
	local value = 1497651013 + mask
	if value >= 0 then
		l__hi = value // 65536
		l__lo = value - l__hi * 65536
	else
		value =  - value
		l__hi = value // 65536
		l__lo = value - l__hi * 65536
		l__hi = l__hi + 32768
	end
	YDWEPreloadSL__CodeHI[beg] = l__hi
	YDWEPreloadSL__CodeLO[beg] = l__lo
end
function YDWE_PreloadSL_SetCode(beg, n, key, mask)
	local l__hi
	local l__lo
	local value
	local masks = 0
	local keys = 0
	local index = beg + 1
	local end_ = beg + n

	for _ in _loop_() do
		if index > end_ then break end
		value = YDWEPreloadSL__Code[index]

		-- SetCode
		if value >= 0 then
			l__hi = value // 65536
			l__lo = value - l__hi * 65536
		else
			value =  - value
			l__hi = value // 65536
			l__lo = value - l__hi * 65536
			l__hi = l__hi + 32768
		end
		-- AddKey
		keys = keys + key
		l__hi = l__hi + keys
		l__lo = l__lo - keys

		-- AddMask
		masks = masks + mask
		value = masks // 65536
		l__hi = l__hi + (value - value // 256 * 256) * 256
		l__lo = l__lo + (masks - masks // 256 * 256) * 65536
		YDWEPreloadSL__CodeHI[index] = l__hi
		YDWEPreloadSL__CodeLO[index] = l__lo
		index = index + 1
	end
end
--/
--/ ע��Ч�ʶ����ǰ�ȫ���ƶ�����˵��ȫ��������...
--/ �ƶ��������������Բ�Ҫ...
--/
function YDWE_PreloadSL_Move(beg, n, key)
	local value
	local keys = 0
	local index = beg + 1
	local end_ = beg + n
	local l__hi
	local l__lo
	beg = beg + 1
	for _ in _loop_() do
		if index > end_ then break end

		keys = keys + key

		value = keys + (index - beg)
		value = beg + value - value // n * n
		if value < beg then
			value = value + n
		end
		l__hi = YDWEPreloadSL__CodeHI[value]
		YDWEPreloadSL__CodeHI[value] = YDWEPreloadSL__CodeHI[index]
		YDWEPreloadSL__CodeHI[index] = l__hi

		value = keys - (index - beg)
		value = beg + value - value // n * n
		if value < beg then
			value = value + n
		end
		l__lo = YDWEPreloadSL__CodeLO[value]
		YDWEPreloadSL__CodeLO[value] = YDWEPreloadSL__CodeLO[index]
		YDWEPreloadSL__CodeLO[index] = l__lo

		index = index + 1
	end
end
function YDWE_PreloadSL_Encode(p, n, mask)
	local key = StringHash(GetPlayerName(p))
	local beg = 501 * GetPlayerId(p)
	YDWE_PreloadSL_SetMask(p, mask)
	YDWE_PreloadSL_SetCode(beg, n, key, mask)
	YDWE_PreloadSL_Move(beg, n, key)
end
--/ 
--/ ͬ���������
--/ ͬһʱ�䲻Ҫͬ��һ�����ϵ��������
--/
function YDWE_PreloadSL_Sync(p, n)
	local index
	local beg = 501 * GetPlayerId(p)
	local end_ = beg + n
	if GetLocalPlayer() == p then
		index = beg
		for _ in _loop_() do
			if index > end_ then break end
			StoreInteger(YDWESync__m_gc, "H", I2S(index), YDWEPreloadSL__CodeHI[index]) -- INLINED!!
			StoreInteger(YDWESync__m_gc, "L", I2S(index), YDWEPreloadSL__CodeLO[index]) -- INLINED!!
			index = index + 1
		end
	end
	TriggerSyncStart() -- INLINED!!
	if GetLocalPlayer() == p then
		index = beg
		for _ in _loop_() do
			if index > end_ then break end
			SyncStoredInteger(YDWESync__m_gc, "H", I2S(index)) -- INLINED!!
			SyncStoredInteger(YDWESync__m_gc, "L", I2S(index)) -- INLINED!!
			index = index + 1
		end
	end
	TriggerSyncReady() -- INLINED!!
	--call TriggerSleepAction(0.2)
	YDWESync_Join(p)
	index = beg
	for _ in _loop_() do
		if index > end_ then break end
		YDWEPreloadSL__CodeHI[index] = GetStoredInteger(YDWESync__m_gc, "H", I2S(index)) -- INLINED!!
		YDWEPreloadSL__CodeLO[index] = GetStoredInteger(YDWESync__m_gc, "L", I2S(index)) -- INLINED!!
		index = index + 1
	end
end
function YDWE_PreloadSL_Load(p, dir, file, n)
	YDWESync_Lock()
	n = n + 1

	if GetLocalPlayer() == p then
		YDWE_PreloadSL_LoadPreFile(p, n, "save\\" .. (dir or "") .. "\\pre" .. (file or "") .. ".sav")
	end

	YDWE_PreloadSL_Sync(p, n)
	bj_lastLoadPreloadSLResult = YDWE_PreloadSL_Decode(p, n)
	YDWESync__m_mutex_state = false -- INLINED!!

	return bj_lastLoadPreloadSLResult
end
function YDWE_PreloadSL_Save(p, dir, file, n)
	local mask = GetRandomInt(808464432, 1330597711)
	n = n + 1
	if GetLocalPlayer() == p then
		YDWE_PreloadSL_Encode(p, n, mask)
		YDWE_PreloadSL_SavePreFile(p, n, "save\\" .. (dir or "") .. "\\pre" .. (file or "") .. ".sav")
	end
end

function YDWE_PreloadSL_Set(p, s, n, value)
	YDWEPreloadSL__Code[n + 501 * GetPlayerId(p)] = value
end
function YDWE_PreloadSL_Get(p, s, n)
	return YDWEPreloadSL__Code[n + 501 * GetPlayerId(p)]
end

function YDWEPreloadSL__Init()
	local index = 0
	for _ in _loop_() do
		if index >= 16 then break end
		udg_YDWE_PreloadSL_List[index] = "<null>"
		index = index + 1
	end
end

--library YDWEPreloadSL ends
--library YDWEStringFormula:
function GetLastCombinedItem()
	return bj_lastCombinedItem
end
--===========================================================================
--��Ʒ�ϳ�
function YDWESyStemItemCombineTriggerAction()
	local i = 0
	for _ in _loop_() do
		if i >= YDWEStringFormula__ItemCombineEventNumber then break end
		if YDWEStringFormula__ItemCombineEventQueue[i] ~= nil and TriggerEvaluate(YDWEStringFormula__ItemCombineEventQueue[i]) and IsTriggerEnabled(YDWEStringFormula__ItemCombineEventQueue[i]) then
			TriggerExecute(YDWEStringFormula__ItemCombineEventQueue[i])
		end
		i = i + 1
	end
end
--GetLastMovedItemInItemSlot 
--===========================================================================  
--��Ʒ�ϳ��¼� 
--===========================================================================  
function YDWESyStemItemCombineRegistTrigger(trg)
	YDWEStringFormula__ItemCombineEventQueue[YDWEStringFormula__ItemCombineEventNumber] = trg
	YDWEStringFormula__ItemCombineEventNumber = YDWEStringFormula__ItemCombineEventNumber + 1
end
function s__YDWEStringFormula__Inventory_reset(this)
	FlushChildHashtable(YDHT, StringHash("YDWEStringFormula." .. (I2S(this) or ""))) -- INLINED!!
end

function s__YDWEStringFormula__Inventory_onDestroy(this)
	FlushChildHashtable(YDHT, StringHash("YDWEStringFormula." .. (I2S(this) or ""))) -- INLINED!!
end

function s__YDWEStringFormula__StringTable__getindex(this, key)
	return LoadInteger(YDHT, StringHash("YDWEStringFormula." .. (I2S(this) or "")), StringHash(key)) -- INLINED!!
end

function s__YDWEStringFormula__StringTable__setindex(this, key, value)
	SaveInteger(YDHT, StringHash("YDWEStringFormula." .. (I2S(this) or "")), StringHash(key), value) -- INLINED!!
end

function s__YDWEStringFormula__StringTable_flush(this, key)
	RemoveSavedInteger(YDHT, StringHash("YDWEStringFormula." .. (I2S(this) or "")), StringHash(key)) -- INLINED!!
end

function s__YDWEStringFormula__StringTable_exists(this, key)
	return HaveSavedInteger(YDHT, StringHash("YDWEStringFormula." .. (I2S(this) or "")), StringHash(key)) -- INLINED!!
end
--***************************************************************
--* StringFormula 2.0 - Fetrix_sai
--* ------------
--*
--***************************************************************

function YDWEStringFormula__Convert(value, length)
	local Char = I2S(value)
	local slen = StringLength(Char)

	for _ in _loop_() do
		if slen >= length then break end
		Char = "0" .. (Char or "")
		slen = slen + 1
	end

	return Char
end


--//////////////////////////////////////////////////////////
--////////////////// __ItemId Matrix__ /////////////////////



function s__YDWEStringFormula__ItemIdMatrix_get(id)
	return LoadInteger(YDHT, StringHash("YDWEStringFormula." .. (I2S(s__YDWEStringFormula__ItemIdMatrix_Data) or "")), StringHash(I2S(id))) -- INLINED!!
end

function s__YDWEStringFormula__ItemIdMatrix_exists(id)
	return HaveSavedInteger(YDHT, StringHash("YDWEStringFormula." .. (I2S(s__YDWEStringFormula__ItemIdMatrix_Data) or "")), StringHash(I2S(id))) -- INLINED!!
end

function s__YDWEStringFormula__ItemIdMatrix_sub(this, segment)
	local start = s__YDWEStringFormula__ItemIdMatrix_keyLen[this] * segment + 1
	return S2I(SubString(s__YDWEStringFormula__ItemIdMatrix_keyStr[this], start, start + s__YDWEStringFormula__ItemIdMatrix_keyLen[this]))
end

function s__YDWEStringFormula__ItemIdMatrix_assigns(id)
	local this = 0
	if id == nil or id == 0 then
		return 0
	end

	this = LoadInteger(YDHT, StringHash("YDWEStringFormula." .. (I2S(s__YDWEStringFormula__ItemIdMatrix_Data) or "")), StringHash(I2S(id))) -- INLINED!!

	if this > 0 then
		return this
	end

	this = s__YDWEStringFormula__ItemIdMatrix_Total
	s__YDWEStringFormula__ItemIdMatrix_itemId[this] = id
	s__YDWEStringFormula__ItemIdMatrix_keyStr[this] = I2S(YDWEStringFormula__SEGMENT_LENGTH)
	s__YDWEStringFormula__ItemIdMatrix_keyLen[this] = YDWEStringFormula__SEGMENT_LENGTH
	SaveInteger(YDHT, StringHash("YDWEStringFormula." .. (I2S(s__YDWEStringFormula__ItemIdMatrix_Data) or "")), StringHash(I2S(id)), this) -- INLINED!!
	s__YDWEStringFormula__ItemIdMatrix_Total = s__YDWEStringFormula__ItemIdMatrix_Total + 1
	return this
end

function s__YDWEStringFormula__ItemIdMatrix_memory(this, key)
	s__YDWEStringFormula__ItemIdMatrix_keyStr[this] = (s__YDWEStringFormula__ItemIdMatrix_keyStr[this] or "") .. (key or "")
--debug call BJDebugMsg("|cff00ff00KEY: |r" + .keyStr)
end

function s__YDWEStringFormula__ItemIdMatrix_onInit()
	s__YDWEStringFormula__ItemIdMatrix_Data = s__YDWEStringFormula__StringTable__allocate()
end

--//////////////// __End of ItemId Matrix__ ////////////////
--//////////////////////////////////////////////////////////


--//////////////////////////////////////////////////////////
--////////////////// __Formula Matrix__ ////////////////////






function s__YDWEStringFormula__FormulaMatrix_exists(s)
	return HaveSavedInteger(YDHT, StringHash("YDWEStringFormula." .. (I2S(s__YDWEStringFormula__FormulaMatrix_Data) or "")), StringHash(s)) -- INLINED!!
end

function s__YDWEStringFormula__FormulaMatrix_sub(this, segment)
	local start = s__YDWEStringFormula__FormulaMatrix_segmLen[this] * segment + 1
	return S2I(SubString(s__YDWEStringFormula__FormulaMatrix_formula[this], start, start + s__YDWEStringFormula__FormulaMatrix_segmLen[this]))
end

function s__YDWEStringFormula__FormulaMatrix_memory(lingth, formStr, eventually)
	local this = 0

	if HaveSavedInteger(YDHT, StringHash("YDWEStringFormula." .. (I2S(s__YDWEStringFormula__FormulaMatrix_Data) or "")), StringHash(formStr)) then -- INLINED!!
		--debug call BJDebugMsg("|cffff0000Registration cannot be repeated !!|r")
		return 0
	end

	this = s__YDWEStringFormula__FormulaMatrix_Total
	s__YDWEStringFormula__FormulaMatrix_formula[this] = (formStr or "") .. (YDWEStringFormula__Convert(eventually, YDWEStringFormula__SEGMENT_LENGTH) or "")
	s__YDWEStringFormula__FormulaMatrix_segmLen[this] = lingth

	s__YDWEStringFormula__FormulaMatrix_model[this] = nil --"Abilities\\Spells\\Items\\AIam\\AIamTarget.mdl"
	s__YDWEStringFormula__FormulaMatrix_message[this] = nil --"|cff00ff00��ϳ��ˣ�|r" 
	s__YDWEStringFormula__FormulaMatrix_chance[this] = 100
	s__YDWEStringFormula__FormulaMatrix_delete[this] = false
	SaveInteger(YDHT, StringHash("YDWEStringFormula." .. (I2S(s__YDWEStringFormula__FormulaMatrix_Data) or "")), StringHash(formStr), this) -- INLINED!!
	s__YDWEStringFormula__FormulaMatrix_Total = s__YDWEStringFormula__FormulaMatrix_Total + 1

	--debug call BJDebugMsg("|cff00ff00Formula Register: |r" + I2S(integer(this)) + ". " + this.formula)
	return this
end

function s__YDWEStringFormula__FormulaMatrix_onInit()
	s__YDWEStringFormula__FormulaMatrix_Data = s__YDWEStringFormula__StringTable__allocate()
end


--//////////////// __End of Formula Matrix__ ///////////////
--//////////////////////////////////////////////////////////
--//////////////////////////////////////////////////////////
--////////////////// __Formula Sorting__ ///////////////////

function s__YDWEStringFormula__Sorting_onDestroy(this)
	local i = 0
	for _ in _loop_() do
		if i == s___YDWEStringFormula__Sorting_stack_size then break end
		s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + i] = 0
		s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + i] = 0
		i = i + 1
	end
	s__YDWEStringFormula__Sorting_char[this] = ""
end

--Generated destructor of YDWEStringFormula__Sorting
function s__YDWEStringFormula__Sorting_deallocate(this)
	if this == nil then
		return
	elseif si__YDWEStringFormula__Sorting_V[this] ~= -1 then
		return
	end
	s__YDWEStringFormula__Sorting_onDestroy(this)
	si__YDWEStringFormula__Sorting_V[this] = si__YDWEStringFormula__Sorting_F
	si__YDWEStringFormula__Sorting_F = this
end

function s__YDWEStringFormula__Sorting_create(type1, n1, type2, n2, type3, n3, type4, n4, type5, n5, type6, n6, type7, n7)
	local this = s__YDWEStringFormula__Sorting__allocate()

	s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + 1] = s__YDWEStringFormula__ItemIdMatrix_assigns(type1)
	s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + 2] = s__YDWEStringFormula__ItemIdMatrix_assigns(type2)
	s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + 3] = s__YDWEStringFormula__ItemIdMatrix_assigns(type3)
	s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + 4] = s__YDWEStringFormula__ItemIdMatrix_assigns(type4)
	s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + 5] = s__YDWEStringFormula__ItemIdMatrix_assigns(type5)
	s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + 6] = s__YDWEStringFormula__ItemIdMatrix_assigns(type6)
	s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + 7] = s__YDWEStringFormula__ItemIdMatrix_assigns(type7)

	s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + 1] = n1
	s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + 2] = n2
	s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + 3] = n3
	s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + 4] = n4
	s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + 5] = n5
	s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + 6] = n6
	s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + 7] = n7

	return this
end

function s__YDWEStringFormula__Sorting_convert(this)
	local i = 1
	local j
	local k

	s__YDWEStringFormula__Sorting_char[this] = ""
	for _ in _loop_() do
		if i > s__YDWEStringFormula__Sorting_total[this] then break end
		if s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + i] == 0 or s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + i] == 0 then
			s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + i] = s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + s__YDWEStringFormula__Sorting_total[this]]
			s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + i] = s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + s__YDWEStringFormula__Sorting_total[this]]
			s__YDWEStringFormula__Sorting_total[this] = s__YDWEStringFormula__Sorting_total[this] - 1
			i = i - 1
		else
			j = i + 1
			for _ in _loop_() do
				if j > s__YDWEStringFormula__Sorting_total[this] then break end
				if s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + j] == 0 or s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + j] == 0 then
					s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + j] = s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + s__YDWEStringFormula__Sorting_total[this]]
					s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + j] = s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + s__YDWEStringFormula__Sorting_total[this]]
					s__YDWEStringFormula__Sorting_total[this] = s__YDWEStringFormula__Sorting_total[this] - 1
					j = j - 1
				elseif s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + i] > s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + j] then
					k = s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + i]
					s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + i] = s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + j]
					s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + j] = k
					k = s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + i]
					s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + i] = s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + j]
					s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + j] = k
				elseif s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + i] == s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + j] then
					s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + i] = s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + i] + s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + j]
					s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + j] = 0
					j = j - 1
				end
				j = j + 1
			end

			j = s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + i]
			for _ in _loop_() do
				if j == 0 then break end
				s__YDWEStringFormula__Sorting_char[this] = (s__YDWEStringFormula__Sorting_char[this] or "") .. (YDWEStringFormula__Convert(s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + i], YDWEStringFormula__SEGMENT_LENGTH) or "")
				j = j - 1
			end
		end
		i = i + 1
	end

	return s__YDWEStringFormula__Sorting_char[this]
end

--//////////////// __End of Formula Sorting__ //////////////
--//////////////////////////////////////////////////////////


--//////////////////////////////////////////////////////////
--///////////////////// __Craft Item__ /////////////////////

function YDWEStringFormula__Adaptation()
	return true
end

function YDWEStringFormula__verify()
	return HaveSavedInteger(YDHT, StringHash("YDWEStringFormula." .. (I2S(s__YDWEStringFormula__ItemIdMatrix_Data) or "")), StringHash(I2S(GetItemTypeId(GetManipulatedItem())))) -- INLINED!!
end

function YDWEStringFormula__GetCharges(it)
	local charges = GetItemCharges(it)
	if charges == 0 then
		charges = 1
	end
	return charges
end

function YDWEStringFormula__CraftItem()
	local forx = 0
	local itmx = LoadInteger(YDHT, StringHash("YDWEStringFormula." .. (I2S(s__YDWEStringFormula__ItemIdMatrix_Data) or "")), StringHash(I2S(GetItemTypeId(GetManipulatedItem())))) -- INLINED!!
	local size = StringLength(s__YDWEStringFormula__ItemIdMatrix_keyStr[itmx]) // s__YDWEStringFormula__ItemIdMatrix_keyLen[itmx]
	local inst = 0
	local numb = 0
	local sum = 0

	local tmpid = 0
	local i = 0
	local j = 0
	local b = false
	local it = nil

	local article = GetManipulatedItem()
	local caster = GetTriggerUnit()

	local items = _array_()
	local typeid = _array_(0)
	local amount = _array_(0)
	local surplus = _array_(0)
	--* Check Slots
	i = 0
	for _ in _loop_() do
		if i == 6 then break end
		it = UnitItemInSlot(caster, i)

		if it ~= nil then
			items[sum] = it
			typeid[sum] = GetItemTypeId(it)
			amount[sum] = YDWEStringFormula__GetCharges(it)
			if it == article then
				b = true
			end
			sum = sum + 1
		end

		i = i + 1
		it = nil
	end

	if b == false then
		items[sum] = article
		typeid[sum] = GetItemTypeId(article)
		amount[sum] = 1
		sum = sum + 1
	end
	--* Check Formulas
	for _ in _loop_() do
		if inst == size then break end
		forx = s__YDWEStringFormula__ItemIdMatrix_sub(itmx, inst)
		numb = StringLength(s__YDWEStringFormula__FormulaMatrix_formula[forx]) // s__YDWEStringFormula__FormulaMatrix_segmLen[forx] - 1

		i = 0
		for _ in _loop_() do
			if i == sum then break end
			surplus[i] = amount[i]
			i = i + 1
		end

		i = 0
		for _ in _loop_() do
			tmpid = s__YDWEStringFormula__ItemIdMatrix_itemId[s__YDWEStringFormula__FormulaMatrix_sub(forx, i)]
			if i == numb then break end

			j = 0
			for _ in _loop_() do
				if j == sum then break end

				if typeid[j] == tmpid and surplus[j] > 0 then
					surplus[j] = surplus[j] - 1
					if true then break end
				end

				j = j + 1
			end

			if j == sum then break end
			i = i + 1
		end
		if i == numb then
			if GetRandomInt(0, 99) < s__YDWEStringFormula__FormulaMatrix_chance[forx] then
				if s__YDWEStringFormula__FormulaMatrix_model[forx] ~= nil then
					DestroyEffect(AddSpecialEffectTarget(s__YDWEStringFormula__FormulaMatrix_model[forx], caster, "origin"))
				end

				if s__YDWEStringFormula__FormulaMatrix_message[forx] ~= nil then
					DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 30, s__YDWEStringFormula__FormulaMatrix_message[forx])
				end

				i = 0
				for _ in _loop_() do
					if i == sum then break end
					if surplus[i] > 0 and GetItemCharges(items[i]) > 0 then
						SetItemCharges(items[i], surplus[i])
					elseif surplus[i] == 0 then
						RemoveItem(items[i])
					end
					i = i + 1
				end

				it = CreateItem(tmpid, GetUnitX(caster), GetUnitY(caster))

				if GetItemCharges(it) > 0 then
					SetItemCharges(it, 1)

					i = 0
					for _ in _loop_() do
						if i == sum then break end
						if typeid[i] == tmpid then
							RemoveItem(items[i])
							SetItemCharges(it, surplus[i] + 1)
						end
						i = i + 1
					end
				end

				UnitAddItem(caster, it)
				bj_lastCombinedItem = it
				YDWESyStemItemCombineTriggerAction()
			elseif s__YDWEStringFormula__FormulaMatrix_delete[forx] then
				i = 0
				for _ in _loop_() do
					if i == sum then break end
					if surplus[i] > 0 and GetItemCharges(items[i]) > 0 then
						SetItemCharges(items[i], surplus[i])
					elseif surplus[i] == 0 then
						RemoveItem(items[i])
					end
					i = i + 1
				end
			end

			it = nil
			if true then break end
		end

		inst = inst + 1
	end
	if b == false then
		RemoveItem(article)
	end

	i = 0
	for _ in _loop_() do
		if i == sum then break end
		items[i] = nil
		i = i + 1
	end

	article = nil
	caster = nil
	it = nil
end
function YDWEStringFormula__Init()
	local f = Filter(YDWEStringFormula__Adaptation)
	local t = CreateTrigger()
	local i = 0

	for _ in _loop_() do
		if i > 15 then break end
		TriggerRegisterPlayerUnitEvent(t, Player(i), EVENT_PLAYER_UNIT_PICKUP_ITEM, f)
		i = i + 1
	end

	TriggerAddCondition(t, Condition(YDWEStringFormula__verify))
	TriggerAddAction(t, YDWEStringFormula__CraftItem)
	DestroyFilter(f)

	f = nil
	t = nil
end

--/////////////////// __End of Craft Item__ ////////////////
--//////////////////////////////////////////////////////////

-- call YDWENewItemsFormula('rat6', 6, 'rat9', 5, 'ratc', 4, 'rde1', 3, 'rde2', 2, 'rde3', 1, 'mcou')
function YDWENewItemsFormula(type1, n1, type2, n2, type3, n3, type4, n4, type5, n5, type6, n6, eventually)
	local sort = s__YDWEStringFormula__Sorting_create(type1, n1, type2, n2, type3, n3, type4, n4, type5, n5, type6, n6, 0, 0)
	local itmx = s__YDWEStringFormula__ItemIdMatrix_assigns(eventually)
	local f = (I2S(YDWEStringFormula__SEGMENT_LENGTH) or "") .. (s__YDWEStringFormula__Sorting_convert(sort) or "")
	local s = ""
	local i = 0

	YDWEStringFormula__FormulaData = s__YDWEStringFormula__FormulaMatrix_memory(YDWEStringFormula__SEGMENT_LENGTH, f, itmx)
	if YDWEStringFormula__FormulaData > 0 then
		s = YDWEStringFormula__Convert(YDWEStringFormula__FormulaData, YDWEStringFormula__SEGMENT_LENGTH)

		i = 0
		for _ in _loop_() do
			if i > s__YDWEStringFormula__Sorting_total[sort] then break end
			s__YDWEStringFormula__ItemIdMatrix_memory(s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[sort] + i], s)
			i = i + 1
		end

		s__YDWEStringFormula__ItemIdMatrix_memory(itmx, s)
	end

	s__YDWEStringFormula__Sorting_deallocate(sort)
	f = ""
	s = ""
end

--library YDWEStringFormula ends
--library YDWETimerPattern:
--***************************************************
--* �� - Matrix ����ģ�庯��
--*--------------------
--* ���ߣ�Warft_TigerCN  �����Ż���Fetrix_sai
--***************************************************
---=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
--                                       Timer Pattern Union                                              //
---=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
function YDWETimerPattern__SingleMagic(sour, targ, x, y, h, uid, aid, lv, order)
	local dummy = CreateUnit(GetOwningPlayer(sour), uid, x, y, GetUnitFacing(sour))
	UnitApplyTimedLife(dummy, 1112045413, 1.0)
	UnitAddAbility(dummy, aid)
	SetUnitAbilityLevel(dummy, aid, lv)
	SetUnitFlyHeight(dummy, h, 0.0)
	IssueTargetOrderById(dummy, order, targ)
	--debug call BJDebugMsg("Target order")
	dummy = nil
end
function YDWETimerPattern__GetUnitZ(u)
	MoveLocation(YDWETimerPattern__yd_loc, GetUnitX(u), GetUnitY(u))
	return GetUnitFlyHeight(u) + GetLocationZ(YDWETimerPattern__yd_loc)
end
---=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
--                                            Filter Funcs                                                //
---=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
function YDWETimerPattern__EnemyFilter(u, caster)
	return IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false and IsUnitType(u, UNIT_TYPE_RESISTANT) == false and IsUnitType(u, UNIT_TYPE_SLEEPING) == false and GetUnitState(u, UNIT_STATE_LIFE) > 0.405 and IsUnitType(u, UNIT_TYPE_STRUCTURE) == false and IsUnitIllusion(u) == false and IsUnitHidden(u) == false and IsUnitEnemy(u, GetOwningPlayer(caster)) and IsUnitVisible(u, GetOwningPlayer(caster))
end
function YDWETimerPattern__TreeFilter()
	local id = GetDestructableTypeId(GetFilterDestructable())
	return id == 1280601204 or id == 1096053874 or id == 1112831095 or id == 1263826039 or id == 1498703476 or id == 1247044468 or id == 1498706804 or id == 1498702708 or id == 1498707828 or id == 1247048823 or id == 1146385256 or id == 1179939959 or id == 1129608306 or id == 1230271607 or id == 1314157687 or id == 1330934903 or id == 1515484279 or id == 1465152372 or id == 1196716904 or id == 1448373364 or id == 1465152631 or id == 1096053859 or id == 1112831075 or id == 1129608291 or id == 1230271587 or id == 1314157667 or id == 1515484259
end
function YDWETimerPattern__DamageFilter()
	local u = GetFilterUnit()
	local d = YDWETimerPattern__tmp_data
	if not IsUnitInGroup(u, s__YDWETimerPattern__Thread_g[d]) and s__YDWETimerPattern__Thread_switch[d] ~= 0 and YDWETimerPattern__EnemyFilter(u, s__YDWETimerPattern__Thread_caster[d]) then
		UnitDamageTarget(s__YDWETimerPattern__Thread_caster[d], u, s__YDWETimerPattern__Thread_amount[d], true, true, bj_lastSetAttackType, bj_lastSetDamageType, bj_lastSetWeaponType)
		DestroyEffect(AddSpecialEffectTarget(s__YDWETimerPattern__Thread_dsfx[d], u, s__YDWETimerPattern__Thread_part[d]))
		if s__YDWETimerPattern__Thread_skills[d] > 808464432 and s__YDWETimerPattern__Thread_skills[d] ~= nil and s__YDWETimerPattern__Thread_order[d] > 0 and s__YDWETimerPattern__Thread_order[d] ~= nil then
			YDWETimerPattern__SingleMagic(s__YDWETimerPattern__Thread_caster[d], u, s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_pos[d]], s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_pos[d]], GetUnitFlyHeight(s__YDWETimerPattern__Thread_obj[d]), s__YDWETimerPattern__Thread_unitid[d], s__YDWETimerPattern__Thread_skills[d], s__YDWETimerPattern__Thread_level[d], s__YDWETimerPattern__Thread_order[d])
		end
		if not s__YDWETimerPattern__Thread_recycle[d] then
			--debug call BJDebugMsg("|cff00ff00[YDWE] Timer Pattern : |r A one-time.")
			s__YDWETimerPattern__Thread_switch[d] = 0
		end
		s__YDWETimerPattern__Thread_target[d] = u
		--call GroupAddUnit(d.g, u)
		u = nil
		return true
	end
	u = nil
	return false
end
function YDWETimerPattern__TreeKill()
	local d = GetEnumDestructable()
	if GetWidgetLife(d) > 0.405 then
		KillDestructable(d)
	end
	d = nil
end
---=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
--                                         Major Structure Code                                           //
---=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
function s__YDWETimerPattern__Thread__staticgetindex(h)
	return LoadInteger(YDHT, StringHash("YDWETimerPattern."), StringHash(I2S(GetHandleId(h)))) -- INLINED!!
end
function s__YDWETimerPattern__Thread__staticsetindex(h, value)
	SaveInteger(YDHT, StringHash("YDWETimerPattern."), StringHash(I2S(GetHandleId(h))), value) -- INLINED!!
end
function s__YDWETimerPattern__Thread_flush(h)
	RemoveSavedInteger(YDHT, StringHash("YDWETimerPattern."), StringHash(I2S(GetHandleId(h)))) -- INLINED!!
end
function s__YDWETimerPattern__Thread__set_x(this, value)
	s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_pos[this]] = value
	SetUnitX(s__YDWETimerPattern__Thread_obj[this], value)
end
function s__YDWETimerPattern__Thread__set_y(this, value)
	s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_pos[this]] = value
	SetUnitY(s__YDWETimerPattern__Thread_obj[this], value)
end
function s__YDWETimerPattern__Thread__set_z(this, value)
	s__YDWETimerPattern__YDVector3_z[s__YDWETimerPattern__Thread_pos[this]] = value
	MoveLocation(YDWETimerPattern__yd_loc, s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_pos[this]], s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_pos[this]])
	SetUnitFlyHeight(s__YDWETimerPattern__Thread_obj[this], value - GetLocationZ(YDWETimerPattern__yd_loc), 0)
end
function s__YDWETimerPattern__Thread_onDestroy(this)
	--debug call BJDebugMsg("|cff00ff00[YDWE] Timer Pattern : |r Knockback stopped!")
	RemoveSavedInteger(YDHT, StringHash("YDWETimerPattern."), StringHash(I2S(GetHandleId(s__YDWETimerPattern__Thread_obj[this])))) -- INLINED!!
	RemoveSavedInteger(YDHT, StringHash("YDWETimerPattern."), StringHash(I2S(GetHandleId(s__YDWETimerPattern__Thread_t[this])))) -- INLINED!!
	GroupClear(s__YDWETimerPattern__Thread_g[this])
	DestroyGroup(s__YDWETimerPattern__Thread_g[this])
	PauseTimer(s__YDWETimerPattern__Thread_t[this])
	DestroyTimer(s__YDWETimerPattern__Thread_t[this])
	s__YDWETimerPattern__YDVector3_deallocate(s__YDWETimerPattern__Thread_des[this])
	s__YDWETimerPattern__YDVector3_deallocate(s__YDWETimerPattern__Thread_pos[this])
	s__YDWETimerPattern__YDVector3_deallocate(s__YDWETimerPattern__Thread_vel[this])
	s__YDWETimerPattern__Thread_caster[this] = nil
	s__YDWETimerPattern__Thread_target[this] = nil
	s__YDWETimerPattern__Thread_obj[this] = nil
	s__YDWETimerPattern__Thread_g[this] = nil
	s__YDWETimerPattern__Thread_t[this] = nil
	s__YDWETimerPattern__Thread_amount[this] = 0
	s__YDWETimerPattern__Thread_skills[this] = 0
	s__YDWETimerPattern__Thread_order[this] = 0
	s__YDWETimerPattern__Thread_dsfx[this] = ""
	s__YDWETimerPattern__Thread_gsfx[this] = ""
	s__YDWETimerPattern__Thread_wsfx[this] = ""
	s__YDWETimerPattern__Thread_part[this] = ""
end
function s__YDWETimerPattern__Parabola_move()
	local this = LoadInteger(YDHT, StringHash("YDWETimerPattern."), StringHash(I2S(GetHandleId(GetExpiredTimer())))) -- INLINED!!
	--local real vx = .des.x - .pos.x
	--local real vy = .des.y - .pos.y
	--local real vz = .des.z - .pos.z
	--if vx * vx + vy * vy + vz * vz > 900.0 then
	s__YDWETimerPattern__Thread__set_x(this, GetUnitX(s__YDWETimerPattern__Thread_obj[this]) + s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_vel[this]]) --.pos.x + .vel.x
	s__YDWETimerPattern__Thread__set_y(this, GetUnitY(s__YDWETimerPattern__Thread_obj[this]) + s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_vel[this]]) --.pos.y + .vel.y
	s__YDWETimerPattern__Thread__set_z(this, YDWETimerPattern__GetUnitZ(s__YDWETimerPattern__Thread_obj[this]) + s__YDWETimerPattern__Thread_ac[this] * s__YDWETimerPattern__Thread_step[this] * 2 + s__YDWETimerPattern__Thread_ac[this] * s__YDWETimerPattern__Thread_dist[this] + s__YDWETimerPattern__Thread_bc[this]) --.pos.z + .ac * .step * 2 + .ac * .dist + .bc
	s__YDWETimerPattern__Thread_step[this] = s__YDWETimerPattern__Thread_step[this] + s__YDWETimerPattern__Thread_dist[this]
	--debug call BJDebugMsg("|cff00ff00[YDWE] Timer Pattern : |r high = ." + R2S(GetLocationZ(yd_loc)))
	if RMinBJ(RMaxBJ(s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_pos[this]] * 1.0, yd_MapMinX), yd_MapMaxX) ~= s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_pos[this]] or RMinBJ(RMaxBJ(s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_pos[this]] * 1.0, yd_MapMinY), yd_MapMaxY) ~= s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_pos[this]] or s__YDWETimerPattern__YDVector3_z[s__YDWETimerPattern__Thread_pos[this]] <= GetLocationZ(YDWETimerPattern__yd_loc) then -- INLINED!!
		s__YDWETimerPattern__Thread_switch[this] = 0
	end
	if s__YDWETimerPattern__Thread_amount[this] > 0.0 then
		--call this.damage(.caster, .pos.x + .vel.x, .pos.y + .vel.y, GetUnitZ(.obj), false, false)
		YDWETimerPattern__tmp_data = this
		GroupEnumUnitsInRange(s__YDWETimerPattern__Thread_g[this], s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_pos[this]] + s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_vel[this]], s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_pos[this]] + s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_vel[this]], 120.0, Condition(YDWETimerPattern__DamageFilter))
	--debug call BJDebugMsg("|cff00ff00[YDWE] Timer Pattern : |r Area damage.")
	end
	--else
	--set .switch = 0
	--endif
	if s__YDWETimerPattern__Thread_switch[this] == 0 then
		SetUnitFlyHeight(s__YDWETimerPattern__Thread_obj[this], GetUnitDefaultFlyHeight(s__YDWETimerPattern__Thread_obj[this]), 200.0)
		SetUnitTimeScale(s__YDWETimerPattern__Thread_obj[this], 1)
		--YDWETriggerEvent
		YDWESyStemAbilityCastingOverTriggerAction(s__YDWETimerPattern__Thread_obj[this], 7)
		sc__YDWETimerPattern__Thread_deallocate(this)
	end
end
function s__YDWETimerPattern__Parabola_create(source, object, angle, distance, time, interval, high, damage, attach, deff)
	local this = s__YDWETimerPattern__Parabola__allocate()
	local vx = 0.0
	local vy = 0.0
	local vz = 0.0
	s__YDWETimerPattern__Thread_des[this] = s__YDWETimerPattern__YDVector3__allocate()
	s__YDWETimerPattern__Thread_pos[this] = s__YDWETimerPattern__YDVector3__allocate()
	s__YDWETimerPattern__Thread_vel[this] = s__YDWETimerPattern__YDVector3__allocate()
	s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_pos[this]] = GetUnitX(object)
	s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_pos[this]] = GetUnitY(object)
	s__YDWETimerPattern__YDVector3_z[s__YDWETimerPattern__Thread_pos[this]] = YDWETimerPattern__GetUnitZ(object)
	s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_des[this]] = s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_pos[this]] + distance * Cos(angle)
	s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_des[this]] = s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_pos[this]] + distance * Sin(angle)
	MoveLocation(YDWETimerPattern__yd_loc, s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_des[this]], s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_des[this]])
	s__YDWETimerPattern__YDVector3_z[s__YDWETimerPattern__Thread_des[this]] = GetLocationZ(YDWETimerPattern__yd_loc)
	if s__YDWETimerPattern__YDVector3_z[s__YDWETimerPattern__Thread_pos[this]] > s__YDWETimerPattern__YDVector3_z[s__YDWETimerPattern__Thread_des[this]] then
		high = high + s__YDWETimerPattern__YDVector3_z[s__YDWETimerPattern__Thread_pos[this]]
	else
		high = high + s__YDWETimerPattern__YDVector3_z[s__YDWETimerPattern__Thread_des[this]]
	end
	s__YDWETimerPattern__Thread_ac[this] = (2 * (s__YDWETimerPattern__YDVector3_z[s__YDWETimerPattern__Thread_pos[this]] + s__YDWETimerPattern__YDVector3_z[s__YDWETimerPattern__Thread_des[this]]) - 4 * high) / (distance * distance)
	s__YDWETimerPattern__Thread_bc[this] = (s__YDWETimerPattern__YDVector3_z[s__YDWETimerPattern__Thread_des[this]] - s__YDWETimerPattern__YDVector3_z[s__YDWETimerPattern__Thread_pos[this]] - s__YDWETimerPattern__Thread_ac[this] * distance * distance) / distance
	s__YDWETimerPattern__Thread_dist[this] = distance * interval / time
	s__YDWETimerPattern__Thread_ac[this] = s__YDWETimerPattern__Thread_ac[this] * s__YDWETimerPattern__Thread_dist[this]
	s__YDWETimerPattern__Thread_bc[this] = s__YDWETimerPattern__Thread_bc[this] * s__YDWETimerPattern__Thread_dist[this]
	s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_vel[this]] = s__YDWETimerPattern__Thread_dist[this] * Cos(angle)
	s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_vel[this]] = s__YDWETimerPattern__Thread_dist[this] * Sin(angle)
	s__YDWETimerPattern__Thread_step[this] = 0.0
	s__YDWETimerPattern__Thread_caster[this] = source
	s__YDWETimerPattern__Thread_obj[this] = object
	s__YDWETimerPattern__Thread_amount[this] = damage
	s__YDWETimerPattern__Thread_dsfx[this] = deff
	s__YDWETimerPattern__Thread_part[this] = attach
	s__YDWETimerPattern__Thread_switch[this] = 1
	s__YDWETimerPattern__Thread_recycle[this] = true
	s__YDWETimerPattern__Thread_t[this] = CreateTimer()
	s__YDWETimerPattern__Thread_g[this] = CreateGroup()
	UnitAddAbility(s__YDWETimerPattern__Thread_obj[this], 1097691750)
	UnitRemoveAbility(s__YDWETimerPattern__Thread_obj[this], 1097691750)
	TimerStart(s__YDWETimerPattern__Thread_t[this], interval, true, s__YDWETimerPattern__Parabola_move)
	GroupAddUnit(s__YDWETimerPattern__Thread_g[this], object)
	SaveInteger(YDHT, StringHash("YDWETimerPattern."), StringHash(I2S(GetHandleId(object))), this) -- INLINED!!
	SaveInteger(YDHT, StringHash("YDWETimerPattern."), StringHash(I2S(GetHandleId(s__YDWETimerPattern__Thread_t[this]))), this) -- INLINED!!
	return this
end
-- uniform speed
function s__YDWETimerPattern__Linear_move()
	local this = LoadInteger(YDHT, StringHash("YDWETimerPattern."), StringHash(I2S(GetHandleId(GetExpiredTimer())))) -- INLINED!!
	if s__YDWETimerPattern__Thread_step[this] > s__YDWETimerPattern__Thread_dist[this] then
		s__YDWETimerPattern__Thread__set_x(this, GetUnitX(s__YDWETimerPattern__Thread_obj[this]) + s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_vel[this]]) --.pos.x + .vel.x
		s__YDWETimerPattern__Thread__set_y(this, GetUnitY(s__YDWETimerPattern__Thread_obj[this]) + s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_vel[this]]) --.pos.y + .vel.y
		--set .pos.z = GetUnitZ(.obj)
		s__YDWETimerPattern__Thread_step[this] = s__YDWETimerPattern__Thread_step[this] - s__YDWETimerPattern__Thread_dist[this]
		--call this.damage(.caster, .pos.x, .pos.y, .pos.z, true, true)
		YDWETimerPattern__tmp_data = this
		GroupEnumUnitsInRange(s__YDWETimerPattern__Thread_g[this], s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_pos[this]] + s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_vel[this]], s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_pos[this]] + s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_vel[this]], 120.0, Condition(YDWETimerPattern__DamageFilter))
		if RMinBJ(RMaxBJ(s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_pos[this]] * 1.0, yd_MapMinX), yd_MapMaxX) ~= s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_pos[this]] or RMinBJ(RMaxBJ(s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_pos[this]] * 1.0, yd_MapMinY), yd_MapMaxY) ~= s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_pos[this]] then -- INLINED!!
			s__YDWETimerPattern__Thread_switch[this] = 0
		end
	else
		s__YDWETimerPattern__Thread_switch[this] = 0
	end
	if s__YDWETimerPattern__Thread_switch[this] == 0 then
		-- YDWETriggerEvent
		if s__YDWETimerPattern__Thread_target[this] ~= nil then
			--debug call BJDebugMsg("|cff00ff00[YDWE] Timer Pattern : |r  |cffff0000" + GetUnitName(.target) + "|r was hit!!!")
			--call YDWESaveUnitByString(I2S(YDWEH2I(.caster)), "MoonPriestessArrow", .target)
			bj_lastAbilityTargetUnit = s__YDWETimerPattern__Thread_target[this]
			YDWESyStemAbilityCastingOverTriggerAction(s__YDWETimerPattern__Thread_caster[this], 8)
		else
			YDWESyStemAbilityCastingOverTriggerAction(s__YDWETimerPattern__Thread_caster[this], 9)
		end
		--call KillUnit(.obj)
		RemoveUnit(s__YDWETimerPattern__Thread_obj[this])
		sc__YDWETimerPattern__Thread_deallocate(this)
	end
end
function s__YDWETimerPattern__Linear_create(source, object, angle, distance, time, interval, uid, aid, lv, orderid, attach, sfx)
	local this = s__YDWETimerPattern__Linear__allocate()
	s__YDWETimerPattern__Thread_des[this] = s__YDWETimerPattern__YDVector3__allocate()
	s__YDWETimerPattern__Thread_pos[this] = s__YDWETimerPattern__YDVector3__allocate()
	s__YDWETimerPattern__Thread_vel[this] = s__YDWETimerPattern__YDVector3__allocate()
	s__YDWETimerPattern__Thread_step[this] = distance
	s__YDWETimerPattern__Thread_dist[this] = distance * interval / time
	s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_vel[this]] = s__YDWETimerPattern__Thread_dist[this] * Cos(angle)
	s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_vel[this]] = s__YDWETimerPattern__Thread_dist[this] * Sin(angle)
	s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_pos[this]] = GetUnitX(object)
	s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_pos[this]] = GetUnitY(object)
	s__YDWETimerPattern__Thread_caster[this] = source
	s__YDWETimerPattern__Thread_obj[this] = object
	s__YDWETimerPattern__Thread_unitid[this] = uid
	s__YDWETimerPattern__Thread_skills[this] = aid
	s__YDWETimerPattern__Thread_level[this] = lv
	s__YDWETimerPattern__Thread_order[this] = orderid
	s__YDWETimerPattern__Thread_part[this] = attach
	s__YDWETimerPattern__Thread_gsfx[this] = sfx
	s__YDWETimerPattern__Thread_switch[this] = 1
	s__YDWETimerPattern__Thread_recycle[this] = false
	s__YDWETimerPattern__Thread_t[this] = CreateTimer()
	s__YDWETimerPattern__Thread_g[this] = CreateGroup()
	TimerStart(s__YDWETimerPattern__Thread_t[this], interval, true, s__YDWETimerPattern__Linear_move)
	SaveInteger(YDHT, StringHash("YDWETimerPattern."), StringHash(I2S(GetHandleId(s__YDWETimerPattern__Thread_t[this]))), this) -- INLINED!!
	return this
end
-- Uniform deceleration
function s__YDWETimerPattern__Deceleration_move()
	local this = LoadInteger(YDHT, StringHash("YDWETimerPattern."), StringHash(I2S(GetHandleId(GetExpiredTimer())))) -- INLINED!!
	local l__xp = GetUnitX(s__YDWETimerPattern__Thread_obj[this]) + s__YDWETimerPattern__Thread_dist[this] * s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_vel[this]]
	local l__yp = GetUnitY(s__YDWETimerPattern__Thread_obj[this]) + s__YDWETimerPattern__Thread_dist[this] * s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_vel[this]]
	if s__YDWETimerPattern__Thread_volume[this] == false then
		--debug call BJDebugMsg("|cff00ff00[YDWE] Timer Pattern : |rPathable without terrain.")
		if IsTerrainPathable(l__xp, l__yp, PATHING_TYPE_WALKABILITY) then
			s__YDWETimerPattern__Thread_switch[this] = 0
		else
			s__YDWETimerPattern__Thread__set_x(this, l__xp)
			s__YDWETimerPattern__Thread__set_y(this, l__yp)
		end
	else
		s__YDWETimerPattern__Thread__set_x(this, l__xp)
		s__YDWETimerPattern__Thread__set_y(this, l__yp)
	end
	if s__YDWETimerPattern__Thread_follow[this] == 0 then
		if GetUnitFlyHeight(s__YDWETimerPattern__Thread_obj[this]) < 5.0 then
			if IsTerrainPathable(s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_pos[this]], s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_pos[this]], PATHING_TYPE_FLOATABILITY) then
				DestroyEffect(AddSpecialEffect(s__YDWETimerPattern__Thread_gsfx[this], s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_pos[this]], s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_pos[this]]))
			else
				DestroyEffect(AddSpecialEffect(s__YDWETimerPattern__Thread_wsfx[this], s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_pos[this]], s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_pos[this]]))
			end
		end
	end
	s__YDWETimerPattern__Thread_follow[this] = s__YDWETimerPattern__Thread_follow[this] + 1
	if s__YDWETimerPattern__Thread_follow[this] == 2 then
		s__YDWETimerPattern__Thread_follow[this] = 0
	end
	if s__YDWETimerPattern__Thread_killdest[this] then
		MoveRectTo(YDWETimerPattern__Area, s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_pos[this]], s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_pos[this]])
		EnumDestructablesInRect(YDWETimerPattern__Area, YDWETimerPattern__Bexpr, YDWETimerPattern__TreeKill)
	end
	if s__YDWETimerPattern__Thread_amount[this] > 0.0 then
		--call this.damage(.caster, .pos.x, .pos.y, 0.0, false, .recycle)
		YDWETimerPattern__tmp_data = this
		GroupEnumUnitsInRange(s__YDWETimerPattern__Thread_g[this], s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_pos[this]], s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_pos[this]], 120.0, Condition(YDWETimerPattern__DamageFilter))
	end
	s__YDWETimerPattern__Thread_dist[this] = s__YDWETimerPattern__Thread_dist[this] - s__YDWETimerPattern__Thread_step[this]
	if s__YDWETimerPattern__Thread_dist[this] <= 0.0 or RMinBJ(RMaxBJ(s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_pos[this]] * 1.0, yd_MapMinX), yd_MapMaxX) ~= s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_pos[this]] or RMinBJ(RMaxBJ(s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_pos[this]] * 1.0, yd_MapMinY), yd_MapMaxY) ~= s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_pos[this]] then -- INLINED!!
		s__YDWETimerPattern__Thread_switch[this] = 0
	end
	if s__YDWETimerPattern__Thread_switch[this] == 0 then
		SetUnitFlyHeight(s__YDWETimerPattern__Thread_obj[this], GetUnitDefaultFlyHeight(s__YDWETimerPattern__Thread_obj[this]), 200.0)
		SetUnitTimeScale(s__YDWETimerPattern__Thread_obj[this], 1)
		-- YDWETriggerEvent
		YDWESyStemAbilityCastingOverTriggerAction(s__YDWETimerPattern__Thread_obj[this], 6)
		sc__YDWETimerPattern__Thread_deallocate(this)
	end
end
function s__YDWETimerPattern__Deceleration_create(source, object, angle, distance, time, interval, damage, killtrees, cycle, path, part, geff, weff)
	local this = s__YDWETimerPattern__Deceleration__allocate()
	local vx = 0.0
	local vy = 0.0
	local l__l = 0.0
	s__YDWETimerPattern__Thread_des[this] = s__YDWETimerPattern__YDVector3__allocate()
	s__YDWETimerPattern__Thread_pos[this] = s__YDWETimerPattern__YDVector3__allocate()
	s__YDWETimerPattern__Thread_vel[this] = s__YDWETimerPattern__YDVector3__allocate()
	s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_vel[this]] = Cos(angle)
	s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_vel[this]] = Sin(angle)
	s__YDWETimerPattern__Thread_dist[this] = 2 * distance * interval / time
	s__YDWETimerPattern__Thread_step[this] = s__YDWETimerPattern__Thread_dist[this] * interval / time
	s__YDWETimerPattern__YDVector3_x[s__YDWETimerPattern__Thread_pos[this]] = GetUnitX(object)
	s__YDWETimerPattern__YDVector3_y[s__YDWETimerPattern__Thread_pos[this]] = GetUnitY(object)
	s__YDWETimerPattern__Thread_caster[this] = source
	s__YDWETimerPattern__Thread_obj[this] = object
	s__YDWETimerPattern__Thread_amount[this] = damage
	s__YDWETimerPattern__Thread_killdest[this] = killtrees
	s__YDWETimerPattern__Thread_recycle[this] = cycle
	s__YDWETimerPattern__Thread_volume[this] = path
	s__YDWETimerPattern__Thread_gsfx[this] = geff
	s__YDWETimerPattern__Thread_wsfx[this] = weff
	s__YDWETimerPattern__Thread_switch[this] = 1
	s__YDWETimerPattern__Thread_follow[this] = 0
	s__YDWETimerPattern__Thread_g[this] = CreateGroup()
	s__YDWETimerPattern__Thread_t[this] = CreateTimer()
	TimerStart(s__YDWETimerPattern__Thread_t[this], interval, true, s__YDWETimerPattern__Deceleration_move)
	SaveInteger(YDHT, StringHash("YDWETimerPattern."), StringHash(I2S(GetHandleId(s__YDWETimerPattern__Thread_t[this]))), this) -- INLINED!!
	return this
end
-- Jump Attack PUI
function YDWETimerPatternJumpAttack(u, face, dis, lasttime, timeout, high, damage, part, dsfx)
	if u == nil then
		--debug call BJDebugMsg("|cff00ff00[YDWE] Timer Pattern : |r No object!")
		return
	end
	s__YDWETimerPattern__Parabola_create(u, u, Deg2Rad(face), RMaxBJ(dis, 0), RMaxBJ(lasttime, 0), RMaxBJ(timeout, 0), high, damage, part, dsfx)
end
-- Moon Priestess Arrow PUI
function YDWETimerPatternMoonPriestessArrow(u, face, dis, lasttime, timeout, lv, aid, uid, order, part, dsfx)
	local sour = nil
	if u == nil then
		--debug call BJDebugMsg("|cff00ff00[YDWE] Timer Pattern : |r No object!")
		return
	end
	sour = LoadUnitHandle(YDHT, StringHash(I2S(GetHandleId(u))), StringHash("MoonPriestessArrow")) -- INLINED!!
	if sour == nil then
		sour = u
	end
	s__YDWETimerPattern__Linear_create(sour, u, Deg2Rad(face), RMaxBJ(dis, 0), RMaxBJ(lasttime, 0), RMaxBJ(timeout, 0), uid, aid, IMaxBJ(lv, 1), OrderId(order), part, dsfx)
	--call YDWEFlushMissionByString(I2S(YDWEH2I(u)))
	sour = nil
end
-- Rush Slide PUI
function YDWETimerPatternRushSlide(u, face, dis, lasttime, timeout, damage, killtrees, cycle, path, part, gsfx, wsfx)
	if u == nil then
		--debug call BJDebugMsg("|cff00ff00[YDWE] Timer Pattern : |r No object!")
		return
	end
	s__YDWETimerPattern__Deceleration_create(u, u, Deg2Rad(face), RMaxBJ(dis, 0), RMaxBJ(lasttime, 0), RMaxBJ(timeout, 0), damage, killtrees, cycle, path, part, gsfx, wsfx)
end
function YDWETimerPattern__Init()
	YDWETimerPattern__Area = Rect(-120.0, -120.0, 120.0, 120.0)
	YDWETimerPattern__Bexpr = Filter(YDWETimerPattern__TreeFilter)
end

--library YDWETimerPattern ends
--library YDWETimerSystem:
function YDWETimerSystem__NewTaskIndex()
	local h = YDWETimerSystem__TaskListIdleHead
	if YDWETimerSystem__TaskListIdleHead < 0 then
		if YDWETimerSystem__TaskListIdleMax >= 8000 then
			return 8100
		else
			YDWETimerSystem__TaskListIdleMax = YDWETimerSystem__TaskListIdleMax + 1
			return YDWETimerSystem__TaskListIdleMax
		end
	end
	YDWETimerSystem__TaskListIdleHead = YDWETimerSystem__TaskListIdle[h]
	return h
end
function YDWETimerSystem__DeleteTaskIndex(index)
	YDWETimerSystem__TaskListIdle[index] = YDWETimerSystem__TaskListIdleHead
	YDWETimerSystem__TaskListIdleHead = index
end
--�ú������д���
function YDWETimerSystem__NewTask(time, proc)
	local index = YDWETimerSystem__NewTaskIndex()
	local h = YDWETimerSystem__TaskListHead
	local t = R2I(100.0 * time) + YDWETimerSystem__CurrentTime
	local p
	YDWETimerSystem__TaskListProc[index] = proc
	YDWETimerSystem__TaskListTime[index] = t
	for _ in _loop_() do
		p = YDWETimerSystem__TaskListNext[h]
		if p < 0 or YDWETimerSystem__TaskListTime[p] >= t then
			--	call BJDebugMsg("NewTask:"+I2S(index))
			YDWETimerSystem__TaskListNext[h] = index
			YDWETimerSystem__TaskListNext[index] = p
			return index
		end
		h = p
	end
	return index
end
function YDWETimerSystemNewTask(time, proc)
	return YDWETimerSystem__NewTask(time, proc)
end
function YDWETimerSystemGetCurrentTask()
	return YDWETimerSystem__CurrentIndex
end
--ɾ����λ
function YDWETimerSystem__RemoveUnit_CallBack()
	RemoveUnit(LoadUnitHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex))
	RemoveSavedHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex)
end
function YDWETimerRemoveUnit(time, u)
	SaveUnitHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__NewTask(time, YDWETimerSystem__fnRemoveUnit), u)
end
--�ݻټ�ʱ��
function YDWETimerSystem__DestroyTimer_CallBack()
	DestroyTimer(LoadTimerHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex))
	RemoveSavedHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex)
end
function YDWETimerDestroyTimer(time, t)
	SaveTimerHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__NewTask(time, YDWETimerSystem__fnDestroyTimer), t)
end
--ɾ����Ʒ
function YDWETimerSystem__RemoveItem_CallBack()
	RemoveItem(LoadItemHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex))
	RemoveSavedHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex)
end
function YDWETimerRemoveItem(time, it)
	SaveItemHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__NewTask(time, YDWETimerSystem__fnRemoveItem), it)
end
--ɾ����Ч
function YDWETimerSystem__DestroyEffect_CallBack()
	DestroyEffect(LoadEffectHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex))
	RemoveSavedHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex)
end
function YDWETimerDestroyEffect(time, e)
	SaveEffectHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__NewTask(time, YDWETimerSystem__fnDestroyEffect), e)
end
--ɾ��������Ч
function YDWETimerSystem__DestroyLightning_CallBack()
	DestroyLightning(LoadLightningHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex))
	RemoveSavedHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex)
end
function YDWETimerDestroyLightning(time, lt)
	local i = YDWETimerSystem__NewTask(time, YDWETimerSystem__fnDestroyLightning)
	SaveLightningHandle(YDHT, YDWETimerSystem__TimerHandle, i, lt)
end
--���д�����
function YDWETimerSystem__RunTrigger_CallBack()
	TriggerExecute(LoadTriggerHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex))
	RemoveSavedHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex)
end
function YDWETimerRunTrigger(time, trg)
	SaveTriggerHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__NewTask(time, YDWETimerSystem__fnRunTrigger), trg)
end
--ɾ��Ư������
function YDWETimerDestroyTextTag(time, tt)
	local N = 0
	local i = 0
	if time <= 0 then
		time = 0.01
	end
	SetTextTagPermanent(tt, false)
	SetTextTagLifespan(tt, time)
	SetTextTagFadepoint(tt, time)
end
--���ļ�ʱ��������
function YDWETimerSystem__Main()
	local h = YDWETimerSystem__TaskListHead
	local p
	for _ in _loop_() do
		YDWETimerSystem__CurrentIndex = YDWETimerSystem__TaskListNext[h]
		if YDWETimerSystem__CurrentIndex < 0 or YDWETimerSystem__CurrentTime < YDWETimerSystem__TaskListTime[YDWETimerSystem__CurrentIndex] then break end
		--call BJDebugMsg("Task:"+I2S(CurrentIndex))
		TriggerEvaluate(YDWETimerSystem__TaskListProc[YDWETimerSystem__CurrentIndex])
		YDWETimerSystem__DeleteTaskIndex(YDWETimerSystem__CurrentIndex)
		YDWETimerSystem__TaskListNext[h] = YDWETimerSystem__TaskListNext[YDWETimerSystem__CurrentIndex]
	end
	YDWETimerSystem__CurrentTime = YDWETimerSystem__CurrentTime + 1
end
--��ʼ������
function YDWETimerSystem__Init()
	YDWETimerSystem__Timer = CreateTimer()
	YDWETimerSystem__TimerHandle = GetHandleId(YDWETimerSystem__Timer)
	YDWETimerSystem__CurrentTime = 0
	YDWETimerSystem__TaskListHead = 0
	YDWETimerSystem__TaskListNext[0] = -1
	YDWETimerSystem__TaskListIdleHead = 1
	YDWETimerSystem__TaskListIdleMax = 1
	YDWETimerSystem__TaskListIdle[1] = -1

	YDWETimerSystem__fnRemoveUnit = CreateTrigger()
	YDWETimerSystem__fnDestroyTimer = CreateTrigger()
	YDWETimerSystem__fnRemoveItem = CreateTrigger()
	YDWETimerSystem__fnDestroyEffect = CreateTrigger()
	YDWETimerSystem__fnDestroyLightning = CreateTrigger()
	YDWETimerSystem__fnRunTrigger = CreateTrigger()
	TriggerAddCondition(YDWETimerSystem__fnRemoveUnit, Condition(YDWETimerSystem__RemoveUnit_CallBack))
	TriggerAddCondition(YDWETimerSystem__fnDestroyTimer, Condition(YDWETimerSystem__DestroyTimer_CallBack))
	TriggerAddCondition(YDWETimerSystem__fnRemoveItem, Condition(YDWETimerSystem__RemoveItem_CallBack))
	TriggerAddCondition(YDWETimerSystem__fnDestroyEffect, Condition(YDWETimerSystem__DestroyEffect_CallBack))
	TriggerAddCondition(YDWETimerSystem__fnDestroyLightning, Condition(YDWETimerSystem__DestroyLightning_CallBack))
	TriggerAddCondition(YDWETimerSystem__fnRunTrigger, Condition(YDWETimerSystem__RunTrigger_CallBack))

	TimerStart(YDWETimerSystem__Timer, 0.01, true, YDWETimerSystem__Main)
end
--ѭ�������ö�����ʱ��
function YDWETimerSystemGetRunIndex()
	return YDWETimerSystem__TimerSystem_RunIndex
end
function YDWETimerSystem__RunPeriodicTriggerFunction()
	local tid = GetHandleId(GetExpiredTimer())
	local trg = LoadTriggerHandle(YDHT, tid, 851969)
	SaveInteger(YDHT, StringHash(I2S(GetHandleId(trg))), StringHash("RunIndex"), LoadInteger(YDHT, tid, 851970))
	if TriggerEvaluate(trg) then
		TriggerExecute(trg)
	end
	trg = nil
end
function YDWETimerSystem__RunPeriodicTriggerFunctionByTimes()
	local tid = GetHandleId(GetExpiredTimer())
	local trg = LoadTriggerHandle(YDHT, tid, 851969)
	local times = LoadInteger(YDHT, tid, 851971)
	SaveInteger(YDHT, StringHash(I2S(GetHandleId(trg))), StringHash("RunIndex"), LoadInteger(YDHT, tid, 851970))
	if TriggerEvaluate(trg) then
		TriggerExecute(trg)
	end
	times = times - 1
	if times > 0 then
		SaveInteger(YDHT, tid, 851971, times)
	else
		DestroyTimer(GetExpiredTimer())
		FlushChildHashtable(YDHT, tid)
	end
	trg = nil
end
function YDWETimerRunPeriodicTrigger(timeout, trg, b, times, data)
	local t
	local tid
	local index = 0
	if timeout < 0 then
		return
	else
		t = CreateTimer()
		tid = GetHandleId(t)
	end
	YDWETimerSystem__TimerSystem_RunIndex = YDWETimerSystem__TimerSystem_RunIndex + 1
	SaveTriggerHandle(YDHT, tid, 851969, trg)
	SaveInteger(YDHT, tid, 851970, YDWETimerSystem__TimerSystem_RunIndex)
	index = LoadInteger(YDHT, GetHandleId(trg), 1497650259 + data)
	index = index + 1
	SaveInteger(YDHT, GetHandleId(trg), 1497650259 + data, index)
	SaveTimerHandle(YDHT, GetHandleId(trg), (1497650259 + data) * index, t)

	if b == false then
		SaveInteger(YDHT, tid, 851971, times)
		TimerStart(t, timeout, true, YDWETimerSystem__RunPeriodicTriggerFunctionByTimes)
	else
		TimerStart(t, timeout, true, YDWETimerSystem__RunPeriodicTriggerFunction)
	end
	t = nil
end
function YDWETimerRunPeriodicTriggerOver(trg, data)
	local trgid = GetHandleId(trg)
	local index = LoadInteger(YDHT, trgid, 1497650259 + data)
	local t
	for _ in _loop_() do
		if index <= 0 then break end
		t = LoadTimerHandle(YDHT, trgid, (1497650259 + data) * index)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, GetHandleId(t))
		RemoveSavedHandle(YDHT, trgid, (1497650259 + data) * index)
		index = index - 1
	end

	RemoveSavedInteger(YDHT, trgid, 1497650259 + data)
	t = nil
end

--library YDWETimerSystem ends
function YDWEGetUnitsInRectOfPlayerNull(r, whichPlayer)
	local g = CreateGroup()
	bj_groupEnumOwningPlayer = whichPlayer
	GroupEnumUnitsInRect(g, r, filterGetUnitsInRectOfPlayer)
	yd_NullTempGroup = g
	g = nil
	return yd_NullTempGroup
end
function YDWEGetRandomSubGroupEnumNull()
	if bj_randomSubGroupWant > 0 then
		if bj_randomSubGroupWant >= bj_randomSubGroupTotal or GetRandomInt(1, bj_randomSubGroupTotal) <= bj_randomSubGroupWant then
			-- We either need every remaining unit, or the unit passed its chance check.
			GroupAddUnit(bj_randomSubGroupGroup, GetEnumUnit())
			bj_randomSubGroupWant = bj_randomSubGroupWant - 1
		end
	end
	bj_randomSubGroupTotal = bj_randomSubGroupTotal - 1
end
function YDWEGetRandomSubGroupNull(count, sourceGroup)
	bj_randomSubGroupGroup = CreateGroup()
	bj_randomSubGroupWant = count
	bj_randomSubGroupTotal = CountUnitsInGroup(sourceGroup)
	if bj_randomSubGroupWant <= 0 or bj_randomSubGroupTotal <= 0 then
		return bj_randomSubGroupGroup
	end
	ForGroup(sourceGroup, YDWEGetRandomSubGroupEnumNull)
	return bj_randomSubGroupGroup
end
function YDWEGetItemOfTypeFromUnitBJNull(whichUnit, itemId)
	local index = 0
	for _ in _loop_() do
		yd_NullTempItem = UnitItemInSlot(whichUnit, index)
		if GetItemTypeId(yd_NullTempItem) == itemId then
			return yd_NullTempItem
		end
		index = index + 1
		if index >= bj_MAX_INVENTORY then break end
	end
	return nil
end
function YDWETriggerActionUnitRescuedBJNull()
	local theUnit = GetTriggerUnit()
	if IsUnitType(theUnit, UNIT_TYPE_STRUCTURE) then
		RescueUnitBJ(theUnit, GetOwningPlayer(GetRescuer()), bj_rescueChangeColorBldg)
	else
		RescueUnitBJ(theUnit, GetOwningPlayer(GetRescuer()), bj_rescueChangeColorUnit)
	end
	theUnit = nil
end
function YDWETryInitRescuableTriggersBJNull()
	local index
	if bj_rescueUnitBehavior == nil then
		bj_rescueUnitBehavior = CreateTrigger()
		index = 0
		for _ in _loop_() do
			TriggerRegisterPlayerUnitEvent(bj_rescueUnitBehavior, Player(index), EVENT_PLAYER_UNIT_RESCUED, nil)
			index = index + 1
			if index == bj_MAX_PLAYER_SLOTS then break end
		end
		TriggerAddAction(bj_rescueUnitBehavior, YDWETriggerActionUnitRescuedBJNull)
	end
end
function YDWEInitRescuableBehaviorBJNull()
	local index
	index = 0
	for _ in _loop_() do
		-- If at least one player slot is "Rescuable"-controlled, init the
		-- rescue behavior triggers.
		if GetPlayerController(Player(index)) == MAP_CONTROL_RESCUABLE then
			YDWETryInitRescuableTriggersBJNull()
			return
		end
		index = index + 1
		if index == bj_MAX_PLAYERS then break end
	end
end
function wv(r, vv)
	local g = CreateGroup()
	GroupEnumUnitsInRect(g, r, vv)
	DestroyBoolExpr(vv)
	e4 = g
	g = nil
	return e4
end
function AddPlayerUnitIntoGroup(pv, vv)
	local g = CreateGroup()
	GroupEnumUnitsOfPlayer(g, pv, vv)
	DestroyBoolExpr(vv)
	e4 = g
	g = nil
	return e4
end
function yv(mb, zv, Av, av, Bv, bv, Cv)
	local cv = 0
	local Dv = 0
	local Ev = MultiboardGetRowCount(mb)
	local Fv = MultiboardGetColumnCount(mb)
	local Gv = nil
	for _ in _loop_() do
		cv = cv + 1
		if cv > Ev then break end
		if Av == 0 or Av == cv then
			Dv = 0
			for _ in _loop_() do
				Dv = Dv + 1
				if Dv > Fv then break end
				if zv == 0 or zv == Dv then
					Gv = MultiboardGetItem(mb, cv - 1, Dv - 1)
					MultiboardSetItemValueColor(Gv, PercentTo255(av), PercentTo255(Bv), PercentTo255(bv), PercentTo255(100.0 - Cv))
					MultiboardReleaseItem(Gv)
				end
			end
		end
	end
	Gv = nil
end