--library UniMissileSystem3D:
-- 计算两点间的距离
function UniMissileSystem3D__DistanceBetweenXY(x1, x2, y1, y2)
	return SquareRoot((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))
end
-- 计算两点间的角度（角度制）
function UniMissileSystem3D__AngleBetweenXY(x1, x2, y1, y2)
	return bj_RADTODEG * Atan2(y2 - y1, x2 - x1)
end
-- 计算两个单位间的角度
function UniMissileSystem3D__GetAngleBetweenUnits(l__A, l__B)
	return Atan2(GetUnitY(l__B) - GetUnitY(l__A), GetUnitX(l__B) - GetUnitX(l__A))
end
-- 计算两个单位间的距离
function UniMissileSystem3D__DistanceBetweenUnits(l__A, l__B)
	local x1 = GetUnitX(l__A)
	local x2 = GetUnitX(l__B)
	local y1 = GetUnitY(l__A)
	local y2 = GetUnitY(l__B)
	return SquareRoot((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))
end
-- 计算加速的时间
-- s = v0 * t + 1/2 * a * t * t
-- a * t * t  + 2 * v0 * t - 2 * s = 0
-- time1 = (- 2 * v0 + SquareRoot ( 4 * v0 *v0 + 8 * a * s)) / (2 * a)
function UniMissileSystem3D__GetAcceleratedTime(dis, originspeed, accel)
	local time1 = 0.0
	local time2 = 0.0
	time1 = (-1 * originspeed + SquareRoot(Pow(originspeed, 2.0) + 2 * accel * dis)) / accel
	time2 = (-1 * originspeed - SquareRoot(Pow(originspeed, 2.0) + 2 * accel * dis)) / accel
	if time1 == 0.0 then
		time1 = 0.01
	end
	if time2 == 0.0 then
		time2 = 0.01
	end
	if time1 > time2 then
		return time1
	end
	return time2
end
-- 登记弹幕
function UniMissileSystem3D__MRegister(missile)
	UnitAddAbility(missile, 1098015094) -- 风暴之鸦
	UnitRemoveAbility(missile, 1098015094)
	SetUnitPosition(missile, GetUnitX(missile), GetUnitY(missile))
	SetUnitAnimationByIndex(missile, 90)
