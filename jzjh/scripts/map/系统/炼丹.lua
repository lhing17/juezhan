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

        end
    end
end)

function tP()
    local id = GetHandleId(GetTriggeringTrigger())
    return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227))) and IsUnitAliveBJ(GetFilterUnit())
end
function uP()
    local id = GetHandleId(GetTriggeringTrigger())
    SaveUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -655065443, GetEnumUnit())
    SaveLocationHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 612156901, GetUnitLoc(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -655065443)))
    CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227)), LoadLocationHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 612156901), bj_UNIT_FACING)
    UnitAddAbility(bj_lastCreatedUnit, 1093679450)
    IssueTargetOrderById(bj_lastCreatedUnit, 852075, LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -655065443))
    UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
    ShowUnitHide(bj_lastCreatedUnit)
    RemoveLocation(LoadLocationHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 612156901))
end
function vP()
    local id = GetHandleId(GetTriggeringTrigger())
    local cx = LoadInteger(YDHT, id, -807506826)
    cx = cx + 3
    SaveInteger(YDHT, id, -807506826, cx)
    SaveInteger(YDHT, id, -320330265, cx)
    SaveLocationHandle(YDHT, id * cx, 1585647951, GetSpellTargetLoc())
    SaveUnitHandle(YDHT, id * cx, 1505665227, GetTriggerUnit())
    ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(800.0, LoadLocationHandle(YDHT, id * cx, 1585647951), Condition(tP)), uP)
    FlushChildHashtable(YDHT, id * cx)
end
--三尸脑神丹
function xP()
    return GetSpellAbilityId() == 1093681456
end
function yP()
    local id = GetHandleId(GetTriggeringTrigger())
    return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227))) and IsUnitAliveBJ(GetFilterUnit())
end
function zP()
    local id = GetHandleId(GetTriggeringTrigger())
    SaveUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -655065443, GetEnumUnit())
    SaveLocationHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 612156901, GetUnitLoc(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -655065443)))
    CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 1505665227)), LoadLocationHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 612156901), bj_UNIT_FACING)
    UnitAddAbility(bj_lastCreatedUnit, 1093681457)
    IssueTargetOrderById(bj_lastCreatedUnit, 852189, LoadUnitHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), -655065443))
    UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 2.0)
    ShowUnitHide(bj_lastCreatedUnit)
    RemoveLocation(LoadLocationHandle(YDHT, id * LoadInteger(YDHT, id, -320330265), 612156901))
end
function AP()
    local loc = GetSpellTargetLoc()
    ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(600.0, loc, Condition(yP)), zP)
    RemoveLocation(loc)
    loc = nil
end
--七星海棠
function BP()
    return GetSpellAbilityId() == 1093681459
end
function bP()
    local u = GetSpellTargetUnit()
    YDWEPolledWaitNull(0.3)
    SetWidgetLife(u, 0.7 * GetUnitState(u, UNIT_STATE_LIFE))
    u = nil
end
---------各种丹药结束-------//
------------炼丹系统开始----------//
function isLianDanItem(it)
    if GetItemTypeId(it) == 1227896652 or GetItemTypeId(it) == 1227896653 or GetItemTypeId(it) == 1227896654 or GetItemTypeId(it) == 1227896655 or GetItemTypeId(it) == 1227896656 or GetItemTypeId(it) == 1227896657 or GetItemTypeId(it) == 1227896658 or GetItemTypeId(it) == 1227896650 or GetItemTypeId(it) == 1227896649 or GetItemTypeId(it) == 1227896651 or GetItemTypeId(it) == 1227896139 then
        return true
    end
    return false
end
function CorresDan(dan)
    if dan == 1227896652 then
        return 1227896409
    elseif dan == 1227896654 then
        return 1227896625
    elseif dan == 1227896649 then
        return 1227896407
    elseif dan == 1227896656 then
        return 1227896628
    elseif dan == 1227896657 then
        return 1227896406
    elseif dan == 1227896658 then
        return 1227896629
    elseif dan == 1227896651 then
        return 1227896627
    elseif dan == 1227896139 then
        return 1227896626
    elseif dan == 1227896650 then
        return 1227896624
    elseif dan == 1227896653 then
        return 1227896408
    elseif dan == 1227896655 then
        return 1227896410
    end
    return 0
