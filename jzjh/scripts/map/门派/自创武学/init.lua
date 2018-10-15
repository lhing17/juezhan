function s__DaPei_create(wugongid, dapeixiaoguo)
	local dpi
	dpi = s__DaPei__allocate()
	s__DaPei_wugongid[dpi] = wugongid
	s__DaPei_dapeixiaoguo[dpi] = dapeixiaoguo
	if dapeixiaoguo == 1 then
		s__DaPei_r[dpi] = GetRandomReal(0.7, 1.1)
	elseif dapeixiaoguo == 2 then
		s__DaPei_r[dpi] = I2R(GetRandomInt(1, 13))
	elseif dapeixiaoguo == 3 then
		s__DaPei_r[dpi] = GetRandomReal(0.9, 1.3)
	elseif dapeixiaoguo == 4 then
		s__DaPei_r[dpi] = GetRandomReal(1.3, 2.0)
	end
	return dpi
end


function s__DaPei_onDestroy(this)
	s__DaPei_wugongid[this] = 0
	s__DaPei_dapeixiaoguo[this] = 0
	s__DaPei_shxishu[this] = 0
end

--Generated destructor of DaPei
function s__DaPei_deallocate(this)
	if this == nil then
		return
	elseif si__DaPei_V[this] ~= -1 then
		return
	end
	s__DaPei_onDestroy(this)
	si__DaPei_V[this] = si__DaPei_F
	si__DaPei_F = this
end
function s__DaPei_XiaoGuo(this, u, uc)
	if s__DaPei_dapeixiaoguo[this] ~= 2 then
		s__DaPei_shxishu[this] = s__DaPei_r[this]
	else
		if GetRandomReal(1, 100) <= 13 then
			WanBuff(u, uc, R2I(s__DaPei_r[this]))
		end
	end
end
function s__DaPei_XiaoGuoShuoMing(this)
	local s = ""
	s = (s or "") .. "+" .. (GetAbilityName(s__DaPei_wugongid[this]) or "") .. "："
	if s__DaPei_dapeixiaoguo[this] ~= 2 then
		s = (s or "") .. "伤害+" .. (I2S(R2I(s__DaPei_r[this] * 100)) or "") .. "%"
	else
		if R2I(s__DaPei_r[this]) == 1 then
			s = (s or "") .. "几率造成内伤"
		elseif R2I(s__DaPei_r[this]) == 2 then
			s = (s or "") .. "几率造成走火入魔"
		elseif R2I(s__DaPei_r[this]) == 3 then
			s = (s or "") .. "几率造成流血"
		elseif R2I(s__DaPei_r[this]) == 4 then
			s = (s or "") .. "几率造成混乱"
		elseif R2I(s__DaPei_r[this]) == 5 then
			s = (s or "") .. "几率造成昏迷"
		elseif R2I(s__DaPei_r[this]) == 6 then
			s = (s or "") .. "几率造成重伤"
		elseif R2I(s__DaPei_r[this]) == 7 then
			s = (s or "") .. "几率造成血流不止"
		elseif R2I(s__DaPei_r[this]) == 8 then
			s = (s or "") .. "几率造成麻痹"
		elseif R2I(s__DaPei_r[this]) == 9 then
			s = (s or "") .. "几率造成破防"
		elseif R2I(s__DaPei_r[this]) == 10 then
			s = (s or "") .. "几率造成神经错乱"
		elseif R2I(s__DaPei_r[this]) == 11 then
			s = (s or "") .. "几率造成封穴"
		elseif R2I(s__DaPei_r[this]) == 12 then
			s = (s or "") .. "几率造成穴位全封"
		elseif R2I(s__DaPei_r[this]) == 13 then
			s = (s or "") .. "几率造成中毒"
		end
	end
	return s
end
function s__ZiZhiWuGong_create(xishu, range, texiao, dapeishu, scrate)
	local zz
	zz = s__ZiZhiWuGong__allocate()
	s__ZiZhiWuGong_xishu[zz] = xishu
	s__ZiZhiWuGong_range[zz] = range
	s__ZiZhiWuGong_texiao[zz] = texiao
	s__ZiZhiWuGong_dapeishu[zz] = dapeishu
	s__ZiZhiWuGong_scrate[zz] = scrate
	return zz
