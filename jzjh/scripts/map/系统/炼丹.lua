---------各种丹药开始-------//
--医术丹
function VO()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895375
end
function WO()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if yongdanshu[i] < 10 or yongdanshu[i] < 15 and Ce[i] == 1 then
		yongdanshu[i] = yongdanshu[i] + 1
		yishu[i] = yishu[i] + 1
		PlaySoundOnUnitBJ(Eh, 100, u)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC医术+1|r")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前医术为：|r|cFF99FFCC" .. (I2S(yishu[i]) or ""))
		if Ce[i] ~= 1 then
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC" .. (I2S(yongdanshu[i]) or "") .. " / 10")
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC" .. (I2S(yongdanshu[i]) or "") .. " / 15")
		end
	else
		unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()), u)
		PlaySoundOnUnitBJ(Gh, 100, u)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00你在本次游戏里已经达到了使用属性丹上限，无法再使用本类道具")
	end
	u = nil
	p = nil
end
--悟性丹
function YO()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895370
end
function ZO()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if yongdanshu[i] < 10 or yongdanshu[i] < 15 and Ce[i] == 1 then
		yongdanshu[i] = yongdanshu[i] + 1
		wuxing[i] = wuxing[i] + 1
		PlaySoundOnUnitBJ(Eh, 100, u)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC悟性+1|r")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前悟性为：|r|cFF99FFCC" .. (I2S(wuxing[i]) or ""))
		if Ce[i] ~= 1 then
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC" .. (I2S(yongdanshu[i]) or "") .. " / 10")
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC" .. (I2S(yongdanshu[i]) or "") .. " / 15")
		end
	else
		unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()), u)
		PlaySoundOnUnitBJ(Gh, 100, u)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00你在本次游戏里已经达到了使用属性丹上限，无法再使用本类道具")
	end
	u = nil
	p = nil
end
--根骨丹
function e0()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895363
end
function f0()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if yongdanshu[i] < 10 or yongdanshu[i] < 15 and Ce[i] == 1 then
		yongdanshu[i] = yongdanshu[i] + 1
		gengu[i] = gengu[i] + 1
		PlaySoundOnUnitBJ(Eh, 100, u)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC根骨+1|r")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前根骨为：|r|cFF99FFCC" .. (I2S(gengu[i]) or ""))
		if Ce[i] ~= 1 then
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC" .. (I2S(yongdanshu[i]) or "") .. " / 10")
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC" .. (I2S(yongdanshu[i]) or "") .. " / 15")
		end
	else
		unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()), u)
		PlaySoundOnUnitBJ(Gh, 100, u)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00你在本次游戏里已经达到了使用属性丹上限，无法再使用本类道具")
	end
	u = nil
	p = nil
end
--福缘丹
function h0()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895368
end
function i0()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if yongdanshu[i] < 10 or yongdanshu[i] < 15 and Ce[i] == 1 then
		yongdanshu[i] = yongdanshu[i] + 1
		fuyuan[i] = fuyuan[i] + 1
		PlaySoundOnUnitBJ(Eh, 100, u)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC福缘+1|r")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前福缘为：|r|cFF99FFCC" .. (I2S(fuyuan[i]) or ""))
		if Ce[i] ~= 1 then
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC" .. (I2S(yongdanshu[i]) or "") .. " / 10")
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC" .. (I2S(yongdanshu[i]) or "") .. " / 15")
		end
	else
		unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()), u)
		PlaySoundOnUnitBJ(Gh, 100, u)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00你在本次游戏里已经达到了使用属性丹上限，无法再使用本类道具")
	end
	u = nil
	p = nil
