--镇妖升级
function DoHaveZhenYao(uc, l__ut)
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(uc))]
	if uc == nil or GetUnitTypeId(l__ut) == 1848651824 or GetUnitPointValue(l__ut) == 10 then
		return false
	else
		if UnitHaveItem(u, 1227895379) or UnitHaveItem(u, 1227895373) or UnitHaveItem(u, 1227895377) or UnitHaveItem(u, 1227895378) then
			return true
		end
	end
	return false
end
function Vz()
	return DoHaveZhenYao(GetKillingUnit(), GetTriggerUnit())
end
function ZhenYaoLevelUp(u, id, id2, value)
	local i = 0
	SetWidgetLife(FetchUnitItem(u, id), GetWidgetLife(FetchUnitItem(u, id)) - 1)
	if UnitHaveItem(u, id) then
		if 500000.0 - GetWidgetLife(FetchUnitItem(u, id)) < I2R(value) then
			DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "成长值：" .. (I2S(R2I(500000.0 - GetWidgetLife(FetchUnitItem(u, id)))) or "") .. " / " .. (I2S(value) or ""))
		else
			i = GetItemUserData(FetchUnitItem(u, id))
			RemoveItem(FetchUnitItem(u, id))
			createitemloc(id2, v7[9])
			SetItemUserData(bj_lastCreatedItem, i)
			UnitAddItem(u, bj_lastCreatedItem)
			DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|cFF33FF00恭喜养武等级获得提升")
		end
	end
end
function Wz()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))]
	ZhenYaoLevelUp(u, 1227895379, 1227895373, 200)
	ZhenYaoLevelUp(u, 1227895373, 1227895377, 500)
	ZhenYaoLevelUp(u, 1227895377, 1227895378, 800)
	ZhenYaoLevelUp(u, 1227895378, 1227895376, 1200)
end