end
function s__ZiZhiWuGong_onDestroy(this)
	s__ZiZhiWuGong_xishu[this] = 0
	s__ZiZhiWuGong_range[this] = 0
	s__ZiZhiWuGong_texiao[this] = 0
	s__ZiZhiWuGong_dapeishu[this] = 0
	s__ZiZhiWuGong_scrate[this] = 0
end

--Generated destructor of ZiZhiWuGong
function s__ZiZhiWuGong_deallocate(this)
	if this == nil then
		return
	elseif si__ZiZhiWuGong_V[this] ~= -1 then
		return
	end
	s__ZiZhiWuGong_onDestroy(this)
	si__ZiZhiWuGong_V[this] = si__ZiZhiWuGong_F
	si__ZiZhiWuGong_F = this
end
function IsZiZhi()
	return GetRandomReal(0.0, 100) < 15 + fuyuan[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))] // 5 and GetUnitAbilityLevel(GetAttacker(), 1093677878) >= 1 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function ZiZhiShangHai_Condition()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetAttacker())) and IsUnitAliveBJ(GetFilterUnit())
end
function ZiZhiShangHai_Action()
	local u = GetAttacker()
	local uc = GetEnumUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local j = 1
	local loc = GetUnitLoc(u)
	local shxishu = 1.0 + I2R(juexuelingwu[i]) / 3
	local shanghai = 0.0
	for _ in _loop_() do
		if j > s__ZiZhiWuGong_dapeishu[zizhiwugong[i]] then break end
		if GetUnitAbilityLevel(u, s__DaPei_wugongid[dapei[i * 20 + j]]) >= 1 then
			s__DaPei_XiaoGuo(dapei[i * 20 + j], u, uc)
			--call BJDebugMsg(R2S(dapei[i*10+j].shxishu))
			shxishu = shxishu + s__DaPei_shxishu[dapei[i * 20 + j]]
		end
		j = j + 1
	end
	shxishu = shxishu * (1.0 + 0.5 * I2R(s__ZiZhiWuGong_xishu[zizhiwugong[i]]))
	shanghai = ShangHaiGongShi(u, uc, 25.0, 25.0, shxishu, 1093677878)
	CreateTextTagLocBJ(s__ZiZhiWuGong_name[zizhiwugong[i]], loc, 0, 14.0, GetRandomReal(0.0, 100), GetRandomReal(0.0, 100), GetRandomReal(0.0, 100), 0.0)
	Nw(3, bj_lastCreatedTextTag)
	SetTextTagVelocityBJ(bj_lastCreatedTextTag, 50.0, 90)
	AddSpecialEffectTargetUnitBJ("overhead", uc, lh_texiao[s__ZiZhiWuGong_texiao[zizhiwugong[i]]])
	DestroyEffect(GetLastCreatedEffectBJ())
	WuGongShangHai(u, uc, shanghai)
	RemoveLocation(loc)
	loc = nil
	uc = nil
	u = nil
	p = nil
end
function ZiZhi()
	local g = CreateGroup()
	local u = GetAttacker()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local zz = zizhiwugong[i]
	WuGongShengChong(u, 1093677878, 1000.0 - I2R(s__ZiZhiWuGong_scrate[zz]) * 100.0)
	GroupEnumUnitsInRange(g, GetUnitX(u), GetUnitY(u), 400.0 + 100.0 * I2R(s__ZiZhiWuGong_range[zz]), Condition(ZiZhiShangHai_Condition))
	ForGroupBJ(g, ZiZhiShangHai_Action)
	GroupClear(g)
	DestroyGroup(g)
	g = nil