end
--经脉丹
function k0()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895369
end
function m0()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if yongdanshu[i] < 10 or yongdanshu[i] < 15 and Ce[i] == 1 then
		yongdanshu[i] = yongdanshu[i] + 1
		jingmai[i] = jingmai[i] + 1
		PlaySoundOnUnitBJ(Eh, 100, u)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC经脉+1|r")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前经脉为：|r|cFF99FFCC" .. (I2S(jingmai[i]) or ""))
		if Ce[i] ~= 1 then
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC" .. (I2S(yongdanshu[i]) or "") .. " / 10")
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC" .. (I2S(yongdanshu[i]) or "") .. " / 15")
		end
	else
		unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()), u)
		PlaySoundOnUnitBJ(Gh, 100, u)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00你在本次游戏里已经达到了使用属性丹上限，无法再使用本类道具")
	end
	u = nil
	p = nil
end
--胆魄丹
function o0()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895365
end
function p0()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if yongdanshu[i] < 10 or yongdanshu[i] < 15 and Ce[i] == 1 then
		yongdanshu[i] = yongdanshu[i] + 1
		danpo[i] = danpo[i] + 1
		PlaySoundOnUnitBJ(Eh, 100, u)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC胆魄+1|r")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前胆魄为：|r|cFF99FFCC" .. (I2S(danpo[i]) or ""))
		if Ce[i] ~= 1 then
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC" .. (I2S(yongdanshu[i]) or "") .. " / 10")
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC" .. (I2S(yongdanshu[i]) or "") .. " / 15")
		end
	else
		unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()), u)
		PlaySoundOnUnitBJ(Gh, 100, u)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00你在本次游戏里已经达到了使用属性丹上限，无法再使用本类道具")
	end
	u = nil
	p = nil
end
--乾坤丹
function r0()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895371
end
function s0()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if yongdanshu[i] < 10 or yongdanshu[i] < 15 and Ce[i] == 1 then
		DialogSetMessage(v8[i], "请选择要减1的属性")
		DialogAddButtonBJ(v8[i], "根骨")
		w8[i] = bj_lastCreatedButton
		DialogAddButtonBJ(v8[i], "悟性")
		y8[i] = bj_lastCreatedButton
		DialogAddButtonBJ(v8[i], "福缘")
		z8[i] = bj_lastCreatedButton
		DialogAddButtonBJ(v8[i], "胆魄")
		A8[i] = bj_lastCreatedButton
		DialogAddButtonBJ(v8[i], "医术")
		a8[i] = bj_lastCreatedButton
		DialogAddButtonBJ(v8[i], "经脉")
		x8[i] = bj_lastCreatedButton
		DialogAddButtonBJ(v8[i], "取消")
		B8[i] = bj_lastCreatedButton
		DialogDisplay(p, v8[i], true)
		b8[i] = true
	else
		unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()), u)
		PlaySoundOnUnitBJ(Gh, 100, u)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00你在本次游戏里已经达到了使用属性丹上限，无法再使用本类道具")
	end
	u = nil
	p = nil
end
function u0()
	return b8[1 + GetPlayerId(GetTriggerPlayer())]
end
function v0()
	local p = GetTriggerPlayer()
	local i = 1 + GetPlayerId(p)
	b8[i] = false
	if GetClickedButton() == B8[i] then
		unitadditembyidswapped(1227895371, P4[i])
		DialogClear(v8[i])
	else
		if GetClickedButton() == w8[i] then
			gengu[i] = gengu[i] - 1
			DisplayTextToPlayer(p, 0, 0, "|cFF99FFCC根骨-1|r")
		elseif GetClickedButton() == y8[i] then
			wuxing[i] = wuxing[i] - 1
			DisplayTextToPlayer(p, 0, 0, "|cFF99FFCC悟性-1|r")
		elseif GetClickedButton() == z8[i] then
			fuyuan[i] = fuyuan[i] - 1
			DisplayTextToPlayer(p, 0, 0, "|cFF99FFCC福缘-1|r")
		elseif GetClickedButton() == A8[i] then
			danpo[i] = danpo[i] - 1
			DisplayTextToPlayer(p, 0, 0, "|cFF99FFCC胆魄-1|r")
		elseif GetClickedButton() == a8[i] then
			yishu[i] = yishu[i] - 1
			DisplayTextToPlayer(p, 0, 0, "|cFF99FFCC医术-1|r")
		elseif GetClickedButton() == x8[i] then
			jingmai[i] = jingmai[i] - 1
			DisplayTextToPlayer(p, 0, 0, "|cFF99FFCC经脉-1|r")
		end
		DialogClear(v8[i])
		DialogSetMessage(D8[i], "请选择要加3的属性")
		DialogAddButtonBJ(D8[i], "根骨")
		w8[i] = bj_lastCreatedButton
		DialogAddButtonBJ(D8[i], "悟性")
		y8[i] = bj_lastCreatedButton
		DialogAddButtonBJ(D8[i], "福缘")
		z8[i] = bj_lastCreatedButton
		DialogAddButtonBJ(D8[i], "胆魄")
		A8[i] = bj_lastCreatedButton
		DialogAddButtonBJ(D8[i], "医术")
		a8[i] = bj_lastCreatedButton
		DialogAddButtonBJ(D8[i], "经脉")
		x8[i] = bj_lastCreatedButton
		DialogDisplay(p, D8[i], true)
		C8[i] = true
	end
	p = nil
