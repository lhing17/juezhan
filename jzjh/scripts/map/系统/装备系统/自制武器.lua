--===================================================
--决战江湖1.4之大辽金匠
--===================================================
--购买商店武器
function RemoveWeapon()
	local t = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local it = LoadItemHandle(YDHT, GetHandleId(t), 1)
	UnitRemoveItem(u, it)
	FlushChildHashtable(YDHT, GetHandleId(t))
	DestroyTimer(t)
	t = nil
	u = nil
	it = nil
end
function s__ShopWeapon_create(id, min_xiuxing)
	local l__wp
	l__wp = s__ShopWeapon__allocate()
	s__ShopWeapon_min_xiuxing[l__wp] = min_xiuxing
	s__ShopWeapon_id[l__wp] = id
	return l__wp
end
function s__ShopWeapon_onDestroy(this)
	s__ShopWeapon_min_xiuxing[this] = 0
	s__ShopWeapon_id[this] = 0
end

--Generated destructor of ShopWeapon
function s__ShopWeapon_deallocate(this)
	if this == nil then
		return
	elseif si__ShopWeapon_V[this] ~= -1 then
		return
	end
	s__ShopWeapon_onDestroy(this)
	si__ShopWeapon_V[this] = si__ShopWeapon_F
	si__ShopWeapon_F = this
end
function s__ShopWeapon_CanYeLianWeapon(this, u, it)
	if udg_runamen[1 + GetPlayerId(GetOwningPlayer(u))] == 2 and GetItemTypeId(it) == 1227897155 then
		s__ShopWeapon_zhuanshu[this] = true
	end
	if udg_runamen[1 + GetPlayerId(GetOwningPlayer(u))] == 3 and GetItemTypeId(it) == 1227897143 then
		s__ShopWeapon_zhuanshu[this] = true
	end
	if udg_runamen[1 + GetPlayerId(GetOwningPlayer(u))] == 6 and GetItemTypeId(it) == 1227897144 then
		s__ShopWeapon_zhuanshu[this] = true
	end
	if udg_runamen[1 + GetPlayerId(GetOwningPlayer(u))] == 11 and (GetItemTypeId(it) == 1227897154 or GetItemTypeId(it) == 1227897156) then
		s__ShopWeapon_zhuanshu[this] = true
	end
	if xiuxing[1 + GetPlayerId(GetOwningPlayer(u))] < s__ShopWeapon_min_xiuxing[this] and s__ShopWeapon_zhuanshu[this] == false and Ce[1 + GetPlayerId(GetOwningPlayer(u))] ~= 3 then
		DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "需历练" .. (I2S(s__ShopWeapon_min_xiuxing[this]) or "") .. "以上方可冶炼该武器")
		AdjustPlayerStateBJ(60000, GetOwningPlayer(u), PLAYER_STATE_RESOURCE_GOLD)
		return false
	end
	return true
end
function s__ShopWeapon_PickUpWeapon(this, u, it)
	local t = CreateTimer()
	if udg_runamen[1 + GetPlayerId(GetOwningPlayer(u))] == 2 and GetItemTypeId(it) == 1227897155 then
		s__ShopWeapon_zhuanshu[this] = true
	end
	if udg_runamen[1 + GetPlayerId(GetOwningPlayer(u))] == 3 and GetItemTypeId(it) == 1227897143 then
		s__ShopWeapon_zhuanshu[this] = true
	end
	if udg_runamen[1 + GetPlayerId(GetOwningPlayer(u))] == 6 and GetItemTypeId(it) == 1227897144 then
		s__ShopWeapon_zhuanshu[this] = true
	end
	if GetItemTypeId(it) == 1227897154 or GetItemTypeId(it) == 1227897156 then
		s__ShopWeapon_zhuanshu[this] = true
	end
	if xiuxing[1 + GetPlayerId(GetOwningPlayer(u))] < s__ShopWeapon_min_xiuxing[this] - 1 and s__ShopWeapon_zhuanshu[this] == false and Ce[1 + GetPlayerId(GetOwningPlayer(u))] ~= 3 then
		DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "需历练" .. (I2S(s__ShopWeapon_min_xiuxing[this] - 1) or "") .. "以上方可使用该武器")
		SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
		SaveItemHandle(YDHT, GetHandleId(t), 1, it)
		TimerStart(t, 0.0, false, RemoveWeapon)
	end
	t = nil