end
-- 将i从栈中移除，使用栈顶元素补充i
function UniMissileSystem3D__MPop(i)
	if GetUnitState(UniMissileSystem3D__MU[i], UNIT_STATE_LIFE) > 0.4 then
		KillUnit(UniMissileSystem3D__MU[i])
	end
	DestroyEffect(UniMissileSystem3D__EFL[i])
	UniMissileSystem3D__MU[i] = UniMissileSystem3D__MU[UniMissileSystem3D__Top]
	UniMissileSystem3D__SP[i] = UniMissileSystem3D__SP[UniMissileSystem3D__Top]
	UniMissileSystem3D__RA[i] = UniMissileSystem3D__RA[UniMissileSystem3D__Top]
	UniMissileSystem3D__DM[i] = UniMissileSystem3D__DM[UniMissileSystem3D__Top]
	UniMissileSystem3D__DI[i] = UniMissileSystem3D__DI[UniMissileSystem3D__Top]
	UniMissileSystem3D__AN[i] = UniMissileSystem3D__AN[UniMissileSystem3D__Top]
	UniMissileSystem3D__HE[i] = UniMissileSystem3D__HE[UniMissileSystem3D__Top]
	UniMissileSystem3D__HEMax[i] = UniMissileSystem3D__HEMax[UniMissileSystem3D__Top]
	UniMissileSystem3D__US[i] = UniMissileSystem3D__US[UniMissileSystem3D__Top]
	UniMissileSystem3D__ARC[i] = UniMissileSystem3D__ARC[UniMissileSystem3D__Top]
	UniMissileSystem3D__HP[i] = UniMissileSystem3D__HP[UniMissileSystem3D__Top]
	UniMissileSystem3D__EF[i] = UniMissileSystem3D__EF[UniMissileSystem3D__Top]
	UniMissileSystem3D__EFL[i] = UniMissileSystem3D__EFL[UniMissileSystem3D__Top]
	UniMissileSystem3D__SH[i] = UniMissileSystem3D__SH[UniMissileSystem3D__Top]
	UniMissileSystem3D__MGra[i] = UniMissileSystem3D__MGra[UniMissileSystem3D__Top]
	UniMissileSystem3D__LOC[i] = UniMissileSystem3D__LOC[UniMissileSystem3D__Top]
	UniMissileSystem3D__TIM[i] = UniMissileSystem3D__TIM[UniMissileSystem3D__Top]
	UniMissileSystem3D__LT[i] = UniMissileSystem3D__LT[UniMissileSystem3D__Top]
	UniMissileSystem3D__SZ[i] = UniMissileSystem3D__SZ[UniMissileSystem3D__Top]
	UniMissileSystem3D__RI[i] = UniMissileSystem3D__RI[UniMissileSystem3D__Top]
	UniMissileSystem3D__R01[i] = UniMissileSystem3D__R01[UniMissileSystem3D__Top]
	UniMissileSystem3D__R02[i] = UniMissileSystem3D__R02[UniMissileSystem3D__Top]
	UniMissileSystem3D__MT[i] = UniMissileSystem3D__MT[UniMissileSystem3D__Top]
	UniMissileSystem3D__OH[i] = UniMissileSystem3D__OH[UniMissileSystem3D__Top]
	UniMissileSystem3D__OS[i] = UniMissileSystem3D__OS[UniMissileSystem3D__Top]
	UniMissileSystem3D__OF[i] = UniMissileSystem3D__OF[UniMissileSystem3D__Top]
	UniMissileSystem3D__ACC[i] = UniMissileSystem3D__ACC[UniMissileSystem3D__Top]
	UniMissileSystem3D__MaxS[i] = UniMissileSystem3D__MaxS[UniMissileSystem3D__Top]
	UniMissileSystem3D__MKs[i] = UniMissileSystem3D__MKs[UniMissileSystem3D__Top]
	UniMissileSystem3D__SPX[i] = UniMissileSystem3D__SPX[UniMissileSystem3D__Top]
	UniMissileSystem3D__SPY[i] = UniMissileSystem3D__SPY[UniMissileSystem3D__Top]
	UniMissileSystem3D__LastX[i] = UniMissileSystem3D__LastX[UniMissileSystem3D__Top]
	UniMissileSystem3D__LastY[i] = UniMissileSystem3D__LastY[UniMissileSystem3D__Top]
	UniMissileSystem3D__IN[i] = UniMissileSystem3D__IN[UniMissileSystem3D__Top]
	UniMissileSystem3D__LastOwner[i] = UniMissileSystem3D__LastOwner[UniMissileSystem3D__Top]
	UniMissileSystem3D__MU[UniMissileSystem3D__Top] = nil
	UniMissileSystem3D__MT[UniMissileSystem3D__Top] = nil
	UniMissileSystem3D__Top = UniMissileSystem3D__Top - 1
end
-- 判断是否越界
function UniMissileSystem3D__MLimit(x, y)
	if x > UniMissileSystem3D__map_max_X or x < UniMissileSystem3D__map_min_X or y > UniMissileSystem3D__map_max_Y or y < UniMissileSystem3D__map_min_Y then --边界判定
		return true
	else
		return false
	end
