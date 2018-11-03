---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/11/1 11:34
---

local unit = require 'jass.type.unit'

local jass = {}
--        // Unit API
--        // Facing arguments are specified in degrees

--native          CreateUnit              takes player id, integer unitid, real x, real y, real face returns unit
function jass.CreateUnit(p, unitid, x, y, face)
    if not p or not unitid or not x or not y or not face then
        error('调用jass.CreateUnit函数缺少参数')
    end
    assert(p.type == 'player', 'p参数类型错误')
    assert(type(unitid) == 'number', 'unitid参数类型错误')
    assert(type(x) == 'number', 'x参数类型错误')
    assert(type(y) == 'number', 'y参数类型错误')
    assert(type(face) == 'number', 'face参数类型错误')
    return unit.create(p, unitid, x, y, face)
end

--native          CreateUnitByName        takes player whichPlayer, string unitname, real x, real y, real face returns unit
function jass.CreateUnitByName(p, unitname, x, y, face)
    error('暂不支持jass.CreateUnitByName函数的调用')
    return nil
end

--native          CreateUnitAtLoc         takes player id, integer unitid, location whichLocation, real face returns unit
function jass.CreateUnitAtLoc(p, unitid, whichLocation, face)
    if not p or not unitid or not whichLocation or not face then
        error('调用jass.CreateUnit函数缺少参数')
    end
    assert(p.type == 'player', 'p参数类型错误')
    assert(type(unitid) == 'number', 'unitid参数类型错误')
    assert(whichLocation.type == 'location', 'whichLocation参数类型错误')
    assert(type(face) == 'number', 'face参数类型错误')
    return unit.create(p, unitid, whichLocation.x, whichLocation.y, face)
end


--native          CreateUnitAtLocByName   takes player id, string unitname, location whichLocation, real face returns unit
function jass.CreateUnitAtLocByName(p, unitname, whichLocation, face)
    error('暂不支持jass.CreateUnitByName函数的调用')
    return nil
end

--native          CreateCorpse            takes player whichPlayer, integer unitid, real x, real y, real face returns unit
-- 创建永久性的尸体
function jass.CreateCorpse(p, unitid, x, y, face)
    error('暂不支持jass.CreateUnitByName函数的调用')
    return nil
end

--native          KillUnit            takes unit whichUnit returns nothing
function jass.KillUnit(u)
    if not u then
        error('调用jass.KillUnit函数缺少参数')
    end
    assert(u.type == 'unit', 'u参数类型错误')
    u:die()
    -- TODO 88秒后remove
end

--native          RemoveUnit          takes unit whichUnit returns nothing
function jass.RemoveUnit(u)
    if not u then
        error('调用jass.RemoveUnit函数缺少参数')
    end
    assert(u.type == 'unit', 'u参数类型错误')
    u:remove()
end

--native          ShowUnit            takes unit whichUnit, boolean show returns nothing
function jass.ShowUnit(u, show)
    if not u then
        error('调用jass.ShowUnit函数缺少参数')
    end
    assert(u.type == 'unit', 'u参数类型错误')
    if show then
        u:show()
    else
        u:hide()
    end
end

--
--native          SetUnitState        takes unit whichUnit, unitstate whichUnitState, real newVal returns nothing
function jass.SetUnitState(u, state, val)
    -- TODO
end

--native          SetUnitX            takes unit whichUnit, real newX returns nothing
function jass.SetUnitX(u, x)
    if not u or not x then
        error('调用jass.SetUnitX函数缺少参数')
    end
    assert(u.type == 'unit', 'u参数类型错误')
    assert(type(x) == 'number', 'x参数类型错误')
    u:set_x(x)
end

--native          SetUnitY            takes unit whichUnit, real newY returns nothing
function jass.SetUnitY(u, y)
    if not u or not y then
        error('调用jass.SetUnitY函数缺少参数')
    end
    assert(u.type == 'unit', 'u参数类型错误')
    assert(type(y) == 'number', 'y参数类型错误')
    u:set_y(y)
end

