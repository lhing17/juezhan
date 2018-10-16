-- 判断值是否在表中
function is_in(value, tab)
    for _, v in ipairs(tab) do
        if v == value then
            return true
        end
    end
    return false
end



--击退函数
function knock_back(u, angle, dist, time, period, model, shanghai)
	local t = CreateTimer()
	local p = GetHandleId(t)
	local m = time / period
	dist = dist / m --  单次位移距离
	local vx = dist * Cos(angle) --  存储x轴速度分量
	local vy = dist * Sin(angle) --  存储y轴速度分量
	local step = 0
	TimerStart(t, period, true, function()
		step = step + 1
		if IsTerrainPathable(GetUnitX(u) + vx, GetUnitY(u) +vy, PATHING_TYPE_WALKABILITY) == false then
			SetUnitX(u, CheckX(GetUnitX(u) + vx))
			SetUnitY(u, CheckY(GetUnitY(u) + vy))
			DestroyEffect(AddSpecialEffect(model, GetUnitX(u), GetUnitY(u)))
		end		
		if step >= m then
			DestroyTimer(t)
		end
	end)
	t = nil
end
function IsCertainWuGong(u, uc, id)
	return GetRandomReal(0.0, 100) < 15 + fuyuan[1 + GetPlayerId(GetOwningPlayer(u))] // 5 and GetUnitAbilityLevel(u, id) >= 1 and IsUnitEnemy(uc, GetOwningPlayer(u))
end