end
-- 弹幕循环
function UniMissileSystem3D__MLoop()
	local i = UniMissileSystem3D__Top
	local x = _array_(0.0)
	local y = _array_(0.0)
	local zLoc = _array_(0.0)
	local h = 0.0
	local h2 = 0.0
	local time = 0.0
	local ttime = 0.0
	local ang = 0.0
	local height = 0.0
	local lastheight = 0.0
	local addxy = 0.0
	local addz = 0.0
	local anglez = 0.0
	local tanZ = 0.0
	local addh = 0.0
	local udis = 0.0
	local targetheight = 0.0
	local aniI = 0
	if MissileTimerPause == true then
		return
	end
	for _ in _loop_() do
		if i < 0 then break end
		addh = 0.0
		udis = 0.0
		x[1] = GetUnitX(UniMissileSystem3D__MU[i])
		y[1] = GetUnitY(UniMissileSystem3D__MU[i])
		height = GetUnitFlyHeight(UniMissileSystem3D__MU[i])
		if UniMissileSystem3D__DI[i] <= 0.0 or GetUnitState(UniMissileSystem3D__MU[i], UNIT_STATE_LIFE) < 0.4 or height <= 0.1 or UniMissileSystem3D__HP[i] <= 0.0 or UniMissileSystem3D__MLimit(x[1], y[1]) == true or height >= 9999.1 then
			UniMissileSystem3D__MPop(i)
		else
			if UniMissileSystem3D__MT[i] ~= nil then
				UniMissileSystem3D__AN[i] = UniMissileSystem3D__AngleBetweenXY(x[1], GetUnitX(UniMissileSystem3D__MT[i]), y[1], GetUnitY(UniMissileSystem3D__MT[i]))
				ang = UniMissileSystem3D__AN[i] * bj_DEGTORAD
				if UniMissileSystem3D__IN[i] == 0 then
					UniMissileSystem3D__SPX[i] = UniMissileSystem3D__SP[i] * Cos(ang)
					UniMissileSystem3D__SPY[i] = UniMissileSystem3D__SP[i] * Sin(ang)
				else
					ang = ang + UniMissileSystem3D__OF[i]
					UniMissileSystem3D__SPX[i] = UniMissileSystem3D__SPX[i] * UniMissileSystem3D__MKs[i] + UniMissileSystem3D__ACC[i] * Cos(ang)
					UniMissileSystem3D__SPY[i] = UniMissileSystem3D__SPY[i] * UniMissileSystem3D__MKs[i] + UniMissileSystem3D__ACC[i] * Sin(ang)
				end
				if IsUnitType(UniMissileSystem3D__MT[i], UNIT_TYPE_DEAD) == true then
					UniMissileSystem3D__MT[i] = nil
				end
				udis = UniMissileSystem3D__DistanceBetweenUnits(UniMissileSystem3D__MT[i], UniMissileSystem3D__MU[i]) / 100.0
				if udis == 0.0 then
					udis = 0.01
				end
				targetheight = GetUnitFlyHeight(UniMissileSystem3D__MT[i])
				if RAbsBJ(height - targetheight) > UniMissileSystem3D__RA[i] then
					if targetheight > height then
						addh = RAbsBJ(UniMissileSystem3D__SP[i]) / udis
						if addh + height > targetheight then
							addh = addh / 10.0
							SetUnitFlyHeight(UniMissileSystem3D__MU[i], targetheight, 0.0)
							height = targetheight
						end
					elseif targetheight < height then
						addh = RAbsBJ(UniMissileSystem3D__SP[i]) * -1.0 / udis
						if addh + height < targetheight then
							SetUnitFlyHeight(UniMissileSystem3D__MU[i], targetheight, 0.0)
							height = targetheight
						end
					end
				end
			else
				ang = UniMissileSystem3D__AN[i] * bj_DEGTORAD
				UniMissileSystem3D__SPX[i] = UniMissileSystem3D__SP[i] * Cos(ang)
				UniMissileSystem3D__SPY[i] = UniMissileSystem3D__SP[i] * Sin(ang)
				if UniMissileSystem3D__LOC[i] == 0.0 then
					UniMissileSystem3D__SP[i] = UniMissileSystem3D__SP[i] + UniMissileSystem3D__ACC[i]
				else
					if UniMissileSystem3D__SP[i] <= UniMissileSystem3D__MaxS[i] then
						UniMissileSystem3D__SP[i] = UniMissileSystem3D__SP[i] + UniMissileSystem3D__ACC[i]
					else
						UniMissileSystem3D__SP[i] = UniMissileSystem3D__MaxS[i]
					end
				end
			end
			x[2] = x[1] + UniMissileSystem3D__SPX[i]
			y[2] = y[1] + UniMissileSystem3D__SPY[i]
			UniMissileSystem3D__MLoc[1] = Location(x[1], y[1])
			UniMissileSystem3D__MLoc[2] = Location(x[2], y[2])
			zLoc[1] = GetLocationZ(UniMissileSystem3D__MLoc[1])
			zLoc[2] = GetLocationZ(UniMissileSystem3D__MLoc[2])
			SetUnitX(UniMissileSystem3D__MU[i], x[2])
			SetUnitY(UniMissileSystem3D__MU[i], y[2])
			UniMissileSystem3D__LastX[i] = x[2]
			UniMissileSystem3D__LastY[i] = y[2]
			addxy = UniMissileSystem3D__DistanceBetweenXY(x[2], x[1], y[2], y[1])
			SetUnitFacing(UniMissileSystem3D__MU[i], UniMissileSystem3D__AN[i])
			GroupEnumUnitsInRange(UniMissileSystem3D__DamageGroup, x[2], y[2], UniMissileSystem3D__RA[i], nil)
			for _ in _loop_() do
				UniMissileSystem3D__DamageUnit = FirstOfGroup(UniMissileSystem3D__DamageGroup)
				if GetUnitState(UniMissileSystem3D__DamageUnit, UNIT_STATE_LIFE) > 0.4 and (UniMissileSystem3D__MT[i] == UniMissileSystem3D__DamageUnit or IsUnitEnemy(UniMissileSystem3D__DamageUnit, GetOwningPlayer(UniMissileSystem3D__MU[i]))) then
					if RAbsBJ(height - GetUnitFlyHeight(UniMissileSystem3D__DamageUnit)) <= UniMissileSystem3D__RA[i] then
						UnitDamageTarget(UniMissileSystem3D__MU[i], UniMissileSystem3D__DamageUnit, UniMissileSystem3D__DM[i], true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
						UniMissileSystem3D__HP[i] = UniMissileSystem3D__HP[i] - 1.0
						UniMissileSystem3D__DM[i] = UniMissileSystem3D__DM[i] * 0.5
					end
				end
				GroupRemoveUnit(UniMissileSystem3D__DamageGroup, UniMissileSystem3D__DamageUnit)
				if UniMissileSystem3D__DamageUnit == nil then break end
			end
			GroupClear(UniMissileSystem3D__DamageGroup)
			UniMissileSystem3D__TIM[i] = UniMissileSystem3D__TIM[i] + UniMissileSystem3D__TIMOut
			if UniMissileSystem3D__MGra[i] == 0.0 then
				h = 0.11 + UniMissileSystem3D__SZ[i] - zLoc[2]
			end
			if UniMissileSystem3D__LOC[i] == 0.0 then
				if UniMissileSystem3D__MGra[i] == 0.0 then
				else
					h = UniMissileSystem3D__HEMax[i] - UniMissileSystem3D__R01[i] * (UniMissileSystem3D__TIM[i] - UniMissileSystem3D__LT[i] / 2) * (UniMissileSystem3D__TIM[i] - UniMissileSystem3D__LT[i] / 2) + UniMissileSystem3D__TIM[i] * UniMissileSystem3D__R02[i] + UniMissileSystem3D__SZ[i] - zLoc[2]
				end
			else
				UniMissileSystem3D__US[i] = UniMissileSystem3D__US[i] - UniMissileSystem3D__MGra[i]
			end
			lastheight = height
			UniMissileSystem3D__HE[i] = UniMissileSystem3D__HE[i] * UniMissileSystem3D__LOC[i] + UniMissileSystem3D__SH[i] + UniMissileSystem3D__US[i] * UniMissileSystem3D__LOC[i] + h * (1 - UniMissileSystem3D__LOC[i]) + addh
			height = UniMissileSystem3D__HE[i] - zLoc[2] * UniMissileSystem3D__LOC[i]
			SetUnitFlyHeight(UniMissileSystem3D__MU[i], height, 0.0)
			addz = height - lastheight
			if addxy == 0.0 then
				addxy = 1.0
			end
			tanZ = addz / addxy
			anglez = AtanBJ(tanZ)
			anglez = anglez * 1.0 + 90.0
			aniI = R2I(anglez)
			if aniI < 0 then
				aniI = 0
			elseif aniI > 181 then
				aniI = 181
			end
			SetUnitAnimationByIndex(UniMissileSystem3D__MU[i], aniI)
			UniMissileSystem3D__DI[i] = UniMissileSystem3D__DI[i] - UniMissileSystem3D__SP[i] * UniMissileSystem3D__LOC[i]
			UniMissileSystem3D__US[i] = UniMissileSystem3D__US[i] - UniMissileSystem3D__MGra[i]
			RemoveLocation(UniMissileSystem3D__MLoc[1])
			RemoveLocation(UniMissileSystem3D__MLoc[2])
		end
		i = i - 1
	end
end
-- 弹幕发射
function MissileCast(caster, missile, originspeed, maxspeed, accel, angle, distance, arc, range, damage, loc, target, height, l__hp, Effect, gravity)
	local i = 0
	local n = 0
	local tanA = 0.01
	local speed = 600
	local dis = 0.01
	local ang = 0.01
	local x = 0.01
	local y = 0.01
	local inertia = true
	if loc == nil then
		return
	end
	UniMissileSystem3D__Top = UniMissileSystem3D__Top + 1
	i = UniMissileSystem3D__Top
	UniMissileSystem3D__HeroLoc = GetUnitLoc(caster)
	if speed == 0.0 then
		speed = 0.01
	end
	if originspeed == 0.0 then
		originspeed = 0.01
	end
	if maxspeed == 0.0 then
		maxspeed = 0.01
	end
	if distance == 0.0 then
		distance = 0.01
	end
	if height == 0.0 then
		height = 0.1
	end
	if GetLocationX(loc) ~= GetLocationX(UniMissileSystem3D__HeroLoc) or GetLocationY(loc) ~= GetLocationY(UniMissileSystem3D__HeroLoc) then
		x = GetLocationX(loc)
		y = GetLocationY(loc)
		ang = UniMissileSystem3D__AngleBetweenXY(GetUnitX(caster), x, GetUnitY(caster), y)
		dis = UniMissileSystem3D__DistanceBetweenXY(x, GetUnitX(caster), y, GetUnitY(caster))
		UniMissileSystem3D__LOC[i] = 0.0
	else
		ang = angle
		dis = distance
		UniMissileSystem3D__LOC[i] = 1.0
	end
	if gravity == true then
		UniMissileSystem3D__MGra[i] = UniMissileSystem3D__Gravity
	else
		UniMissileSystem3D__MGra[i] = 0.0
	end
	UniMissileSystem3D__MU[i] = missile
	UniMissileSystem3D__MRegister(UniMissileSystem3D__MU[i])
	UniMissileSystem3D__OH[i] = GetUnitFlyHeight(caster) + height
	UniMissileSystem3D__SZ[i] = GetLocationZ(UniMissileSystem3D__HeroLoc) + UniMissileSystem3D__OH[i]
	if originspeed == maxspeed then
		speed = originspeed
		accel = 0.0
		inertia = false
		UniMissileSystem3D__LT[i] = dis / speed
	else
		inertia = true
		UniMissileSystem3D__LT[i] = UniMissileSystem3D__GetAcceleratedTime(dis, originspeed, accel)
	end
	UniMissileSystem3D__SP[i] = originspeed * UniMissileSystem3D__TIMOut
	UniMissileSystem3D__MaxS[i] = maxspeed
	UniMissileSystem3D__RI[i] = (GetLocationZ(loc) - UniMissileSystem3D__SZ[i]) / dis
	UniMissileSystem3D__TIM[i] = 0
	UniMissileSystem3D__IN[i] = 0
	if target ~= nil then
		if GetUnitState(target, UNIT_STATE_LIFE) > 0.4 then
			UniMissileSystem3D__MT[i] = target
			if inertia == true then
				UniMissileSystem3D__OS[i] = originspeed * UniMissileSystem3D__TIMOut
				UniMissileSystem3D__OF[i] = Deg2Rad(50)
				UniMissileSystem3D__SPX[i] = UniMissileSystem3D__OS[i] * Cos(ang)
				UniMissileSystem3D__SPY[i] = UniMissileSystem3D__OS[i] * Sin(ang)
				UniMissileSystem3D__MKs[i] = 1 - accel * UniMissileSystem3D__TIMOut / maxspeed
			end
		end
	end
	UniMissileSystem3D__ACC[i] = accel * UniMissileSystem3D__TIMOut * UniMissileSystem3D__TIMOut
	if inertia == true then
		UniMissileSystem3D__IN[i] = 1
	end
	UniMissileSystem3D__RA[i] = range
	UniMissileSystem3D__DM[i] = damage
	UniMissileSystem3D__AN[i] = ang
	UniMissileSystem3D__ARC[i] = arc
	UniMissileSystem3D__MaxS[i] = maxspeed * UniMissileSystem3D__TIMOut
	if arc ~= 0.0 then
		UniMissileSystem3D__HEMax[i] = dis * UniMissileSystem3D__ARC[i]
	else
		UniMissileSystem3D__HEMax[i] = height
	end
	if GetLocationX(loc) == GetLocationX(UniMissileSystem3D__HeroLoc) and GetLocationY(loc) == GetLocationY(UniMissileSystem3D__HeroLoc) then
		UniMissileSystem3D__ANZ[i] = AtanBJ(arc)
		UniMissileSystem3D__US[i] = arc * UniMissileSystem3D__SP[i]
		UniMissileSystem3D__DI[i] = distance
	else
		UniMissileSystem3D__US[i] = 0
		UniMissileSystem3D__DI[i] = dis
	end
	SetUnitX(UniMissileSystem3D__MU[i], GetLocationX(UniMissileSystem3D__HeroLoc))
	SetUnitY(UniMissileSystem3D__MU[i], GetLocationY(UniMissileSystem3D__HeroLoc))
	SetUnitOwner(UniMissileSystem3D__MU[i], GetOwningPlayer(caster), true)
	SetUnitFacing(UniMissileSystem3D__MU[i], UniMissileSystem3D__AN[i])
	UniMissileSystem3D__HE[i] = UniMissileSystem3D__OH[i] + GetLocationZ(UniMissileSystem3D__HeroLoc) + 0.11
	UniMissileSystem3D__SH[i] = 0 * speed
	UniMissileSystem3D__LastX[i] = 0.0
	UniMissileSystem3D__LastY[i] = 0.0
	UniMissileSystem3D__R01[i] = UniMissileSystem3D__HEMax[i] / UniMissileSystem3D__LT[i] / UniMissileSystem3D__LT[i] * 4
	UniMissileSystem3D__R02[i] = UniMissileSystem3D__SP[i] * UniMissileSystem3D__RI[i] / UniMissileSystem3D__TIMOut
	UniMissileSystem3D__HP[i] = l__hp
	UniMissileSystem3D__DM[i] = damage
	UniMissileSystem3D__EF[i] = Effect
	SetUnitFlyHeight(UniMissileSystem3D__MU[i], UniMissileSystem3D__HE[i] - GetLocationZ(UniMissileSystem3D__HeroLoc), 0.0)
	UniMissileSystem3D__EFL[i] = AddSpecialEffectTarget(UniMissileSystem3D__EF[i], UniMissileSystem3D__MU[i], "chest")
	UniMissileSystem3D__LastOwner[i] = GetOwningPlayer(caster)
	RemoveLocation(UniMissileSystem3D__HeroLoc)
	UniMissileSystem3D__HeroLoc = nil
end
function UniMissileSystem3D__Init()
	UniMissileSystem3D__map_max_X = GetRectMaxX(bj_mapInitialPlayableArea)
	UniMissileSystem3D__map_max_Y = GetRectMaxY(bj_mapInitialPlayableArea)
	UniMissileSystem3D__map_min_X = GetRectMinX(bj_mapInitialPlayableArea)
	UniMissileSystem3D__map_min_Y = GetRectMinY(bj_mapInitialPlayableArea)
	UniMissileSystem3D__DamageGroup = CreateGroup()
	UniMissileSystem3D__TIMr = CreateTimer()
	TimerStart(UniMissileSystem3D__TIMr, UniMissileSystem3D__TIMOut, true, UniMissileSystem3D__MLoop)
end

--library UniMissileSystem3D ends