-----------------------------------
-- 武器和装备相关
-----------------------------------
--鸟拿东西显示附加属性
function Zy()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil == false and GetItemUserData(GetManipulatedItem()) > 0 -- INLINED!!
end
function dz()
	local it = GetManipulatedItem()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local ii1 = ModuloInteger(GetItemUserData(it) // 100000000, 10)
	local ii2 = ModuloInteger(GetItemUserData(it) // 10000000, 10)
	local ii3 = ModuloInteger(GetItemUserData(it) // 1000000, 10)
	local ii4 = ModuloInteger(GetItemUserData(it) // 100000, 10)
	local ii5 = ModuloInteger(GetItemUserData(it) // 10000, 10)
	local ii6 = ModuloInteger(GetItemUserData(it) // 1000, 10)
	local ii7 = ModuloInteger(GetItemUserData(it) // 100, 10)
	local ii8 = ModuloInteger(GetItemUserData(it) // 10, 10)
	local ii9 = ModuloInteger(GetItemUserData(it) // 1, 10)
	local j = 0
	local l__l = 0
	local m = 0
	local n = 0
	local o = 0
	DisplayTimedTextToPlayer(p, 0, 0, 15.0, (GetItemName(it) or "") .. "|cff66cc33附加属性：|r")
	if ii2 == 1 then
		j = j + ii3 * 300
	elseif ii2 == 2 then
		l__l = l__l + ii3 * 40
	elseif ii2 == 3 then
		m = m + ii3 * 40
	elseif ii2 == 4 then
		n = n + ii3 * 25
	elseif ii2 == 5 then
		o = o + ii3 * 25
	end
	if ii4 == 1 then
		j = j + ii5 * 300
	elseif ii4 == 2 then
		l__l = l__l + ii5 * 40
	elseif ii4 == 3 then
		m = m + ii5 * 40
	elseif ii4 == 4 then
		n = n + ii5 * 25
	elseif ii4 == 5 then
		o = o + ii5 * 25
	end
	if j > 0 then
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff攻击+" .. (I2S(j) or ""))
	end
	if l__l > 0 then
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff防御+" .. (I2S(l__l) or ""))
	end
	if m > 0 then
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff招式伤害+" .. (I2S(m) or ""))
	end
	if n > 0 then
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff内力+" .. (I2S(n) or ""))
	end
	if o > 0 then
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff真实伤害+" .. (I2S(o) or ""))
	end
	DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff装备剩余凹槽：" .. (I2S(ii6) or ""))
	DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff镶嵌效果：")
	if ii7 == 1 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+3")
		end
	elseif ii7 == 2 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+3")
		end
	elseif ii7 == 3 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+3")
		end
	elseif ii7 == 4 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+3")
		end
	elseif ii7 == 5 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+3")
		end
	elseif ii7 == 6 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+3")
		end
	end
	if ii8 == 1 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+3")
		end
	elseif ii8 == 2 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+3")
		end
	elseif ii8 == 3 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+3")
		end
	elseif ii8 == 4 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+3")
		end
	elseif ii8 == 5 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+3")
		end
	elseif ii8 == 6 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+3")
		end
	end
	if ii9 == 1 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+3")
		end
	elseif ii9 == 2 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+3")
		end
	elseif ii9 == 3 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+3")
		end
	elseif ii9 == 4 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+3")
		end
	elseif ii9 == 5 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+3")
		end
	elseif ii9 == 6 then
		if udg_dzdsbool[i] == false then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+1")
		else
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+3")
		end
	end
	if ii1 == 1 then
		DisplayTextToPlayer(p, 0, 0, "|cFF33ffff获得青龙套件")
	elseif ii1 == 2 then
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cFF33ffff获得朱雀套件")
	elseif ii1 == 3 then
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cFF33ffff获得玄武套件")
	elseif ii1 == 4 then
		DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cFF33ffff获得白虎套件")
	end
	u = nil
	p = nil
	it = nil
end
--英雄拿上东西显示附加属性
function fz()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function gz()
	local it = GetManipulatedItem()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local ii1 = ModuloInteger(GetItemUserData(it) // 100000000, 10)
	local ii2 = ModuloInteger(GetItemUserData(it) // 10000000, 10)
	local ii3 = ModuloInteger(GetItemUserData(it) // 1000000, 10)
	local ii4 = ModuloInteger(GetItemUserData(it) // 100000, 10)
	local ii5 = ModuloInteger(GetItemUserData(it) // 10000, 10)
	local ii6 = ModuloInteger(GetItemUserData(it) // 1000, 10)
	local ii7 = ModuloInteger(GetItemUserData(it) // 100, 10)
	local ii8 = ModuloInteger(GetItemUserData(it) // 10, 10)
	local ii9 = ModuloInteger(GetItemUserData(it) // 1, 10)
	local j = 0
	local l__l = 0
	local m = 0
	local n = 0
	local o = 0
	local q = 0
	if GetItemUserData(it) > 0 then
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, (GetItemName(it) or "") .. "|cff66cc33获得附加属性：|r")
		if ii2 == 1 then
			j = j + ii3 * 300
		elseif ii2 == 2 then
			l__l = l__l + ii3 * 40
		elseif ii2 == 3 then
			m = m + ii3 * 40
		elseif ii2 == 4 then
			n = n + ii3 * 25
		elseif ii2 == 5 then
			o = o + ii3 * 25
		end
		if ii4 == 1 then
			j = j + ii5 * 300
		elseif ii4 == 2 then
			l__l = l__l + ii5 * 40
		elseif ii4 == 3 then
			m = m + ii5 * 40
		elseif ii4 == 4 then
			n = n + ii5 * 25
		elseif ii4 == 5 then
			o = o + ii5 * 25
		end
		if j > 0 then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff攻击+" .. (I2S(j) or ""))
			YDWEGeneralBounsSystemUnitSetBonus(u, 3, 0, j)
		end
		if l__l > 0 then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff防御+" .. (I2S(l__l) or ""))
			YDWEGeneralBounsSystemUnitSetBonus(u, 2, 0, l__l)
		end
		if m > 0 then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff招式伤害+" .. (I2S(m) or ""))
			ModifyHeroStat(0, u, 0, m)
		end
		if n > 0 then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff内力+" .. (I2S(n) or ""))
			ModifyHeroStat(1, u, 0, n)
		end
		if o > 0 then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff真实伤害+" .. (I2S(o) or ""))
			ModifyHeroStat(2, u, 0, o)
		end
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff装备剩余凹槽：" .. (I2S(ii6) or ""))
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff镶嵌效果：")
		if ii7 == 1 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+1")
				gengu[i] = gengu[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+3")
				gengu[i] = gengu[i] + 3
			end
		elseif ii7 == 2 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+1")
				wuxing[i] = wuxing[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+3")
				wuxing[i] = wuxing[i] + 3
			end
		elseif ii7 == 3 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+1")
				jingmai[i] = jingmai[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+3")
				jingmai[i] = jingmai[i] + 3
			end
		elseif ii7 == 4 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+1")
				fuyuan[i] = fuyuan[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+3")
				fuyuan[i] = fuyuan[i] + 3
			end
		elseif ii7 == 5 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+1")
				danpo[i] = danpo[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+3")
				danpo[i] = danpo[i] + 3
			end
		elseif ii7 == 6 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+1")
				yishu[i] = yishu[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+3")
				yishu[i] = yishu[i] + 3
			end
		end
		if ii8 == 1 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+1")
				gengu[i] = gengu[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+3")
				gengu[i] = gengu[i] + 3
			end
		elseif ii8 == 2 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+1")
				wuxing[i] = wuxing[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+3")
				wuxing[i] = wuxing[i] + 3
			end
		elseif ii8 == 3 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+1")
				jingmai[i] = jingmai[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+3")
				jingmai[i] = jingmai[i] + 3
			end
		elseif ii8 == 4 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+1")
				fuyuan[i] = fuyuan[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+3")
				fuyuan[i] = fuyuan[i] + 3
			end
		elseif ii8 == 5 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+1")
				danpo[i] = danpo[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+3")
				danpo[i] = danpo[i] + 3
			end
		elseif ii8 == 6 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+1")
				yishu[i] = yishu[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+3")
				yishu[i] = yishu[i] + 3
			end
		end
		if ii9 == 1 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+1")
				gengu[i] = gengu[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+3")
				gengu[i] = gengu[i] + 3
			end
		elseif ii9 == 2 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+1")
				wuxing[i] = wuxing[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+3")
				wuxing[i] = wuxing[i] + 3
			end
		elseif ii9 == 3 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+1")
				jingmai[i] = jingmai[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+3")
				jingmai[i] = jingmai[i] + 3
			end
		elseif ii9 == 4 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+1")
				fuyuan[i] = fuyuan[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+3")
				fuyuan[i] = fuyuan[i] + 3
			end
		elseif ii9 == 5 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+1")
				danpo[i] = danpo[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+3")
				danpo[i] = danpo[i] + 3
			end
		elseif ii9 == 6 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+1")
				yishu[i] = yishu[i] + 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+3")
				yishu[i] = yishu[i] + 3
			end
		end
		if ii1 == 1 then
			DisplayTextToPlayer(p, 0, 0, "|cFF33ffff获得青龙套件")
		elseif ii1 == 2 then
			DisplayTextToPlayer(p, 0, 0, "|cFF33ffff获得朱雀套件")
		elseif ii1 == 3 then
			DisplayTextToPlayer(p, 0, 0, "|cFF33ffff获得玄武套件")
		elseif ii1 == 4 then
			DisplayTextToPlayer(p, 0, 0, "|cFF33ffff获得白虎套件")
		end
		k7 = 1
		for _ in _loop_() do
			if k7 > 6 then break end
			if GetItemUserData(UnitItemInSlotBJ(u, k7)) // 100000000 == ii1 and UnitItemInSlotBJ(u, k7) ~= GetManipulatedItem() then
				q = q + 1
			end
			k7 = k7 + 1
		end
		if q == 2 then
			if ii1 == 1 then
				ModifyHeroStat(0, u, 0, 200)
				juexuelingwu[i] = juexuelingwu[i] + 1
				udg_baojilv[i] = udg_baojilv[i] + 0.04
				UnitAddAbility(u, 1093677106)
				YDWEGeneralBounsSystemUnitSetBonus(u, 3, 0, 1000)
				gengu[i] = gengu[i] + 2
				wuxing[i] = wuxing[i] + 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFF6600集齐青龙套装：")
				DisplayTextToPlayer(p, 0, 0, "|cFFcc99ff――――――――――")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF招式伤害+200")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF绝学领悟力+1")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF暴击率+4%")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF攻击速度+50%")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF攻击+1000")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF根骨+2")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF悟性+1")
			elseif ii1 == 2 then
				ModifyHeroStat(1, u, 0, 150)
				juexuelingwu[i] = juexuelingwu[i] + 1
				udg_baojishanghai[i] = udg_baojishanghai[i] + 0.5
				shaguaihufui[i] = shaguaihufui[i] + 1000.0
				UnitAddAbility(u, 1093677107)
				yishu[i] = yishu[i] + 1
				jingmai[i] = jingmai[i] + 2
				DisplayTextToPlayer(p, 0, 0, "|cFFFF6600集齐朱雀套装：")
				DisplayTextToPlayer(p, 0, 0, "|cFFcc99ff――――――――――")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF内力+150")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF绝学领悟力+1")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF暴击伤害+50%")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF杀怪回复+1000")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF法术回复+10")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF医术+1")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF经脉+2")
			elseif ii1 == 3 then
				ModifyHeroStat(0, u, 0, 150)
				juexuelingwu[i] = juexuelingwu[i] + 1
				UnitAddAbility(u, 1093677108)
				UnitAddAbility(u, 1093677109)
				YDWEGeneralBounsSystemUnitSetBonus(u, 2, 0, 200)
				wuxing[i] = wuxing[i] + 2
				danpo[i] = danpo[i] + 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFF6600集齐玄武套装：")
				DisplayTextToPlayer(p, 0, 0, "|cFFcc99ff――――――――――")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF招式伤害+150")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF绝学领悟力+1")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF气血+30000")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF气血回复+600")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF防御+200")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF悟性+2")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF胆魄+1")
			elseif ii1 == 4 then
				ModifyHeroStat(1, u, 0, 200)
				ModifyHeroStat(2, u, 0, 100)
				UnitAddAbility(u, 1093677110)
				juexuelingwu[i] = juexuelingwu[i] + 2
				fuyuan[i] = fuyuan[i] + 2
				danpo[i] = danpo[i] + 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFF6600集齐白虎套装：")
				DisplayTextToPlayer(p, 0, 0, "|cFFcc99ff――――――――――")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF内力+200")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF绝学领悟力+2")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF真实伤害+100")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF移动速度最大化")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF福缘+2")
				DisplayTextToPlayer(p, 0, 0, "|cFF00FFFF胆魄+1")
			end
		else
			if ii1 == 1 then
				DisplayTextToPlayer(p, 0, 0, "|cFF33ffff获得青龙套件，（已收集到" .. (I2S(q + 1) or "") .. "件）")
			elseif ii1 == 2 then
				DisplayTextToPlayer(p, 0, 0, "|cFF33ffff获得朱雀套件，（已收集到" .. (I2S(q + 1) or "") .. "件）")
			elseif ii1 == 3 then
				DisplayTextToPlayer(p, 0, 0, "|cFF33ffff获得玄武套件，（已收集到" .. (I2S(q + 1) or "") .. "件）")
			elseif ii1 == 4 then
				DisplayTextToPlayer(p, 0, 0, "|cFF33ffff获得白虎套件，（已收集到" .. (I2S(q + 1) or "") .. "件）")
			end
		end
	end
	u = nil
	p = nil
	it = nil
end
function iz()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function jz()
	local it = GetManipulatedItem()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local ii1 = ModuloInteger(GetItemUserData(it) // 100000000, 10)
	local ii2 = ModuloInteger(GetItemUserData(it) // 10000000, 10)
	local ii3 = ModuloInteger(GetItemUserData(it) // 1000000, 10)
	local ii4 = ModuloInteger(GetItemUserData(it) // 100000, 10)
	local ii5 = ModuloInteger(GetItemUserData(it) // 10000, 10)
	local ii6 = ModuloInteger(GetItemUserData(it) // 1000, 10)
	local ii7 = ModuloInteger(GetItemUserData(it) // 100, 10)
	local ii8 = ModuloInteger(GetItemUserData(it) // 10, 10)
	local ii9 = ModuloInteger(GetItemUserData(it) // 1, 10)
	local i = 1 + GetPlayerId(p)
	local j = 0
	local l__l = 0
	local m = 0
	local n = 0
	local o = 0
	local q = 0
	if GetItemUserData(it) > 0 then
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, (GetItemName(it) or "") .. "|cff66cc33失去附加属性：|r")
		if ii2 == 1 then
			j = j + ii3 * 300
		elseif ii2 == 2 then
			l__l = l__l + ii3 * 40
		elseif ii2 == 3 then
			m = m + ii3 * 40
		elseif ii2 == 4 then
			n = n + ii3 * 25
		elseif ii2 == 5 then
			o = o + ii3 * 25
		end
		if ii4 == 1 then
			j = j + ii5 * 300
		elseif ii4 == 2 then
			l__l = l__l + ii5 * 40
		elseif ii4 == 3 then
			m = m + ii5 * 40
		elseif ii4 == 4 then
			n = n + ii5 * 25
		elseif ii4 == 5 then
			o = o + ii5 * 25
		end
		if j > 0 then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff攻击+" .. (I2S(j) or ""))
			YDWEGeneralBounsSystemUnitSetBonus(u, 3, 1, j)
		end
		if l__l > 0 then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff防御+" .. (I2S(l__l) or ""))
			YDWEGeneralBounsSystemUnitSetBonus(u, 2, 1, l__l)
		end
		if m > 0 then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff招式伤害+" .. (I2S(m) or ""))
			ModifyHeroStat(0, u, 1, m)
		end
		if n > 0 then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff内力+" .. (I2S(n) or ""))
			ModifyHeroStat(1, u, 1, n)
		end
		if o > 0 then
			DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff真实伤害+" .. (I2S(o) or ""))
			ModifyHeroStat(2, u, 1, o)
		end
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff装备剩余凹槽：" .. (I2S(ii6) or ""))
		DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff镶嵌效果：")
		if ii7 == 1 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+1")
				gengu[i] = gengu[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+3")
				gengu[i] = gengu[i] - 3
			end
		elseif ii7 == 2 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+1")
				wuxing[i] = wuxing[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+3")
				wuxing[i] = wuxing[i] - 3
			end
		elseif ii7 == 3 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+1")
				jingmai[i] = jingmai[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+3")
				jingmai[i] = jingmai[i] - 3
			end
		elseif ii7 == 4 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+1")
				fuyuan[i] = fuyuan[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+3")
				fuyuan[i] = fuyuan[i] - 3
			end
		elseif ii7 == 5 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+1")
				danpo[i] = danpo[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+3")
				danpo[i] = danpo[i] - 3
			end
		elseif ii7 == 6 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+1")
				yishu[i] = yishu[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+3")
				yishu[i] = yishu[i] - 3
			end
		end
		if ii8 == 1 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+1")
				gengu[i] = gengu[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+3")
				gengu[i] = gengu[i] - 3
			end
		elseif ii8 == 2 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+1")
				wuxing[i] = wuxing[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+3")
				wuxing[i] = wuxing[i] - 3
			end
		elseif ii8 == 3 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+1")
				jingmai[i] = jingmai[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+3")
				jingmai[i] = jingmai[i] - 3
			end
		elseif ii8 == 4 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+1")
				fuyuan[i] = fuyuan[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+3")
				fuyuan[i] = fuyuan[i] - 3
			end
		elseif ii8 == 5 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+1")
				danpo[i] = danpo[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+3")
				danpo[i] = danpo[i] - 3
			end
		elseif ii8 == 6 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+1")
				yishu[i] = yishu[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+3")
				yishu[i] = yishu[i] - 3
			end
		end
		if ii9 == 1 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+1")
				gengu[i] = gengu[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff根骨+3")
				gengu[i] = gengu[i] - 3
			end
		elseif ii9 == 2 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+1")
				wuxing[i] = wuxing[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff悟性+3")
				wuxing[i] = wuxing[i] - 3
			end
		elseif ii9 == 3 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+1")
				jingmai[i] = jingmai[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff经脉+3")
				jingmai[i] = jingmai[i] - 3
			end
		elseif ii9 == 4 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+1")
				fuyuan[i] = fuyuan[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff福缘+3")
				fuyuan[i] = fuyuan[i] - 3
			end
		elseif ii9 == 5 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+1")
				danpo[i] = danpo[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff胆魄+3")
				danpo[i] = danpo[i] - 3
			end
		elseif ii9 == 6 then
			if udg_dzdsbool[i] == false then
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+1")
				yishu[i] = yishu[i] - 1
			else
				DisplayTimedTextToPlayer(p, 0, 0, 15.0, "|cFFff66ff医术+3")
				yishu[i] = yishu[i] - 3
			end
		end
		k7 = 1
		for _ in _loop_() do
			if k7 > 6 then break end
			if GetItemUserData(UnitItemInSlotBJ(u, k7)) // 100000000 == ii1 and UnitItemInSlotBJ(u, k7) ~= GetManipulatedItem() then
				q = q + 1
			end
			k7 = k7 + 1
		end
		if q == 2 then
			if ii1 == 1 then
				ModifyHeroStat(0, u, 1, 200)
				juexuelingwu[i] = juexuelingwu[i] - 1
				udg_baojilv[i] = udg_baojilv[i] - 0.04
				UnitRemoveAbility(u, 1093677106)
				YDWEGeneralBounsSystemUnitSetBonus(u, 3, 1, 1000)
				gengu[i] = gengu[i] - 2
				wuxing[i] = wuxing[i] - 1
				DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cFFFF0000失去青龙套装")
			elseif ii1 == 2 then
				ModifyHeroStat(1, u, 1, 150)
				juexuelingwu[i] = juexuelingwu[i] - 1
				udg_baojishanghai[i] = udg_baojishanghai[i] - 0.5
				shaguaihufui[i] = shaguaihufui[i] - 1000.0
				UnitRemoveAbility(u, 1093677107)
				yishu[i] = yishu[i] - 1
				jingmai[i] = jingmai[i] - 2
				DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cFFFF0000失去朱雀套装")
			elseif ii1 == 3 then
				ModifyHeroStat(0, u, 1, 150)
				juexuelingwu[i] = juexuelingwu[i] - 1
				UnitRemoveAbility(u, 1093677108)
				UnitRemoveAbility(u, 1093677109)
				YDWEGeneralBounsSystemUnitSetBonus(u, 2, 1, 200)
				wuxing[i] = wuxing[i] - 2
				danpo[i] = danpo[i] - 1
				DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cFFFF0000失去玄武套装")
			elseif ii1 == 4 then
				ModifyHeroStat(1, u, 1, 200)
				ModifyHeroStat(2, u, 1, 100)
				UnitRemoveAbility(u, 1093677110)
				juexuelingwu[i] = juexuelingwu[i] - 2
				fuyuan[i] = fuyuan[i] - 2
				danpo[i] = danpo[i] - 1
				DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cFFFF0000失去白虎套装")
			end
		end
	end
	u = nil
	p = nil
	it = nil
end
--穿上装备
function mz()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and (GetItemType(GetManipulatedItem()) == ITEM_TYPE_ARTIFACT or GetItemType(GetManipulatedItem()) == ITEM_TYPE_PURCHASABLE or GetItemType(GetManipulatedItem()) == ITEM_TYPE_CHARGED) -- INLINED!!
end
function nz()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	local id = GetItemTypeId(GetManipulatedItem())
	local j = 1
	for _ in _loop_() do
		if j >= 30 then break end
		if id == s__ShopWeapon_id[shopweapon[j]] then --在smelt_weapon里
			sc__ShopWeapon_PickUpWeapon(shopweapon[j], GetTriggerUnit(), GetManipulatedItem())
			if true then break end
		end
		j = j + 1
	end
	YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 3, 0, R2I(LoadReal(YDHT, id, StringHash("攻击力"))))
	YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 2, 0, R2I(LoadReal(YDHT, id, StringHash("防御"))))
	YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 1, 0, R2I(LoadReal(YDHT, id, StringHash("法力上限"))))
	ModifyHeroStat(0, GetTriggerUnit(), 0, R2I(LoadReal(YDHT, id, StringHash("招式伤害"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("招式伤害"))))
	ModifyHeroStat(1, GetTriggerUnit(), 0, R2I(LoadReal(YDHT, id, StringHash("内力"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("内力"))))
	ModifyHeroStat(2, GetTriggerUnit(), 0, R2I(LoadReal(YDHT, id, StringHash("真实伤害"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("真实伤害"))))
	udg_baojishanghai[i] = udg_baojishanghai[i] + LoadReal(YDHT, id, StringHash("暴击伤害")) + LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("暴击伤害"))
	udg_baojilv[i] = udg_baojilv[i] + LoadReal(YDHT, id, StringHash("暴击率")) + LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("暴击率"))
	juexuelingwu[i] = juexuelingwu[i] + R2I(LoadReal(YDHT, id, StringHash("绝学领悟"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("绝学领悟")))
	gengu[i] = gengu[i] + R2I(LoadReal(YDHT, id, StringHash("根骨"))) + R2I(LoadReal(YDHT, id, StringHash("全属性"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("根骨")))
	danpo[i] = danpo[i] + R2I(LoadReal(YDHT, id, StringHash("胆魄"))) + R2I(LoadReal(YDHT, id, StringHash("全属性"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("胆魄")))
	wuxing[i] = wuxing[i] + R2I(LoadReal(YDHT, id, StringHash("悟性"))) + R2I(LoadReal(YDHT, id, StringHash("全属性"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("悟性")))
	yishu[i] = yishu[i] + R2I(LoadReal(YDHT, id, StringHash("医术"))) + R2I(LoadReal(YDHT, id, StringHash("全属性"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("医术")))
	jingmai[i] = jingmai[i] + R2I(LoadReal(YDHT, id, StringHash("经脉"))) + R2I(LoadReal(YDHT, id, StringHash("全属性"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("经脉")))
	fuyuan[i] = fuyuan[i] + R2I(LoadReal(YDHT, id, StringHash("福缘"))) + R2I(LoadReal(YDHT, id, StringHash("全属性"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("福缘")))
	shanghaihuifu[i] = shanghaihuifu[i] + LoadReal(YDHT, id, StringHash("伤害回复")) + LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("伤害回复"))
	shaguaihufui[i] = shaguaihufui[i] + LoadReal(YDHT, id, StringHash("杀怪回复")) + LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("杀怪回复"))
	shengminghuifu[i] = shengminghuifu[i] + LoadReal(YDHT, id, StringHash("生命回复")) + LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("生命回复"))
	falihuifu[i] = falihuifu[i] + LoadReal(YDHT, id, StringHash("法力回复")) + LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("法力回复"))
end
--脱下装备
function pz()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and (GetItemType(GetManipulatedItem()) == ITEM_TYPE_ARTIFACT or GetItemType(GetManipulatedItem()) == ITEM_TYPE_PURCHASABLE or GetItemType(GetManipulatedItem()) == ITEM_TYPE_CHARGED) -- INLINED!!
end
function qz()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	local id = GetItemTypeId(GetManipulatedItem())
	YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 3, 1, R2I(LoadReal(YDHT, id, StringHash("攻击力"))))
	YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 2, 1, R2I(LoadReal(YDHT, id, StringHash("防御"))))
	YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 1, 1, R2I(LoadReal(YDHT, id, StringHash("法力上限"))))
	ModifyHeroStat(0, GetTriggerUnit(), 1, R2I(LoadReal(YDHT, id, StringHash("招式伤害"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("招式伤害"))))
	ModifyHeroStat(1, GetTriggerUnit(), 1, R2I(LoadReal(YDHT, id, StringHash("内力"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("内力"))))
	ModifyHeroStat(2, GetTriggerUnit(), 1, R2I(LoadReal(YDHT, id, StringHash("真实伤害"))) + R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("真实伤害"))))
	udg_baojishanghai[i] = udg_baojishanghai[i] - LoadReal(YDHT, id, StringHash("暴击伤害")) - LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("暴击伤害"))
	udg_baojilv[i] = udg_baojilv[i] - LoadReal(YDHT, id, StringHash("暴击率")) - LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("暴击率"))
	juexuelingwu[i] = juexuelingwu[i] - R2I(LoadReal(YDHT, id, StringHash("绝学领悟"))) - R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("绝学领悟")))
	gengu[i] = gengu[i] - R2I(LoadReal(YDHT, id, StringHash("根骨"))) - R2I(LoadReal(YDHT, id, StringHash("全属性"))) - R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("根骨")))
	danpo[i] = danpo[i] - R2I(LoadReal(YDHT, id, StringHash("胆魄"))) - R2I(LoadReal(YDHT, id, StringHash("全属性"))) - R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("胆魄")))
	wuxing[i] = wuxing[i] - R2I(LoadReal(YDHT, id, StringHash("悟性"))) - R2I(LoadReal(YDHT, id, StringHash("全属性"))) - R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("悟性")))
	yishu[i] = yishu[i] - R2I(LoadReal(YDHT, id, StringHash("医术"))) - R2I(LoadReal(YDHT, id, StringHash("全属性"))) - R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("医术")))
	jingmai[i] = jingmai[i] - R2I(LoadReal(YDHT, id, StringHash("经脉"))) - R2I(LoadReal(YDHT, id, StringHash("全属性"))) - R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("经脉")))
	fuyuan[i] = fuyuan[i] - R2I(LoadReal(YDHT, id, StringHash("福缘"))) - R2I(LoadReal(YDHT, id, StringHash("全属性"))) - R2I(LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("福缘")))
	shanghaihuifu[i] = shanghaihuifu[i] - LoadReal(YDHT, id, StringHash("伤害回复")) - LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("伤害回复"))
	shaguaihufui[i] = shaguaihufui[i] - LoadReal(YDHT, id, StringHash("杀怪回复")) - LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("杀怪回复"))
	shengminghuifu[i] = shengminghuifu[i] - LoadReal(YDHT, id, StringHash("生命回复")) - LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("生命回复"))
	falihuifu[i] = falihuifu[i] - LoadReal(YDHT, id, StringHash("法力回复")) - LoadReal(YDHT, GetHandleId(GetManipulatedItem()), StringHash("法力回复"))
end
--江湖忠
function UnitHaveJueZhanBa()
	return UnitHaveItem(GetAttacker(), 1227896918)
end
function JueZhanBaXiaoGuo()
	local u = GetTriggerUnit()
	if ModuloInteger(GetUnitPointValue(u), 100) == 0 then
		if GetUnitState(u, UNIT_STATE_LIFE) <= 0.1 * GetUnitState(u, UNIT_STATE_MAX_LIFE) then
			SetWidgetLife(u, 1.0)
		else
			SetWidgetLife(u, GetWidgetLife(u) - 0.05 * GetUnitState(u, UNIT_STATE_MAX_LIFE))
		end
	else
		if GetUnitState(u, UNIT_STATE_LIFE) <= 0.01 * GetUnitState(u, UNIT_STATE_MAX_LIFE) then
			SetWidgetLife(u, 1.0)
		else
			SetWidgetLife(u, GetWidgetLife(u) - 0.01 * GetUnitState(u, UNIT_STATE_MAX_LIFE))
		end
	end
	u = nil
end
--决战霸
function UnitHaveJiangHuZhong()
	return UnitHaveItem(GetTriggerUnit(), 1227897136)
end
function JiangHuZhongXiaoGuo()
	local u = GetAttacker()
	if ModuloInteger(GetUnitPointValue(u), 100) == 0 then
		if GetUnitState(u, UNIT_STATE_LIFE) <= 0.1 * GetUnitState(u, UNIT_STATE_MAX_LIFE) then
			SetWidgetLife(u, 1.0)
		else
			SetWidgetLife(u, GetWidgetLife(u) - 0.05 * GetUnitState(u, UNIT_STATE_MAX_LIFE))
		end
	else
		if GetUnitState(u, UNIT_STATE_LIFE) <= 0.01 * GetUnitState(u, UNIT_STATE_MAX_LIFE) then
			SetWidgetLife(u, 1.0)
		else
			SetWidgetLife(u, GetWidgetLife(u) - 0.01 * GetUnitState(u, UNIT_STATE_MAX_LIFE))
		end
	end
	u = nil
end
--穿武器或衣服
function Mz()
	return (GetItemType(GetManipulatedItem()) == ITEM_TYPE_ARTIFACT or GetItemType(GetManipulatedItem()) == ITEM_TYPE_PURCHASABLE) and IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil -- INLINED!!
end
function ItemChongFu()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	E8 = 1
	udg_wuqishu[i] = 0
	udg_yifushu[i] = 0
	for _ in _loop_() do
		if E8 > 6 then break end
		if GetItemType(UnitItemInSlotBJ(u, E8)) == ITEM_TYPE_ARTIFACT then
			udg_wuqishu[i] = udg_wuqishu[i] + 1
		end
		if GetItemType(UnitItemInSlotBJ(u, E8)) == ITEM_TYPE_PURCHASABLE then
			udg_yifushu[i] = udg_yifushu[i] + 1
		end
		if GetItemType(UnitItemInSlotBJ(u, E8)) == GetItemType(GetManipulatedItem()) and UnitItemInSlotBJ(u, E8) ~= GetManipulatedItem() and Ce[i] ~= 7 then
			UnitRemoveItemSwapped(UnitItemInSlotBJ(u, E8), u)
			DisplayTimedTextToPlayer(p, 0, 0, 30, "|cffff0000非丫鬟角色最多只能携带一件武器和衣服")
		end
		E8 = E8 + 1
	end
	if Ce[i] == 7 and udg_junzhu[i] == false then
		if GetItemType(GetManipulatedItem()) == ITEM_TYPE_ARTIFACT and udg_wuqishu[i] >= 3 then
			UnitRemoveItemSwapped(GetManipulatedItem(), u)
			DisplayTimedTextToPlayer(p, 0, 0, 30, "|cffff0000丫鬟最多只能携带两件武器")
		end
		if GetItemType(GetManipulatedItem()) == ITEM_TYPE_PURCHASABLE and udg_yifushu[i] >= 3 then
			UnitRemoveItemSwapped(GetManipulatedItem(), u)
			DisplayTimedTextToPlayer(p, 0, 0, 30, "|cffff0000丫鬟最多只能穿两件衣服")
		end
	end
	u = nil
	p = nil
end

local function init()



	local t = CreateTrigger()
	--鸟拿东西显示附加属性
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(Zy))
	TriggerAddAction(t, dz)
	--英雄拿东西显示附加属性
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(fz))
	TriggerAddAction(t, gz)
	--英雄放下东西显示失去附加属性
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DROP_ITEM)
	TriggerAddCondition(t, Condition(iz))
	TriggerAddAction(t, jz)
	--英雄穿上装备
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(mz))
	TriggerAddAction(t, nz)
	--英雄脱下装备
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DROP_ITEM)
	TriggerAddCondition(t, Condition(pz))
	TriggerAddAction(t, qz)
	--只能穿一件衣服或武器的判断
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(Mz))
	TriggerAddAction(t, ItemChongFu)


	require 'map.系统.养武'
	t = nil
end
init()