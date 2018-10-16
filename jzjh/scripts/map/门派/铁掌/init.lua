function IsTieShaZhang()
	return PassiveWuGongCondition(GetAttacker(), GetTriggerUnit(), 1093678681)
end
function TieSha_Condition()
	return DamageFilter(GetAttacker(), GetFilterUnit())
end
function TieSha_Action()
	local shxishu = 1 + DamageCoefficientByAbility(GetAttacker(), 1093678935, 0.8)
	if UnitHasBuffBJ(GetEnumUnit(), 1111847784) or UnitHasBuffBJ(GetEnumUnit(), 1110454602) then
		shxishu = shxishu + DamageCoefficientByAbility(GetAttacker(), 1093678933, 1.5)
	end
	if UnitHasBuffBJ(GetEnumUnit(), 1110454602) then
		shxishu = shxishu + DamageCoefficientByAbility(GetAttacker(), 1093678931, 2.0)
	end
	if (GetUnitAbilityLevel(GetAttacker(), 1093678672) >= 1 or GetUnitAbilityLevel(GetAttacker(), 1093682227) >= 1) and GetRandomInt(1, 100) <= 30 then
		if UnitHasBuffBJ(GetEnumUnit(), 1111847784) == false and UnitHasBuffBJ(GetEnumUnit(), 1110454602) == false then
			WanBuff(GetAttacker(), GetEnumUnit(), 13)
		end
	end
	if GetUnitAbilityLevel(GetAttacker(), 1093678926) >= 1 and UnitHasBuffBJ(GetEnumUnit(), 1111847784) and GetRandomInt(1, 100) <= 30 then
		if UnitHasBuffBJ(GetEnumUnit(), 1110454602) == false then
			WanBuff(GetAttacker(), GetEnumUnit(), 14)
		end
	end
	PassiveWuGongEffectAndDamage(GetAttacker(), GetEnumUnit(), "Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", 7.2, 8.9, shxishu, 1093678681)
end
function TieShaZhang()
	PassiveWuGongAction(GetAttacker(), GetTriggerUnit(), 15, 500, Condition(TieSha_Condition), TieSha_Action, 1093678681, 1200.0)
end

function IsDuSheShenZhang()
	return GetSpellAbilityId() == 1093678682 and IsUnitEnemy(GetSpellTargetUnit(), GetOwningPlayer(GetTriggerUnit()))
end
function IsDuSheEnemy()
	--不是玩家的单位且不无敌
	return GetPlayerController(GetOwningPlayer(GetFilterUnit())) ~= MAP_CONTROL_USER and GetUnitAbilityLevel(GetFilterUnit(), 1098282348) == 0 and IsUnitAliveBJ(GetFilterUnit())
end
function DuSheMove()
	local t = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local l__ut = LoadUnitHandle(YDHT, GetHandleId(t), 1)
	local source = LoadLocationHandle(YDHT, GetHandleId(t), 2)
	local destination = LoadLocationHandle(YDHT, GetHandleId(t), 3)
	local majia = LoadUnitHandle(YDHT, GetHandleId(t), 4)
	local counter = LoadInteger(YDHT, GetHandleId(t), 5)
	local maxCount = 15 + GetUnitAbilityLevel(u, 1093678933) * 10 + GetUnitAbilityLevel(u, 1093678664) * 3
	local angle = AngleBetweenPoints(source, destination)
	local g = nil
	local shxishu = 1 + DamageCoefficientByItem(u, 1227897154, 3.0)
	if UnitHasBuffBJ(l__ut, 1111847784) or UnitHasBuffBJ(l__ut, 1110454602) then
		shxishu = shxishu + 1.0
	end
	if counter >= maxCount then
		FlushChildHashtable(YDHT, GetHandleId(t))
		PauseTimer(t)
		DestroyTimer(t)
		RemoveUnit(majia)
	else
		--距离小于15则移动到目标位置并造成伤害，然后获取下一个伤害目标
		if DistanceBetweenPoints(source, destination) < 15 then
			SetUnitPositionLoc(majia, destination)
			--设置下一个源地点
			SaveLocationHandle(YDHT, GetHandleId(t), 2, destination)
			--造成伤害 伤害单位个数加1
			PassiveWuGongEffectAndDamage(u, l__ut, "Abilities\\Spells\\Human\\Invisibility\\InvisibilityTarget.mdl", 15, 15, shxishu, 1093678682)
			if (UnitHasBuffBJ(l__ut, 1111847784) or UnitHasBuffBJ(l__ut, 1110454602)) and GetUnitAbilityLevel(u, 1093678931) >= 1 then
				WanBuff(u, l__ut, 7)
			end
			SaveInteger(YDHT, GetHandleId(t), 5, counter + 1)
			--获取下一个伤害目标
			g = YDWEGetUnitsInRangeOfLocMatchingNull(500, destination, Condition(IsDuSheEnemy))
			if CountUnitsInGroup(g) > 0 then
				l__ut = GroupPickRandomUnit(g)
				SaveUnitHandle(YDHT, GetHandleId(t), 1, l__ut)
				--设置下一个目标地点
				SaveLocationHandle(YDHT, GetHandleId(t), 3, GetUnitLoc(l__ut))
			--call RemoveLocation(destination)
			else
				FlushChildHashtable(YDHT, GetHandleId(t))
				PauseTimer(t)
				DestroyTimer(t)
				RemoveUnit(majia)
			end
		else
			--毒蛇马甲向目标移动
			SetUnitPositionLoc(majia, PolarProjectionBJ(source, 15, angle))
			SaveLocationHandle(YDHT, GetHandleId(t), 2, PolarProjectionBJ(source, 15, angle))
			SaveLocationHandle(YDHT, GetHandleId(t), 3, GetUnitLoc(l__ut))
		end
	end
	RemoveLocation(source)
	source = nil
	destination = nil
	t = nil
	l__ut = nil
	majia = nil
	u = nil
	g = nil