end
function x0()
	return C8[1 + GetPlayerId(GetTriggerPlayer())]
end
function y0()
	local p = GetTriggerPlayer()
	local i = 1 + GetPlayerId(p)
	C8[i] = false
	if GetClickedButton() == w8[i] then
		gengu[i] = gengu[i] + 3
		DisplayTextToPlayer(p, 0, 0, "|cFF99FFCC根骨+3|r")
	elseif GetClickedButton() == y8[i] then
		wuxing[i] = wuxing[i] + 3
		DisplayTextToPlayer(p, 0, 0, "|cFF99FFCC悟性+3|r")
	elseif GetClickedButton() == z8[i] then
		fuyuan[i] = fuyuan[i] + 3
		DisplayTextToPlayer(p, 0, 0, "|cFF99FFCC福缘+3|r")
	elseif GetClickedButton() == A8[i] then
		danpo[i] = danpo[i] + 3
		DisplayTextToPlayer(p, 0, 0, "|cFF99FFCC胆魄+3|r")
	elseif GetClickedButton() == a8[i] then
		yishu[i] = yishu[i] + 3
		DisplayTextToPlayer(p, 0, 0, "|cFF99FFCC医术+3|r")
	elseif GetClickedButton() == x8[i] then
		jingmai[i] = jingmai[i] + 3
		DisplayTextToPlayer(p, 0, 0, "|cFF99FFCC经脉+3|r")
	end
	DialogClear(D8[i])
	yongdanshu[i] = yongdanshu[i] + 1
	PlaySoundOnUnitBJ(Eh, 100, udg_hero[i])
	if Ce[i] ~= 1 then
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC" .. (I2S(yongdanshu[i]) or "") .. " / 10")
	else
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC" .. (I2S(yongdanshu[i]) or "") .. " / 15")
	end
	p = nil