--native          SetUnitPosition     takes unit whichUnit, real newX, real newY returns nothing
function jass.SetUnitPosition(u, x, y)
    if not u or not x or not y then
        error('调用jass.SetUnitPosition函数缺少参数')
    end
    assert(u.type == 'unit', 'u参数类型错误')
    assert(type(x) == 'number', 'x参数类型错误')
    assert(type(y) == 'number', 'y参数类型错误')
    u:set_position(x, y)
end

--native          SetUnitPositionLoc  takes unit whichUnit, location whichLocation returns nothing
function jass.SetUnitPositionLoc(u, whichLocation)
    if not u or not whichLocation then
        error('调用jass.SetUnitPositionLoc函数缺少参数')
    end
    assert(u.type == 'unit', 'u参数类型错误')
    assert(whichLocation.type == 'location', 'whichLocation参数类型错误')
    u:set_position(whichLocation.x, whichLocation.y)
end

--native          SetUnitFacing       takes unit whichUnit, real facingAngle returns nothing
function jass.SetUnitFacing(u, face)
    if not u or not face then
        error('调用jass.SetUnitFacing函数缺少参数')
    end
    assert(u.type == 'unit', 'u参数类型错误')
    assert(type(face) == 'number', 'face参数类型错误')
    u:set_facing(face)
end

--native          SetUnitFacingTimed  takes unit whichUnit, real facingAngle, real duration returns nothing
function jass.SetUnitFacingTimed(u, face, duration)
    --TODO
end

--native          SetUnitMoveSpeed    takes unit whichUnit, real newSpeed returns nothing
function jass.SetUnitMoveSpeed(u, speed)
    if not u or not speed then
        error('调用jass.SetUnitMoveSpeed函数缺少参数')
    end
    assert(u.type == 'unit', 'u参数类型错误')
    assert(type(speed) == 'number', 'speed参数类型错误')
    u:set_move_speed(speed)
end

--native          SetUnitFlyHeight    takes unit whichUnit, real newHeight, real rate returns nothing
function jass.SetUnitFlyHeight(u, height, rate)
    -- TODO
end
--native          SetUnitTurnSpeed    takes unit whichUnit, real newTurnSpeed returns nothing
function jass.SetUnitTurnSpeed(u, newTurnSpeed)
    if not u or not newTurnSpeed then
        error('调用jass.SetUnitMoveSpeed函数缺少参数')
    end
    assert(u.type == 'unit', 'u参数类型错误')
    assert(type(newTurnSpeed) == 'number', 'newTurnSpeed参数类型错误')
    u:set_turn_speed(newTurnSpeed)
end

--native          SetUnitPropWindow   takes unit whichUnit, real newPropWindowAngle returns nothing
function jass.SetUnitPropWindow(u, newPropWindowAngle)
    error('暂不支持jass.SetUnitPropWindow函数的调用')
    return nil
end

-- 设置主动攻击范围
--native          SetUnitAcquireRange takes unit whichUnit, real newAcquireRange returns nothing
function jass.SetUnitAcquireRange(u, newAcquireRange)
    -- TODO
end

-- 设置单位警戒范围
--native          SetUnitCreepGuard   takes unit whichUnit, boolean creepGuard returns nothing
function jass.SetUnitCreepGuard(u, creepGuard)
    -- TODO
end

--
--native          GetUnitAcquireRange     takes unit whichUnit returns real
function jass.GetUnitAcquireRange(u)
    if not u then
        error('调用jass.GetUnitAcquireRange函数缺少参数')
    end
    assert(u.type == 'unit', 'u参数类型错误')
    return u:get_acquire_range()
end

--native          GetUnitTurnSpeed        takes unit whichUnit returns real
function jass.GetUnitTurnSpeed(u)
    if not u then
        error('调用jass.GetUnitTurnSpeed函数缺少参数')
    end
    assert(u.type == 'unit', 'u参数类型错误')
    return u:get_turn_speed()
end

--native          GetUnitPropWindow       takes unit whichUnit returns real
function jass.GetUnitPropWindow(u)
    error('暂不支持jass.GetUnitPropWindow函数的调用')
    return nil
end

--native          GetUnitFlyHeight        takes unit whichUnit returns real
function jass.GetUnitFlyHeight(u)
    if not u then
        error('调用jass.GetUnitFlyHeight函数缺少参数')
    end
    assert(u.type == 'unit', 'u参数类型错误')
    return u:get_fly_height()