end
function DuSheShenZhang()
	local t = CreateTimer()
	SaveUnitHandle(YDHT, GetHandleId(t), 0, GetTriggerUnit())
	SaveUnitHandle(YDHT, GetHandleId(t), 1, GetSpellTargetUnit())
	SaveLocationHandle(YDHT, GetHandleId(t), 2, GetUnitLoc(GetTriggerUnit()))
	SaveLocationHandle(YDHT, GetHandleId(t), 3, GetUnitLoc(GetSpellTargetUnit()))
	CreateNUnitsAtLocFacingLocBJ(1, 1697657157, GetOwningPlayer(GetTriggerUnit()), GetUnitLoc(GetTriggerUnit()), GetUnitLoc(GetSpellTargetUnit()))
	SaveUnitHandle(YDHT, GetHandleId(t), 4, bj_lastCreatedUnit)
	WuGongShengChong(GetTriggerUnit(), 1093678682, 200)
	TimerStart(t, 0.02, true, DuSheMove)
	t = nil
end

function IsTongBeiQuan()
	return PassiveWuGongCondition(GetAttacker(), GetTriggerUnit(), 1093678896)
end
function TongBeiQuan()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetAttacker()))]
	local l__ut = GetTriggerUnit()
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local loc = GetUnitLoc(l__ut)
	local shxishu = 1.0 + DamageCoefficientByAbility(u, 1093678935, 0.7) + DamageCoefficientByAbility(u, 1093682227, 0.9)
	local coefficient = 0.5
	if GetUnitAbilityLevel(u, 1093679161) >= 1 then
		coefficient = 1
	end
	if GetRandomInt(1, 100) <= fuyuan[i] // 5 + 15 then
		--+蛤蟆功 A084 召唤一个会通背拳的铁掌帮长老协助战斗 此处概率有待平衡 TODO
		if GetUnitAbilityLevel(u, 1093679156) >= 1 and GetRandomInt(1, 100) <= 7 then
			CreateNUnitsAtLoc(1, 1865429583, GetOwningPlayer(u), loc, bj_UNIT_FACING)
			UnitAddAbility(bj_lastCreatedUnit, 1093678896)
			UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 15.0)
		end
		WuGongShengChong(u, 1093678896, 800)
		if UnitHasBuffBJ(l__ut, 1111847784) then --已中毒则使之中毒加深
			SaveReal(YDHT, GetHandleId(l__ut), StringHash("TongBei"), 0.0)
			WanBuff(u, l__ut, 14)
		elseif UnitHasBuffBJ(l__ut, 1110454602) then --已深度中毒则造成额外伤害
			SaveReal(YDHT, GetHandleId(l__ut), StringHash("TongBei"), LoadReal(YDHT, GetHandleId(l__ut), StringHash("TongBei")) + coefficient)
			shxishu = shxishu + LoadReal(YDHT, GetHandleId(l__ut), StringHash("TongBei"))
			FontFloat("+" .. (I2S(R2I(shxishu)) or ""), loc, 60.0, 14, 100.0, 100.0, 0.0, 0, 2.0)
		else --未中毒则使之中毒
			SaveReal(YDHT, GetHandleId(l__ut), StringHash("TongBei"), 0.0)
			WanBuff(u, l__ut, 13)
		end
		PassiveWuGongEffectAndDamage(u, l__ut, "Abilities\\Spells\\NightElf\\EntanglingRoots\\EntanglingRootsTarget.mdl", 75, 75, shxishu, 1093678896)
	end
	RemoveLocation(loc)
	u = nil
	l__ut = nil
	loc = nil
end

function IsShuiShangPiao()
	return GetSpellAbilityId() == 1093678937
end
function XYInMap(x, y)
	if x < GetRectMinX(GetEntireMapRect()) then
		return false
	end
	if x > GetRectMaxX(GetEntireMapRect()) then
		return false
	end
	if y < GetRectMinY(GetEntireMapRect()) then
		return false
	end
	if y > GetRectMaxY(GetEntireMapRect()) then
		return false
	end
	return true