end
function A0()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895372
end
function a0()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if yongdanshu[i] < 10 or yongdanshu[i] < 15 and Ce[i] == 1 then
		if GetRandomInt(1, 5) == 3 then
			if GetRandomInt(1, 6) == 1 then
				yishu[i] = yishu[i] + 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC医术+1|r")
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前医术为：|r|cFF99FFCC" .. (I2S(yishu[i]) or ""))
			elseif GetRandomInt(1, 5) == 2 then
				wuxing[i] = wuxing[i] + 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC悟性+1|r")
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前悟性为：|r|cFF99FFCC" .. (I2S(wuxing[i]) or ""))
			elseif GetRandomInt(1, 4) == 3 then
				gengu[i] = gengu[i] + 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC根骨+1|r")
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前根骨为：|r|cFF99FFCC" .. (I2S(gengu[i]) or ""))
			elseif GetRandomInt(1, 3) == 2 then
				fuyuan[i] = fuyuan[i] + 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC福缘+1|r")
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前福缘为：|r|cFF99FFCC" .. (I2S(fuyuan[i]) or ""))
			elseif GetRandomInt(1, 2) == 2 then
				jingmai[i] = jingmai[i] + 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC经脉+1|r")
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前经脉为：|r|cFF99FFCC" .. (I2S(jingmai[i]) or ""))
			else
				danpo[i] = danpo[i] + 1
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC胆魄+1|r")
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前胆魄为：|r|cFF99FFCC" .. (I2S(danpo[i]) or ""))
			end
		elseif GetRandomInt(1, 4) == 3 then
			if GetRandomInt(1, 6) == 1 then
				yishu[i] = yishu[i] + 3
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC医术+3|r")
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前医术为：|r|cFF99FFCC" .. (I2S(yishu[i]) or ""))
			elseif GetRandomInt(1, 5) == 2 then
				wuxing[i] = wuxing[i] + 3
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC悟性+3|r")
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前悟性为：|r|cFF99FFCC" .. (I2S(wuxing[i]) or ""))
			elseif GetRandomInt(1, 4) == 3 then
				gengu[i] = gengu[i] + 3
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC根骨+3|r")
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前根骨为：|r|cFF99FFCC" .. (I2S(gengu[i]) or ""))
			elseif GetRandomInt(1, 3) == 2 then
				fuyuan[i] = fuyuan[i] + 3
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC福缘+3|r")
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前福缘为：|r|cFF99FFCC" .. (I2S(fuyuan[i]) or ""))
			elseif GetRandomInt(1, 2) == 2 then
				jingmai[i] = jingmai[i] + 3
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC经脉+3|r")
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前经脉为：|r|cFF99FFCC" .. (I2S(jingmai[i]) or ""))
			else
				danpo[i] = danpo[i] + 3
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC胆魄+3|r")
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前胆魄为：|r|cFF99FFCC" .. (I2S(danpo[i]) or ""))
			end
		else
			if GetRandomInt(1, 6) == 1 then
				yishu[i] = yishu[i] + 2
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC医术+2|r")
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前医术为：|r|cFF99FFCC" .. (I2S(yishu[i]) or ""))
			elseif GetRandomInt(1, 5) == 2 then
				wuxing[i] = wuxing[i] + 2
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC悟性+2|r")
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前悟性为：|r|cFF99FFCC" .. (I2S(wuxing[i]) or ""))
			elseif GetRandomInt(1, 4) == 3 then
				gengu[i] = gengu[i] + 2
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC根骨+2|r")
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前根骨为：|r|cFF99FFCC" .. (I2S(gengu[i]) or ""))
			elseif GetRandomInt(1, 3) == 2 then
				fuyuan[i] = fuyuan[i] + 2
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC福缘+2|r")
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前福缘为：|r|cFF99FFCC" .. (I2S(fuyuan[i]) or ""))
			elseif GetRandomInt(1, 2) == 2 then
				jingmai[i] = jingmai[i] + 2
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC经脉+2|r")
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前经脉为：|r|cFF99FFCC" .. (I2S(jingmai[i]) or ""))
			else
				danpo[i] = danpo[i] + 2
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC胆魄+2|r")
				DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前胆魄为：|r|cFF99FFCC" .. (I2S(danpo[i]) or ""))
			end
		end
		PlaySoundOnUnitBJ(Eh, 100, u)
		yongdanshu[i] = yongdanshu[i] + 1
		if Ce[i] ~= 1 then
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC" .. (I2S(yongdanshu[i]) or "") .. " / 10")
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC" .. (I2S(yongdanshu[i]) or "") .. " / 15")
		end
	else
		unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()), u)
		PlaySoundOnUnitBJ(Gh, 100, u)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00你在本次游戏里已经达到了使用属性丹上限，无法再使用本类道具")
	end
	u = nil
	p = nil