end
function EP()
    if GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and isLianDanItem(GetManipulatedItem()) then
        if Ce[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] ~= 1 and UnitHaveItem(udg_hero[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))], 1227899213) == false then
            DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFFCC00你不是炼丹师，并且未携带神木王鼎，不可以炼制丹药")
            AdjustPlayerStateBJ(2000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
            return false
        else
            return true
        end
    end
    return false
end
function LianSomeDan(u, it, dan, ys, y1, y2, yy)
    local p = GetOwningPlayer(u)
    local i = 1 + GetPlayerId(p)
    local j = 0
    local yin = 0
    local yang = 0
    local que = 0
    if GetItemTypeId(it) == dan then
        if yishu[i] < ys then
            AdjustPlayerStateBJ(2000, p, PLAYER_STATE_RESOURCE_GOLD)
            DisplayTimedTextToPlayer(p, 0, 0, 5.0, "|cffff0000医术不足！")
        elseif UnitHaveItem(u, yy) == false then
            AdjustPlayerStateBJ(2000, p, PLAYER_STATE_RESOURCE_GOLD)
            DisplayTimedTextToPlayer(p, 0, 0, 5.0, "|cffff0000缺少炼制丹药的药引！")
        else
            DisplayTimedTextToPlayer(p, 0, 0, 5.0, "|cff00ff00炼制丹药中.......")
            j = 1
            for _ in _loop_() do
                if j > 6 then
                    break
                end
                if GetItemTypeId(UnitItemInSlotBJ(u, j)) == YaoCao[11] then
                    yin = yin + 5
                    yang = yang + 1
                    RemoveItem(UnitItemInSlotBJ(u, j))
                elseif GetItemTypeId(UnitItemInSlotBJ(u, j)) == YaoCao[9] then
                    yang = yang + 4
                    RemoveItem(UnitItemInSlotBJ(u, j))
                elseif GetItemTypeId(UnitItemInSlotBJ(u, j)) == YaoCao[10] then
                    yin = yin + 3
                    yang = yang + 4
                    RemoveItem(UnitItemInSlotBJ(u, j))
                elseif GetItemTypeId(UnitItemInSlotBJ(u, j)) == YaoCao[8] then
                    yin = yin + 4
                    yang = yang + 3
                    RemoveItem(UnitItemInSlotBJ(u, j))
                elseif GetItemTypeId(UnitItemInSlotBJ(u, j)) == YaoCao[7] then
                    yin = yin + 4
                    RemoveItem(UnitItemInSlotBJ(u, j))
                elseif GetItemTypeId(UnitItemInSlotBJ(u, j)) == YaoCao[12] then
                    yin = yin + 1
                    yang = yang + 5
                    RemoveItem(UnitItemInSlotBJ(u, j))
                elseif GetItemTypeId(UnitItemInSlotBJ(u, j)) == YaoCao[6] then
                    yin = yin + 2
                    yang = yang + 3
                    RemoveItem(UnitItemInSlotBJ(u, j))
                elseif GetItemTypeId(UnitItemInSlotBJ(u, j)) == YaoCao[1] then
                    yin = yin + 2
                    yang = yang + 1
                    RemoveItem(UnitItemInSlotBJ(u, j))
                elseif GetItemTypeId(UnitItemInSlotBJ(u, j)) == YaoCao[2] then
                    yin = yin + 1
                    yang = yang + 2
                    RemoveItem(UnitItemInSlotBJ(u, j))
                elseif GetItemTypeId(UnitItemInSlotBJ(u, j)) == YaoCao[3] then
                    yin = yin + 3
                    yang = yang - 1
                    RemoveItem(UnitItemInSlotBJ(u, j))
                elseif GetItemTypeId(UnitItemInSlotBJ(u, j)) == YaoCao[4] then
                    yin = yin - 1
                    yang = yang + 3
                    RemoveItem(UnitItemInSlotBJ(u, j))
                elseif GetItemTypeId(UnitItemInSlotBJ(u, j)) == YaoCao[5] then
                    yin = yin + 3
                    yang = yang + 2
                    RemoveItem(UnitItemInSlotBJ(u, j))
                end
                j = j + 1
            end
            if yin >= y1 then
            else
                que = y1 - yin
                DisplayTimedTextToPlayer(p, 0, 0, 5.0, "|cff00ff33阴性缺" .. (I2S(y1 - yin) or "") .. "，炼制成功率降低了" .. (I2S((y1 - yin) * 5) or "") .. "%")
            end
            if yang >= y2 then
            else
                que = que + y2 - yang
                DisplayTimedTextToPlayer(p, 0, 0, 5.0, "|cff00ff33阳性缺" .. (I2S(y2 - yang) or "") .. "，炼制成功率降低了" .. (I2S((y2 - yang) * 5) or "") .. "%")
            end
            if udg_lddsbool[i] then
                que = que - 4
                DisplayTimedTextToPlayer(p, 0, 0, 5.0, "|cff00ff33由于你是炼丹大师，炼制成功率提高20%")
            end
            if GetRandomInt(1, 20) <= 20 - que then
                unitadditembyidswapped(CorresDan(dan), u)
                DisplayTimedTextToPlayer(p, 0, 0, 5.0, "|cff00ffff恭喜炼制成功！")
                udg_ldds[i] = udg_ldds[i] + 1
                if udg_ldds[i] <= 5 and udg_lddsbool[i] == false then
                    DisplayTextToPlayer(p, 0, 0, "|CFF66FF00恭喜您炼成第" .. (I2S(udg_ldds[i]) or "") .. "颗丹药，炼成5颗可获得大师哦")
                end
                if udg_ldds[i] == 5 and udg_lddsbool[i] == false then
                    udg_lddsbool[i] = true
                    if udg_zhangmen[i] == true then
                    else
                        SaveStr(YDHT, GetHandleId(p), GetHandleId(p), "〓炼丹大师〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
                    end
                    DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜" .. (GetPlayerName(p) or "") .. "获得炼丹大师")
                    SetPlayerName(p, "〓炼丹大师〓" .. (GetPlayerName(p) or ""))
                end
            else
                DisplayTimedTextToPlayer(p, 0, 0, 5.0, "|cffff0000炼制失败！")
            end
        end
    end
    u = nil
    p = nil
end
function FP()
    local u = GetTriggerUnit()
    LianSomeDan(u, GetManipulatedItem(), 1227896652, 26, 18, 18, YaoCao[8])
    LianSomeDan(u, GetManipulatedItem(), 1227896654, 15, 10, 10, YaoCao[5])
    LianSomeDan(u, GetManipulatedItem(), 1227896649, 24, 15, 20, YaoCao[9])
    LianSomeDan(u, GetManipulatedItem(), 1227896656, 15, 18, 19, YaoCao[3])
    LianSomeDan(u, GetManipulatedItem(), 1227896657, 30, 10, 24, YaoCao[12])
    LianSomeDan(u, GetManipulatedItem(), 1227896658, 26, 24, 8, YaoCao[11])
    LianSomeDan(u, GetManipulatedItem(), 1227896651, 22, 20, 12, YaoCao[7])
    LianSomeDan(u, GetManipulatedItem(), 1227896139, 15, 15, 5, YaoCao[2])
    LianSomeDan(u, GetManipulatedItem(), 1227896650, 15, 12, 12, YaoCao[10])
    LianSomeDan(u, GetManipulatedItem(), 1227896653, 16, 5, 16, YaoCao[4])
    LianSomeDan(u, GetManipulatedItem(), 1227896655, 22, 15, 15, YaoCao[6])
    u = nil
end
------------炼丹系统结束----------//
function ElixirSystem_Trigger()

    t = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    TriggerAddCondition(t, Condition(nP))
    TriggerAddAction(t, oP)
    t = CreateTrigger()
    TriggerRegisterDialogEvent(t, je[1])
    TriggerRegisterDialogEvent(t, je[2])
    TriggerRegisterDialogEvent(t, je[3])
    TriggerRegisterDialogEvent(t, je[4])
    TriggerRegisterDialogEvent(t, je[5])
    TriggerAddAction(t, qP)
    t = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    TriggerAddCondition(t, Condition(sP))
    TriggerAddAction(t, vP)
    t = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    TriggerAddCondition(t, Condition(xP))
    TriggerAddAction(t, AP)
    t = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    TriggerAddCondition(t, Condition(BP))
    TriggerAddAction(t, bP)
    t = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    TriggerAddCondition(t, Condition(EP))
    TriggerAddAction(t, FP)
    t = nil
end
--传功丹
function nP()
    return GetSpellAbilityId() == 1093679447
end
function oP()
    local u = GetTriggerUnit()
    local p = GetOwningPlayer(u)
    local i = 1 + GetPlayerId(p)
    local l__ut = GetSpellTargetUnit()
    local j = GetPlayerId(GetOwningPlayer(l__ut))
    DialogSetMessage(je[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))], "请选择想被传授的武功")
    te[i] = j
    if I7[j * 20 + 1] ~= 1095067243 then
        DialogAddButtonBJ(je[i], GetObjectName(I7[j * 20 + 1]))
        ke[i] = bj_lastCreatedButton
    end
    if I7[j * 20 + 2] ~= 1095067243 then
        DialogAddButtonBJ(je[i], GetObjectName(I7[j * 20 + 2]))
        ne[i] = bj_lastCreatedButton
    end
    if I7[j * 20 + 3] ~= 1095067243 then
        DialogAddButtonBJ(je[i], GetObjectName(I7[j * 20 + 3]))
        oe[i] = bj_lastCreatedButton
    end
    if I7[j * 20 + 4] ~= 1095067243 then
        DialogAddButtonBJ(je[i], GetObjectName(I7[j * 20 + 4]))
        pe[i] = bj_lastCreatedButton
    end
    if I7[j * 20 + 5] ~= 1095067243 then
        DialogAddButtonBJ(je[i], GetObjectName(I7[j * 20 + 5]))
        qe[i] = bj_lastCreatedButton
    end
    if I7[j * 20 + 6] ~= 1095067243 then
        DialogAddButtonBJ(je[i], GetObjectName(I7[j * 20 + 6]))
        me[i] = bj_lastCreatedButton
    end
    if I7[j * 20 + 7] ~= 1095067243 then
        DialogAddButtonBJ(je[i], GetObjectName(I7[j * 20 + 7]))
        re[i] = bj_lastCreatedButton
    end
    if I7[j * 20 + 8] ~= 1095067243 then
        DialogAddButtonBJ(je[i], GetObjectName(I7[j * 20 + 8]))
        rre[i] = bj_lastCreatedButton
    end
    if I7[j * 20 + 9] ~= 1095067243 then
        DialogAddButtonBJ(je[i], GetObjectName(I7[j * 20 + 9]))
        re9[i] = bj_lastCreatedButton
    end
    if I7[j * 20 + 10] ~= 1095067243 then
        DialogAddButtonBJ(je[i], GetObjectName(I7[j * 20 + 10]))
        re10[i] = bj_lastCreatedButton
    end
    if I7[j * 20 + 11] ~= 1095067243 then
        DialogAddButtonBJ(je[i], GetObjectName(I7[j * 20 + 11]))
        re11[i] = bj_lastCreatedButton
    end
    DialogAddButtonBJ(je[i], "取消")
    se[i] = bj_lastCreatedButton
    DialogDisplay(p, je[i], true)
    u = nil
    p = nil
    l__ut = nil
