local suits = {
    ['精钢套装'] = {
        items = { 1227895116, 1227895117 },
        hint = "|cffFF4d00※精钢套装※|R\n|CFFB2FF00招式伤害+150\n暴击率+4%\n暴击伤害+30%\n杀怪回复+500\n根骨+1\n胆魄+1|r",
        trick_damage = 150,
        critical_rate = 4,
        critical_damage = 30,
        kill_regen = 500,
        constitution = 1,
        courage = 1,
    },
    ['新年快乐套装'] = {
        items = { 1227899192, 1227899193 },
        hint = "|cffFF4d00※新年快乐套装※|R\n|CFFB2FF00全属性+1000\n全性格属性+5|r",
        trick_damage = 1000,
        internal = 1000,
        real_damage = 1000,
        perception = 5,
        constitution = 5,
        courage = 5,
        luck = 5,
        healing_skill = 5,
        channel = 5,
    },
    ['七星套装'] = {
        items = { 1227895118, 1227895119, 1227895120 },
        hint = "|cffFF4d00※七星套装※|R\n|CFFB2FF00招式伤害+200\n魔法上限+15\n法力恢复+5\n气血+10000\n每秒恢复+130\n医术+1\n悟性+1|R",
        trick_damage = 200,
        max_mana = 15,
        mana_regen = 5,
        max_life = 10000,
        life_regen = 130,
        healing_skill = 1,
        perception = 1,
    },
    ['破军套装'] = {
        items = { 1227895121, 1227895122 },
        hint = "|cffFF4d00※破军套装※|R\n|CFFB2FF00攻击速度+30%\n气血+10000\n每秒回复+400\n防御+30\n胆魄+1\n福缘+1",
        attack_speed = 30,
        max_life = 10000,
        life_regen = 400,
        armor = 30,
        courage = 1,
        luck = 1
    },
    ['绝恋套装'] = {
        items = { 1227894872, 1227894873 },
        hint = "|cffFF4d00※绝恋套装※|R\n|CFFB2FF00招式伤害+150\n真实伤害+100\n绝学领悟力+1\n气血+15000\n每秒回复+300\n伤害回复+300\n全性格属性+1",
        trick_damage = 150,
        real_damage = 100,
        unique_perception = 1,
        max_life = 15000,
        life_regen = 300,
        damage_regen = 300,
        perception = 1,
        constitution = 1,
        courage = 1,
        luck = 1,
        healing_skill = 1,
        channel = 1,
    },
    ['倾城套装'] = {
        items = { 1227894874, 1227895088 },
        hint = "|cffFF4d00※倾城套装※|R\n|CFFB2FF00防御+170\n绝学领悟力+1\n暴击率+4%\n暴击伤害+30%\n杀怪回复+600\n全性格属性+1",
        armor = 170,
        unique_perception = 1,
        critical_rate = 4,
        critical_damage = 30,
        kill_regen = 600,
        perception = 1,
        constitution = 1,
        courage = 1,
        luck = 1,
        healing_skill = 1,
        channel = 1,
    },
    ['江湖套装'] = {
        items = { 1227896918, 1227896919, 1227896920 },
        hint = "|cffFF4d00※江湖套装※|R\n|CFFB2FF00内力+300\n真实伤害+200\n暴击伤害+150%\n法力恢复+10\n暴击率+20%\n绝学领悟力+4\n全性格属性+3\n武功伤害+60%",
        internal = 300,
        real_damage = 200,
        critical_damage = 150,
        mana_regen = 10,
        critical_rate = 20,
        unique_perception = 4,
        damage_addition = 60,
        perception = 3,
        constitution = 3,
        courage = 3,
        luck = 3,
        healing_skill = 3,
        channel = 3,

    },
    ['决战套装'] = {
        items = { 1227897136, 1227896922, 1227896921 },
        hint = "|cffFF4d00※决战套装※|R\n|CFFB2FF00招式伤害+1000\n伤害回复+600\n气血+100000\n每秒恢复+1000\n防御+1000\n绝学领悟力+4\n全性格属性+3\n伤害吸收+30%",
        trick_damage = 1000,
        damage_regen = 600,
        max_life = 100000,
        life_regen = 1000,
        armor = 1000,
        unique_perception = 4,
        damage_absorb = 30,
        perception = 3,
        constitution = 3,
        courage = 3,
        luck = 3,
        healing_skill = 3,
        channel = 3,
    }
}

local function init()
    --- 集齐套装
    --- @param u unit
    --- @param it item
    et.game:event '单位-捡起物品'(function(self, u, it)
        -- 套装物品等级
        if not is_in(it:get_level(), { 3, 6 }) then
            return
        end
        local p = u:get_owner()
        local h = p.hero
        for k, v in pairs(suits) do
            local flag = true
            for _, id in ipairs(v.items) do
                if not u:has_item(id) then
                    flag = false
                end
            end
            if flag and not h.suits:contains(k) then
                p:send_message(v.hint)
                h:add_bonus(v, 0)
                h.suits:insert(k)
            end
        end
    end)
    --- 失去套装
    --- @param u unit
    --- @param it item
    et.game:event '单位-扔下物品'(function(self, u, it)
        if not is_in(it:get_level(), { 3, 6 }) then
            return
        end
        local p = u:get_owner()
        local h = p.hero
        et.wait(10, function()
            for k, v in pairs(suits) do
                local flag = false
                for _, id in ipairs(v.items) do
                    if not u:has_item(id) then
                        flag = true
                    end
                end
                if flag and h.suits:contains(k) then
                    p:send_message("|cffff00ff失去" .. k .. "属性|R")
                    h:add_bonus(v, 1)
                    h.suits:remove(k)
                end
            end
        end)
    end)
end
init()