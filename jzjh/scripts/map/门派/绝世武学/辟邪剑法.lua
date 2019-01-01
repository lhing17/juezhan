---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/12/23 0023 21:32
---

--- 辟邪剑法
--- @param u unit 施法单位
--- @param id number 技能ID
--- @param target unit|point|nil 技能目标
et.game:event '单位-技能生效'(function(self, u, id, target)
    if id == 1093678922 and u:is_hero() then
        local h = u:get_owner().hero
        et.timer(1000, 20, function()
            local group = et.selector():in_range(u:get_point(), 600):is_enemy(u):get()
            for _, v in pairs(group) do
                local ability_damage, critical = damage_formula {
                    source = u,
                    target = v,
                    magic_coeff = 1,
                    physic_coeff = 1,
                    ability_coeff = 43 * outstanding_kungfu_coeff(h),
                    level = u:get_ability_level(1093678922)
                }
                apply_damage(u, v, ability_damage, critical)
            end
        end)
    end
end)