end
function IsAllocateWuXueDian()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and (GetItemTypeId(GetManipulatedItem()) == 1227899470 or GetItemTypeId(GetManipulatedItem()) == 1227899465 or GetItemTypeId(GetManipulatedItem()) == 1227899466 or GetItemTypeId(GetManipulatedItem()) == 1227899467 or GetItemTypeId(GetManipulatedItem()) == 1227899468) -- INLINED!!
end
function AllocateWuXueDian()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if GetItemTypeId(GetManipulatedItem()) == 1227899470 then
		if zizhibool[i] then
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00游坦之：|r |cFF99FFCC少侠已有自创武功|r\n")
		else
			if xiuxing[i] < 6 then
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00游坦之：|r |cFF99FFCC少侠等级到历练6之后再来吧|r\n")
			else
				L7[i] = 1
				for _ in _loop_() do
					if L7[i] >= wugongshu[i] + 1 then break end
					if I7[(i - 1) * 20 + L7[i]] ~= 1095067243 then
						if L7[i] == wugongshu[i] then
							DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00游坦之：|r |cFF99FFCC少侠，你学的武功太多了，遗忘一些再来自创吧|r\n")
							if true then break end
						end
					else
						UnitAddAbility(u, 1093677878)
						I7[(i - 1) * 20 + L7[i]] = 1093677878
						DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033恭喜" .. (GetPlayerName(p) or "") .. "自创武功成功")
						zizhibool[i] = true
						if true then break end
					end
					L7[i] = L7[i] + 1
				end
			end
		end
	else
		if wuxuedian[i] >= 1 then
			wuxuedian[i] = wuxuedian[i] - 1
			if GetItemTypeId(GetManipulatedItem()) == 1227899465 then
				s__ZiZhiWuGong_xishu[zizhiwugong[i]] = s__ZiZhiWuGong_xishu[zizhiwugong[i]] + 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00游坦之：|r |cFF99FFCC分配一点至伤害系数|r\n")
			end
			if GetItemTypeId(GetManipulatedItem()) == 1227899466 then
				s__ZiZhiWuGong_range[zizhiwugong[i]] = s__ZiZhiWuGong_range[zizhiwugong[i]] + 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00游坦之：|r |cFF99FFCC分配一点至伤害范围|r\n")
			end
			if GetItemTypeId(GetManipulatedItem()) == 1227899467 then
				s__ZiZhiWuGong_dapeishu[zizhiwugong[i]] = s__ZiZhiWuGong_dapeishu[zizhiwugong[i]] + 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00游坦之：|r |cFF99FFCC分配一点至武学搭配|r\n")
				if GetRandomInt(1, 10) <= 7 then
					dapei[i * 20 + s__ZiZhiWuGong_dapeishu[zizhiwugong[i]]] = s__DaPei_create(LoadInteger(YDHT, StringHash("武学") + GetRandomInt(1, 18), 2), GetRandomInt(1, 2))
				else
					if GetRandomInt(1, 3) <= 2 then
						dapei[i * 20 + s__ZiZhiWuGong_dapeishu[zizhiwugong[i]]] = s__DaPei_create(LoadInteger(YDHT, StringHash("武学") + GetRandomInt(19, 28), 2), 3)
					else
						dapei[i * 20 + s__ZiZhiWuGong_dapeishu[zizhiwugong[i]]] = s__DaPei_create(LoadInteger(YDHT, StringHash("武学") + GetRandomInt(29, 41), 2), 4)
					end
				end
			end
			if GetItemTypeId(GetManipulatedItem()) == 1227899468 then
				s__ZiZhiWuGong_scrate[zizhiwugong[i]] = s__ZiZhiWuGong_scrate[zizhiwugong[i]] + 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00游坦之：|r |cFF99FFCC分配一点至升重速率|r\n")
			end
		else
			DisplayTimedTextToPlayer(p, 0, 0, 30.0, "|cff66ff00自创武学点不足")
		end
	end
	u = nil
	p = nil
end
function ZiZhi_Trigger()
	local t = CreateTrigger()
	lh_texiao[1] = "Abilities\\Spells\\Demon\\RainOfFire\\RainOfFireTarget.mdl"
	lh_texiao[2] = "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl"
	lh_texiao[3] = "Abilities\\Spells\\Items\\AIil\\AIilTarget.mdl"
	lh_texiao[4] = "Abilities\\Spells\\Items\\OrbDarkness\\OrbDarkness.mdl"
	lh_texiao[5] = "Abilities\\Spells\\Items\\AIil\\AIilTarget.mdl"
	lh_texiao[6] = "Abilities\\Spells\\Human\\Brilliance\\Brilliance.mdl"
	lh_texiao[7] = "Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl"
	lh_texiao[8] = "Abilities\\Weapons\\PhoenixMissile\\Phoenix_Missile.mdl"
	lh_texiao[9] = "Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl"
	lh_texiao[10] = "Abilities\\Spells\\Other\\Transmute\\GoldBottleMissile.mdl"
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsZiZhi))
	TriggerAddAction(t, ZiZhi)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(IsAllocateWuXueDian))
	TriggerAddAction(t, AllocateWuXueDian)
	t = nil
end