--金刚伏魔圈
function IsJinGangFuMo()
	return GetSpellAbilityId() == 1093677881
end
function IsFuMoEnemy()
	return IsUnitEnemy(GetFilterUnit(), Player(0)) and UnitHasBuffBJ(GetFilterUnit(), 1112040563) == false and GetUnitAbilityLevel(GetFilterUnit(), 1098282348) < 1
end
----渡劫鞭法
function JinGang_DuJie()
	local t = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local i = LoadInteger(YDHT, GetHandleId(t), 2)
	local loc = LoadLocationHandle(YDHT, GetHandleId(t), 3)
	local l__ut = nil
	local g = CreateGroup()
	GroupEnumUnitsInRangeOfLoc(g, loc, 325, Condition(IsFuMoEnemy))
	l__ut = GroupPickRandomUnit(g)
	if i - i // 3 * 3 == 0 then
		ShowUnitShow(u)
		IssueTargetOrderById(u, 852480, l__ut)
		AddSpecialEffectLocBJ(GetUnitLoc(l__ut), "war3mapImported\\ChaosExplosion.mdl")
	else
		ShowUnitHide(u)
	end
	SaveInteger(YDHT, GetHandleId(t), 2, i + 1)
	if i > 15 then
		PauseTimer(t)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, GetHandleId(t))
		RemoveLocation(loc)
	end
	DestroyGroup(g)
	u = nil
	t = nil
	l__ut = nil
	loc = nil
	g = nil
end
----渡厄鞭法
function JinGang_DuE()
	local t = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local i = LoadInteger(YDHT, GetHandleId(t), 2)
	local loc = LoadLocationHandle(YDHT, GetHandleId(t), 3)
	local l__ut = nil
	local g = CreateGroup()
	GroupEnumUnitsInRangeOfLoc(g, loc, 325, Condition(IsFuMoEnemy))
	l__ut = GroupPickRandomUnit(g)
	if i - i // 3 * 3 == 1 then
		ShowUnitShow(u)
		IssueTargetOrderById(u, 852480, l__ut)
		AddSpecialEffectLocBJ(GetUnitLoc(l__ut), "war3mapImported\\FireStomp.mdx")
	else
		ShowUnitHide(u)
	end
	SaveInteger(YDHT, GetHandleId(t), 2, i + 1)
	if i > 15 then
		PauseTimer(t)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, GetHandleId(t))
		RemoveLocation(loc)
	end
	DestroyGroup(g)
	u = nil
	t = nil
	l__ut = nil
	loc = nil
	g = nil
end
----渡难鞭法
function JinGang_DuNan()
	local t = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local i = LoadInteger(YDHT, GetHandleId(t), 2)
	local loc = LoadLocationHandle(YDHT, GetHandleId(t), 3)
	local l__ut = nil
	local g = CreateGroup()
	GroupEnumUnitsInRangeOfLoc(g, loc, 350, Condition(IsFuMoEnemy))
	l__ut = GroupPickRandomUnit(g)
	if i - i // 3 * 3 == 2 then
		ShowUnitShow(u)
		IssueTargetOrderById(u, 852480, l__ut)
		AddSpecialEffectLocBJ(GetUnitLoc(l__ut), "war3mapImported\\FireStomp.mdx")
	else
		ShowUnitHide(u)
	end
	SaveInteger(YDHT, GetHandleId(t), 2, i + 1)
	if i > 15 then
		PauseTimer(t)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, GetHandleId(t))
		RemoveLocation(loc)
	end
	DestroyGroup(g)
	u = nil
	t = nil
	l__ut = nil
	loc = nil
	g = nil