end
--脱胎换骨丹
function b0()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895374
end
function C0()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if yongdanshu[i] < 10 or yongdanshu[i] < 15 and Ce[i] == 1 then
		DialogSetMessage(v8[i], "请选择要+6的属性")
		DialogAddButtonBJ(v8[i], "根骨")
		w8[i] = bj_lastCreatedButton
		DialogAddButtonBJ(v8[i], "悟性")
		y8[i] = bj_lastCreatedButton
		DialogAddButtonBJ(v8[i], "福缘")
		z8[i] = bj_lastCreatedButton
		DialogAddButtonBJ(v8[i], "胆魄")
		A8[i] = bj_lastCreatedButton
		DialogAddButtonBJ(v8[i], "医术")
		a8[i] = bj_lastCreatedButton
		DialogAddButtonBJ(v8[i], "经脉")
		x8[i] = bj_lastCreatedButton
		DialogAddButtonBJ(v8[i], "取消")
		B8[i] = bj_lastCreatedButton
		DialogDisplay(p, v8[i], true)
		c8[i] = true
	else
		unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()), u)
		PlaySoundOnUnitBJ(Gh, 100, u)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00你在本次游戏里已经达到了使用属性丹上限，无法再使用本类道具")
	end
	u = nil
	p = nil
end
function D0()
	return c8[1 + GetPlayerId(GetTriggerPlayer())]
end
function E0()
	local p = GetTriggerPlayer()
	local i = 1 + GetPlayerId(p)
	c8[i] = false
	if GetClickedButton() == B8[i] then
		unitadditembyidswapped(1227895374, udg_hero[i])
		DialogClear(v8[i])
	else
		if GetClickedButton() == w8[i] then
			gengu[i] = gengu[i] + 6
			wuxing[i] = wuxing[i] - 1
			fuyuan[i] = fuyuan[i] - 1
			yishu[i] = yishu[i] - 1
			jingmai[i] = jingmai[i] - 1
			danpo[i] = danpo[i] - 1
			DisplayTextToPlayer(p, 0, 0, "|cFF99FFCC根骨+6|r")
		elseif GetClickedButton() == y8[i] then
			wuxing[i] = wuxing[i] + 6
			gengu[i] = gengu[i] - 1
			fuyuan[i] = fuyuan[i] - 1
			yishu[i] = yishu[i] - 1
			jingmai[i] = jingmai[i] - 1
			danpo[i] = danpo[i] - 1
			DisplayTextToPlayer(p, 0, 0, "|cFF99FFCC悟性+6|r")
		elseif GetClickedButton() == z8[i] then
			fuyuan[i] = fuyuan[i] + 6
			gengu[i] = gengu[i] - 1
			wuxing[i] = wuxing[i] - 1
			yishu[i] = yishu[i] - 1
			jingmai[i] = jingmai[i] - 1
			danpo[i] = danpo[i] - 1
			DisplayTextToPlayer(p, 0, 0, "|cFF99FFCC福缘+6|r")
		elseif GetClickedButton() == A8[i] then
			danpo[i] = danpo[i] + 6
			gengu[i] = gengu[i] - 1
			wuxing[i] = wuxing[i] - 1
			fuyuan[i] = fuyuan[i] - 1
			yishu[i] = yishu[i] - 1
			jingmai[i] = jingmai[i] - 1
			DisplayTextToPlayer(p, 0, 0, "|cFF99FFCC胆魄+6|r")
		elseif GetClickedButton() == a8[i] then
			yishu[i] = yishu[i] + 6
			gengu[i] = gengu[i] - 1
			wuxing[i] = wuxing[i] - 1
			fuyuan[i] = fuyuan[i] - 1
			jingmai[i] = jingmai[i] - 1
			danpo[i] = danpo[i] - 1
			DisplayTextToPlayer(p, 0, 0, "|cFF99FFCC医术+6|r")
		elseif GetClickedButton() == x8[i] then
			gengu[i] = gengu[i] - 1
			wuxing[i] = wuxing[i] - 1
			fuyuan[i] = fuyuan[i] - 1
			yishu[i] = yishu[i] - 1
			jingmai[i] = jingmai[i] + 6
			danpo[i] = danpo[i] - 1
			DisplayTextToPlayer(p, 0, 0, "|cFF99FFCC经脉+6|r")
		end
		DialogClear(v8[i])
		DisplayTextToPlayer(p, 0, 0, "|cFF99FFCC其它属性-1|r")
		yongdanshu[i] = yongdanshu[i] + 1
		PlaySoundOnUnitBJ(Eh, 100, udg_hero[i])
		if Ce[i] ~= 1 then
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC" .. (I2S(yongdanshu[i]) or "") .. " / 10")
		else
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC" .. (I2S(yongdanshu[i]) or "") .. " / 15")
		end
	end
	p = nil
