---------镶嵌宝石系统开始-------//
function IsXiangQian(it, u)
	if GetItemTypeId(it) == 1227896146 or GetItemTypeId(it) == 1227896145 or GetItemTypeId(it) == 1227896141 or GetItemTypeId(it) == 1227896143 or GetItemTypeId(it) == 1227896144 or GetItemTypeId(it) == 1227896142 then
		if Ce[1 + GetPlayerId(GetOwningPlayer(u))] ~= 2 then
			DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|cFFFFCC00你不是锻造师，不可以镶嵌宝石")
			AdjustPlayerStateBJ(20000, GetOwningPlayer(u), PLAYER_STATE_RESOURCE_GOLD)
			return false
		else
			return true
		end
	end
	return false
end
function kA()
	return IsXiangQian(GetManipulatedItem(), GetTriggerUnit())
end
function XiangQian(u, it, it2, id, i)
	local p = GetOwningPlayer(u)
	local ii1 = ModuloInteger(GetItemUserData(it) // 1000, 10)
	local ii2 = ModuloInteger(GetItemUserData(it) // 100, 10)
	local ii3 = ModuloInteger(GetItemUserData(it) // 10, 10)
	if GetItemTypeId(it2) == id then
		if ii1 == 0 then
			AdjustPlayerStateBJ(20000, p, PLAYER_STATE_RESOURCE_GOLD)
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00你的第一格物品无法镶嵌宝石")
		else
			SetItemPositionLoc(it, v7[9])
			if ii2 == 0 then
				SetItemUserData(it, GetItemUserData(it) + 100 * i - 1000)
			else
				if ii3 == 0 then
					SetItemUserData(it, GetItemUserData(it) + 10 * i - 1000)
				else
					SetItemUserData(it, GetItemUserData(it) + 1 * i - 1000)
				end
			end
			UnitAddItem(u, it)
		end
	end
	p = nil
end
function mA()
	local u = GetTriggerUnit()
	local it = UnitItemInSlotBJ(u, 1)
	XiangQian(u, it, GetManipulatedItem(), 1227896141, 1)
	XiangQian(u, it, GetManipulatedItem(), 1227896144, 2)
	XiangQian(u, it, GetManipulatedItem(), 1227896143, 3)
	XiangQian(u, it, GetManipulatedItem(), 1227896145, 4)
	XiangQian(u, it, GetManipulatedItem(), 1227896146, 5)
	XiangQian(u, it, GetManipulatedItem(), 1227896142, 6)
	u = nil
	it = nil
end
---------镶嵌宝石系统结束-------//