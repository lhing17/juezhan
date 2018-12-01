--library WuQiQiHeSystem:

local log = require 'jass.log'

--武器等级
function WeaponLevel(itemid)
	--call BJDebugMsg("什么情况3")
	if itemid == 1227895878 then
		return 3
	elseif itemid == 1227894864 then
		return 5
	elseif itemid == 1227894865 then
		return 5
	elseif itemid == 1227895116 then
		return 2
	elseif itemid == 1227895118 then
		return 2
	elseif itemid == 1227894872 then
		return 4
	elseif itemid == 1227894851 then
		return 6
	elseif itemid == 1227894852 then
		return 6
	elseif itemid == 1227894850 then
		return 6
	elseif itemid == 1227895110 then
		return 1
	elseif itemid == 1227895123 then
		return 1
	elseif itemid == 1227895344 then
		return 0
	elseif itemid == 1227895109 then
		return 2
	elseif itemid == 1227895345 then
		return 0
	elseif itemid == 1227895094 then
		return 2
	elseif itemid == 1227895091 then
		return 4
	elseif itemid == 1227896918 then
		return 7
	elseif itemid == 1227897143 then
		return 7
	elseif itemid == 1227897144 then
		return 7
	elseif itemid == 1227897145 then
		return 5
	elseif itemid == 1227897153 then
		return 5
	elseif itemid == 1227897154 then
		return 7
	elseif itemid == 1227897155 then
		return 7
	elseif itemid == 1227897156 then
		return 7
	end
	return -1
end
--武器熟练度
function WeaponQiHe(u, uc, itemid)
	local r = 0.0
	local level = WeaponLevel(itemid)
	--call BJDebugMsg("什么情况4，"+I2S(level))
	if level == 0 then
		r = 7.0
	elseif level == 1 then
		r = 6.0
	elseif level == 2 then
		r = 5.0
	elseif level == 3 then
		r = 4.5
	elseif level == 4 then
		r = 4.0
	elseif level == 5 then
		r = 3.0
	elseif level == 6 then
		r = 2.5
	elseif level == 7 then
		r = 2.0
	end
	if LoadReal(YDHT, GetHandleId(GetOwningPlayer(u)), itemid) < 3000.0 * (1 + WeaponLevel(itemid)) or LoadReal(YDHT, GetHandleId(GetOwningPlayer(u)), itemid) < 5000.0 * (1 + WeaponLevel(itemid)) and Ce[1 + GetPlayerId(GetOwningPlayer(u))] == 3 then
		if ModuloInteger(GetUnitPointValue(uc), 50) ~= 0 and (GetUnitPointValue(uc) // 100 == 1 or GetUnitPointValue(uc) // 100 >= 5) then
			SaveReal(YDHT, GetHandleId(GetOwningPlayer(u)), itemid, LoadReal(YDHT, GetHandleId(GetOwningPlayer(u)), itemid) + r * 200 * udg_lilianxishu[1 + GetPlayerId(GetOwningPlayer(u))] * wugongxiuwei[1 + GetPlayerId(GetOwningPlayer(u))])
		else
			SaveReal(YDHT, GetHandleId(GetOwningPlayer(u)), itemid, LoadReal(YDHT, GetHandleId(GetOwningPlayer(u)), itemid) + r * 2 * udg_lilianxishu[1 + GetPlayerId(GetOwningPlayer(u))] * wugongxiuwei[1 + GetPlayerId(GetOwningPlayer(u))])
		end
	end
	if udg_bqdsbool[1 + GetPlayerId(GetOwningPlayer(u))] == true and LoadReal(YDHT, GetHandleId(GetOwningPlayer(u)), itemid) < 10000.0 * (1 + WeaponLevel(itemid)) then
		SaveReal(YDHT, GetHandleId(GetOwningPlayer(u)), itemid, LoadReal(YDHT, GetHandleId(GetOwningPlayer(u)), itemid) + r * 6 * udg_lilianxishu[1 + GetPlayerId(GetOwningPlayer(u))] * wugongxiuwei[1 + GetPlayerId(GetOwningPlayer(u))])
	end
--call BJDebugMsg("什么情况2，"+R2S(r)+","+R2S(LoadReal(YDHT,GetHandleId(GetOwningPlayer(u)),itemid)))
end
--初始化武器耐久度
function WeaponNaiJiu(it)
	local level = WeaponLevel(GetItemTypeId(it))
	local i = 0
	if level == 0 then
		i = 400
	elseif level == 1 then
		i = 800
	elseif level == 2 then
		i = 1600
	elseif level == 3 then
		i = 2400
	elseif level == 4 then
		i = 3200
	elseif level == 5 then
		i = 4400
	elseif level == 6 then
		i = 5400
	elseif level == 7 then
		i = 10000
	end
	return i
end
function WeaponPoSun_Condition()
	return IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetKillingUnit())) and GetPlayerController(GetOwningPlayer(GetKillingUnit())) == MAP_CONTROL_USER and GetPlayerSlotState(GetOwningPlayer(GetKillingUnit())) == PLAYER_SLOT_STATE_PLAYING
