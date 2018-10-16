DzAPI_Map_SaveServerValue = japi.DzAPI_Map_SaveServerValue
DzAPI_Map_GetServerValue = japi.DzAPI_Map_GetServerValue
DzAPI_Map_Ladder_SetStat = japi.DzAPI_Map_Ladder_SetStat
DzAPI_Map_IsRPGLadder = japi.DzAPI_Map_IsRPGLadder
DzAPI_Map_GetGameStartTime = japi.DzAPI_Map_GetGameStartTime
DzAPI_Map_Stat_SetStat = japi.DzAPI_Map_Stat_SetStat
DzAPI_Map_GetMatchType = japi.DzAPI_Map_GetMatchType
DzAPI_Map_Ladder_SetPlayerStat = japi.DzAPI_Map_Ladder_SetPlayerStat
DzAPI_Map_GetServerValueErrorCode = japi.DzAPI_Map_GetServerValueErrorCode
DzAPI_Map_GetLadderLevel = japi.DzAPI_Map_GetLadderLevel
DzAPI_Map_IsRedVIP = japi.DzAPI_Map_IsRedVIP
DzAPI_Map_IsBlueVIP = japi.DzAPI_Map_IsBlueVIP
DzAPI_Map_GetLadderRank = japi.DzAPI_Map_GetLadderRank
DzAPI_Map_GetMapLevelRank = japi.DzAPI_Map_GetMapLevelRank
DzAPI_Map_GetGuildName = japi.DzAPI_Map_GetGuildName
DzAPI_Map_GetGuildRole = japi.DzAPI_Map_GetGuildRole
DzAPI_Map_IsRPGLobby = japi.DzAPI_Map_IsRPGLobby
DzAPI_Map_GetMapLevel = japi.DzAPI_Map_GetMapLevel
DzAPI_Map_MissionComplete = japi.DzAPI_Map_MissionComplete
DzAPI_Map_GetActivityData = japi.DzAPI_Map_GetActivityData
DzAPI_Map_GetMapConfig = japi.DzAPI_Map_GetMapConfig
DzAPI_Map_HasMallItem = japi.DzAPI_Map_HasMallItem
DzAPI_Map_SavePublicArchive = japi.DzAPI_Map_SavePublicArchive
DzAPI_Map_GetPublicArchive = japi.DzAPI_Map_GetPublicArchive
DzAPI_Map_UseConsumablesItem = japi.DzAPI_Map_UseConsumablesItem
DzAPI_Map_OrpgTrigger = japi.DzAPI_Map_OrpgTrigger
DzAPI_Map_GetServerArchiveDrop = japi.DzAPI_Map_GetServerArchiveDrop
DzAPI_Map_GetServerArchiveEquip = japi.DzAPI_Map_GetServerArchiveEquip

--library DzAPI:
function GetPlayerServerValueSuccess(whichPlayer)
	return DzAPI_Map_GetServerValueErrorCode(whichPlayer) == 0 
end
function DzAPI_Map_StoreInteger(whichPlayer, key, value)
	key = "I" .. (key or "")
	DzAPI_Map_SaveServerValue(whichPlayer, key, I2S(value))
	key = nil
	whichPlayer = nil
end
function DzAPI_Map_GetStoredInteger(whichPlayer, key)
	local value
	key = "I" .. (key or "")
	value = S2I(DzAPI_Map_GetServerValue(whichPlayer, key))
	key = nil
	whichPlayer = nil
	return value
end
function DzAPI_Map_StoreReal(whichPlayer, key, value)
	key = "R" .. (key or "")
	DzAPI_Map_SaveServerValue(whichPlayer, key, R2S(value))
	key = nil
	whichPlayer = nil
end
function DzAPI_Map_GetStoredReal(whichPlayer, key)
	local value
	key = "R" .. (key or "")
	value = S2R(DzAPI_Map_GetServerValue(whichPlayer, key))
	key = nil
	whichPlayer = nil
	return value
end
function DzAPI_Map_StoreBoolean(whichPlayer, key, value)
	key = "B" .. (key or "")
	if value then
		DzAPI_Map_SaveServerValue(whichPlayer, key, "1")
	else
		DzAPI_Map_SaveServerValue(whichPlayer, key, "0")
	end
	key = nil
	whichPlayer = nil
