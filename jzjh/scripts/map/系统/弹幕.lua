--globals from UniMissileSystem3D:
LIBRARY_UniMissileSystem3D = true
local m_space = {}
UniMissileSystem3D__RA = _array_(0.0)
UniMissileSystem3D__DM = _array_(0.0)
UniMissileSystem3D__DI = _array_(0.0)
local m_angle = {}
UniMissileSystem3D__ANZ = _array_(0.0)
UniMissileSystem3D__HE = _array_(0.0)
UniMissileSystem3D__HEMax = _array_(0.0)
UniMissileSystem3D__SH = _array_(0.0)
UniMissileSystem3D__US = _array_(0.0)
UniMissileSystem3D__MX = _array_(0.0)
UniMissileSystem3D__MY = _array_(0.0)
UniMissileSystem3D__MZ = _array_(0.0)
UniMissileSystem3D__ARC = _array_(0.0)
UniMissileSystem3D__HP = _array_(0.0)
UniMissileSystem3D__OF = _array_(0.0)
UniMissileSystem3D__OS = _array_(0.0)
UniMissileSystem3D__TIM = _array_(0.0)
local m_fly_time = {}
local m_altitude = {}
UniMissileSystem3D__RI = _array_(0.0)
UniMissileSystem3D__R01 = _array_(0.0)
UniMissileSystem3D__R02 = _array_(0.0)
local m_gravity = _array_(0.0)
local m_loc = {}
local m_height = {}
local m_missle = {}
local m_target = {}
UniMissileSystem3D__DamageUnit = nil
UniMissileSystem3D__EF = _array_()
UniMissileSystem3D__EFL = _array_()
UniMissileSystem3D__ACC = _array_(0.0)
local m_max_speed = {}
UniMissileSystem3D__SPX = _array_(0.0)
UniMissileSystem3D__SPY = _array_(0.0)
UniMissileSystem3D__LastX = _array_(0.0)
UniMissileSystem3D__LastY = _array_(0.0)
UniMissileSystem3D__MKs = _array_(0.0)
UniMissileSystem3D__IN = _array_(0)
local top = -1
local TIME_OUT = 0.03
local m_damage_group
local hero_pos
UniMissileSystem3D__MLoc = _array_()
UniMissileSystem3D__LastOwner = _array_()
MissileTimerPause = false
local map_max_x = jass.GetRectMaxX(bj_mapInitialPlayableArea)
local map_max_y = jass.GetRectMaxY(bj_mapInitialPlayableArea)
local map_min_x = jass.GetRectMinX(bj_mapInitialPlayableArea)
local map_min_y = jass.GetRectMinY(bj_mapInitialPlayableArea)
--endglobals from UniMissileSystem3D

--library UniMissileSystem3D:
-- 计算两点间的距离
local function get_distance(x1, x2, y1, y2)
    return math.sqrt((x1 - x2) ^ 2 + (y1 - y2) ^ 2)
end
-- 计算两点间的角度（角度制）
local function get_angle(x1, x2, y1, y2)
    return math.deg(math.atan(y2 - y1, x2 - x1))
end
-- 计算两个单位间的距离
local function get_unit_distance(u1, u2)
    return get_distance(jass.GetUnitX(u1), jass.GetUnitX(u2), jass.GetUnitY(u1), jass.GetUnitY(u2))
end
-- 计算加速的时间
-- s = v0 * t + 1/2 * a * t * t
-- a * t * t  + 2 * v0 * t - 2 * s = 0
-- time1 = (- 2 * v0 + SquareRoot ( 4 * v0 *v0 + 8 * a * s)) / (2 * a)
local function get_accelerated_time(dis, originspeed, accel)
    local time1 = (-1 * originspeed + math.sqrt(originspeed ^ 2 + 2 * accel * dis)) / accel
    local time2 = (-1 * originspeed - math.sqrt(originspeed ^ 2 + 2 * accel * dis)) / accel
    time1 = (time1 == 0.0) and 0.01 or time1
    time2 = (time2 == 0.0) and 0.01 or time2
    return math.max(time1, time2)