end
--不能出伏魔圈
function FuMoBuNengChu()
	local t = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local loc = LoadLocationHandle(YDHT, GetHandleId(t), 1)
	local i = LoadInteger(YDHT, GetHandleId(t), 2)
	local loc2 = GetUnitLoc(u)
	if i < 500 then
		if DistanceBetweenPoints(loc2, loc) > 250 then
			SetUnitX(u, GetLocationX(loc) + GetRandomReal(-250.0, 250.0) * CosBJ(AngleBetweenPoints(loc, loc2)))
			SetUnitY(u, GetLocationY(loc) + GetRandomReal(-250.0, 250.0) * SinBJ(AngleBetweenPoints(loc, loc2)))
			if ModuloInteger(GetUnitPointValue(u), 100) == 0 then
				SetWidgetLife(u, GetWidgetLife(u) * 0.5)
			else
				SetWidgetLife(u, GetWidgetLife(u) * 0.85)
			end
		end
		SaveInteger(YDHT, GetHandleId(t), 2, i + 1)
	else
		RemoveLocation(loc)
		PauseTimer(t)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, GetHandleId(t))
	end
	t = nil
	u = nil
	loc = nil
	loc2 = nil
end
function FuMoQuan()
	local l__ut = GetEnumUnit()
	local u = GetTriggerUnit()
	local loc = LoadLocationHandle(YDHT, GetHandleId(u), StringHash("伏魔"))
	local t = CreateTimer()
	SaveUnitHandle(YDHT, GetHandleId(t), 0, l__ut)
	SaveLocationHandle(YDHT, GetHandleId(t), 1, loc)
	TimerStart(t, 0.03, true, FuMoBuNengChu)
	t = nil
	u = nil
	l__ut = nil
	loc = nil
end
function FuMoTeXiao()
	local t = GetExpiredTimer()
	local loc = LoadLocationHandle(YDHT, GetHandleId(t), 0)
	YDWETimerDestroyEffect(15.0, AddSpecialEffectLoc("war3mapImported\\kineticfield_fx_stand.mdx", loc))
	t = nil
	loc = nil
end
function JinGangFuMo()
	local u = GetTriggerUnit()
	local uc = GetSpellTargetUnit()
	local loc = GetUnitLoc(uc)
	local loc1 = pu(loc, 325, 90)
	local loc2 = pu(loc, 325, 210)
	local loc3 = pu(loc, 325, 330)
	local g = CreateGroup()
	local tt1 = CreateTimer()
	local tt2 = CreateTimer()
	local tt3 = CreateTimer()
	local tt4 = CreateTimer()
	--伏魔圈
	GroupEnumUnitsInRangeOfLoc(g, loc, 325, Condition(IsFuMoEnemy))
	SaveLocationHandle(YDHT, GetHandleId(u), StringHash("伏魔"), loc)
	YDWETimerDestroyEffect(1.2, AddSpecialEffectLoc("war3mapImported\\kineticfield_fx_start.mdx", loc))
	SaveLocationHandle(YDHT, GetHandleId(tt4), 0, loc)
	TimerStart(tt4, 1.2, false, FuMoTeXiao)
	ForGroupBJ(g, FuMoQuan)
	--渡劫
	CreateNUnitsAtLoc(1, 1697657143, GetOwningPlayer(u), loc1, bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, 1093677889)
	SaveUnitHandle(YDHT, GetHandleId(tt1), 0, bj_lastCreatedUnit)
	SaveUnitHandle(YDHT, GetHandleId(tt1), 1, uc)
	SaveLocationHandle(YDHT, GetHandleId(tt1), 3, loc)
	TimerStart(tt1, 1, true, JinGang_DuJie)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 15.0)
	--渡厄
	CreateNUnitsAtLoc(1, 1697657142, GetOwningPlayer(u), loc2, bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, 1093677890)
	SaveUnitHandle(YDHT, GetHandleId(tt2), 0, bj_lastCreatedUnit)
	SaveUnitHandle(YDHT, GetHandleId(tt2), 1, uc)
	SaveLocationHandle(YDHT, GetHandleId(tt2), 3, loc)
	TimerStart(tt2, 1, true, JinGang_DuE)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 15.0)
	--渡难
	CreateNUnitsAtLoc(1, 1697657144, GetOwningPlayer(u), loc3, bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, 1093677891)
	SaveUnitHandle(YDHT, GetHandleId(tt3), 0, bj_lastCreatedUnit)
	SaveUnitHandle(YDHT, GetHandleId(tt3), 1, uc)
	SaveLocationHandle(YDHT, GetHandleId(tt3), 3, loc)
	TimerStart(tt3, 1, true, JinGang_DuNan)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 15.0)
	RemoveLocation(loc1)
	RemoveLocation(loc2)
	RemoveLocation(loc3)
	u = nil
	uc = nil
	loc = nil
	loc1 = nil
	loc2 = nil
	loc3 = nil
	tt1 = nil
	tt2 = nil
	tt3 = nil
