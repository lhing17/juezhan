--- 技能伤害公式
--- @param tab {source:unit, target:unit|nil, magic_coeff:number|nil, physic_coeff:number|nil, ability_coeff:number|nil, level:number|nil}
--- @return number, boolean 伤害, 是否暴击
function damage_formula(tab)
    local p = tab.source:get_owner()
    local h = p.hero or {}  --- 处理非玩家英雄伤害的情况（NPC）
    --- 设置默认值
    tab.magic_coeff = tab.magic_coeff or 1
    tab.physic_coeff = tab.physic_coeff or 1
    tab.ability_coeff = tab.ability_coeff or 1
    tab.level = tab.level or 1
    --- 基本伤害构成 历练系数、物理因子、法术因子、技能系数、伤害加成、等级加成
    local base_damage = tab.ability_coeff * (100
            + (h.practice_eff or 0) * 200
            + tab.magic_coeff * tab.source:get_str() * 3
            + tab.magic_coeff * tab.source:get_agi() * 3
            + tab.physic_coeff * tab.source:get_int() * 5
            + tab.level * 500
            + 0.3 * tab.source:get_ability_level(1093678393))

    --- 目标防御
    local target_def = 1 / (1 + 0.05 * (tab.target and tab.target:get_level() or 0))

    --- 闪避因子
    local dodge
    if not tab.target then
        dodge = 25
    else
        dodge = tab.target:has_buff(1114860655) and 0 or tab.target:get_level() / 8
    end

    --- 随机因子
    local random = commonutil.random(0.95, 1 + 0.05 * (h.char_b or 1))

    if commonutil.random(0, 100) < dodge then
        return 0, false
    else
        if commonutil.random(0, 100) < (h['暴击率'] or 0) then
            return (1 + (h['暴击伤害'] or 0)) * (1 + (h['伤害加成'] or 0)) * base_damage * target_def * random, true
        end
        return (1 + (h['伤害加成'] or 0)) * base_damage * target_def * random, false
    end
end

--- @param source unit
--- @param target unit
--- @param damage number
--- @param critical boolean
function apply_damage(source, target, damage, critical)
    if damage == 0 then
        et.tag.create("MISS", target:get_point(), 11, 0, 255, 0, 0, 30, 0.65, 400, commonutil.random(80, 100))
        return
    end
    if critical then
        et.tag.create(math.floor(damage), target:get_point(), 14, 0, 100, 100, 0, 30, 0.65, 400, commonutil.random(80, 100))
    else
        et.tag.create(math.floor(damage), target:get_point(), 11, 0, 100, 100, 100, 30, 0.65, 400, commonutil.random(80, 100))
    end
    jass.UnitDamageTarget(source.handle, target.handle, damage, true, false, jass.ATTACK_TYPE_MAGIC, jass.DAMAGE_TYPE_NORMAL, jass.WEAPON_TYPE_WHOKNOWS)
end