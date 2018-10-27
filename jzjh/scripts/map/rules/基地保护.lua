


--买基地无敌
function BuyJiDiWuDi()
    return GetItemTypeId(GetManipulatedItem()) == 1227896664
end
function JiDiWuDi()
    local id = GetHandleId(GetTriggeringTrigger())
    local cx = LoadInteger(YDHT, id, -807506826)
    cx = cx + 3
    SaveInteger(YDHT, id, -807506826, cx)
    SaveInteger(YDHT, id, -320330265, cx)
    SaveUnitHandle(YDHT, id * cx, 849994952, udg_ZhengPaiWL)
    DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00ff33在正义之士的庇护下，武林暂时无敌了（20秒后解除）")
    SetUnitInvulnerable(LoadUnitHandle(YDHT, id * cx, 849994952), true)
    YDWEPolledWaitNull(20.0)
    SaveInteger(YDHT, id, -320330265, cx)
    SetUnitInvulnerable(LoadUnitHandle(YDHT, id * cx, 849994952), false)
    FlushChildHashtable(YDHT, id * cx)
end
--基地挨打
function JiDiAiDa_Conditions()
    return GetPlayerController(GetOwningPlayer(GetAttacker())) == MAP_CONTROL_COMPUTER
end
function laojiayouren()
    return IsUnitAlly(GetFilterUnit(), Player(0)) and IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) and GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER
end
function JiDiAiDa_Actions()
    --==============反仇恨机制定义单位组==============
    local g = CreateGroup()
    --==============反仇恨机制定义单位组==============
    PingMinimapLocForForce(GetPlayersAll(), GetUnitLoc(udg_ZhengPaiWL), 1)
    if GetRandomInt(30, 50) == 48 then
        DisplayTextToForce(GetPlayersAll(), "|CFFCCFF00正派武林受到攻击，请赶紧回防")
    end
    if GetRandomInt(30, 50) == 45 and GetUnitTypeId(GetAttacker()) ~= u7[1] and GetUnitTypeId(GetAttacker()) ~= u7[2] and GetUnitTypeId(GetAttacker()) ~= u7[3] and GetUnitTypeId(GetAttacker()) ~= u7[4] and GetUnitTypeId(GetAttacker()) ~= u7[5] and GetUnitTypeId(GetAttacker()) ~= u7[6] and GetUnitTypeId(GetAttacker()) ~= u7[7] and GetUnitTypeId(GetAttacker()) ~= u7[8] then
        SetUnitPositionLoc(GetAttacker(), GetRectCenter(udg_jail))
        DisplayTextToForce(GetPlayersAll(), "|CFFCCFFCC正派武林将攻击单位抓进了监狱")
    end
    --==========反仇恨机制，按云大建议去掉==============
    GroupEnumUnitsInRangeOfLoc(g, GetUnitLoc(udg_ZhengPaiWL), 800, Condition(laojiayouren))
    if IsUnitGroupEmptyBJ(g) == false then
        UnitAddAbility(udg_ZhengPaiWL, 1093677139)
        --call SetUnitInvulnerable(udg_ZhengPaiWL,true)
        GroupClear(g)
        YDWEPolledWaitNull(5.0)
        --call SetUnitInvulnerable(udg_ZhengPaiWL,false)
        UnitRemoveAbility(udg_ZhengPaiWL, 1093677139)
        g = nil
    end
    --==========反仇恨机制，按云大建议去掉==============
end
--购买城防
function BuyChengFang()
    return GetItemTypeId(GetManipulatedItem()) == 1227896147
end
function ShengChengFang()
    local id = GetHandleId(GetTriggeringTrigger())
    SaveInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
    if GetPlayerTechCountSimple(1378889776, Player(5)) <= 29 then
        SetPlayerTechResearchedSwap(1378889776, GetPlayerTechCountSimple(1378889776, Player(5)) + 1, Player(5))
        DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFD700在玩家：" .. (GetPlayerName(GetOwningPlayer(GetTriggerUnit())) or "") .. "的无私奉献下，正派武林的城防得到加强了")
        shoujiajf[LoadInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -1587459251)] = shoujiajf[LoadInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -1587459251)] + 15
        DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|CFF34FF00守家积分+15")
    else
        AdjustPlayerStateBJ(20000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
        DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF0000城防已达最高，无法继续升级|r")
    end
end
--高级城防
function BuyGaoChengFang()
    return GetItemTypeId(GetManipulatedItem()) == 1227896917
end
function ShengGaoChengFang()
    local id = GetHandleId(GetTriggeringTrigger())
    SaveInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
    if udg_boshu >= 18 then
        if GetPlayerTechCountSimple(1378889778, Player(5)) <= 9 then
            SetPlayerTechResearchedSwap(1378889778, GetPlayerTechCountSimple(1378889778, Player(5)) + 1, Player(5))
            DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFD700在玩家：" .. (GetPlayerName(GetOwningPlayer(GetTriggerUnit())) or "") .. "的无私奉献下，正派武林的高级城防得到加强了")
            shoujiajf[LoadInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -1587459251)] = shoujiajf[LoadInteger(YDHT, id * LoadInteger(YDHT, id, -320330265), -1587459251)] + 25
            DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|CFF34FF00守家积分+25")
        else
            AdjustPlayerStateBJ(50000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
            DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF0000高级城防已达最高，无法继续升级|r")
        end
    else
        AdjustPlayerStateBJ(50000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
        DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF000018波进攻怪以后才能使用此功能哦|r")
    end
end




function init()

    --基地保护机制
    et.game:event '单位-受到伤害' (function(self, source, target, damage)
        if target.handle == udg_ZhengPaiWL and damage > target:get_max_life() * 0.03 then
            target:set_invulnerable(0)
            target:set_life_percent(target.get_life_percent - 3)
        end
    end)

    --云大救家
    et.game:event '单位-受攻击' (function(self, source, target)
        if  target.handle == udg_ZhengPaiWL and target:get_life_percent() <= 25 and not udg_yunyangxianshen then
            udg_yunyangxianshen = true
        end
        player[6]:create_unit(1214409837, target:get_point() + {0, 200}, 90)
        jass.DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cFFFF6600基地严重受创，云杨现身相助")
        jass.UnitApplyTimedLife(GetLastCreatedUnit(), 1112045413, 20.0)
        target:add_ability(1098282348)
        et.wait(20 * 1000, function()
            target:remove_ability(1098282348)
        end)
    end)


    local t = CreateTrigger()
    -- 购买老家无敌
    ji = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(ji, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    TriggerAddCondition(ji, Condition(BuyJiDiWuDi))
    TriggerAddAction(ji, JiDiWuDi)
    t = CreateTrigger()
    TriggerRegisterUnitEvent(t, udg_ZhengPaiWL, EVENT_UNIT_ATTACKED)
    TriggerAddCondition(t, Condition(JiDiAiDa_Conditions))
    TriggerAddAction(t, JiDiAiDa_Actions)
    -- 购买城防
    pi = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(pi, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    TriggerAddCondition(pi, Condition(BuyChengFang))
    TriggerAddAction(pi, ShengChengFang)
    -- 购买高级城防
    ri = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(ri, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    TriggerAddCondition(ri, Condition(BuyGaoChengFang))
    TriggerAddAction(ri, ShengGaoChengFang)
end

init()