end
--伏魔圈伤害
function IsFuMoShangHai()
	return GetUnitTypeId(GetEventDamageSource()) == 1697657143 or GetUnitTypeId(GetEventDamageSource()) == 1697657142 or GetUnitTypeId(GetEventDamageSource()) == 1697657144
end
function FuMoShangHai()
	local uc = GetTriggerUnit()
	if GetUnitState(uc, UNIT_STATE_LIFE) <= 0.1 * GetUnitState(uc, UNIT_STATE_MAX_LIFE) then
		WuDi(uc)
		SetWidgetLife(uc, 1.0)
	else
		SetWidgetLife(uc, GetUnitState(uc, UNIT_STATE_LIFE) - 0.1 * GetUnitState(uc, UNIT_STATE_MAX_LIFE))
	end
	uc = nil
end
--十八罗汉阵
--真武七截阵
function IsZhenWuQiJie()
	return GetSpellAbilityId() == 1093677898
end
function ZhenWuQiJieZhen()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local tianji = GetUnitLoc(u)
	local tianxuan = Location(GetUnitX(u) - 500, GetUnitY(u) - 100)
	local tianshu = Location(GetUnitX(u) + 500, GetUnitY(u) + 100)
	local tianquan = Location(GetUnitX(u), GetUnitY(u) + 300)
	local yuheng = Location(GetUnitX(u), GetUnitY(u) - 500)
	local kaiyang = Location(GetUnitX(u) + 500, GetUnitY(u) - 500)
	local yaoguang = Location(GetUnitX(u) + 500, GetUnitY(u) - 300)
	CreateNUnitsAtLocFacingLocBJ(1, 1865429575, p, tianji, tianji)
	UnitAddAbility(bj_lastCreatedUnit, 1093677899)
	Gw(10.0, bj_lastCreatedUnit)
	CreateNUnitsAtLocFacingLocBJ(1, 1865429575, p, tianxuan, tianji)
	UnitAddAbility(bj_lastCreatedUnit, 1093677899)
	Gw(10.0, bj_lastCreatedUnit)
	CreateNUnitsAtLocFacingLocBJ(1, 1865429575, p, tianshu, tianji)
	UnitAddAbility(bj_lastCreatedUnit, 1093677899)
	Gw(10.0, bj_lastCreatedUnit)
	CreateNUnitsAtLocFacingLocBJ(1, 1865429575, p, tianquan, tianji)
	UnitAddAbility(bj_lastCreatedUnit, 1093677899)
	Gw(10.0, bj_lastCreatedUnit)
	CreateNUnitsAtLocFacingLocBJ(1, 1865429575, p, yuheng, tianji)
	UnitAddAbility(bj_lastCreatedUnit, 1093677899)
	Gw(10.0, bj_lastCreatedUnit)
	CreateNUnitsAtLocFacingLocBJ(1, 1865429575, p, kaiyang, tianji)
	UnitAddAbility(bj_lastCreatedUnit, 1093677899)
	Gw(10.0, bj_lastCreatedUnit)
	CreateNUnitsAtLocFacingLocBJ(1, 1865429575, p, yaoguang, tianji)
	UnitAddAbility(bj_lastCreatedUnit, 1093677899)
	Gw(10.0, bj_lastCreatedUnit)
	YDWETimerDestroyLightning(10.0, AddLightningLoc("SPLK", kaiyang, yaoguang))
	YDWETimerDestroyLightning(10.0, AddLightningLoc("SPLK", yuheng, kaiyang))
	YDWETimerDestroyLightning(10.0, AddLightningLoc("SPLK", tianji, yuheng))
	YDWETimerDestroyLightning(10.0, AddLightningLoc("SPLK", tianquan, tianji))
	YDWETimerDestroyLightning(10.0, AddLightningLoc("SPLK", tianxuan, tianji))
	YDWETimerDestroyLightning(10.0, AddLightningLoc("SPLK", tianji, tianshu))
	YDWETimerDestroyEffect(7.0, AddSpecialEffectLoc("war3mapImported\\divinering.mdx", tianji))
	YDWETimerDestroyEffect(7.0, AddSpecialEffectLoc("war3mapImported\\divinering.mdx", tianxuan))
	YDWETimerDestroyEffect(7.0, AddSpecialEffectLoc("war3mapImported\\divinering.mdx", tianquan))
	YDWETimerDestroyEffect(7.0, AddSpecialEffectLoc("war3mapImported\\divinering.mdx", tianshu))
	YDWETimerDestroyEffect(7.0, AddSpecialEffectLoc("war3mapImported\\divinering.mdx", yuheng))
	YDWETimerDestroyEffect(7.0, AddSpecialEffectLoc("war3mapImported\\divinering.mdx", kaiyang))
	YDWETimerDestroyEffect(7.0, AddSpecialEffectLoc("war3mapImported\\divinering.mdx", yaoguang))
	RemoveLocation(tianji)
	RemoveLocation(tianxuan)
	RemoveLocation(tianquan)
	RemoveLocation(tianshu)
	RemoveLocation(yuheng)
	RemoveLocation(kaiyang)
	RemoveLocation(yaoguang)
	u = nil
	p = nil
	tianji = nil
	tianxuan = nil
	tianshu = nil
	tianquan = nil
	yuheng = nil
	kaiyang = nil
	yaoguang = nil