end
-- 登记弹幕
local function m_register(missile)
    jass.UnitAddAbility(missile, 1098015094) -- 风暴之鸦
    jass.UnitRemoveAbility(missile, 1098015094)
    jass.SetUnitPosition(missile, jass.GetUnitX(missile), jass.GetUnitY(missile))
    jass.SetUnitAnimationByIndex(missile, 90)
end
-- 将i从栈中移除，使用栈顶元素补充i
local function m_pop(i)
    if GetUnitState(m_missle[i], UNIT_STATE_LIFE) > 0.4 then
        KillUnit(m_missle[i])
    end
    DestroyEffect(UniMissileSystem3D__EFL[i])
    m_missle[i] = m_missle[top]
    m_space[i] = m_space[top]
    UniMissileSystem3D__RA[i] = UniMissileSystem3D__RA[top]
    UniMissileSystem3D__DM[i] = UniMissileSystem3D__DM[top]
    UniMissileSystem3D__DI[i] = UniMissileSystem3D__DI[top]
    m_angle[i] = m_angle[top]
    UniMissileSystem3D__HE[i] = UniMissileSystem3D__HE[top]
    UniMissileSystem3D__HEMax[i] = UniMissileSystem3D__HEMax[top]
    UniMissileSystem3D__US[i] = UniMissileSystem3D__US[top]
    UniMissileSystem3D__ARC[i] = UniMissileSystem3D__ARC[top]
    UniMissileSystem3D__HP[i] = UniMissileSystem3D__HP[top]
    UniMissileSystem3D__EF[i] = UniMissileSystem3D__EF[top]
    UniMissileSystem3D__EFL[i] = UniMissileSystem3D__EFL[top]
    UniMissileSystem3D__SH[i] = UniMissileSystem3D__SH[top]
    m_gravity[i] = m_gravity[top]
    m_loc[i] = m_loc[top]
    UniMissileSystem3D__TIM[i] = UniMissileSystem3D__TIM[top]
    m_fly_time[i] = m_fly_time[top]
    m_altitude[i] = m_altitude[top]
    UniMissileSystem3D__RI[i] = UniMissileSystem3D__RI[top]
    UniMissileSystem3D__R01[i] = UniMissileSystem3D__R01[top]
    UniMissileSystem3D__R02[i] = UniMissileSystem3D__R02[top]
    m_target[i] = m_target[top]
    m_height[i] = m_height[top]
    UniMissileSystem3D__OS[i] = UniMissileSystem3D__OS[top]
    UniMissileSystem3D__OF[i] = UniMissileSystem3D__OF[top]
    UniMissileSystem3D__ACC[i] = UniMissileSystem3D__ACC[top]
    m_max_speed[i] = m_max_speed[top]
    UniMissileSystem3D__MKs[i] = UniMissileSystem3D__MKs[top]
    UniMissileSystem3D__SPX[i] = UniMissileSystem3D__SPX[top]
    UniMissileSystem3D__SPY[i] = UniMissileSystem3D__SPY[top]
    UniMissileSystem3D__LastX[i] = UniMissileSystem3D__LastX[top]
    UniMissileSystem3D__LastY[i] = UniMissileSystem3D__LastY[top]
    UniMissileSystem3D__IN[i] = UniMissileSystem3D__IN[top]
    UniMissileSystem3D__LastOwner[i] = UniMissileSystem3D__LastOwner[top]
    m_missle[top] = nil
    m_target[top] = nil
    top = top - 1
end
-- 判断是否越界
local function m_limit(x, y)
    --边界判定
    return x > map_max_x or x < map_min_x or y > map_max_y or y < map_min_y