end

--
--native          GetUnitDefaultAcquireRange      takes unit whichUnit returns real
function jass.GetUnitDefaultAcquireRange(u)
    if not u then
        error('调用jass.GetUnitDefaultAcquireRange函数缺少参数')
    end
    assert(u.type == 'unit', 'u参数类型错误')
    return getmetatable(u).__index.acquire_range
end

--native          GetUnitDefaultTurnSpeed         takes unit whichUnit returns real
function jass.GetUnitDefaultTurnSpeed(u)
    if not u then
        error('调用jass.GetUnitDefaultTurnSpeed函数缺少参数')
    end
    assert(u.type == 'unit', 'u参数类型错误')
    return getmetatable(u).__index.turn_speed
end

--native          GetUnitDefaultPropWindow        takes unit whichUnit returns real
function jass.GetUnitDefaultPropWindow(u)
    error('暂不支持jass.GetUnitDefaultPropWindow函数的调用')
    return nil
end

--native          GetUnitDefaultFlyHeight         takes unit whichUnit returns real
function jass.GetUnitDefaultFlyHeight(u)
    if not u then
        error('调用jass.GetUnitDefaultFlyHeight函数缺少参数')
    end
    assert(u.type == 'unit', 'u参数类型错误')
    return getmetatable(u).__index.fly_height
end

--
--native          SetUnitOwner        takes unit whichUnit, player whichPlayer, boolean changeColor returns nothing
function jass.SetUnitOwner(u, p, changeColor)
    if not u or not p then
        error('调用jass.SetUnitOwner函数缺少参数')
    end
    assert(u.type == 'unit', 'u参数类型错误')
    assert(p.type == 'player', 'p参数类型错误')
    u:set_owner(p)
    -- FIXME 通过player获取playercolor
    if changeColor then
        u:set_color()
    end
end


--native          SetUnitColor        takes unit whichUnit, playercolor whichColor returns nothing
function jass.SetUnitColor(u, whichColor)
    if not u or not whichColor then
        error('调用jass.SetUnitColor函数缺少参数')
    end
    assert(u.type == 'unit', 'u参数类型错误')
    assert(whichColor.type == 'playercolor', 'p参数类型错误')
    u:set_color(whichColor)
end

--
--native          SetUnitScale        takes unit whichUnit, real scaleX, real scaleY, real scaleZ returns nothing
function jass.SetUnitScale(u, scaleX, scaleY, scaleZ)
    if not u or not scaleX or not scaleY or not scaleZ then
        error('调用jass.SetUnitScale函数缺少参数')
    end
    assert(u.type == 'unit', 'u参数类型错误')
    assert(type(scaleX) == 'number', 'scaleX参数类型错误')
    assert(type(scaleY) == 'number', 'scaleY参数类型错误')
    assert(type(scaleZ) == 'number', 'scaleZ参数类型错误')
    u:set_scale(scaleX, scaleY, scaleZ)
end

--native          SetUnitTimeScale    takes unit whichUnit, real timeScale returns nothing
function jass.SetUnitTimeScale(u, timeScale)
    if not u or not timeScale then
        error('调用jass.SetUnitTimeScale函数缺少参数')
    end
    assert(u.type == 'unit', 'u参数类型错误')
    assert(type(timeScale) == 'number', 'timeScale参数类型错误')
    u:set_time_scale(timeScale)
end

-- 单位动画图像混合时间. 决定身体部件连接的快慢,比如攻击时手臂挥舞的速度. 默认值0.15,增大该值会导致动作僵硬化
--native          SetUnitBlendTime    takes unit whichUnit, real blendTime returns nothing
function jass.SetUnitBlendTime(u, blendTime)
    error('暂不支持jass.SetUnitBlendTime函数的调用')
    return nil
end

-- 改变单位着色
--native          SetUnitVertexColor  takes unit whichUnit, integer red, integer green, integer blue, integer alpha returns nothing
function jass.SetUnitVertexColor(u, red, green, blue, alpha)
    if not u or not red or not green or not blue or not alpha then
        error('调用jass.SetUnitVertexColor函数缺少参数')
    end
    assert(u.type == 'unit', 'u参数类型错误')
    assert(type(red) == 'number', 'red参数类型错误')
    assert(type(green) == 'number', 'green参数类型错误')
    assert(type(blue) == 'number', 'blue参数类型错误')
    assert(type(alpha) == 'number', 'alpha参数类型错误')