end
function IsZhenWuShangHai()
	return GetUnitTypeId(GetEventDamageSource()) == 1865429575
end
function ZhenWuShangHai()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local u = udg_hero[i]
	local uc = GetTriggerUnit()
	local shxishu = 1.0 + I2R(juexuelingwu[i])
	local shanghai = 0.0
	shanghai = ShangHaiGongShi(u, uc, 3000.0, 3000.0, shxishu, 1093677898)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
--天罡北斗阵
function IsTianGangBeiDou()
	return GetSpellAbilityId() == 1093677895
end
function TianGangBeiDouZhen()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local tianji = GetUnitLoc(u)
	local tianxuan = Location(GetUnitX(u) + 300, GetUnitY(u) - 50)
	local tianshu = Location(GetUnitX(u) + 500, GetUnitY(u) + 250)
	local tianquan = Location(GetUnitX(u) - 50, GetUnitY(u) + 300)
	local yuheng = Location(GetUnitX(u) - 300, GetUnitY(u) + 500)
	local kaiyang = Location(GetUnitX(u) - 500, GetUnitY(u) + 700)
	local yaoguang = Location(GetUnitX(u) - 800, GetUnitY(u) + 700)
	CreateNUnitsAtLocFacingLocBJ(1, 1865429574, p, tianji, tianji)
	UnitAddAbility(bj_lastCreatedUnit, 1093677897)
	Gw(10.0, bj_lastCreatedUnit)
	CreateNUnitsAtLocFacingLocBJ(1, 1865429574, p, tianxuan, tianji)
	UnitAddAbility(bj_lastCreatedUnit, 1093677897)
	Gw(10.0, bj_lastCreatedUnit)
	CreateNUnitsAtLocFacingLocBJ(1, 1865429574, p, tianshu, tianji)
	UnitAddAbility(bj_lastCreatedUnit, 1093677897)
	Gw(10.0, bj_lastCreatedUnit)
	CreateNUnitsAtLocFacingLocBJ(1, 1865429574, p, tianquan, tianji)
	UnitAddAbility(bj_lastCreatedUnit, 1093677897)
	Gw(10.0, bj_lastCreatedUnit)
	CreateNUnitsAtLocFacingLocBJ(1, 1865429574, p, yuheng, tianji)
	UnitAddAbility(bj_lastCreatedUnit, 1093677897)
	Gw(10.0, bj_lastCreatedUnit)
	CreateNUnitsAtLocFacingLocBJ(1, 1865429574, p, kaiyang, tianji)
	UnitAddAbility(bj_lastCreatedUnit, 1093677897)
	Gw(10.0, bj_lastCreatedUnit)
	CreateNUnitsAtLocFacingLocBJ(1, 1865429574, p, yaoguang, tianji)
	UnitAddAbility(bj_lastCreatedUnit, 1093677897)
	Gw(10.0, bj_lastCreatedUnit)
	YDWETimerDestroyLightning(10.0, AddLightningLoc("SPLK", yaoguang, kaiyang))
	YDWETimerDestroyLightning(10.0, AddLightningLoc("SPLK", kaiyang, yuheng))
	YDWETimerDestroyLightning(10.0, AddLightningLoc("SPLK", yuheng, tianquan))
	YDWETimerDestroyLightning(10.0, AddLightningLoc("SPLK", tianquan, tianji))
	YDWETimerDestroyLightning(10.0, AddLightningLoc("SPLK", tianji, tianxuan))
	YDWETimerDestroyLightning(10.0, AddLightningLoc("SPLK", tianxuan, tianshu))
	RemoveLocation(tianji)
	RemoveLocation(tianxuan)
	RemoveLocation(tianquan)
	RemoveLocation(tianshu)
	RemoveLocation(yuheng)
	RemoveLocation(kaiyang)
	RemoveLocation(yaoguang)
	u = nil
	p = nil
	tianji = nil
	tianxuan = nil
	tianshu = nil
	tianquan = nil
	yuheng = nil
	kaiyang = nil
	yaoguang = nil
