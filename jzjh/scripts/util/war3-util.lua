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
    return GetRandomReal(0.0, 100) < 15 + fuyuan[1 + GetPlayerId(GetOwningPlayer(u))] / 5 and GetUnitAbilityLevel(u, id) >= 1 and IsUnitEnemy(uc, GetOwningPlayer(u))
end

--- @param tab table @{target=unit, player=player, unit_id=number, ability_id=number, ability_level=number, order_id=number, lifetime=number}
function dummy_issue_order(tab)
    local point = tab.target:get_point()
    local last = tab.player:create_unit(tab.unit_id, point)
    last:show(false)
    last:add_ability(tab.ability_id, tab.ability_level or 1)
    last:issue_order(tab.order_id, tab.target)
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

