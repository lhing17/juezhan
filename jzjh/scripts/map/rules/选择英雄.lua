local function init()
    local pick_list = { RUO_DIE, LANG_YUN, XIAO_XIA, MO_YAN, MO_JUN, LAN_XIN, JIN_XUAN }
    pick_table = et.hero.init_pick_table()
    --选择英雄
    --- @param p player
    --- @param u unit
    et.game:event '玩家-选择单位'(function(trg, p, u)
        if not p.hero and is_in(u, pick_list) then
            local i = p.id
            if p.selecting and p.selecting == u then
                local pt = rect_born:get_random()
                local last_unit = p:create_unit(u:get_type_id(), pt)
                p:set_camera(pt)
                et.hero.create(last_unit.handle, pick_table[u])
                vipbanlv[i]:remove()
                if p:is_local() then
                    jass.SelectUnit(u.handle, false)
                    jass.SelectUnit(last_unit.handle, false)
                end
                et.effect.add_to_unit("Abilities\\Spells\\Other\\Awaken\\Awaken.mdl", last_unit, "overhead"):destroy()
                p:send_message("|CFFFF0000请从天下门派处选择你喜欢的门派后方可离开此地|r")
                p:send_message("|CFFFF0000输入-random可随机选择门派并获得额外60个木头，选取方式请到F9中寻找|r")
            else
                p.selecting = u
                p:send_message(pick_table[u].select_hint)
                u:set_animation("attack")
                et.wait(2000, function()
                    u:set_animation("stand")
                end)
            end
        end
    end)

    --可加入门派
    --- @param p player
    --- @param u unit
    et.game:event '玩家-选择单位'(function(trg, p, u)
        if u == Rs and not p.hero['门派'] then
            if base.string2id(p.hero.unit.id) == 1328558130 then
                p:send_message("当前可加入以下门派：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 灵鹫宫 姑苏慕容 明教|r\n")
            elseif base.string2id(p.hero.unit.id) == 1328558129 then
                p:send_message("当前可加入以下门派：\n|CFF00FFCC少林 古墓 丐帮 华山 全真 峨眉 武当 灵鹫宫 姑苏慕容 明教|r\n")
            elseif base.string2id(p.hero.unit.id) == 1328558131 then
                p:send_message("当前可加入以下门派：\n|CFF00FFCC古墓 丐帮 华山 血刀 恒山 峨眉 灵鹫宫 姑苏慕容 明教|r\n")
            elseif base.string2id(p.hero.unit.id) == 1328558132 then
                p:send_message("当前可加入以下门派：\n|CFF00FFCC少林 古墓 丐帮 华山 血刀 武当 灵鹫宫 姑苏慕容 明教|r\n")
            elseif base.string2id(p.hero.unit.id) == 1328558128 then
                p:send_message("当前可加入以下门派：\n|CFF00FFCC少林 华山 全真 血刀 峨眉 武当 灵鹫宫 姑苏慕容 明教|r\n")
            elseif base.string2id(p.hero.unit.id) == 1328558643 then
                p:send_message("当前可加入任意门派|r\n")
            elseif base.string2id(p.hero.unit.id) == 1328558666 then
                p:send_message("当前可加入任意门派|r\n")
            end
        end
    end)
end
init()