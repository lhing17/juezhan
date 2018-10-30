local function init()

    --基地保护机制
    et.game:event '单位-受到伤害'(function(self, source, target, damage)
        if target.handle == udg_ZhengPaiWL and damage > target:get_max_life() * 0.03 then
            target:set_invulnerable(0)
            target:set_life_percent(target.get_life_percent - 3)
        end
    end)

    --云大救家
    et.game:event '单位-受攻击'(function(self, source, target)
        if target.handle == udg_ZhengPaiWL then
            if target:get_life_percent() <= 25 and not udg_yunyangxianshen then
                udg_yunyangxianshen = true
                u = et.player[6]:create_unit(1214409837, target:get_point() + { 0, 200 }, 90)
                force.send_message("|cFFFF6600基地严重受创，云杨现身相助")
                u:set_lifetime(20.0)
                target:add_ability(1098282348)
                et.wait(20 * 1000, function()
                    target:remove_ability(1098282348)
                end)
            end
            force.pingMinimap(target:getX(), target:getY())
            if math.random() >= 0.95 then
                force.send_message("|CFFCCFF00正派武林受到攻击，请赶紧回防")
            end
            if math.random() >= 0.95 and not is_in(base.string2id(source.id), u7) then
                jass.SetUnitPositionLoc(GetAttacker(), GetRectCenter(udg_jail))
                force.send_message("|CFFCCFFCC正派武林将攻击单位抓进了监狱")
            end
            local group = et.selector():in_range(target:get_point(), 800):add_filter(function(u)
                return u:is_ally(target) and u:is_hero()
            end)            :get()
            if #group > 0 then
                target:add_ability(1093677139)
                et.wait(5000, function()
                    target:remove_ability(1093677139)
                end)
            end
        end

    end)

    et.game:event '单位-捡起物品'(function(self, u, item)
        -- 购买基地无敌
        if jass.GetItemTypeId(item) == 1227896664 then
            DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00ff33在正义之士的庇护下，武林暂时无敌了（20秒后解除）")
            u:set_invulnerable(20)
        end
        -- 购买城防
        if jass.GetItemTypeId(item) == 1227896147 then
            if et.player[6]:get_tech(1378889776) <= 29 then
                et.player[6]:add_tech(1378889776)
                force.send_message('|cFFFFD700在玩家'..u:get_owner():get_name()..'的无私奉献下，正派武林的高级城防得到加强了')
                shoujiajf[u:get_owner().id] = shoujiajf[u:get_owner().id] + 15
                u:get_owner():send_message("|CFF34FF00守家积分+15")
            else
                u:get_owner():add_gold(20000)
                u:get_owner():send_message("|cFFFF0000城防已达最高，无法继续升级|r")
            end
        end
        -- 购买高级城防
        if jass.GetItemTypeId(item) == 1227896917 then
            if udg_boshu >= 18 then
                if et.player[6]:get_tech(1378889778) <= 9 then
                    et.player[6]:add_tech(1378889778)
                    force.send_message('|cFFFFD700在玩家'..u:get_owner():get_name()..'的无私奉献下，正派武林的城防得到加强了')
                    shoujiajf[u:get_owner().id] = shoujiajf[u:get_owner().id] + 15
                    u:get_owner():send_message("|CFF34FF00守家积分+15")
                else
                    u:get_owner():add_gold(50000)
                    u:get_owner():send_message("|cFFFF0000高级城防已达最高，无法继续升级|r")
                end
            else
                u:get_owner():add_gold(50000)
                u:get_owner():send_message("|cFFFF000018波进攻怪以后才能使用此功能哦|r")
            end
        end
    end)
end

init()