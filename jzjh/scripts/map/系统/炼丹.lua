

---------各种丹药开始-------//
-- 服用属性丹
local pellet_map = {
    [1227895375] = '医术',
    [1227895370] = '悟性',
    [1227895363] = '根骨',
    [1227895368] = '福缘',
    [1227895369] = '经脉',
    [1227895365] = '胆魄',
}

local attr_list = { '医术', '悟性', '根骨', '福缘', '经脉', '胆魄', '取消', }


local function calculate_yin_yang(h)
    local hu = et.unit(h.handle)
    local yin = 0
    local yang = 0
    for i = 1, 6 do
        local id = jass.GetItemTypeId(hu:get_item_in_slot(i))
        local he = et.lni.herb[id]
        if he then
            yin = yin + he.yin
            yang = yang + he.yang
        end
    end
    return yin, yang
end


function init_herbs()
    YaoCao = { 1227896646, --车前草
               1227896647, --过路黄
               1227896645, --金钱草
               1227896630, --金银花
               1227896631, --锦灯笼
               1227896632, --苦地丁
               1227896633, --款冬花
               1227896642, --奇异果
               1227896641, --升丹
               1227896643, --土当归
               1227896644, --五加皮
               1227896648, --紫花兰
    }
    et.lni_loader('pellet')
    et.extend_lni(et.lni.pellet)

    et.lni_loader('herb')
    et.extend_lni(et.lni.herb)

    et.game:event '单位-使用物品'(function(self, u, item)
        local p = u:get_owner()
        local h = p.hero
        local addition = h.part_times['炼丹师'] and h.part_times['炼丹师'].level or 0
        local max_pellet = h.max_pellet + addition

        -- 属性丹
        if u:get_owner():is_player() and pellet_map[jass.GetItemTypeId(item)] then
            local attr = pellet_map[jass.GetItemTypeId(item)]
            if h.pellet < max_pellet then
                h.pellet = h.pellet + 1
                PlaySoundOnUnitBJ(Eh, 100, u.handle)
                p:send_message("|cFFFFCC00使用成功|r|cFF99FFCC" .. attr .. "+1|r")
                p:send_message("|cFFFFCC00当前" .. attr .. "为：|r|cFF99FFCC" .. h[attr])
                p:send_message("|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC" .. h.pellet .. " / " .. max_pellet)
            else
                u:add_item(jass.GetItemTypeId(item))
                PlaySoundOnUnitBJ(Gh, 100, u.handle)
                p:send_message("|cFFFFCC00你在本次游戏里已经达到了使用属性丹上限，无法再使用本类道具")
            end
        end

        -- 乾坤丹
        if u:get_owner():is_player() and jass.GetItemTypeId(item) == 1227895371 then
            if h.pellet < max_pellet then
                local d = et.dialog.create(p, "请选择要减1的属性", attr_list)
                for _, v in pairs(attr_list) do
                    et.event_register(d.buttons[v], '对话框-按钮点击')(function(self, dg, pl)
                        if v == '取消' then
                            d:clear_and_destroy()
                            u:add_item(1227895371)
                        else
                            h[v] = h[v] - 1
                            d:clear_and_destroy()
                            local dd = et.dialog.create(pl, '请选择要加3的属性', attr_list)
                            for _, v1 in pairs(attr_list) do
                                et.event_register(dd.buttons[v1], '对话框-按钮点击')(function(self, dg1, pl1)
                                    if v == '取消' then
                                        h[v] = h[v] + 1
                                        dd:clear_and_destroy()
                                        u:add_item(1227895371)
                                    else
                                        h[v1] = h[v1] + 3
                                        PlaySoundOnUnitBJ(Eh, 100, u.handle)
                                        h.pellet = h.pellet + 1
                                        p:send_message("|cFFFFCC00使用成功|r|cFF99FFCC" .. v .. "-1，" .. v1 .. "+3|r")
                                        p:send_message("|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC" .. h.pellet .. " / " .. max_pellet)
                                        dd:clear_and_destroy()
                                    end
                                end)
                            end
                        end
                    end)
                end
            else
                u:add_item(jass.GetItemTypeId(item))
                PlaySoundOnUnitBJ(Gh, 100, u.handle)
                p:send_message("|cFFFFCC00你在本次游戏里已经达到了使用属性丹上限，无法再使用本类道具")
            end
        end

        -- 易筋洗髓丹
        if u:get_owner():is_player() and jass.GetItemTypeId(item) == 1227895372 then
            local num = commonutil.random_int(1, 3)
            local attr = attr_list[commonutil.random_int(1, 6)]
            if h.pellet < max_pellet then
                h[attr] = h[attr] + num
                p:send_message("|cFFFFCC00使用成功|r|cFF99FFCC" .. attr .. "+" .. num .. "|r")
                p:send_message("|cFFFFCC00当前" .. attr .. "为：|r|cFF99FFCC" .. h[attr])
                h.pellet = h.pellet + 1
                PlaySoundOnUnitBJ(Eh, 100, u.handle)
                p:send_message("|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC" .. h.pellet .. " / " .. max_pellet)
            else
                u:add_item(jass.GetItemTypeId(item))
                PlaySoundOnUnitBJ(Gh, 100, u.handle)
                p:send_message("|cFFFFCC00你在本次游戏里已经达到了使用属性丹上限，无法再使用本类道具")
            end
        end

        -- 脱胎换骨丹
        if u:get_owner():is_player() and jass.GetItemTypeId(item) == 1227895374 then
            if h.pellet < max_pellet then
                local d = et.dialog.create(p, "请选择要+6的属性", attr_list)
                for _, v in pairs(attr_list) do
                    et.event_register(d.buttons[v], '对话框-按钮点击')(function(self, dg, pl)
                        if v == '取消' then
                            d:clear_and_destroy()
                            u:add_item(1227895371)
                        else
                            h[v] = h[v] + 7
                            h['医术'] = h['医术'] - 1
                            h['悟性'] = h['悟性'] - 1
                            h['根骨'] = h['根骨'] - 1
                            h['福缘'] = h['福缘'] - 1
                            h['经脉'] = h['经脉'] - 1
                            h['胆魄'] = h['胆魄'] - 1
                            d:clear_and_destroy()
                            p:send_message("|cFFFFCC00使用成功|r|cFF99FFCC" .. v .. "+6，其他属性-1|r")
                            h.pellet = h.pellet + 1
                            PlaySoundOnUnitBJ(Eh, 100, u.handle)
                            p:send_message("|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC" .. h.pellet .. " / " .. max_pellet)
                        end
                    end)
                end
            else
                u:add_item(jass.GetItemTypeId(item))
                PlaySoundOnUnitBJ(Gh, 100, u.handle)
                p:send_message("|cFFFFCC00你在本次游戏里已经达到了使用属性丹上限，无法再使用本类道具")
            end
        end

        -- CHG 2018/11/23 取消地下丹药的限制
        --黑玉断续膏
        if u:get_owner():is_player() and jass.GetItemTypeId(item) == 1227895888 then
            PlaySoundOnUnitBJ(Eh, 100, u.handle)
            ModifyHeroStat(2, h.handle, 0, 50)
            p:send_message("|cFFFFCC00使用成功|r|cFF99FFCC真实伤害提升50|r")
        end

        --天王保命丹
        if u:get_owner():is_player() and jass.GetItemTypeId(item) == 1227895887 then
            PlaySoundOnUnitBJ(Eh, 100, u.handle)
            UnitAddAbility(udg_hero[i], 1093678923)
            p:send_message("|cFFFFCC00使用成功|r|cFF99FFCC气血提升20000|r")
        end

        --生生造化丹
        if u:get_owner():is_player() and jass.GetItemTypeId(item) == 1227895886 then
            PlaySoundOnUnitBJ(Eh, 100, u.handle)
            ModifyHeroStat(1, h.handle, 0, 40)
            p:send_message("|cFFFFCC00使用成功|r|cFF99FFCC内力提升40|r")
        end

        --九花玉露丸
        if u:get_owner():is_player() and jass.GetItemTypeId(item) == 1227895889 then
            PlaySoundOnUnitBJ(Eh, 100, u.handle)
            h['绝学领悟'] = h['绝学领悟'] + 1
            p:send_message("|cFFFFCC00使用成功|r|cFF99FFCC绝学领悟力+1|r")
        end

        --绝元丹
        if u:get_owner():is_player() and jass.GetItemTypeId(item) == 1227896406 then
            PlaySoundOnUnitBJ(Eh, 100, u.handle)
            h['绝学领悟'] = h['绝学领悟'] + 2
            p:send_message("|cFFFFCC00使用成功|r|cFF99FFCC绝学领悟力+2|r")
        end

        --大还丹
        if u:get_owner():is_player() and jass.GetItemTypeId(item) == 1227896407 then
            PlaySoundOnUnitBJ(Eh, 100, u.handle)
            ModifyHeroStat(1, h.handle, 0, 100)
            p:send_message("|cFFFFCC00使用成功|r|cFF99FFCC内力提升100|r")
        end

        --无极丹
        if u:get_owner():is_player() and jass.GetItemTypeId(item) == 1227896408 then
            PlaySoundOnUnitBJ(Eh, 100, u.handle)
            jass.UnitResetCooldown(h.handle)
            p:send_message("|cFFFFCC00使用成功|r|cFF99FFCC所有武功CD时间清除|r")
        end

        --续命八丸
        if u:get_owner():is_player() and jass.GetItemTypeId(item) == 1227896410 then
            PlaySoundOnUnitBJ(Eh, 100, u.handle)
            h.revive_time = h.revive_time // 2
            p:send_message("|cFFFFCC00使用成功|r|cFF99FFCC复活时间减半|r")
        end

        --通犀地龙丸
        if u:get_owner():is_player() and jass.GetItemTypeId(item) == 1227896624 then
            game.variable.stop_time = game.variable.stop_time + 1
            force.send_message("|cFFFFCC00使用通犀地龙丸成功|r|cFF99FFCC延迟下波进攻怪物60秒|r")
        end

        --白云熊胆丸
        if u:get_owner():is_player() and jass.GetItemTypeId(item) == 1227896409 then
            local attr = attr_list[commonutil.random_int(1, 6)]
            h[attr] = h[attr] + 3
            p:send_message("|cFFFFCC00使用成功|r|cFF99FFCC" .. attr .. "+3|r")
            p:send_message("|cFFFFCC00当前" .. attr .. "为：|r|cFF99FFCC" .. h[attr])
        end
    end)

    et.game:event '单位-技能生效'(function(self, u, id, target)
        --十香软筋散
        if id == 1093679448 then
            local group = et.selector():in_range(target, 800):is_enemy(u)
            for _, v in pairs(group) do
                dummy_issue_order { target = v,
                                    player = u:get_owner(),
                                    unit_id = 1697656880,
                                    ability_id = 1093679450,
                                    order_id = 852075,
                                    lifetime = 2 }
            end
        end

        --三尸脑神丹
        if id == 1093681456 then
            local group = et.selector():in_range(target, 600):is_enemy(u)
            for _, v in pairs(group) do
                dummy_issue_order { target = v,
                                    player = u:get_owner(),
                                    unit_id = 1697656880,
                                    ability_id = 1093681457,
                                    order_id = 852189,
                                    lifetime = 2 }
            end
        end

        --七星海棠
        if id == 1093681459 then
            et.wait(300, function()
                target:set_life(0.7 * target:get_life())
            end)
        end

        --传功丹
        if id == 1093679447 then
            local buttons = {}
            local ho = target:get_owner().hero
            for _, v in pairs(ho['武功']) do
                table.insert(buttons, jass.GetObjectName(v.ability_id))
            end
            table.insert('取消')
            local d = et.dialog.create(u:get_owner(), "请选择想被传授的武功", buttons)
            for _, v in pairs(ho['武功']) do
                et.event_register(d.buttons[jass.GetObjectName(v.ability_id)], '对话框-按钮点击')(function(self, dg, pl)
                    d:clear_and_destroy()
                    local h = u:get_owner().hero
                    if h:get_kongfu_num() >= h.kongfu_limit then
                        p:send_message("|CFF34FF00学习技能已达上限，请先遗忘部分技能")
                        u:add_item(1227896625)
                    else
                        if h['武功'][v.ability_id] then
                            p:send_message("|CFFFF0033你已经学会这种武功了")
                            u:add_item(1227896625)
                        end
                        h:add_ability(v.ability_id)
                        h['武功'][v.ability_id] = et.kongfu.create(v.ability_id)
                        h['武功'][v.ability_id]['经验'] = h['遗忘武功'][v.ability_id]['经验']
                        h['武功'][v.ability_id]['重数'] = h['遗忘武功'][v.ability_id]['重数']
                        force.send_message("|CFFFF0033传闻" .. u:get_owner():get_name() .. "向" .. target:get_owner():get_name() .. "虚心求教，成功的学会了" .. jass.GetObjectName(v.ability_id))
                        if et.lni.internal[kf.abilityid] then
                            local itl = et.lni.internal[kf.abilityid]
                            h['伤害加成'] = h['伤害加成'] + itl['伤害加成']
                            jass.SetHeroAgi(hu, jass.GetHeroAgi(hu) + itl['内力'])
                            h['暴击率'] = h['暴击率'] + itl['暴击率']
                            h['绝学领悟'] = h['绝学领悟'] + itl['绝学领悟']
                            h['伤害吸收'] = h['伤害吸收'] + itl['伤害吸收']
                        end
                    end
                end)
            end
            et.event_register(d.buttons['取消'], '对话框-按钮点击')(function(self, dg, pl)
                u:add_item(1227896625)
                d:clear_and_destroy()
            end)
        end
    end)


    et.game:event '单位-捡起物品'(function(self, u, item)
        local id = jass.GetItemTypeId(item)
        local p = u:get_owner()
        local h = p.hero
        if et.lni.pellet[id] and p:is_player() then
            if not h.part_times['炼丹师'] then
                p:send_message("|cFFFFCC00你不是炼丹师，并且未携带神木王鼎，不可以炼制丹药")
                p:add_gold(2000)
            else
                local pe = et.lni.pellet[id]
                if h['医术'] < pe['医术'] then
                    p:send_message("|cffff0000医术不足！", 5)
                    p:add_gold(2000)
                elseif not u:has_item(pe.inducer) then
                    p:send_message("|cffff0000缺少炼制丹药的药引！", 5)
                    p:add_gold(2000)
                else
                    p:send_message("|cff00ff00炼制丹药中.......", 5)
                    local yin, yang = calculate_yin_yang(h)
                    local yin_lack = pe.yin - yin
                    local yang_lack = pe.yang - yang
                    local lack = yin_lack + yang_lack
                    p:send_message("|cff00ff33阴性缺" .. yin_lack .. "，炼制成功率降低了" .. (yin_lack * 5) .. "%")
                    p:send_message("|cff00ff33阳性缺" .. yang_lack .. "，炼制成功率降低了" .. (yang_lack * 5) .. "%")
                    if h.part_times['炼丹师'] and h.part_times['炼丹师'].level == 10 then
                        lack = lack - 4
                        p:send_message("|cff00ff33由于你是炼丹大师，炼制成功率提高20%")
                    end
                    if commonutil.random_int(1, 20) <= 20 - lack then
                        u:add_item(pe.pellet)
                        p:send_message("|cff00ffff恭喜炼制成功！")
                    else
                        p:send_message("|cffff0000炼制失败！")
                    end
                end
            end
        end
    end)

end
init_herbs() --初始化草药

