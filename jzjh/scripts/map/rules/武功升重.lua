function QiJueCoefficient(u)
	if UnitHaveItem(u, 1227895114) then
		return 1
	end
	return 0
end
--武功升重及掌门称号系统
function WuGongShengChong(u, id, r)
	local level = GetUnitAbilityLevel(u, id)
	local p = GetOwningPlayer(u)
	local idd = 0
	local i = 1 + GetPlayerId(p)
	if level > 0 and level < 7 then
		if UnitHasBuffBJ(u, 1110454576) then
			SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id) + (3 + udg_xinggeA[i]) * (wuxing[i] + 5 + GetRandomInt(0, R2I(r / 60))) * (5 + GetUnitAbilityLevel(u, 1093677654) // 2 + 2 * udg_jwjs[i]) * (2 + QiJueCoefficient(u)) // 40)
		else
			SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id) + (3 + udg_xinggeA[i]) * (wuxing[i] + 5 + GetRandomInt(0, R2I(r / 60))) * (4 + 2 * udg_jwjs[i]) * (2 + QiJueCoefficient(u)) // 40)
		end
		SaveStr(YDHT, GetHandleId(GetOwningPlayer(u)), id * 2, (I2S(LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id)) or "") .. "/" .. (I2S(R2I(r * level)) or ""))
		if LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id) > R2I(r) * level then
			SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id, 0)
			IncUnitAbilityLevel(u, id)
			SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id * 5, GetUnitAbilityLevel(u, id))
			DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff66ff00恭喜玩家" .. (I2S(i) or "") .. "领悟了武功：" .. (GetObjectName(id) or "") .. "第" .. (I2S(level + 1) or "") .. "重")
		end
	elseif level > 0 and level < 9 then
		if GetRandomReal(1.0, r * I2R(level)) <= I2R(wuxing[i]) / 2 * (1 + 0.6 * udg_jwjs[i]) or UnitHasBuffBJ(u, 1110454576) and GetRandomReal(1.0, r * I2R(level)) <= I2R(wuxing[i]) / 2 * (2 + 0.3 * GetUnitAbilityLevel(u, 1093677654) + 0.6 * udg_jwjs[i]) then
			if id ~= 1093678935 then
				IncUnitAbilityLevel(u, id)
				SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id * 5, GetUnitAbilityLevel(u, id))
				DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff66ff00恭喜玩家" .. (I2S(i) or "") .. "领悟了武功：" .. (GetObjectName(id) or "") .. "第" .. (I2S(level + 1) or "") .. "重")
				if level + 1 == 9 and Ce[i] == 8 then
					wuxuedian[i] = wuxuedian[i] + 2
					DisplayTextToPlayer(p, 0, 0, "|cff66ff00精武师有技能升级到九重，获得两个自创武学点")
					if udg_jwjs[i] <= 2 and udg_jwjsbool[i] == false then
						udg_jwjs[i] = udg_jwjs[i] + 1
						DisplayTextToPlayer(p, 0, 0, "|CFF66FF00恭喜您练成第" .. (I2S(udg_jwjs[i]) or "") .. "个九重武功，练成3个可获得宗师哦")
					end
					if udg_jwjs[i] == 3 and udg_jwjsbool[i] == false then
						udg_jwjsbool[i] = true
						if udg_zhangmen[i] == true then
						else
							SaveStr(YDHT, GetHandleId(p), GetHandleId(p), "〓精武宗师〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
						end
						DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜" .. (GetPlayerName(p) or "") .. "获得精武宗师")
						SetPlayerName(p, "〓精武宗师〓" .. (GetPlayerName(p) or ""))
					end
				end
			end
		else
			if udg_xinggeB[i] >= 4 or UnitHaveItem(u, 1227895114) then
				if id ~= 1093678935 then
					if UnitHasBuffBJ(u, 1110454576) then
						SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id) + (3 + udg_xinggeA[i]) * (wuxing[i] + 5 + GetRandomInt(0, R2I(r / 60))) * (2 + QiJueCoefficient(u)) // 20 * (2 + GetUnitAbilityLevel(u, 1093677654) // 4 + udg_jwjs[i]) // 3 * 2)
					else
						SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id) + (3 + udg_xinggeA[i]) * (wuxing[i] + 5 + GetRandomInt(0, R2I(r / 60))) * (2 + QiJueCoefficient(u)) // 20 * (2 + udg_jwjs[i]) // 3 * 2)
					end
				end
				SaveStr(YDHT, GetHandleId(GetOwningPlayer(u)), id * 2, (I2S(LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id)) or "") .. "/" .. (I2S(R2I(r * level)) or ""))
				if LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id) > R2I(r) * level then
					SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id, 0)
					IncUnitAbilityLevel(u, id)
					SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id * 5, GetUnitAbilityLevel(u, id))
					DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff66ff00恭喜玩家" .. (I2S(i) or "") .. "领悟了武功：" .. (GetObjectName(id) or "") .. "第" .. (I2S(level + 1) or "") .. "重")
					if level + 1 == 9 and Ce[i] == 8 then
						wuxuedian[i] = wuxuedian[i] + 2
						DisplayTextToPlayer(p, 0, 0, "|cff66ff00精武师有技能升级到九重，获得两个自创武学点")
						if udg_jwjs[i] <= 2 and udg_jwjsbool[i] == false then
							udg_jwjs[i] = udg_jwjs[i] + 1
							DisplayTextToPlayer(p, 0, 0, "|CFF66FF00恭喜您练成第" .. (I2S(udg_jwjs[i]) or "") .. "个九重武功，练成3个可获得宗师哦")
						end
						if udg_jwjs[i] == 3 and udg_jwjsbool[i] == false then
							udg_jwjsbool[i] = true
							if udg_zhangmen[i] == true then
							else
								SaveStr(YDHT, GetHandleId(p), GetHandleId(p), "〓精武宗师〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
							end
							DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜" .. (GetPlayerName(p) or "") .. "获得精武宗师")
							SetPlayerName(p, "〓精武宗师〓" .. (GetPlayerName(p) or ""))
						end
					end
				end
			end
		end
	end

	p = nil
end