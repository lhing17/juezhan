--- 韦陀棍法
--- @param source unit 攻击者
--- @param target unit 受攻击者
et.game:event '单位-受攻击'(function(self, source, target)
    if source:has_ability(1093678407) and source:is_enemy(target) then
        local p = source:get_owner()
        local h = p.hero or {}
        local range = 300 + (h['经脉'] or 0) * 8
        if source:has_buff(1113746543) or commonutil.random(0, 100) <= 22 + (h['福缘'] or 0) / 3 then
            local group = et.selector():in_range(range):is_enemy(source):get()
            for _, v in pairs(group) do
                local coeff = 1.0
                coeff = coeff + (source:has_ability(1395666992) and 0.5 or 0)
                coeff = coeff + (source:has_ability(1093678927) and 0.7 or 0)
                coeff = coeff * (source:has_item(1227899212) and 3 or 1)
                et.effect.add_to_point("Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl", v:get_point()):destroy()
                local damage, critical = damage_formula {
                    source = source,
                    target = target,
                    magic_coeff = 1,
                    physic_coeff = 1.2,
                    ability_coeff = coeff,
                    level = source:get_ability_level(1093678407)
                }
                apply_damage(source, target, damage, critical)
            end
            if source:has_ability(1093682254) then
                source:set_life(source:get_life() + 0.02 * source:get_max_life())
            end
            if source:has_ability(1093678933) and commonutil.random(0, 100) <= 15 then
                source:get_owner():dummy_use_ability(1697656880, source:get_point(), 1093681496, 852101, source, 3)
            end
            WuGongShengChong(source, 1093678407, 1200.0)
        end
    end
end)