end
function DzAPI_Map_GetStoredBoolean(whichPlayer, key)
	local value
	key = "B" .. (key or "")
	key = DzAPI_Map_GetServerValue(whichPlayer, key)
	if key == "1" then
		value = true
	else
		value = false
	end
	key = nil
	whichPlayer = nil
	return value
end
function DzAPI_Map_StoreString(whichPlayer, key, value)
	key = "S" .. (key or "")
	DzAPI_Map_SaveServerValue(whichPlayer, key, value)
	key = nil
	whichPlayer = nil
end
function DzAPI_Map_GetStoredString(whichPlayer, key)
	return DzAPI_Map_GetServerValue(whichPlayer, "S" .. (key or ""))
end
function DzAPI_Map_GetStoredUnitType(whichPlayer, key)
	local value
	key = "I" .. (key or "")
	value = S2I(DzAPI_Map_GetServerValue(whichPlayer, key))
	key = nil
	whichPlayer = nil
	return value
end
function DzAPI_Map_GetStoredAbilityId(whichPlayer, key)
	local value
	key = "I" .. (key or "")
	value = S2I(DzAPI_Map_GetServerValue(whichPlayer, key))
	key = nil
	whichPlayer = nil
	return value
end
function DzAPI_Map_FlushStoredMission(whichPlayer, key)
	DzAPI_Map_SaveServerValue(whichPlayer, key, nil)
	key = nil
	whichPlayer = nil
end
function DzAPI_Map_Ladder_SubmitIntegerData(whichPlayer, key, value)
	DzAPI_Map_Ladder_SetStat(whichPlayer, key, I2S(value))
end
function DzAPI_Map_Stat_SubmitUnitIdData(whichPlayer, key, value)
	if value == 0 then
	--call DzAPI_Map_Ladder_SetStat(whichPlayer,key,"0")
	else
		DzAPI_Map_Ladder_SetStat(whichPlayer, key, I2S(value))
	end
end
function DzAPI_Map_Stat_SubmitUnitData(whichPlayer, key, value)
	DzAPI_Map_Stat_SubmitUnitIdData(whichPlayer, key, GetUnitTypeId(value))
end
function DzAPI_Map_Ladder_SubmitAblityIdData(whichPlayer, key, value)
	if value == 0 then
	--call DzAPI_Map_Ladder_SetStat(whichPlayer,key,"0")
	else
		DzAPI_Map_Ladder_SetStat(whichPlayer, key, I2S(value))
	end
end
function DzAPI_Map_Ladder_SubmitItemIdData(whichPlayer, key, value)
	local l__S
	if value == 0 then
		l__S = "0"
	else
		l__S = I2S(value)
		DzAPI_Map_Ladder_SetStat(whichPlayer, key, l__S)
	end
	--call DzAPI_Map_Ladder_SetStat(whichPlayer,key,S)
	l__S = nil
	whichPlayer = nil
end
function DzAPI_Map_Ladder_SubmitItemData(whichPlayer, key, value)
	DzAPI_Map_Ladder_SubmitItemIdData(whichPlayer, key, GetItemTypeId(value))
end
function DzAPI_Map_Ladder_SubmitBooleanData(whichPlayer, key, value)
	if value then
		DzAPI_Map_Ladder_SetStat(whichPlayer, key, "1")
	else
		DzAPI_Map_Ladder_SetStat(whichPlayer, key, "0")
	end
end
function DzAPI_Map_Ladder_SubmitTitle(whichPlayer, value)
	DzAPI_Map_Ladder_SetStat(whichPlayer, value, "1")
end
function DzAPI_Map_Ladder_SubmitPlayerRank(whichPlayer, value)
	DzAPI_Map_Ladder_SetPlayerStat(whichPlayer, "RankIndex", I2S(value))
end
function DzAPI_Map_Ladder_SubmitPlayerExtraExp(whichPlayer, value)
	DzAPI_Map_Ladder_SetStat(whichPlayer, "ExtraExp", I2S(value))
end

--library DzAPI ends