end
function saveVarsInTimer(tm, u, x, y, n, distance, angle, a, b, m)
	SaveUnitHandle(YDHT, GetHandleId(tm), 0, u)
	SaveReal(YDHT, GetHandleId(tm), 1, x)
	SaveReal(YDHT, GetHandleId(tm), 2, y)
	SaveReal(YDHT, GetHandleId(tm), 3, n)
	SaveReal(YDHT, GetHandleId(tm), 4, distance)
	SaveReal(YDHT, GetHandleId(tm), 5, angle)
	SaveReal(YDHT, GetHandleId(tm), 6, a)
	SaveReal(YDHT, GetHandleId(tm), 7, b)
	SaveReal(YDHT, GetHandleId(tm), 8, m)
end
function Fly_tm()
	local tm = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(tm), 0)
	local x = LoadReal(YDHT, GetHandleId(tm), 1)
	local y = LoadReal(YDHT, GetHandleId(tm), 2)
	local n = LoadReal(YDHT, GetHandleId(tm), 3)
	local dis = LoadReal(YDHT, GetHandleId(tm), 4)
	local ang = LoadReal(YDHT, GetHandleId(tm), 5)
	local a = LoadReal(YDHT, GetHandleId(tm), 6)
	local b = LoadReal(YDHT, GetHandleId(tm), 7)
	local m = LoadReal(YDHT, GetHandleId(tm), 8) + 1
	local h = a * m * m + b * m
	if m <= n then
		SaveReal(YDHT, GetHandleId(tm), 8, m)
		PauseUnit(u, true)
		SetUnitFlyHeight(u, h, 0)
		if XYInMap(x + m * dis * Cos(ang * bj_DEGTORAD), y + m * dis * Sin(ang * bj_DEGTORAD)) then
			x = x + m * dis * Cos(ang * bj_DEGTORAD)
			y = y + m * dis * Sin(ang * bj_DEGTORAD)
			SetUnitX(u, x)
			SetUnitY(u, y)
		else
			SetUnitFlyHeight(u, 0, 0)
			PauseUnit(u, false)
			clearTimer(tm)
		end
	else
		PauseUnit(u, false)
		clearTimer(tm)
	end
	u = nil
	tm = nil
end
function Fly(u, speed, height, angle, time)
	local tm = CreateTimer()
	local x = GetUnitX(u)
	local y = GetUnitY(u)
	local n = time * 100
	local distance = speed / n
	local a = -4 * height / (n * n)
	local b = 4 * height / n
	if height > 0 then
		UnitAddAbility(u, 1098015094)
		UnitRemoveAbility(u, 1098015094)
	end
	saveVarsInTimer(tm, u, x, y, n, distance, angle, a, b, 0)
	TimerStart(tm, 0.01, true, Fly_tm)
	tm = nil
end
function FlyEnd()
	local tm = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(tm), 0)
	DestroyEffect(udg_JTX[GetPlayerId(GetOwningPlayer(u)) + 1])
	clearTimer(tm)
	u = nil
	tm = nil
end
function ShuiShangPiao()
	local source = GetUnitLoc(GetTriggerUnit())
	local destination = GetSpellTargetLoc()
	local angle = AngleBetweenPoints(source, destination)
	local speed = 500.0
	local height = 200.0
	local t = CreateTimer()
	local lastTime = RMinBJ(DistanceBetweenPoints(source, destination) / speed, 2.0)
	WuGongShengChong(GetTriggerUnit(), 1093678937, 200)
	SetUnitFacing(GetTriggerUnit(), angle)
	DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Weapons\\PhoenixMissile\\Phoenix_Missile.mdl"))
	udg_JTX[GetPlayerId(GetOwningPlayer(GetTriggerUnit())) + 1] = AddSpecialEffectTarget("Abilities\\Weapons\\PhoenixMissile\\Phoenix_Missile.mdl", GetTriggerUnit(), "origin")
	SetUnitAnimation(GetTriggerUnit(), "walk")
	Fly(GetTriggerUnit(), speed, height, angle, lastTime)
	--call YDWEJumpTimer(GetTriggerUnit(),angle,speed*lastTime,lastTime,0.03,height)
	SaveUnitHandle(YDHT, GetHandleId(t), 0, GetTriggerUnit())
	TimerStart(t, lastTime, false, FlyEnd)
	RemoveLocation(source)
	RemoveLocation(destination)
	source = nil
	destination = nil
end

function TieZhang_Trigger()

	local t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsTieShaZhang))
	TriggerAddAction(t, TieShaZhang)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsDuSheShenZhang))
	TriggerAddAction(t, DuSheShenZhang)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsTongBeiQuan))
	TriggerAddAction(t, TongBeiQuan)

	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsShuiShangPiao))
	TriggerAddAction(t, ShuiShangPiao)
	t = nil
end

TieZhang_Trigger() --铁掌帮武功触发