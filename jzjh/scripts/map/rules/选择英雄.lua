--选择门派
function kx()
	return GetTriggerUnit() == Rs and udg_runamen[1 + GetPlayerId(GetTriggerPlayer())] == 0
end
function MenPai()
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

--选择英雄
local function init()
	et.game:event '玩家-选择单位' (function(trg, player, u)
		if not player.hero and is_in(u, pick_list) then
			local i = player.id
			if GetUnitTypeId(L4[i]) == GetUnitTypeId(u) then
				if u == pick_list[1] or u == pick_list[2] or u == pick_list[3] or u == pick_list[4] or u == pick_list[5] or u == pick_list[6] or u == pick_list[7] then
					Q4 = GetRandomLocInRect(Ge)
					CreateNUnitsAtLoc(1, GetUnitTypeId(u), p, Q4, bj_UNIT_FACING)
					PanCameraToTimedLocForPlayer(p, Q4, 0)
				end
				if u == pick_list[1] then
					p:send_message("恭喜获得英雄：|CFFCCFF00若蝶|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 星宿 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊） 神龙教（女）|r\n\n")
					hero.create(bj_lastCreatedUnit)
					h = p.hero					
					h['悟性'] = h['悟性'] + 5
					h['福缘'] = h['福缘'] + 5
					h['医术'] = h['医术'] + 5
					h.char_a = GetRandomInt(1, 3)
					h.char_b = GetRandomInt(3, 5)
					RemoveUnit(pick_list[1])
					RemoveUnit(vipbanlv[i])
				elseif u == pick_list[2] then
					DisplayTimedTextToPlayer(p, 0, 0, 15.0, "恭喜获得英雄：|CFFCCFF00潇侠|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC少林 古墓 丐帮 华山 全真 峨眉 武当 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊） 神龙教（男）|r\n")
					wuxing[i] = wuxing[i] + 2
					gengu[i] = gengu[i] + 2
					danpo[i] = danpo[i] + 1
					fuyuan[i] = fuyuan[i] + 5
					udg_xinggeA[i] = GetRandomInt(2, 4)
					udg_xinggeB[i] = GetRandomInt(2, 4)
					RemoveUnit(pick_list[2])
					RemoveUnit(vipbanlv[i])
				elseif u == pick_list[3] then
					DisplayTimedTextToPlayer(p, 0, 0, 15.0, "恭喜获得英雄：|CFFCCFF00莫言|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC古墓 丐帮 华山 血刀 恒山 峨眉 星宿 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊）  神龙教（女）|r\n")
					wuxing[i] = wuxing[i] + 2
					danpo[i] = danpo[i] + 5
					jingmai[i] = jingmai[i] + 1
					yishu[i] = yishu[i] + 2
					udg_xinggeA[i] = GetRandomInt(3, 5)
					udg_xinggeB[i] = GetRandomInt(1, 3)
					RemoveUnit(pick_list[3])
					RemoveUnit(vipbanlv[i])
				elseif u == pick_list[4] then
					DisplayTimedTextToPlayer(p, 0, 0, 15.0, "恭喜获得英雄：|CFFCCFF00浪云|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC少林 古墓 丐帮 华山 血刀 武当 星宿 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊）  神龙教（男）|r\n")
					gengu[i] = gengu[i] + 3
					jingmai[i] = jingmai[i] + 5
					yishu[i] = yishu[i] + 2
					udg_xinggeA[i] = GetRandomInt(2, 4)
					udg_xinggeB[i] = GetRandomInt(2, 4)
					RemoveUnit(pick_list[4])
					RemoveUnit(vipbanlv[i])
				elseif u == pick_list[5] then
					DisplayTimedTextToPlayer(p, 0, 0, 15.0, "恭喜获得英雄：|CFFCCFF00魔君|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC少林 华山 全真 血刀 峨眉 武当 星宿 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊）  神龙教（男）|r\n")
					gengu[i] = gengu[i] + 5
					danpo[i] = danpo[i] + 2
					jingmai[i] = jingmai[i] + 3
					udg_xinggeA[i] = GetRandomInt(1, 3)
					udg_xinggeB[i] = GetRandomInt(3, 5)
					RemoveUnit(pick_list[5])
					RemoveUnit(vipbanlv[i])
				elseif u == pick_list[6] then
					DisplayTimedTextToPlayer(p, 0, 0, 15.0, "恭喜获得英雄：|CFFCCFF00兰馨|r\n请选择任意门派后开启江湖之旅|r\n")
					gengu[i] = gengu[i] + 3
					danpo[i] = danpo[i] + 3
					jingmai[i] = jingmai[i] + 3
					wuxing[i] = wuxing[i] + 3
					yishu[i] = yishu[i] + 3
					fuyuan[i] = fuyuan[i] + 3
					udg_xinggeA[i] = GetRandomInt(3, 5)
					udg_xinggeB[i] = GetRandomInt(3, 5)
					--call RemoveUnit(pick_list[6])
					RemoveUnit(vipbanlv[i])
				elseif u == pick_list[7] then
					DisplayTimedTextToPlayer(p, 0, 0, 15.0, "恭喜获得英雄：|CFFCCFF00瑾轩|r\n请选择任意门派后开启江湖之旅|r\n")
					gengu[i] = gengu[i] + 3
					danpo[i] = danpo[i] + 3
					jingmai[i] = jingmai[i] + 3
					wuxing[i] = wuxing[i] + 3
					yishu[i] = yishu[i] + 3
					fuyuan[i] = fuyuan[i] + 3
					udg_xinggeA[i] = GetRandomInt(3, 5)
					udg_xinggeB[i] = GetRandomInt(3, 5)
					--call RemoveUnit(pick_list[6])
					RemoveUnit(vipbanlv[i])
				end
				if u == pick_list[1] or u == pick_list[2] or u == pick_list[3] or u == pick_list[4] or u == pick_list[5] or u == pick_list[6] or u == pick_list[7] then
					SelectUnitRemoveForPlayer(u, p)
					SelectUnitAddForPlayer(bj_lastCreatedUnit, p)
					udg_hashero[i] = true
					AddSpecialEffectTargetUnitBJ("overhead", bj_lastCreatedUnit, "Abilities\\Spells\\Other\\Awaken\\Awaken.mdl")
					DestroyEffect(bj_lastCreatedEffect)
					udg_hero[i] = bj_lastCreatedUnit
					O4 = O4 + 1
					RemoveLocation(Q4)
					DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|CFFFF0000请从天下门派处选择你喜欢的门派后方可离开此地|r")
					DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|CFFFF0000输入-random可随机选择门派并获得额外60个木头，选取方式请到F9中寻找|r")
				end
			else
				L4[i] = u
				if u == pick_list[1] then
					DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFCCFF00若蝶|r\n可加入门派：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 灵鹫宫 姑苏慕容 明教  神龙教（女）|r\n基础全属性+9\n额外属性\n|cFF00FF00悟性+5 福缘+2 医术+3\n|r\n")
					SetUnitAnimation(u, "attack")
					YDWEPolledWaitNull(2)
					ResetUnitAnimation(pick_list[1])
				elseif u == pick_list[2] then
					DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFCCFF00潇侠|r\n可加入门派：\n|CFF00FFCC少林 古墓 丐帮 华山 全真 峨眉 武当 灵鹫宫 姑苏慕容 明教  神龙教（男）|r\n基础全属性+9\n额外属性\n|cFF00FF00根骨+2 悟性+2 福缘+5 胆魄+1\n|r\n")
					SetUnitAnimation(u, "attack")
					YDWEPolledWaitNull(2)
					ResetUnitAnimation(pick_list[2])
				elseif u == pick_list[3] then
					DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFCCFF00莫言|r\n可加入门派：\n|CFF00FFCC古墓 丐帮 华山 血刀 恒山 峨眉 灵鹫宫 姑苏慕容 明教  神龙教（女）|r\n基础全属性+9\n额外属性\n|cFF00FF00悟性+2 经脉+1 胆魄+5 医术+2\n|r\n")
					SetUnitAnimation(u, "attack")
					YDWEPolledWaitNull(2)
					ResetUnitAnimation(pick_list[3])
				elseif u == pick_list[4] then
					DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFCCFF00浪云|r\n可加入门派：\n|CFF00FFCC少林 古墓 丐帮 华山 血刀 武当 灵鹫宫 姑苏慕容 明教  神龙教（男）|r\n基础全属性+9\n额外属性\n|cFF00FF00根骨+3 经脉+5 医术+2\n|r\n")
					SetUnitAnimation(u, "attack")
					YDWEPolledWaitNull(2)
					ResetUnitAnimation(pick_list[4])
				elseif u == pick_list[5] then
					DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFCCFF00魔君|r\n可加入门派：\n|CFF00FFCC少林 华山 全真 血刀 峨眉 武当 灵鹫宫 姑苏慕容 明教  神龙教（男）|r\n基础全属性+9\n额外属性\n|cFF00FF00根骨+5 经脉+3 胆魄+2\n|r\n")
					SetUnitAnimation(u, "attack")
					YDWEPolledWaitNull(2)
					ResetUnitAnimation(pick_list[5])
				elseif u == pick_list[6] then
					DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFCCFF00兰馨|r\n可加入门派：\n|CFF00FFCC全部门派|r\n基础全属性+9\n额外属性\n|cFF00FF00全属性+3\n|r\n")
					SetUnitAnimation(u, "attack")
					YDWEPolledWaitNull(2)
					ResetUnitAnimation(pick_list[6])
				elseif u == pick_list[7] then
					DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|CFFCCFF00瑾轩|r\n可加入门派：\n|CFF00FFCC全部门派|r\n基础全属性+9\n额外属性\n|cFF00FF00全属性+3\n|r\n")
					SetUnitAnimation(u, "attack")
					YDWEPolledWaitNull(2)
					ResetUnitAnimation(pick_list[7])
				end
			end
			p = nil
			u = nil
		end
	end)


	--查看当前可加入门派
	Lh = CreateTrigger()
	TriggerRegisterPlayerSelectionEventBJ(Lh, Player(0), true)
	TriggerRegisterPlayerSelectionEventBJ(Lh, Player(1), true)
	TriggerRegisterPlayerSelectionEventBJ(Lh, Player(2), true)
	TriggerRegisterPlayerSelectionEventBJ(Lh, Player(3), true)
	TriggerRegisterPlayerSelectionEventBJ(Lh, Player(4), true)
	TriggerAddCondition(Lh, Condition(kx))
	TriggerAddAction(Lh, MenPai)
end
init()