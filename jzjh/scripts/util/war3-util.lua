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
        if IsTerrainPathable(GetUnitX(u) + vx, GetUnitY(u) + vy, PATHING_TYPE_WALKABILITY) == false then
            SetUnitX(u, check_x(GetUnitX(u) + vx))
            SetUnitY(u, check_y(GetUnitY(u) + vy))
            DestroyEffect(AddSpecialEffect(model, GetUnitX(u), GetUnitY(u)))
        end
        if step >= m then
            DestroyTimer(t)
        end
    end)
    t = nil
end
function IsCertainWuGong(u, uc, id)
    return GetRandomReal(0.0, 100) < 15 + fuyuan[1 + GetPlayerId(GetOwningPlayer(u))] / 5 and GetUnitAbilityLevel(u, id) >= 1 and IsUnitEnemy(uc, GetOwningPlayer(u))
end

--- @param tab {target unit, point point, player player, unit_id number, ability_id number, ability_level number, order_id number, lifetime number, shown boolean}
function dummy_issue_order(tab)
    local point = tab.point or tab.target:get_point()
    local last = tab.player:create_unit(tab.unit_id or 1697656880, point)
    last:show(not not shown)
    if tab.ability_id then
        last:add_ability(tab.ability_id, tab.ability_level or 1)
    end
    if tab.order_id then
        last:issue_order(tab.order_id, tab.target)
    end
    last:set_lifetime(tab.lifetime)
end

function maJiaUseAbilityAtEnemysLoc(owner, unitId, abilityId, orderId, target, lifeTime)
    local loc = GetUnitLoc(target)
    CreateNUnitsAtLoc(1, unitId, GetOwningPlayer(owner), loc, bj_UNIT_FACING)
    ShowUnitHide(bj_lastCreatedUnit)
    UnitAddAbility(bj_lastCreatedUnit, abilityId)
    IssueTargetOrderById(bj_lastCreatedUnit, orderId, target)
    UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, lifeTime)
    RemoveLocation(loc)
    loc = nil
end

function maJiaUseLeveldAbilityAtTargetLoc(owner, unitId, abilityId, ablilityLevel, orderId, target, lifeTime)
    local loc = GetUnitLoc(target)
    CreateNUnitsAtLoc(1, unitId, GetOwningPlayer(owner), loc, bj_UNIT_FACING)
    ShowUnitHide(bj_lastCreatedUnit)
    UnitAddAbility(bj_lastCreatedUnit, abilityId)
    SetUnitAbilityLevel(bj_lastCreatedUnit, abilityId, ablilityLevel)
    IssueTargetOrderById(bj_lastCreatedUnit, orderId, target)
    UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, lifeTime)
    RemoveLocation(loc)
    loc = nil
end

function check_x(x)
    local E2 = GetRectMinX(bj_mapInitialPlayableArea) + 50
    if x < E2 then
        return E2
    end
    E2 = GetRectMaxX(bj_mapInitialPlayableArea) - 50
    if x > E2 then
        return E2
    end
    return x
end
function check_y(y)
    local E2 = GetRectMinY(bj_mapInitialPlayableArea) + 50
    if y < E2 then
        return E2
    end
    E2 = GetRectMaxY(bj_mapInitialPlayableArea) - 50
    if y > E2 then
        return E2
    end
    return y
end
--- 转圈函数
--- @param turning_unit unit 旋转的单位
--- @param center_unit unit 旋转中心单位
--- @param delta_angle_degree number 以度为单位的角度增量
--- @param delta_range number 旋转距离增量
--- @param delta_height number 旋转高度增量
--- @param time number 旋转总时间（秒）
--- @param interval number 刷新间隔（秒）
function turn_around(turning_unit, center_unit, delta_angle_degree, delta_range, delta_height, time, interval)
    local count = math.floor(time / interval)
    local start_point = turning_unit:get_point()
    local center = center_unit:get_point()
    local angle = start_point / center
    local range = start_point * center
    local height = turning_unit:get_fly_height()
    local x = 0
    local y = 0
    et.timer(interval * 1000, count, function()
        angle = angle + math.rad(delta_angle_degree)
        range = range + delta_range
        height = height + delta_height
        x = x + range * math.cos(range)
        y = y + range * math.sin(range)
        turning_unit:set_point(check_x(x), check_y(y))
        turning_unit:set_height(height, true, 0)
    end)
end
