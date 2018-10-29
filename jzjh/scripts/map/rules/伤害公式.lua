--===========================================================================
--绝学伤害系数
--@id:A06S 九阳真经散篇
--@id:A0DN 九阳神功
function jueXueXiShu(i)
	return (1.0 + I2R(juexuelingwu[i]) / 3) * (1 + 0.4 * GetUnitAbilityLevel(udg_hero[i], 1093678675) * (1 + GetUnitAbilityLevel(udg_hero[i], 1093682254)))
end

function ShangHaiGongShi(u, uc, w1, w2, shxishu, id)
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local it
	local j = 0
	local shanghai
	local attack
	local target_def
	--local real critical //暴击因子
	local dodge
	local random
	local depth
	local basic_damage
	if IsUnitType(u, UNIT_TYPE_HERO) ~= nil then -- INLINED!!
		attack = (1 + 0.3 * GetUnitAbilityLevel(u, 1093678393)) * 25 * udg_lilianxishu[i] * (w1 * (1 + I2R(GetHeroStatBJ(0, u, true)) / 200) * (1 + I2R(GetHeroStatBJ(1, u, true)) / 200) + w2 * 0.03 * I2R(GetHeroStatBJ(2, u, true))) * (1.0 + GetUnitAbilityLevel(u, id)) * (udg_shanghaijiacheng[i] + 1.0) * shxishu
		if GetUnitAbilityLevel(u, id) == 9 then
			attack = attack * 3
		end
		--call BJDebugMsg(R2S(attack))
		j = 1
		for _ in _loop_() do
			if j >= 7 then break end
			if GetItemType(UnitItemInSlotBJ(u, j)) == ITEM_TYPE_ARTIFACT then
				it = UnitItemInSlotBJ(u, j)
			end
			j = j + 1
		end
		--君子剑、淑女剑
		if GetItemTypeId(it) == 1227897145 and (GetUnitTypeId(u) == 1328558128 or GetUnitTypeId(u) == 1328558129 or GetUnitTypeId(u) == 1328558132 or GetUnitTypeId(u) == 1328558666) then
			attack = attack * 1.5
		end
		if GetItemTypeId(it) == 1227897153 and (GetUnitTypeId(u) == 1328558130 or GetUnitTypeId(u) == 1328558131 or GetUnitTypeId(u) == 1328558643 or GetUnitTypeId(u) == 1328558664 or GetUnitTypeId(u) == 1328558665) then
			attack = attack * 1.5
		end
	else
		attack = 750 * (w1 + w2) * (1.0 + GetUnitAbilityLevel(u, id)) * shxishu
	end


	if uc == nil then
		target_def = 1
	else
		target_def = 1 / (1 + 0.05 * GetUnitLevel(uc))
	end
	--set critical = udg_baojishanghai[1+GetPlayerId(GetOwningPlayer(u))]
	if uc == nil then
		dodge = 25
	else
		dodge = RMinBJ(I2R(GetUnitLevel(uc)) / 8, 95.0)
		if UnitHasBuffBJ(uc, 1114860655) then
			dodge = 0.0
		end
	end
	depth = 1 + LoadReal(YDHT, GetHandleId(p), id * 12)
	random = GetRandomReal(0.95, 0.95 + I2R(udg_xinggeB[i]) / 20)
	basic_damage = attack * target_def * random * depth
	if GetRandomReal(0, 100) < dodge then
		shanghai = 0
	else
		shanghai = basic_damage
	end
	
	p = nil
	it = nil
	SaveReal(YDHT, 1 + GetPlayerId(GetOwningPlayer(u)), id * 3, basic_damage)
	return shanghai
end
function WuGongShangHai(u, uc, shanghai)
	if shanghai == 0 then
		CreateTextTagUnitBJ("MISS", uc, 0.0, 11.0, 255.0, 0.0, 0.0, 30.0)
	else
		if GetRandomReal(0.0, 100.0) <= 100.0 * udg_baojilv[1 + GetPlayerId(GetOwningPlayer(u))] then
			UnitDamageTarget(u, uc, udg_baojishanghai[1 + GetPlayerId(GetOwningPlayer(u))] * shanghai, true, false, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
			CreateTextTagUnitBJ(I2S(R2I(shanghai)), uc, 0.0, 14.0, 100.0, 100.0, 0.0, 30.0)
		else
			UnitDamageTarget(u, uc, shanghai, true, false, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
			CreateTextTagUnitBJ(I2S(R2I(shanghai)), uc, 0.0, 11.0, 100.0, 100.0, 100.0, 30.0)
		end
	end
	SetTextTagVelocityBJ(bj_lastCreatedTextTag, 400.0, GetRandomReal(80.0, 100.0))
	Nw(0.65, bj_lastCreatedTextTag)
end