end
function TianGangEnemy()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetAttacker())) and IsUnitAliveBJ(GetFilterUnit())
end
function TianGangSha()
	local u = GetAttacker()
	local loc = GetUnitLoc(u)
	local g = CreateGroup()
	local gg2 = CreateGroup()
	local l__ut = nil
	local i = 1
	local imax = 0
	GroupEnumUnitsInRangeOfLoc(g, loc, 600, Condition(TianGangEnemy))
	imax = CountUnitsInGroup(g)
	if imax >= 1 then
		i = 1
		for _ in _loop_() do
			if i > imax then break end
			l__ut = FirstOfGroup(g)
			if GetUnitAbilityLevel(l__ut, 1093677897) ~= 0 then
				GroupAddUnit(gg2, l__ut)
			end
			GroupRemoveUnit(g, l__ut)
			i = i + 1
		end
	end
	imax = CountUnitsInGroup(gg2)
	if imax >= 1 then
		i = 1
		for _ in _loop_() do
			if i > imax then break end
			l__ut = FirstOfGroup(gg2)
			IssueTargetOrderById(l__ut, 852119, u)
			GroupRemoveUnit(gg2, l__ut)
			i = i + 1
		end
	end
	RemoveLocation(loc)
	DestroyGroup(g)
	DestroyGroup(gg2)
	u = nil
	l__ut = nil
	loc = nil
	g = nil
	gg2 = nil
end
function IsTianGangShangHai()
	return GetUnitTypeId(GetEventDamageSource()) == 1865429574