end

--
--native          QueueUnitAnimation          takes unit whichUnit, string whichAnimation returns nothing
--native          SetUnitAnimation            takes unit whichUnit, string whichAnimation returns nothing
--native          SetUnitAnimationByIndex     takes unit whichUnit, integer whichAnimation returns nothing
--native          SetUnitAnimationWithRarity  takes unit whichUnit, string whichAnimation, raritycontrol rarity returns nothing
--native          AddUnitAnimationProperties  takes unit whichUnit, string animProperties, boolean add returns nothing

--
--native          SetUnitLookAt       takes unit whichUnit, string whichBone, unit lookAtTarget, real offsetX, real offsetY, real offsetZ returns nothing
--native          ResetUnitLookAt     takes unit whichUnit returns nothing

--
--native          SetUnitRescuable    takes unit whichUnit, player byWhichPlayer, boolean flag returns nothing
--native          SetUnitRescueRange  takes unit whichUnit, real range returns nothing


--
--native          SetHeroStr          takes unit whichHero, integer newStr, boolean permanent returns nothing
function jass.SetHeroStr(u, newStr, permanent)
    if u:is_hero() then
        u:set_str(newStr)
    end
end

--native          SetHeroAgi          takes unit whichHero, integer newAgi, boolean permanent returns
function jass.SetHeroAgi(u, newAgi, permanent)
    if u:is_hero() then
        u:set_agi(newAgi)
    end
end
--native          SetHeroInt          takes unit whichHero, integer newInt, boolean permanent returns nothing
function jass.SetHeroInt(u, newInt, permanent)
    if u:is_hero() then
        u:set_int(newInt)
    end
end


--
--native          GetHeroStr          takes unit whichHero, boolean includeBonuses returns integer
function jass.GetHeroStr()
    if u:is_hero() then
        return u:get_str()
    end
end

--native          GetHeroAgi          takes unit whichHero, boolean includeBonuses returns integer
function jass.GetHeroAgi()
    if u:is_hero() then
        return u:get_agi()
    end
end

--native          GetHeroInt          takes unit whichHero, boolean includeBonuses returns integer
function jass.GetHeroInt()
    if u:is_hero() then
        return u:get_int()
    end
end