end
--黑玉断续膏
function G0()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895888
end
function H0()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if v9[i] == false or udg_junzhu[i] == true then
		v9[i] = true
		PlaySoundOnUnitBJ(Eh, 100, u)
		ModifyHeroStat(2, udg_hero[i], 0, 50)
		DisplayTextToPlayer(Player(-1 + i), 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC真实伤害提升50|r")
		if Ce[i] == 7 and udg_junzhu[i] == false then
			udg_junzhu[i] = true
			if udg_zhangmen[i] == true then
			else
				SaveStr(YDHT, GetHandleId(p), GetHandleId(p), "〓郡主〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
			end
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜" .. (GetPlayerName(p) or "") .. "获得郡主")
			SetPlayerName(p, "〓郡主〓" .. (GetPlayerName(p) or ""))
		end
	else
		unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()), u)
		PlaySoundOnUnitBJ(Gh, 100, u)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00你已经使用过本道具了，每个角色只能使用最多1个")
	end
	u = nil
	p = nil
end
--天王保命丹
function l0()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895887
end
function J0()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if w9[i] == false then
		w9[i] = true
		PlaySoundOnUnitBJ(Eh, 100, u)
		UnitAddAbility(udg_hero[i], 1093678923)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC气血提升20000|r")
	else
		unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()), u)
		PlaySoundOnUnitBJ(Gh, 100, u)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00你已经使用过本道具了，每个角色只能使用最多1个")
	end
	u = nil
	p = nil
end
--生生造化丹
function L0()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895886
end
function M0()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if y9[i] == false or udg_junzhu[i] == true then
		y9[i] = true
		PlaySoundOnUnitBJ(Eh, 100, u)
		ModifyHeroStat(1, udg_hero[i], 0, 40)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC内力提升40|r")
	else
		unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()), u)
		PlaySoundOnUnitBJ(Gh, 100, u)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00你已经使用过本道具了，每个角色只能使用最多1个")
	end
	u = nil
	p = nil
end
--九花玉露丸
function O0()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895889
end
function P0()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if x9[i] == false then
		x9[i] = true
		PlaySoundOnUnitBJ(Eh, 100, u)
		juexuelingwu[i] = juexuelingwu[i] + 1
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC绝学领悟力+1|r")
	else
		unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()), u)
		PlaySoundOnUnitBJ(Gh, 100, u)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00你已经使用过本道具了，每个角色只能使用最多1个")
	end
	u = nil
	p = nil
end
--绝元丹
function R0()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896406
end
function S0()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	PlaySoundOnUnitBJ(Eh, 100, u)
	juexuelingwu[i] = juexuelingwu[i] + 2
	DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC绝学领悟力+2|r")
	u = nil
	p = nil
end
--大还丹
function U0()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896407
end
function V0()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	PlaySoundOnUnitBJ(Eh, 100, u)
	ModifyHeroStat(1, udg_hero[i], 0, 100)
	DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC内力提升100|r")
	u = nil
	p = nil
end
--无极丹
function X0()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896408
end
function Y0()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	PlaySoundOnUnitBJ(Eh, 100, u)
	DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC所有武功CD时间清除|r")
	UnitResetCooldown(udg_hero[i])
	u = nil
	p = nil