end
function TianGangShangHai()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
	local u = udg_hero[i]
	local uc = GetTriggerUnit()
	local shxishu = 1.0 + I2R(juexuelingwu[i])
	local shanghai = 0.0
	shanghai = ShangHaiGongShi(u, uc, 3000.0, 3000.0, shxishu, 1093677895)
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
--打狗阵
--杀狗阵
--二十八星宿阵
--六脉剑阵
--天罗地网阵
--修习阵法
function IsXueZhenFa()
	return GetItemTypeId(GetManipulatedItem()) == 1227899481 or GetItemTypeId(GetManipulatedItem()) == 1227899482 or GetItemTypeId(GetManipulatedItem()) == 1227899696 or GetItemTypeId(GetManipulatedItem()) == 1227899697
end
function XueZhenFa()
	local id = GetItemTypeId(GetManipulatedItem())
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local j = 0
	if IsUnitType(u, UNIT_TYPE_HERO) ~= nil == false then -- INLINED!!
		DisplayTextToPlayer(p, 0, 0, "|cff00FF66侠侣不能修行阵法")
	else
		if id == 1227899697 then
			if GetUnitAbilityLevel(u, 1093677898) ~= 0 then
				DisplayTextToPlayer(p, 0, 0, "|cff00FF66您已经修行过该阵法")
			else
				if udg_whichzhangmen[i] == 7 and GetUnitAbilityLevel(u, 1093679186) == 9 then
					j = 1
					for _ in _loop_() do
						if j > wugongshu[i] then break end
						if I7[(i - 1) * 20 + j] ~= 1095067243 then
							if j == wugongshu[i] then
								DisplayTextToPlayer(p, 0, 0, "|CFF34FF00学习技能已达上限，请先遗忘部分技能")
							end
						else
							UnitAddAbility(u, 1093677898)
							DisplayTextToPlayer(p, 0, 0, "|cff00FF66恭喜领悟技能：" .. (GetObjectName(1093677898) or ""))
							L7[i] = 1
							for _ in _loop_() do
								if L7[i] > wugongshu[i] then break end
								if I7[(i - 1) * 20 + L7[i]] ~= 1095067243 then
								else
									I7[(i - 1) * 20 + L7[i]] = 1093677898
									if true then break end
								end
								L7[i] = L7[i] + 1
							end
							if true then break end
						end
						j = j + 1
					end
				else
					DisplayTextToPlayer(p, 0, 0, "|cff00FF66条件不足，无法修行此阵法")
				end
			end
		elseif id == 1227899482 then
			if GetUnitAbilityLevel(u, 1093677881) ~= 0 then
				DisplayTextToPlayer(p, 0, 0, "|cff00FF66您已经修行过该阵法")
			else
				if udg_whichzhangmen[i] == 6 and GetUnitAbilityLevel(u, 1093678411) == 9 then
					j = 1
					for _ in _loop_() do
						if j > wugongshu[i] then break end
						if I7[(i - 1) * 20 + j] ~= 1095067243 then
							if j == wugongshu[i] then
								DisplayTextToPlayer(p, 0, 0, "|CFF34FF00学习技能已达上限，请先遗忘部分技能")
							end
						else
							UnitAddAbility(u, 1093677881)
							DisplayTextToPlayer(p, 0, 0, "|cff00FF66恭喜领悟技能：" .. (GetObjectName(1093677881) or ""))
							L7[i] = 1
							for _ in _loop_() do
								if L7[i] > wugongshu[i] then break end
								if I7[(i - 1) * 20 + L7[i]] ~= 1095067243 then
								else
									I7[(i - 1) * 20 + L7[i]] = 1093677881
									if true then break end
								end
								L7[i] = L7[i] + 1
							end
							if true then break end
						end
						j = j + 1
					end
				else
					DisplayTextToPlayer(p, 0, 0, "|cff00FF66条件不足，无法修行此阵法")
				end
			end
		elseif id == 1227899696 then
			if GetUnitAbilityLevel(u, 1093677894) ~= 0 then
				DisplayTextToPlayer(p, 0, 0, "|cff00FF66您已经修行过该阵法")
			else
				if udg_whichzhangmen[i] == 5 and GetUnitAbilityLevel(u, 1093679437) == 9 then
					j = 1
					for _ in _loop_() do
						if j > wugongshu[i] then break end
						if I7[(i - 1) * 20 + j] ~= 1095067243 then
							if j == wugongshu[i] then
								DisplayTextToPlayer(p, 0, 0, "|CFF34FF00学习技能已达上限，请先遗忘部分技能")
							end
						else
							UnitAddAbility(u, 1093677894)
							DisplayTextToPlayer(p, 0, 0, "|cff00FF66恭喜领悟技能：" .. (GetObjectName(1093677894) or ""))
							L7[i] = 1
							for _ in _loop_() do
								if L7[i] > wugongshu[i] then break end
								if I7[(i - 1) * 20 + L7[i]] ~= 1095067243 then
								else
									I7[(i - 1) * 20 + L7[i]] = 1093677894
									if true then break end
								end
								L7[i] = L7[i] + 1
							end
							if true then break end
						end
						j = j + 1
					end
				else
					DisplayTextToPlayer(p, 0, 0, "|cff00FF66条件不足，无法修行此阵法")
				end
			end
		elseif id == 1227899481 then
			if GetUnitAbilityLevel(u, 1093677895) ~= 0 then
				DisplayTextToPlayer(p, 0, 0, "|cff00FF66您已经修行过该阵法")
			else
				if udg_whichzhangmen[i] == 3 and GetUnitAbilityLevel(u, 1093681997) == 9 then
					j = 1
					for _ in _loop_() do
						if j > wugongshu[i] then break end
						if I7[(i - 1) * 20 + j] ~= 1095067243 then
							if j == wugongshu[i] then
								DisplayTextToPlayer(p, 0, 0, "|CFF34FF00学习技能已达上限，请先遗忘部分技能")
							end
						else
							UnitAddAbility(u, 1093677895)
							DisplayTextToPlayer(p, 0, 0, "|cff00FF66恭喜领悟技能：" .. (GetObjectName(1093677895) or ""))
							L7[i] = 1
							for _ in _loop_() do
								if L7[i] > wugongshu[i] then break end
								if I7[(i - 1) * 20 + L7[i]] ~= 1095067243 then
								else
									I7[(i - 1) * 20 + L7[i]] = 1093677895
									if true then break end
								end
								L7[i] = L7[i] + 1
							end
							if true then break end
						end
						j = j + 1
					end
				else
					DisplayTextToPlayer(p, 0, 0, "|cff00FF66条件不足，无法修行此阵法")
				end
			end
		end
	end
	u = nil
	p = nil
end
--事件
function ZhenFa_Trigger()
	local t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsJinGangFuMo))
	TriggerAddAction(t, JinGangFuMo)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(IsFuMoShangHai))
	TriggerAddAction(t, FuMoShangHai)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsTianGangBeiDou))
	TriggerAddAction(t, TianGangBeiDouZhen)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	--call TriggerAddCondition(t,Condition(function HaveTianGang))
	TriggerAddAction(t, TianGangSha)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(IsTianGangShangHai))
	TriggerAddAction(t, TianGangShangHai)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsZhenWuQiJie))
	TriggerAddAction(t, ZhenWuQiJieZhen)
	t = CreateTrigger()
	YDWESyStemAnyUnitDamagedRegistTrigger(t)
	TriggerAddCondition(t, Condition(IsZhenWuShangHai))
	TriggerAddAction(t, ZhenWuShangHai)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(IsXueZhenFa))
	TriggerAddAction(t, XueZhenFa)
	t = nil
end