--
--native          UnitStripHeroLevel  takes unit whichHero, integer howManyLevels returns boolean
--
--native          GetHeroXP           takes unit whichHero returns integer
--native          SetHeroXP           takes unit whichHero, integer newXpVal,  boolean showEyeCandy returns nothing
--
--native          GetHeroSkillPoints      takes unit whichHero returns integer
--native          UnitModifySkillPoints   takes unit whichHero, integer skillPointDelta returns boolean
--
--native          AddHeroXP           takes unit whichHero, integer xpToAdd,   boolean showEyeCandy returns nothing
--native          SetHeroLevel        takes unit whichHero, integer level,  boolean showEyeCandy returns nothing
--constant native GetHeroLevel        takes unit whichHero returns integer
--constant native GetUnitLevel        takes unit whichUnit returns integer
--native          GetHeroProperName   takes unit whichHero returns string
--native          SuspendHeroXP       takes unit whichHero, boolean flag returns nothing
--native          IsSuspendedXP       takes unit whichHero returns boolean
--native          SelectHeroSkill     takes unit whichHero, integer abilcode returns nothing
--native          GetUnitAbilityLevel takes unit whichUnit, integer abilcode returns integer
--native          DecUnitAbilityLevel takes unit whichUnit, integer abilcode returns integer
--native          IncUnitAbilityLevel takes unit whichUnit, integer abilcode returns integer
--native          SetUnitAbilityLevel takes unit whichUnit, integer abilcode, integer level returns integer
--native          ReviveHero          takes unit whichHero, real x, real y, boolean doEyecandy returns boolean
--native          ReviveHeroLoc       takes unit whichHero, location loc, boolean doEyecandy returns boolean
--native          SetUnitExploded     takes unit whichUnit, boolean exploded returns nothing
--native          SetUnitInvulnerable takes unit whichUnit, boolean flag returns nothing
--native          PauseUnit           takes unit whichUnit, boolean flag returns nothing
--native          IsUnitPaused        takes unit whichHero returns boolean
--native          SetUnitPathing      takes unit whichUnit, boolean flag returns nothing
--
--native          ClearSelection      takes nothing returns nothing
--native          SelectUnit          takes unit whichUnit, boolean flag returns nothing
--
--native          GetUnitPointValue       takes unit whichUnit returns integer
--native          GetUnitPointValueByType takes integer unitType returns integer
--//native        SetUnitPointValueByType takes integer unitType, integer newPointValue returns nothing
--
--native          UnitAddItem             takes unit whichUnit, item whichItem returns boolean
--native          UnitAddItemById         takes unit whichUnit, integer itemId returns item
--native          UnitAddItemToSlotById   takes unit whichUnit, integer itemId, integer itemSlot returns boolean
--native          UnitRemoveItem          takes unit whichUnit, item whichItem returns nothing
--native          UnitRemoveItemFromSlot  takes unit whichUnit, integer itemSlot returns item
--native          UnitHasItem             takes unit whichUnit, item whichItem returns boolean
--native          UnitItemInSlot          takes unit whichUnit, integer itemSlot returns item
--native          UnitInventorySize       takes unit whichUnit returns integer
--
--native          UnitDropItemPoint       takes unit whichUnit, item whichItem, real x, real y returns boolean
--native          UnitDropItemSlot        takes unit whichUnit, item whichItem, integer slot returns boolean
--native          UnitDropItemTarget      takes unit whichUnit, item whichItem, widget target returns boolean
--
--native          UnitUseItem             takes unit whichUnit, item whichItem returns boolean
--native          UnitUseItemPoint        takes unit whichUnit, item whichItem, real x, real y returns boolean
--native          UnitUseItemTarget       takes unit whichUnit, item whichItem, widget target returns boolean
--
--constant native GetUnitX            takes unit whichUnit returns real
--constant native GetUnitY            takes unit whichUnit returns real
--constant native GetUnitLoc          takes unit whichUnit returns location
--constant native GetUnitFacing       takes unit whichUnit returns real
--constant native GetUnitMoveSpeed    takes unit whichUnit returns real
--constant native GetUnitDefaultMoveSpeed takes unit whichUnit returns real
--constant native GetUnitState        takes unit whichUnit, unitstate whichUnitState returns real
--constant native GetOwningPlayer     takes unit whichUnit returns player
--constant native GetUnitTypeId       takes unit whichUnit returns integer
--constant native GetUnitRace         takes unit whichUnit returns race
--constant native GetUnitName         takes unit whichUnit returns string
--constant native GetUnitFoodUsed     takes unit whichUnit returns integer
--constant native GetUnitFoodMade     takes unit whichUnit returns integer
--constant native GetFoodMade         takes integer unitId returns integer
--constant native GetFoodUsed         takes integer unitId returns integer
--native          SetUnitUseFood      takes unit whichUnit, boolean useFood returns nothing
--
--constant native GetUnitRallyPoint           takes unit whichUnit returns location
--constant native GetUnitRallyUnit            takes unit whichUnit returns unit
--constant native GetUnitRallyDestructable    takes unit whichUnit returns destructable
--
--constant native IsUnitInGroup       takes unit whichUnit, group whichGroup returns boolean
--constant native IsUnitInForce       takes unit whichUnit, force whichForce returns boolean
--constant native IsUnitOwnedByPlayer takes unit whichUnit, player whichPlayer returns boolean
--constant native IsUnitAlly          takes unit whichUnit, player whichPlayer returns boolean
--constant native IsUnitEnemy         takes unit whichUnit, player whichPlayer returns boolean
--constant native IsUnitVisible       takes unit whichUnit, player whichPlayer returns boolean
--constant native IsUnitDetected      takes unit whichUnit, player whichPlayer returns boolean
--constant native IsUnitInvisible     takes unit whichUnit, player whichPlayer returns boolean
--constant native IsUnitFogged        takes unit whichUnit, player whichPlayer returns boolean
--constant native IsUnitMasked        takes unit whichUnit, player whichPlayer returns boolean
--constant native IsUnitSelected      takes unit whichUnit, player whichPlayer returns boolean
--constant native IsUnitRace          takes unit whichUnit, race whichRace returns boolean
--constant native IsUnitType          takes unit whichUnit, unittype whichUnitType returns boolean
--constant native IsUnit              takes unit whichUnit, unit whichSpecifiedUnit returns boolean
--constant native IsUnitInRange       takes unit whichUnit, unit otherUnit, real distance returns boolean
--constant native IsUnitInRangeXY     takes unit whichUnit, real x, real y, real distance returns boolean
--constant native IsUnitInRangeLoc    takes unit whichUnit, location whichLocation, real distance returns boolean
--constant native IsUnitHidden        takes unit whichUnit returns boolean
--constant native IsUnitIllusion      takes unit whichUnit returns boolean
--
--constant native IsUnitInTransport   takes unit whichUnit, unit whichTransport returns boolean
--constant native IsUnitLoaded        takes unit whichUnit returns boolean
--
--constant native IsHeroUnitId        takes integer unitId returns boolean
--constant native IsUnitIdType        takes integer unitId, unittype whichUnitType returns boolean
--
--native UnitShareVision              takes unit whichUnit, player whichPlayer, boolean share returns nothing
--native UnitSuspendDecay             takes unit whichUnit, boolean suspend returns nothing
--native UnitAddType                  takes unit whichUnit, unittype whichUnitType returns boolean
--native UnitRemoveType               takes unit whichUnit, unittype whichUnitType returns boolean
--
--native UnitAddAbility               takes unit whichUnit, integer abilityId returns boolean
--native UnitRemoveAbility            takes unit whichUnit, integer abilityId returns boolean
--native UnitMakeAbilityPermanent     takes unit whichUnit, boolean permanent, integer abilityId returns boolean
--native UnitRemoveBuffs              takes unit whichUnit, boolean removePositive, boolean removeNegative returns nothing
--native UnitRemoveBuffsEx            takes unit whichUnit, boolean removePositive, boolean removeNegative, boolean magic, boolean physical, boolean timedLife, boolean aura, boolean autoDispel returns nothing
--native UnitHasBuffsEx               takes unit whichUnit, boolean removePositive, boolean removeNegative, boolean magic, boolean physical, boolean timedLife, boolean aura, boolean autoDispel returns boolean
--native UnitCountBuffsEx             takes unit whichUnit, boolean removePositive, boolean removeNegative, boolean magic, boolean physical, boolean timedLife, boolean aura, boolean autoDispel returns integer
--native UnitAddSleep                 takes unit whichUnit, boolean add returns nothing
--native UnitCanSleep                 takes unit whichUnit returns boolean
--native UnitAddSleepPerm             takes unit whichUnit, boolean add returns nothing
--native UnitCanSleepPerm             takes unit whichUnit returns boolean
--native UnitIsSleeping               takes unit whichUnit returns boolean
--native UnitWakeUp                   takes unit whichUnit returns nothing
--native UnitApplyTimedLife           takes unit whichUnit, integer buffId, real duration returns nothing
--native UnitIgnoreAlarm              takes unit whichUnit, boolean flag returns boolean
--native UnitIgnoreAlarmToggled       takes unit whichUnit returns boolean
--native UnitResetCooldown            takes unit whichUnit returns nothing
--native UnitSetConstructionProgress  takes unit whichUnit, integer constructionPercentage returns nothing
--native UnitSetUpgradeProgress       takes unit whichUnit, integer upgradePercentage returns nothing
--native UnitPauseTimedLife           takes unit whichUnit, boolean flag returns nothing
--native UnitSetUsesAltIcon           takes unit whichUnit, boolean flag returns nothing
--
--native UnitDamagePoint              takes unit whichUnit, real delay, real radius, real x, real y, real amount, boolean attack, boolean ranged, attacktype attackType, damagetype damageType, weapontype weaponType returns boolean
--native UnitDamageTarget             takes unit whichUnit, widget target, real amount, boolean attack, boolean ranged, attacktype attackType, damagetype damageType, weapontype weaponType returns boolean
--
--native IssueImmediateOrder          takes unit whichUnit, string order returns boolean
--native IssueImmediateOrderById      takes unit whichUnit, integer order returns boolean
--native IssuePointOrder              takes unit whichUnit, string order, real x, real y returns boolean
--native IssuePointOrderLoc           takes unit whichUnit, string order, location whichLocation returns boolean
--native IssuePointOrderById          takes unit whichUnit, integer order, real x, real y returns boolean
--native IssuePointOrderByIdLoc       takes unit whichUnit, integer order, location whichLocation returns boolean
--native IssueTargetOrder             takes unit whichUnit, string order, widget targetWidget returns boolean
--native IssueTargetOrderById         takes unit whichUnit, integer order, widget targetWidget returns boolean
--native IssueInstantPointOrder       takes unit whichUnit, string order, real x, real y, widget instantTargetWidget returns boolean
--native IssueInstantPointOrderById   takes unit whichUnit, integer order, real x, real y, widget instantTargetWidget returns boolean
--native IssueInstantTargetOrder      takes unit whichUnit, string order, widget targetWidget, widget instantTargetWidget returns boolean
--native IssueInstantTargetOrderById  takes unit whichUnit, integer order, widget targetWidget, widget instantTargetWidget returns boolean
--native IssueBuildOrder              takes unit whichPeon, string unitToBuild, real x, real y returns boolean
--native IssueBuildOrderById          takes unit whichPeon, integer unitId, real x, real y returns boolean
--
--native IssueNeutralImmediateOrder       takes player forWhichPlayer, unit neutralStructure, string unitToBuild returns boolean
--native IssueNeutralImmediateOrderById   takes player forWhichPlayer,unit neutralStructure, integer unitId returns boolean
--native IssueNeutralPointOrder           takes player forWhichPlayer,unit neutralStructure, string unitToBuild, real x, real y returns boolean
--native IssueNeutralPointOrderById       takes player forWhichPlayer,unit neutralStructure, integer unitId, real x, real y returns boolean
--native IssueNeutralTargetOrder          takes player forWhichPlayer,unit neutralStructure, string unitToBuild, widget target returns boolean
--native IssueNeutralTargetOrderById      takes player forWhichPlayer,unit neutralStructure, integer unitId, widget target returns boolean
--
--native GetUnitCurrentOrder          takes unit whichUnit returns integer
--
--native SetResourceAmount            takes unit whichUnit, integer amount returns nothing
--native AddResourceAmount            takes unit whichUnit, integer amount returns nothing
--native GetResourceAmount            takes unit whichUnit returns integer
--
--native WaygateGetDestinationX       takes unit waygate returns real
--native WaygateGetDestinationY       takes unit waygate returns real
--native WaygateSetDestination        takes unit waygate, real x, real y returns nothing
--native WaygateActivate              takes unit waygate, boolean activate returns nothing
--native WaygateIsActive              takes unit waygate returns boolean
--
--native AddItemToAllStock            takes integer itemId, integer currentStock, integer stockMax returns nothing
--native AddItemToStock               takes unit whichUnit, integer itemId, integer currentStock, integer stockMax returns nothing
--native AddUnitToAllStock            takes integer unitId, integer currentStock, integer stockMax returns nothing
--native AddUnitToStock               takes unit whichUnit, integer unitId, integer currentStock, integer stockMax returns nothing
--
--native RemoveItemFromAllStock       takes integer itemId returns nothing
--native RemoveItemFromStock          takes unit whichUnit, integer itemId returns nothing
--native RemoveUnitFromAllStock       takes integer unitId returns nothing
--native RemoveUnitFromStock          takes unit whichUnit, integer unitId returns nothing
--
--native SetAllItemTypeSlots          takes integer slots returns nothing
--native SetAllUnitTypeSlots          takes integer slots returns nothing
--native SetItemTypeSlots             takes unit whichUnit, integer slots returns nothing
--native SetUnitTypeSlots             takes unit whichUnit, integer slots returns nothing
--
--native GetUnitUserData              takes unit whichUnit returns integer
--native SetUnitUserData              takes unit whichUnit, integer data returns nothing


return jass