end
--武器耐久度
function WeaponPoSun()
	local u = GetKillingUnit()
	local p = GetOwningPlayer(u)
	local j = 1 + GetPlayerId(p)
	local i = 0
	local it = nil
	i = 1
	for _ in _loop_() do
		if i > 6 then break end
		if GetItemType(UnitItemInSlotBJ(GetKillingUnit(), i)) == ITEM_TYPE_ARTIFACT then
			it = UnitItemInSlotBJ(GetKillingUnit(), i)
			if GetItemTypeId(it) == 1227895379 then
				SaveReal(YDHT, GetHandleId(GetOwningPlayer(u)), GetItemTypeId(it), 2000)
			elseif GetItemTypeId(it) == 1227895373 then
				SaveReal(YDHT, GetHandleId(GetOwningPlayer(u)), GetItemTypeId(it), 6000)
			elseif GetItemTypeId(it) == 1227895377 then
				SaveReal(YDHT, GetHandleId(GetOwningPlayer(u)), GetItemTypeId(it), 10000)
			elseif GetItemTypeId(it) == 1227895378 then
				SaveReal(YDHT, GetHandleId(GetOwningPlayer(u)), GetItemTypeId(it), 14000)
			elseif GetItemTypeId(it) == 1227895376 then
				SaveReal(YDHT, GetHandleId(GetOwningPlayer(u)), GetItemTypeId(it), 20000)
			end
			--非镇妖
			if GetItemTypeId(it) ~= 1227895379 and GetItemTypeId(it) ~= 1227895373 and GetItemTypeId(it) ~= 1227895377 and GetItemTypeId(it) ~= 1227895378 and GetItemTypeId(it) ~= 1227895376 then
				WeaponQiHe(u, GetTriggerUnit(), GetItemTypeId(it))
				if udg_bqdsbool[j] == false and Ce[j] == 3 then
					if LoadBoolean(YDHT, GetHandleId(GetOwningPlayer(u)), GetItemTypeId(it)) == false and LoadReal(YDHT, GetHandleId(GetOwningPlayer(u)), GetItemTypeId(it)) >= 5000.0 * (1 + WeaponLevel(GetItemTypeId(it))) then
						--set udg_bqds[j] = udg_bqds[j] + 1
						SaveBoolean(YDHT, GetHandleId(GetOwningPlayer(u)), GetItemTypeId(it), true)
						DisplayTextToPlayer(p, 0, 0, "|CFF66FF00恭喜您炼成了第" .. (I2S(udg_bqds[j]) or "") .. "把武器，您需要炼成3把武器才能获得兵器大师哦")
					end
				end
				--     if udg_bqds[j]>=3 and udg_bqdsbool[j]==false and Ce[j]==3 then
				--      set udg_bqdsbool[j]=true
				--      if udg_zhangmen[j]==true then
				--else
				--	call SaveStr(YDHT, GetHandleId(p), GetHandleId(p),"〓兵器大师〓"+LoadStr(YDHT, GetHandleId(p), GetHandleId(p)))
				--endif
				--call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜"+GetPlayerName(p)+"获得兵器大师")
				--call SetPlayerName(p, "〓兵器大师〓"+GetPlayerName(p))
				--     endif
				if LoadInteger(YDHT, GetHandleId(it), 0) > 0 then
					if Ce[1 + GetPlayerId(GetOwningPlayer(u))] ~= 3 then
						SaveInteger(YDHT, GetHandleId(it), 0, LoadInteger(YDHT, GetHandleId(it), 0) - 1)
					end
				end
			--if LoadInteger(YDHT,GetHandleId(it),0)<=0 then
			--	call FlushChildHashtable(YDHT,GetHandleId(it))
			--	call RemoveItem(it)
			--	call DisplayTextToPlayer(GetOwningPlayer(u),0,0,"|cFFFF0000你的武器已损坏，请及时更换武器")
			--endif
			end
		end
		i = i + 1
	end
	--call BJDebugMsg(GetItemName(it))
	u = nil
	it = nil
end
--商店购买武器减耐久度
function BuyWeapon_Condition()
	return GetItemTypeId(GetManipulatedItem()) == 1227895110 or GetItemTypeId(GetManipulatedItem()) == 1227895094 or GetItemTypeId(GetManipulatedItem()) == 1227895091
end
function BuyWeapon()
	if LoadInteger(YDHT, GetHandleId(GetManipulatedItem()), 0) == 0 then
		SaveInteger(YDHT, GetHandleId(GetManipulatedItem()), 0, WeaponNaiJiu(GetManipulatedItem()) // 2)
	end
end
local function init()
	log.debug('加载系统武器模块')
	local t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(WeaponPoSun_Condition))
	TriggerAddAction(t, WeaponPoSun)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(BuyWeapon_Condition))
	TriggerAddAction(t, BuyWeapon)
	t = nil
end

init()