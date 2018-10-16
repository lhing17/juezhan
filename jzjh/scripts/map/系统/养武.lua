
-- 养武
local growable = {}
et.growable = growable
setmetatable(growable, growable)

local mt = {}

local name_list = {"镇妖","辟邪","驱魔"}

growable.__index = mt

-- 养武的item
mt.handle = 0

-- 养武的类型ID
mt.itemid = 0

mt.attack = 0

mt["招式伤害"] = 0

mt["真实伤害"] = 0

mt["内力"] = 0

mt["杀怪回复"] = 0

mt["攻击速度"] = 0

mt["暴击伤害"] = 0

-- 等级
mt.level = 0

-- 养武名称 
mt.name = ''

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

function init()
	--镇妖升级
	local t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(Vz))
	TriggerAddAction(t, Wz)
end
init()