end
-- 弹幕循环
local function m_loop()
    local x = {}
    local y = {}
    local z = {}
    local h = 0.0
    local ang = 0.0
    local lastheight = 0.0
    local addxy = 0.0
    local addz = 0.0
    local anglez = 0.0
    local tanZ = 0.0
    local targetheight = 0.0
    local aniI = 0
    if MissileTimerPause then
        return
    end
    for i = top, 0, -1 do
        local addh = 0.0
        local udis = 0.0
        x[1] = jass.GetUnitX(m_missle[i])
        y[1] = jass.GetUnitY(m_missle[i])
        local height = jass.GetUnitFlyHeight(m_missle[i])
        if UniMissileSystem3D__DI[i] <= 0.0 or GetUnitState(m_missle[i], UNIT_STATE_LIFE) < 0.4 or height <= 0.1 or UniMissileSystem3D__HP[i] <= 0.0 or m_limit(x[1], y[1]) == true or height >= 9999.1 then
            m_pop(i)
        else
            if m_target[i] ~= nil then
                m_angle[i] = get_angle(x[1], jass.GetUnitX(m_target[i]), y[1], jass.GetUnitY(m_target[i]))
                ang = math.rad(m_angle[i])
                if UniMissileSystem3D__IN[i] == 0 then
                    UniMissileSystem3D__SPX[i] = m_space[i] * Cos(ang)
                    UniMissileSystem3D__SPY[i] = m_space[i] * Sin(ang)
                else
                    ang = ang + UniMissileSystem3D__OF[i]
                    UniMissileSystem3D__SPX[i] = UniMissileSystem3D__SPX[i] * UniMissileSystem3D__MKs[i] + UniMissileSystem3D__ACC[i] * Cos(ang)
                    UniMissileSystem3D__SPY[i] = UniMissileSystem3D__SPY[i] * UniMissileSystem3D__MKs[i] + UniMissileSystem3D__ACC[i] * Sin(ang)
                end
                if IsUnitType(m_target[i], UNIT_TYPE_DEAD) == true then
                    m_target[i] = nil
                end
                udis = get_unit_distance(m_target[i], m_missle[i]) / 100.0
                if udis == 0.0 then
                    udis = 0.01
                end
                targetheight = GetUnitFlyHeight(m_target[i])
                if RAbsBJ(height - targetheight) > UniMissileSystem3D__RA[i] then
                    if targetheight > height then
                        addh = RAbsBJ(m_space[i]) / udis
                        if addh + height > targetheight then
                            addh = addh / 10.0
                            SetUnitFlyHeight(m_missle[i], targetheight, 0.0)
                            height = targetheight
                        end
                    elseif targetheight < height then
                        addh = RAbsBJ(m_space[i]) * -1.0 / udis
                        if addh + height < targetheight then
                            SetUnitFlyHeight(m_missle[i], targetheight, 0.0)
                            height = targetheight
                        end
                    end
                end
            else
                ang = m_angle[i] * bj_DEGTORAD
                UniMissileSystem3D__SPX[i] = m_space[i] * Cos(ang)
                UniMissileSystem3D__SPY[i] = m_space[i] * Sin(ang)
                if m_loc[i] == 0.0 then
                    m_space[i] = m_space[i] + UniMissileSystem3D__ACC[i]
                else
                    if m_space[i] <= m_max_speed[i] then
                        m_space[i] = m_space[i] + UniMissileSystem3D__ACC[i]
                    else
                        m_space[i] = m_max_speed[i]
                    end
                end
            end
            x[2] = x[1] + UniMissileSystem3D__SPX[i]
            y[2] = y[1] + UniMissileSystem3D__SPY[i]
            UniMissileSystem3D__MLoc[1] = Location(x[1], y[1])
            UniMissileSystem3D__MLoc[2] = Location(x[2], y[2])
            z[1] = GetLocationZ(UniMissileSystem3D__MLoc[1])
            z[2] = GetLocationZ(UniMissileSystem3D__MLoc[2])
            SetUnitX(m_missle[i], x[2])
            SetUnitY(m_missle[i], y[2])
            UniMissileSystem3D__LastX[i] = x[2]
            UniMissileSystem3D__LastY[i] = y[2]
            addxy = get_distance(x[2], x[1], y[2], y[1])
            SetUnitFacing(m_missle[i], m_angle[i])
            GroupEnumUnitsInRange(m_damage_group, x[2], y[2], UniMissileSystem3D__RA[i], nil)
            for _ in _loop_() do
                UniMissileSystem3D__DamageUnit = FirstOfGroup(m_damage_group)
                if GetUnitState(UniMissileSystem3D__DamageUnit, UNIT_STATE_LIFE) > 0.4 and (m_target[i] == UniMissileSystem3D__DamageUnit or IsUnitEnemy(UniMissileSystem3D__DamageUnit, GetOwningPlayer(m_missle[i]))) then
                    if RAbsBJ(height - GetUnitFlyHeight(UniMissileSystem3D__DamageUnit)) <= UniMissileSystem3D__RA[i] then
                        UnitDamageTarget(m_missle[i], UniMissileSystem3D__DamageUnit, UniMissileSystem3D__DM[i], true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
                        UniMissileSystem3D__HP[i] = UniMissileSystem3D__HP[i] - 1.0
                        UniMissileSystem3D__DM[i] = UniMissileSystem3D__DM[i] * 0.5
                    end
                end
                GroupRemoveUnit(m_damage_group, UniMissileSystem3D__DamageUnit)
                if UniMissileSystem3D__DamageUnit == nil then
                    break
                end
            end
            GroupClear(m_damage_group)
            UniMissileSystem3D__TIM[i] = UniMissileSystem3D__TIM[i] + TIME_OUT
            if m_gravity[i] == 0.0 then
                h = 0.11 + m_altitude[i] - z[2]
            end
            if m_loc[i] == 0.0 then
                if m_gravity[i] == 0.0 then
                else
                    h = UniMissileSystem3D__HEMax[i] - UniMissileSystem3D__R01[i] * (UniMissileSystem3D__TIM[i] - m_fly_time[i] / 2) * (UniMissileSystem3D__TIM[i] - m_fly_time[i] / 2) + UniMissileSystem3D__TIM[i] * UniMissileSystem3D__R02[i] + m_altitude[i] - z[2]
                end
            else
                UniMissileSystem3D__US[i] = UniMissileSystem3D__US[i] - m_gravity[i]
            end
            lastheight = height
            UniMissileSystem3D__HE[i] = UniMissileSystem3D__HE[i] * m_loc[i] + UniMissileSystem3D__SH[i] + UniMissileSystem3D__US[i] * m_loc[i] + h * (1 - m_loc[i]) + addh
            height = UniMissileSystem3D__HE[i] - z[2] * m_loc[i]
            SetUnitFlyHeight(m_missle[i], height, 0.0)
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
            SetUnitAnimationByIndex(m_missle[i], aniI)
            UniMissileSystem3D__DI[i] = UniMissileSystem3D__DI[i] - m_space[i] * m_loc[i]
            UniMissileSystem3D__US[i] = UniMissileSystem3D__US[i] - m_gravity[i]
            RemoveLocation(UniMissileSystem3D__MLoc[1])
            RemoveLocation(UniMissileSystem3D__MLoc[2])
        end
    end
end
-- 弹幕发射
-- 发射者 unit
-- 子弹 unit
-- 初始速度 real
-- 最大速度 real
-- 加速度 real
-- 角度 real
-- 距离 real
-- 弧度 real
-- 范围 real
-- 伤害 real
-- 位置 pos {x,y}
-- 目标 unit
-- 高度 real
-- 生命值 real
-- 特效 string
-- 重力 boolean
function missile_cast(tab)
    local i = 0
    local speed = 600
    local dis = 0.01
    local ang = 0.01
    local x = 0.01
    local y = 0.01
    local inertia = true
    if not tab.pos then
        return
    end
    top = top + 1
    i = top
    hero_pos = { jass.GetUnitX(tab.caster), jass.GetUnitY(tab.caster) }

    -- 设置默认值
    tab.originspeed = tab.originspeed or 0.01
    tab.maxspeed = tab.maxspeed or 0.01
    tab.distance = tab.distance or 0.01
    tab.height = tab.height or 0.01

    if tab.pos[1] ~= hero_pos[1] or tab.pos[2] ~= hero_pos[2] then
        x = tab.pos[1]
        y = tab.pos[2]
        ang = get_angle(GetUnitX(caster), x, GetUnitY(caster), y)
        dis = get_distance(x, GetUnitX(caster), y, GetUnitY(caster))
        m_loc[i] = 0.0
    else
        ang = tab.angle
        dis = tab.distance
        m_loc[i] = 1.0
    end
    -- 重力
    m_gravity[i] = tab.gravity and 0.4 or 0.0
    m_missle[i] = tab.missile
    m_register(m_missle[i])
    m_height[i] = jass.GetUnitFlyHeight(tab.caster) + tab.height
    -- 考虑地形
    m_altitude[i] = jass.GetLocationZ(hero_pos) + m_height[i]

    if tab.originspeed == tab.maxspeed then
        speed = tab.originspeed
        tab.accel = 0.0
        inertia = false
        m_fly_time[i] = dis / speed
    else
        inertia = true
        m_fly_time[i] = get_accelerated_time(dis, originspeed, accel)
    end
    m_space[i] = tab.originspeed * TIME_OUT
    m_max_speed[i] = tab.maxspeed
    UniMissileSystem3D__RI[i] = (jass.GetLocationZ(tab.pos) - m_altitude[i]) / dis
    UniMissileSystem3D__TIM[i] = 0
    UniMissileSystem3D__IN[i] = 0
    if tab.target ~= nil then
        if jass.GetUnitState(target, UNIT_STATE_LIFE) > 0.4 then
            m_target[i] = tab.target
            if inertia then
                UniMissileSystem3D__OS[i] = tab.originspeed * TIME_OUT
                UniMissileSystem3D__OF[i] = Deg2Rad(50)
                UniMissileSystem3D__SPX[i] = UniMissileSystem3D__OS[i] * Cos(ang)
                UniMissileSystem3D__SPY[i] = UniMissileSystem3D__OS[i] * Sin(ang)
                UniMissileSystem3D__MKs[i] = 1 - tab.accel * TIME_OUT / tab.maxspeed
            end
        end
    end
    UniMissileSystem3D__ACC[i] = tab.accel * TIME_OUT * TIME_OUT
    if inertia then
        UniMissileSystem3D__IN[i] = 1
    end
    UniMissileSystem3D__RA[i] = tab.range
    UniMissileSystem3D__DM[i] = tab.damage
    m_angle[i] = ang
    UniMissileSystem3D__ARC[i] = tab.arc
    m_max_speed[i] = maxspeed * TIME_OUT
    if tab.arc ~= 0.0 then
        UniMissileSystem3D__HEMax[i] = dis * UniMissileSystem3D__ARC[i]
    else
        UniMissileSystem3D__HEMax[i] = height
    end
    if GetLocationX(pos) == GetLocationX(hero_pos) and GetLocationY(pos) == GetLocationY(hero_pos) then
        UniMissileSystem3D__ANZ[i] = AtanBJ(arc)
        UniMissileSystem3D__US[i] = tab.arc * m_space[i]
        UniMissileSystem3D__DI[i] = tab.distance
    else
        UniMissileSystem3D__US[i] = 0
        UniMissileSystem3D__DI[i] = dis
    end
    SetUnitX(m_missle[i], GetLocationX(hero_pos))
    SetUnitY(m_missle[i], GetLocationY(hero_pos))
    SetUnitOwner(m_missle[i], GetOwningPlayer(tab.caster), true)
    SetUnitFacing(m_missle[i], m_angle[i])
    UniMissileSystem3D__HE[i] = m_height[i] + GetLocationZ(hero_pos) + 0.11
    UniMissileSystem3D__SH[i] = 0
    UniMissileSystem3D__LastX[i] = 0
    UniMissileSystem3D__LastY[i] = 0
    UniMissileSystem3D__R01[i] = UniMissileSystem3D__HEMax[i] / m_fly_time[i] / m_fly_time[i] * 4
    UniMissileSystem3D__R02[i] = m_space[i] * UniMissileSystem3D__RI[i] / TIME_OUT
    UniMissileSystem3D__HP[i] = tab.hp
    UniMissileSystem3D__DM[i] = tab.damage
    UniMissileSystem3D__EF[i] = tab.effect
    SetUnitFlyHeight(m_missle[i], UniMissileSystem3D__HE[i] - GetLocationZ(hero_pos), 0.0)
    UniMissileSystem3D__EFL[i] = AddSpecialEffectTarget(UniMissileSystem3D__EF[i], m_missle[i], "chest")
    UniMissileSystem3D__LastOwner[i] = jass.GetOwningPlayer(tab.caster)
    hero_pos = nil
end
local function init()
    m_damage_group = CreateGroup()
    jass.TimerStart(jass.CreateTimer(), TIME_OUT, true, m_loop)
end
init()
--library UniMissileSystem3D ends