end
--续命八丸
function dP()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896410
end
function eP()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if ge[i] then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000已经使用过本道具了，重复使用无效果")
		unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()), u)
	else
		PlaySoundOnUnitBJ(Eh, 100, u)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC复活时间减半|r")
		ge[i] = true
	end
	u = nil
	p = nil
end
--通犀地龙丸
function gP()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896624
end
function hP()
	ie = ie + 60
	DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 10.0, "|cFFFFCC00使用通犀地龙丸成功|r|cFF99FFCC延迟下波进攻怪物60秒|r")
end
--白云熊胆丸
function jP()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896409
end
function kP()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if GetRandomInt(1, 6) == 1 then
		yishu[i] = yishu[i] + 3
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC医术+3|r")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前医术为：|r|cFF99FFCC" .. (I2S(yishu[i]) or ""))
	elseif GetRandomInt(1, 5) == 2 then
		wuxing[i] = wuxing[i] + 3
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC悟性+3|r")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前悟性为：|r|cFF99FFCC" .. (I2S(wuxing[i]) or ""))
	elseif GetRandomInt(1, 4) == 3 then
		gengu[i] = gengu[i] + 3
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC根骨+3|r")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前根骨为：|r|cFF99FFCC" .. (I2S(gengu[i]) or ""))
	elseif GetRandomInt(1, 3) == 2 then
		fuyuan[i] = fuyuan[i] + 3
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC福缘+3|r")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前福缘为：|r|cFF99FFCC" .. (I2S(fuyuan[i]) or ""))
	elseif GetRandomInt(1, 2) == 2 then
		jingmai[i] = jingmai[i] + 3
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC经脉+3|r")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前经脉为：|r|cFF99FFCC" .. (I2S(jingmai[i]) or ""))
	else
		danpo[i] = danpo[i] + 3
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00使用成功|r|cFF99FFCC胆魄+3|r")
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00当前胆魄为：|r|cFF99FFCC" .. (I2S(danpo[i]) or ""))
	end
	u = nil
	p = nil
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
		if L7[i] > wugongshu[i] then break end
		if I7[(i - 1) * 20 + L7[i]] ~= 1095067243 then
			if L7[i] == wugongshu[i] then
				unitadditembyidswapped(1227896625, P4[i])
				DisplayTextToPlayer(p, 0, 0, "|CFFFF0033学习技能已达上限，请先遗忘部分技能")
				if true then break end
			end
		else
			if I7[(i - 1) * 20 + 1] ~= I7[te[i] * 20 + num] and I7[(i - 1) * 20 + 2] ~= I7[te[i] * 20 + num] and I7[(i - 1) * 20 + 3] ~= I7[te[i] * 20 + num] and I7[(i - 1) * 20 + 4] ~= I7[te[i] * 20 + num] and I7[(i - 1) * 20 + 5] ~= I7[te[i] * 20 + num] and I7[(i - 1) * 20 + 6] ~= I7[te[i] * 20 + num] and I7[(i - 1) * 20 + 7] ~= I7[te[i] * 20 + num] and I7[(i - 1) * 20 + 8] ~= I7[te[i] * 20 + num] and I7[(i - 1) * 20 + 9] ~= I7[te[i] * 20 + num] and I7[(i - 1) * 20 + 10] ~= I7[te[i] * 20 + num] and I7[(i - 1) * 20 + 11] ~= I7[te[i] * 20 + num] then
				UnitAddAbility(udg_hero[i], I7[te[i] * 20 + num])
				UnitMakeAbilityPermanent(udg_hero[i], true, I7[te[i] * 20 + num])
				I7[(i - 1) * 20 + L7[i]] = I7[te[i] * 20 + num]
				DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFFF0033传闻" .. (GetPlayerName(p) or "") .. "向" .. (GetPlayerName(Player(-1 + (te[i] + 1))) or "") .. "虚心求教，成功的学会了" .. (GetObjectName(I7[te[i] * 20 + num]) or ""))
				S9 = 1
				for _ in _loop_() do
					if S9 > 20 then break end
					if I7[te[i] * 20 + num] == MM9[S9] then
						udg_shanghaijiacheng[i] = udg_shanghaijiacheng[i] + udg_jueneishjc[S9]
						ModifyHeroStat(1, udg_hero[i], 0, udg_jueneiminjie[S9])
						udg_baojilv[i] = udg_baojilv[i] + udg_jueneibaojilv[S9]
						juexuelingwu[i] = juexuelingwu[i] + udg_jueneijxlw[S9]
						udg_shanghaixishou[i] = udg_shanghaixishou[i] + udg_jueneishxs[S9]
					end
					S9 = S9 + 1
				end
				if true then break end
			else
				DisplayTextToPlayer(p, 0, 0, "|CFFFF0033你已经学会这种武功了")
				unitadditembyidswapped(1227896625, P4[i])
				if true then break end
			end
		end
		L7[i] = L7[i] + 1
	end
