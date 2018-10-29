

local function init()

    --选择英雄
    et.game:event '玩家-选择单位'(function(trg, p, u)
        if not p.hero and is_in(u.handle, pick_list) then
            local i = p.id
            if GetUnitTypeId(L4[i]) == GetUnitTypeId(u.handle) then
                pt = get_rect_random(Ge)
                last_unit = p:create_unit(GetUnitTypeId(u.handle), pt)
                p:setCamera(pt)
                et.hero.create(last_unit.handle, pick_table[u.handle])
                et.unit(vipbanlv[i]):remove()
                SelectUnitRemoveForPlayer(u.handle, p.handle)
                SelectUnitAddForPlayer(last_unit.handle, p.handle)
                udg_hashero[i] = true
                AddSpecialEffectTargetUnitBJ("overhead", last_unit.handle, "Abilities\\Spells\\Other\\Awaken\\Awaken.mdl")
                DestroyEffect(bj_lastCreatedEffect)
                udg_hero[i] = last_unit.handle
                RemoveLocation(Q4)
                p:send_message("|CFFFF0000请从天下门派处选择你喜欢的门派后方可离开此地|r")
                p:send_message("|CFFFF0000输入-random可随机选择门派并获得额外60个木头，选取方式请到F9中寻找|r")
            else
                L4[i] = u.handle
                p:send_message(pick_table[u.handle].select_hint)
                SetUnitAnimation(u.handle, "attack")
                et.wait(2, function()
                    ResetUnitAnimation(u.handle)
                end)
            end
        end
    end)

    --可加入门派
    et.game:event '玩家-选择单位'(function(trg, p, u)
        if u.handle == Rs and udg_runamen[p.id] == 0 then
            if GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558130 then
                DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 15.0, "当前可加入以下门派：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 灵鹫宫 姑苏慕容 明教|r\n")
            elseif GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558129 then
                DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 15.0, "当前可加入以下门派：\n|CFF00FFCC少林 古墓 丐帮 华山 全真 峨眉 武当 灵鹫宫 姑苏慕容 明教|r\n")
            elseif GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558131 then
                DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 15.0, "当前可加入以下门派：\n|CFF00FFCC古墓 丐帮 华山 血刀 恒山 峨眉 灵鹫宫 姑苏慕容 明教|r\n")
            elseif GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558132 then
                DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 15.0, "当前可加入以下门派：\n|CFF00FFCC少林 古墓 丐帮 华山 血刀 武当 灵鹫宫 姑苏慕容 明教|r\n")
            elseif GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558128 then
                DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 15.0, "当前可加入以下门派：\n|CFF00FFCC少林 华山 全真 血刀 峨眉 武当 灵鹫宫 姑苏慕容 明教|r\n")
            elseif GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558643 then
                DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 15.0, "当前可加入任意门派|r\n")
            elseif GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558666 then
                DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 15.0, "当前可加入任意门派|r\n")
            end
        end
    end)
end
init()