end
function QiuJiao(p, num)
    local i = 1 + GetPlayerId(p)
    L7[i] = 1
    for _ in _loop_() do
        if L7[i] > wugongshu[i] then
            break
        end
        if I7[(i - 1) * 20 + L7[i]] ~= 1095067243 then
            if L7[i] == wugongshu[i] then
                unitadditembyidswapped(1227896625, P4[i])
                DisplayTextToPlayer(p, 0, 0, "|CFFFF0033学习技能已达上限，请先遗忘部分技能")
                if true then
                    break
                end
            end
        else
            if I7[(i - 1) * 20 + 1] ~= I7[te[i] * 20 + num] and I7[(i - 1) * 20 + 2] ~= I7[te[i] * 20 + num] and I7[(i - 1) * 20 + 3] ~= I7[te[i] * 20 + num] and I7[(i - 1) * 20 + 4] ~= I7[te[i] * 20 + num] and I7[(i - 1) * 20 + 5] ~= I7[te[i] * 20 + num] and I7[(i - 1) * 20 + 6] ~= I7[te[i] * 20 + num] and I7[(i - 1) * 20 + 7] ~= I7[te[i] * 20 + num] and I7[(i - 1) * 20 + 8] ~= I7[te[i] * 20 + num] and I7[(i - 1) * 20 + 9] ~= I7[te[i] * 20 + num] and I7[(i - 1) * 20 + 10] ~= I7[te[i] * 20 + num] and I7[(i - 1) * 20 + 11] ~= I7[te[i] * 20 + num] then
                UnitAddAbility(udg_hero[i], I7[te[i] * 20 + num])
                UnitMakeAbilityPermanent(udg_hero[i], true, I7[te[i] * 20 + num])
                I7[(i - 1) * 20 + L7[i]] = I7[te[i] * 20 + num]
                DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033传闻" .. (GetPlayerName(p) or "") .. "向" .. (GetPlayerName(Player(-1 + (te[i] + 1))) or "") .. "虚心求教，成功的学会了" .. (GetObjectName(I7[te[i] * 20 + num]) or ""))
                S9 = 1
                for _ in _loop_() do
                    if S9 > 20 then
                        break
                    end
                    if I7[te[i] * 20 + num] == MM9[S9] then
                        udg_shanghaijiacheng[i] = udg_shanghaijiacheng[i] + udg_jueneishjc[S9]
                        ModifyHeroStat(1, udg_hero[i], 0, udg_jueneiminjie[S9])
                        udg_baojilv[i] = udg_baojilv[i] + udg_jueneibaojilv[S9]
                        juexuelingwu[i] = juexuelingwu[i] + udg_jueneijxlw[S9]
                        udg_shanghaixishou[i] = udg_shanghaixishou[i] + udg_jueneishxs[S9]
                    end
                    S9 = S9 + 1
                end
                if true then
                    break
                end
            else
                DisplayTextToPlayer(p, 0, 0, "|CFFFF0033你已经学会这种武功了")
                unitadditembyidswapped(1227896625, P4[i])
                if true then
                    break
                end
            end
        end
        L7[i] = L7[i] + 1
    end
end
function qP()
    local i = 1 + GetPlayerId(GetTriggerPlayer())
    local p = GetTriggerPlayer()
    if GetClickedButton() == ke[i] then
        QiuJiao(p, 1)
    elseif GetClickedButton() == ne[i] then
        QiuJiao(p, 2)
    elseif GetClickedButton() == oe[i] then
        QiuJiao(p, 3)
    elseif GetClickedButton() == pe[i] then
        QiuJiao(p, 4)
    elseif GetClickedButton() == qe[i] then
        QiuJiao(p, 5)
    elseif GetClickedButton() == me[i] then
        QiuJiao(p, 6)
    elseif GetClickedButton() == re[i] then
        QiuJiao(p, 7)
    elseif GetClickedButton() == rre[i] then
        QiuJiao(p, 8)
    elseif GetClickedButton() == re9[i] then
        QiuJiao(p, 9)
    elseif GetClickedButton() == re10[i] then
        QiuJiao(p, 10)
    elseif GetClickedButton() == re11[i] then
        QiuJiao(p, 11)
    elseif GetClickedButton() == se[i] then
        unitadditembyidswapped(1227896625, P4[i])
    end
    DialogClear(je[i])
end