end
function qP()
	local u = udg_hero[1 + GetPlayerId(GetTriggerPlayer())]
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
--十香软筋散
function sP()
	return GetSpellAbilityId() == 1093679448
end
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
				if j > 6 then break end
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
	local t = CreateTrigger()
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(t, Condition(VO))
	TriggerAddAction(t, WO)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(t, Condition(YO))
	TriggerAddAction(t, ZO)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(t, Condition(e0))
	TriggerAddAction(t, f0)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(t, Condition(h0))
	TriggerAddAction(t, i0)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(t, Condition(k0))
	TriggerAddAction(t, m0)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(t, Condition(o0))
	TriggerAddAction(t, p0)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(t, Condition(r0))
	TriggerAddAction(t, s0)
	t = CreateTrigger()
	TriggerRegisterDialogEvent(t, v8[1])
	TriggerRegisterDialogEvent(t, v8[2])
	TriggerRegisterDialogEvent(t, v8[3])
	TriggerRegisterDialogEvent(t, v8[4])
	TriggerRegisterDialogEvent(t, v8[5])
	TriggerAddCondition(t, Condition(u0))
	TriggerAddAction(t, v0)
	t = CreateTrigger()
	TriggerRegisterDialogEvent(t, D8[1])
	TriggerRegisterDialogEvent(t, D8[2])
	TriggerRegisterDialogEvent(t, D8[3])
	TriggerRegisterDialogEvent(t, D8[4])
	TriggerRegisterDialogEvent(t, D8[5])
	TriggerAddCondition(t, Condition(x0))
	TriggerAddAction(t, y0)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(t, Condition(A0))
	TriggerAddAction(t, a0)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(t, Condition(b0))
	TriggerAddAction(t, C0)
	t = CreateTrigger()
	TriggerRegisterDialogEvent(t, v8[1])
	TriggerRegisterDialogEvent(t, v8[2])
	TriggerRegisterDialogEvent(t, v8[3])
	TriggerRegisterDialogEvent(t, v8[4])
	TriggerRegisterDialogEvent(t, v8[5])
	TriggerAddCondition(t, Condition(D0))
	TriggerAddAction(t, E0)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(t, Condition(G0))
	TriggerAddAction(t, H0)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(t, Condition(l0))
	TriggerAddAction(t, J0)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(t, Condition(L0))
	TriggerAddAction(t, M0)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(t, Condition(O0))
	TriggerAddAction(t, P0)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(t, Condition(R0))
	TriggerAddAction(t, S0)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(t, Condition(U0))
	TriggerAddAction(t, V0)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(t, Condition(X0))
	TriggerAddAction(t, Y0)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(t, Condition(dP))
	TriggerAddAction(t, eP)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(t, Condition(gP))
	TriggerAddAction(t, hP)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_USE_ITEM)
	TriggerAddCondition(t, Condition(jP))
	TriggerAddAction(t, kP)
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