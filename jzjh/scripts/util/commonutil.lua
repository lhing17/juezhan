-- 判断值是否在表中
function is_in(value, tab)
    for _, v in ipairs(tab) do
        if v == value then
            return true
        end
    end
    return false
end


--击退系统
function knock_back_condition()
	local u = LoadUnitHandle(YDHT, StringHash("击退"), 0)
	local shanghai = LoadReal(YDHT, StringHash("击退"), 1)
	local uc = GetFilterUnit()
	if IsUnitEnemy(uc, GetOwningPlayer(u)) then
	--call DisplayTextToPlayer(GetOwningPlayer(u),0,0,R2S(shanghai))
	--call WuGongShangHai(u,uc,shanghai)
	end
	uc = nil
	u = nil
	FlushChildHashtable(YDHT, StringHash("击退"))
	return false
end
function knock_back_on_timer()
	local t = GetExpiredTimer()
	local p = GetHandleId(t)
	local u = LoadUnitHandle(YDHT, p, 0)
	local step = LoadInteger(YDHT, p, 1) + 1
	local shanghai = LoadReal(YDHT, p, 6)
	local g = CreateGroup()
	--call  DisplayTextToPlayer(GetOwningPlayer(u),0,0,R2S(shanghai))
	SaveInteger(YDHT, p, 1, step)
	if IsTerrainPathable(GetUnitX(u) + LoadReal(YDHT, p, 3), GetUnitY(u) + LoadReal(YDHT, p, 4), PATHING_TYPE_WALKABILITY) == false then
		SetUnitX(u, CheckX(GetUnitX(u) + LoadReal(YDHT, p, 3)))
		SetUnitY(u, CheckY(GetUnitY(u) + LoadReal(YDHT, p, 4)))
		DestroyEffect(AddSpecialEffect(LoadStr(YDHT, p, 5), GetUnitX(u), GetUnitY(u)))
	end
	SaveUnitHandle(YDHT, StringHash("击退"), 0, u)
	SaveReal(YDHT, StringHash("击退"), 1, shanghai)
	GroupEnumUnitsInRange(g, CheckX(GetUnitX(u)), CheckY(GetUnitY(u)), 500, Condition(knock_back_condition))
	if step >= LoadInteger(YDHT, p, 2) then
		PauseTimer(t)
		DestroyTimer(t)
		FlushChildHashtable(YDHT, p)
	end
	GroupClear(g)
	DestroyGroup(g)
	g = nil
	u = nil
	t = nil
end
--击退函数
function knock_back(u, angle, dist, time, period, model, shanghai)
	local t = CreateTimer()
	local p = GetHandleId(t)
	local m = R2I(time / period)
	dist = dist / m --  单次位移距离
	SaveUnitHandle(YDHT, p, 0, u) --  存储被击退单位
	SaveInteger(YDHT, p, 1, 0) --  存储循环计数
	SaveInteger(YDHT, p, 2, m) --  存储次数
	SaveReal(YDHT, p, 3, dist * Cos(angle)) --  存储x轴速度分量
	SaveReal(YDHT, p, 4, dist * Sin(angle)) --  存储y轴速度分量
	SaveStr(YDHT, p, 5, model)
	SaveReal(YDHT, p, 6, shanghai) --存储伤害
	TimerStart(t, period, true, knock_back_on_timer)
	t = nil
end
function IsCertainWuGong(u, uc, id)
	return GetRandomReal(0.0, 100) < 15 + fuyuan[1 + GetPlayerId(GetOwningPlayer(u))] // 5 and GetUnitAbilityLevel(u, id) >= 1 and IsUnitEnemy(uc, GetOwningPlayer(u))
end