end
function IsYeLianWuQi()
	local j = 1
	if GetItemTypeId(GetManipulatedItem()) == 1227899463 then
		if GetItemType(UnitItemInSlotBJ(GetTriggerUnit(), 1)) ~= ITEM_TYPE_ARTIFACT then
			DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 10, "|cffff0000装备栏第一格不是武器")
			AdjustPlayerStateBJ(60000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
			return false
		else
			for _ in _loop_() do
				if j >= 30 then break end
				if GetItemTypeId(UnitItemInSlotBJ(GetTriggerUnit(), 1)) == s__ShopWeapon_id[shopweapon[j]] then
					if s__ShopWeapon_CanYeLianWeapon(shopweapon[j], GetTriggerUnit(), UnitItemInSlotBJ(GetTriggerUnit(), 1)) then
						return true
					else
						return false
					end
				end
				j = j + 1
			end
			return true
		end
	end
	return false
end
function YeLianWuQi()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local it = UnitItemInSlotBJ(u, 1)
	local id = GetItemTypeId(it)
	local zssh = LoadReal(YDHT, id, StringHash("招式伤害"))
	local wdnl = LoadReal(YDHT, id, StringHash("内力"))
	local zhssh = LoadReal(YDHT, id, StringHash("真实伤害"))
	local bjsh = LoadReal(YDHT, id, StringHash("暴击伤害"))
	local bjl = LoadReal(YDHT, id, StringHash("暴击率"))
	local jxlw = LoadReal(YDHT, id, StringHash("绝学领悟"))
	local wdgg = LoadReal(YDHT, id, StringHash("根骨")) + LoadReal(YDHT, id, StringHash("全属性"))
	local wddp = LoadReal(YDHT, id, StringHash("胆魄")) + LoadReal(YDHT, id, StringHash("全属性"))
	local wdwx = LoadReal(YDHT, id, StringHash("悟性")) + LoadReal(YDHT, id, StringHash("全属性"))
	local wdys = LoadReal(YDHT, id, StringHash("医术")) + LoadReal(YDHT, id, StringHash("全属性"))
	local wdjm = LoadReal(YDHT, id, StringHash("经脉")) + LoadReal(YDHT, id, StringHash("全属性"))
	local wdfy = LoadReal(YDHT, id, StringHash("福缘")) + LoadReal(YDHT, id, StringHash("全属性"))
	local shhf = LoadReal(YDHT, id, StringHash("伤害回复"))
	local sghf = LoadReal(YDHT, id, StringHash("杀怪回复"))
	local smhf = LoadReal(YDHT, id, StringHash("生命回复"))
	local flhf = LoadReal(YDHT, id, StringHash("法力回复"))
	local sjgl = LoadReal(YDHT, id, StringHash("升级概率")) + LoadReal(YDHT, GetHandleId(it), StringHash("升级概率"))
	--local real wdxx=LoadReal(YDHT,id,StringHash("吸血"))
	--local real gjsd=LoadReal(YDHT,id,StringHash("攻击速度"))
	if shengwang[i] <= 2000 then
		DisplayTimedTextToPlayer(p, 0, 0, 30, "|cffff0000声望不足2000不可以冶炼武器")
		AdjustPlayerStateBJ(60000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
	elseif sjgl <= 0.0 then
		DisplayTimedTextToPlayer(p, 0, 0, 30, "|cffff0000该武器已不可继续冶炼")
		AdjustPlayerStateBJ(60000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
	else
		if GetRandomReal(0.0, 100.0) < sjgl then
			DisplayTimedTextToPlayer(p, 0, 0, 30, "|cffff0000恭喜你，冶炼成功")
			if udg_bqdsbool[i] == false and Ce[i] == 3 then
				udg_bqds[i] = udg_bqds[i] + 1
				DisplayTextToPlayer(p, 0, 0, "|CFF66FF00恭喜您冶炼成功第" .. (I2S(udg_bqds[i]) or "") .. "次，您需要冶炼成功5次才能获得兵器大师哦")
			end
			if udg_bqds[i] >= 5 and udg_bqdsbool[i] == false and Ce[i] == 3 then
				udg_bqdsbool[i] = true
				if udg_zhangmen[i] == true then
				else
					SaveStr(YDHT, GetHandleId(p), GetHandleId(p), "〓兵器大师〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
				end
				DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜" .. (GetPlayerName(p) or "") .. "获得兵器大师")
				SetPlayerName(p, "〓兵器大师〓" .. (GetPlayerName(p) or ""))
			end
			if id ~= 1227899464 then
				RemoveItem(FetchUnitItem(u, id))
				it = UnitAddItemById(u, 1227899464)
			else
				zssh = LoadReal(YDHT, GetHandleId(it), StringHash("招式伤害"))
				wdnl = LoadReal(YDHT, GetHandleId(it), StringHash("内力"))
				zhssh = LoadReal(YDHT, GetHandleId(it), StringHash("真实伤害"))
				bjsh = LoadReal(YDHT, GetHandleId(it), StringHash("暴击伤害"))
				bjl = LoadReal(YDHT, GetHandleId(it), StringHash("暴击率"))
				jxlw = LoadReal(YDHT, GetHandleId(it), StringHash("绝学领悟"))
				wdgg = LoadReal(YDHT, GetHandleId(it), StringHash("根骨"))
				wddp = LoadReal(YDHT, GetHandleId(it), StringHash("胆魄"))
				wdwx = LoadReal(YDHT, GetHandleId(it), StringHash("悟性"))
				wdys = LoadReal(YDHT, GetHandleId(it), StringHash("医术"))
				wdjm = LoadReal(YDHT, GetHandleId(it), StringHash("经脉"))
				wdfy = LoadReal(YDHT, GetHandleId(it), StringHash("福缘"))
				shhf = LoadReal(YDHT, GetHandleId(it), StringHash("伤害回复"))
				sghf = LoadReal(YDHT, GetHandleId(it), StringHash("杀怪回复"))
				smhf = LoadReal(YDHT, GetHandleId(it), StringHash("生命回复"))
				flhf = LoadReal(YDHT, GetHandleId(it), StringHash("法力回复"))
			--set wdxx=LoadReal(YDHT,GetHandleId(it),StringHash("吸血"))
			--set gjsd=LoadReal(YDHT,GetHandleId(it),StringHash("攻击速度"))
			end
			if udg_bqdsbool[i] then
				sjgl = sjgl * GetGeoNormRandomReal(0.78, 0.95)
			else
				sjgl = sjgl * GetGeoNormRandomReal(0.68, 0.95)
			end
			if sjgl < 3.0 then
				sjgl = 0.0
			end
			sjgl = RMinBJ(sjgl * GetRandomReal(1.0, 1.04), 100.0)
			SaveReal(YDHT, GetHandleId(it), StringHash("升级概率"), sjgl)
			UnitRemoveItem(u, it)
			SaveReal(YDHT, GetHandleId(it), StringHash("招式伤害"), (GetGeoNormRandomReal(0.0, 100.0) + zssh) * GetGeoNormRandomReal(1.0, 1.3))
			SaveReal(YDHT, GetHandleId(it), StringHash("内力"), (GetGeoNormRandomReal(0.0, 100.0) + wdnl) * GetGeoNormRandomReal(1.0, 1.3))
			SaveReal(YDHT, GetHandleId(it), StringHash("真实伤害"), (GetGeoNormRandomReal(0.0, 100.0) + zhssh) * GetGeoNormRandomReal(1.0, 1.3))
			SaveReal(YDHT, GetHandleId(it), StringHash("暴击伤害"), bjsh * GetGeoNormRandomReal(1.0, 1.1))
			SaveReal(YDHT, GetHandleId(it), StringHash("暴击率"), bjl * GetGeoNormRandomReal(1.0, 1.05))
			SaveReal(YDHT, GetHandleId(it), StringHash("绝学领悟"), jxlw * GetGeoNormRandomReal(1.0, 1.25))
			SaveReal(YDHT, GetHandleId(it), StringHash("根骨"), (GetRandomReal(0.0, 0.4) + wdgg) * GetGeoNormRandomReal(1.0, 1.15))
			SaveReal(YDHT, GetHandleId(it), StringHash("胆魄"), (GetRandomReal(0.0, 0.4) + wddp) * GetGeoNormRandomReal(1.0, 1.15))
			SaveReal(YDHT, GetHandleId(it), StringHash("悟性"), (GetRandomReal(0.0, 0.4) + wdwx) * GetGeoNormRandomReal(1.0, 1.15))
			SaveReal(YDHT, GetHandleId(it), StringHash("医术"), (GetRandomReal(0.0, 0.4) + wdys) * GetGeoNormRandomReal(1.0, 1.15))
			SaveReal(YDHT, GetHandleId(it), StringHash("经脉"), (GetRandomReal(0.0, 0.4) + wdjm) * GetGeoNormRandomReal(1.0, 1.15))
			SaveReal(YDHT, GetHandleId(it), StringHash("福缘"), (GetRandomReal(0.0, 0.4) + wdfy) * GetGeoNormRandomReal(1.0, 1.15))
			SaveReal(YDHT, GetHandleId(it), StringHash("伤害回复"), shhf * GetGeoNormRandomReal(1.0, 1.3))
			SaveReal(YDHT, GetHandleId(it), StringHash("杀怪回复"), sghf * GetGeoNormRandomReal(1.0, 1.3))
			SaveReal(YDHT, GetHandleId(it), StringHash("生命回复"), smhf * GetGeoNormRandomReal(1.0, 1.3))
			SaveReal(YDHT, GetHandleId(it), StringHash("法力回复"), flhf * GetGeoNormRandomReal(1.0, 1.3))
		--call SaveReal(YDHT, GetHandleId(it), StringHash("吸血"), I2R(wdxx)*GetRandomReal(1.0, 1.5)))
		--call SaveReal(YDHT, GetHandleId(it), StringHash("攻击速度"), I2R(gjsd)*GetRandomReal(1.0, 1.5)))
		else
			DisplayTimedTextToPlayer(p, 0, 0, 30, "|cffff0000很遗憾，冶炼失败")
			sjgl = sjgl * GetGeoNormRandomReal(0.95, 0.99)
			if sjgl < 3.0 then
				sjgl = 0.0
			end
			SaveReal(YDHT, GetHandleId(it), StringHash("升级概率"), sjgl)
		--set shengwang[i] = shengwang[i]-100
		end
	end
	u = nil
	p = nil
	it = nil
end
function InitShopWeapon()
	shopweapon[1] = s__ShopWeapon_create(1227895109, 0)
	shopweapon[2] = s__ShopWeapon_create(1227895110, 0)
	shopweapon[3] = s__ShopWeapon_create(1227895123, 0)
	shopweapon[4] = s__ShopWeapon_create(1227895344, 0)
	shopweapon[5] = s__ShopWeapon_create(1227895345, 0)
	shopweapon[6] = s__ShopWeapon_create(1227895094, 1)
	shopweapon[7] = s__ShopWeapon_create(1227895116, 1)
	shopweapon[8] = s__ShopWeapon_create(1227895118, 1)
	shopweapon[9] = s__ShopWeapon_create(1227895091, 2)
	shopweapon[10] = s__ShopWeapon_create(1227895878, 2)
	shopweapon[11] = s__ShopWeapon_create(1227894872, 3)
	shopweapon[12] = s__ShopWeapon_create(1227897145, 3)
	shopweapon[13] = s__ShopWeapon_create(1227897153, 3)
	shopweapon[14] = s__ShopWeapon_create(1227894864, 4)
	shopweapon[15] = s__ShopWeapon_create(1227894865, 4)
	shopweapon[16] = s__ShopWeapon_create(1227894850, 5)
	shopweapon[17] = s__ShopWeapon_create(1227894851, 5)
	shopweapon[18] = s__ShopWeapon_create(1227894852, 5)
	shopweapon[19] = s__ShopWeapon_create(1227896918, 5)
	shopweapon[20] = s__ShopWeapon_create(1227897143, 6)
	shopweapon[21] = s__ShopWeapon_create(1227897144, 6)
	shopweapon[22] = s__ShopWeapon_create(1227897154, 6)
	shopweapon[23] = s__ShopWeapon_create(1227897155, 6)
	shopweapon[24] = s__ShopWeapon_create(1227897156, 6)
end
function SmeltingWeaponSystem()
	local t = CreateTrigger()
	InitShopWeapon()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(IsYeLianWuQi))
	TriggerAddAction(t, YeLianWuQi)
	t = nil
end