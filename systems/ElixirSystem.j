//-------各种丹药开始-------//
//医术丹
function VO takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895375))
endfunction
function WO takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	if (yongdanshu[i]<10) or (yongdanshu[i]<15 and Ce[i]==1 ) then
		set yongdanshu[i]=yongdanshu[i]+1
		set yishu[i]=yishu[i]+1
		call PlaySoundOnUnitBJ(Eh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC医术+1|r")
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00当前医术为：|r|cFF99FFCC"+I2S(yishu[i]))
		if Ce[i]!=1 then
		    call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC"+(I2S(yongdanshu[i])+" / 10")))
		else
		    call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC"+(I2S(yongdanshu[i])+" / 15")))
		endif
	else
		call unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()),u)
		call PlaySoundOnUnitBJ(Gh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00你在本次游戏里已经达到了使用属性丹上限，无法再使用本类道具")
	endif
	set u = null
	set p = null
endfunction
//悟性丹
function YO takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895370))
endfunction
function ZO takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	if (yongdanshu[i]<10) or (yongdanshu[i]<15 and Ce[i]==1 ) then
		set yongdanshu[i]=yongdanshu[i]+1
		set wuxing[i]=wuxing[i]+1
		call PlaySoundOnUnitBJ(Eh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC悟性+1|r")
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00当前悟性为：|r|cFF99FFCC"+I2S(wuxing[i]))
		if Ce[i]!=1 then
		    call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC"+(I2S(yongdanshu[i])+" / 10")))
		else
		    call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC"+(I2S(yongdanshu[i])+" / 15")))
		endif
	else
		call unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()),u)
		call PlaySoundOnUnitBJ(Gh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00你在本次游戏里已经达到了使用属性丹上限，无法再使用本类道具")
	endif
	set u = null
	set p = null
endfunction
//根骨丹
function e0 takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895363))
endfunction
function f0 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	if (yongdanshu[i]<10) or (yongdanshu[i]<15 and Ce[i]==1 ) then
		set yongdanshu[i]=yongdanshu[i]+1
		set gengu[i]=gengu[i]+1
		call PlaySoundOnUnitBJ(Eh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC根骨+1|r")
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00当前根骨为：|r|cFF99FFCC"+I2S(gengu[i]))
		if Ce[i]!=1 then
		    call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC"+(I2S(yongdanshu[i])+" / 10")))
		else
		    call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC"+(I2S(yongdanshu[i])+" / 15")))
		endif
	else
		call unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()),u)
		call PlaySoundOnUnitBJ(Gh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00你在本次游戏里已经达到了使用属性丹上限，无法再使用本类道具")
	endif
	set u = null
	set p = null
endfunction
//福缘丹
function h0 takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895368))
endfunction
function i0 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	if (yongdanshu[i]<10) or (yongdanshu[i]<15 and Ce[i]==1 ) then
		set yongdanshu[i]=yongdanshu[i]+1
		set fuyuan[i]=fuyuan[i]+1
		call PlaySoundOnUnitBJ(Eh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC福缘+1|r")
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00当前福缘为：|r|cFF99FFCC"+I2S(fuyuan[i]))
		if Ce[i]!=1 then
		    call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC"+(I2S(yongdanshu[i])+" / 10")))
		else
		    call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC"+(I2S(yongdanshu[i])+" / 15")))
		endif
	else
		call unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()),u)
		call PlaySoundOnUnitBJ(Gh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00你在本次游戏里已经达到了使用属性丹上限，无法再使用本类道具")
	endif
	set u = null
	set p = null
endfunction
//经脉丹
function k0 takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895369))
endfunction
function m0 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	if (yongdanshu[i]<10) or (yongdanshu[i]<15 and Ce[i]==1 ) then
		set yongdanshu[i]=yongdanshu[i]+1
		set jingmai[i]=jingmai[i]+1
		call PlaySoundOnUnitBJ(Eh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC经脉+1|r")
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00当前经脉为：|r|cFF99FFCC"+I2S(jingmai[i]))
		if Ce[i]!=1 then
		    call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC"+(I2S(yongdanshu[i])+" / 10")))
		else
		    call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC"+(I2S(yongdanshu[i])+" / 15")))
		endif
	else
		call unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()),u)
		call PlaySoundOnUnitBJ(Gh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00你在本次游戏里已经达到了使用属性丹上限，无法再使用本类道具")
	endif
	set u = null
	set p = null
endfunction
//胆魄丹
function o0 takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895365))
endfunction
function p0 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	if (yongdanshu[i]<10) or (yongdanshu[i]<15 and Ce[i]==1 ) then
		set yongdanshu[i]=yongdanshu[i]+1
		set danpo[i]=danpo[i]+1
		call PlaySoundOnUnitBJ(Eh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC胆魄+1|r")
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00当前胆魄为：|r|cFF99FFCC"+I2S(danpo[i]))
		if Ce[i]!=1 then
		    call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC"+(I2S(yongdanshu[i])+" / 10")))
		else
		    call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC"+(I2S(yongdanshu[i])+" / 15")))
		endif
	else
		call unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()),u)
		call PlaySoundOnUnitBJ(Gh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00你在本次游戏里已经达到了使用属性丹上限，无法再使用本类道具")
	endif
	set u = null
	set p = null
endfunction
//乾坤丹
function r0 takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895371))
endfunction
function s0 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	if((yongdanshu[i]<$A)) or (yongdanshu[i]<15 and Ce[i]==1 ) then
		call DialogSetMessage(v8[i],"请选择要减1的属性")
		call DialogAddButtonBJ(v8[i],"根骨")
		set w8[i]=bj_lastCreatedButton
		call DialogAddButtonBJ(v8[i],"悟性")
		set y8[i]=bj_lastCreatedButton
		call DialogAddButtonBJ(v8[i],"福缘")
		set z8[i]=bj_lastCreatedButton
		call DialogAddButtonBJ(v8[i],"胆魄")
		set A8[i]=bj_lastCreatedButton
		call DialogAddButtonBJ(v8[i],"医术")
		set a8[i]=bj_lastCreatedButton
		call DialogAddButtonBJ(v8[i],"经脉")
		set x8[i]=bj_lastCreatedButton
		call DialogAddButtonBJ(v8[i],"取消")
		set B8[i]=bj_lastCreatedButton
		call DialogDisplay(p,v8[i],true)
		set b8[i]=true
	else
		call unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()),u)
		call PlaySoundOnUnitBJ(Gh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00你在本次游戏里已经达到了使用属性丹上限，无法再使用本类道具")
	endif
	set u = null
	set p = null
endfunction
function u0 takes nothing returns boolean
	return((b8[(1+GetPlayerId(GetTriggerPlayer()))]))
endfunction
function v0 takes nothing returns nothing
	local player p = GetTriggerPlayer()
	local integer i = 1 + GetPlayerId(p)
	set b8[i]=false
	if((GetClickedButton()==B8[i]))then
		call unitadditembyidswapped(1227895371,P4[i])
		call DialogClear(v8[i])
	else
		if((GetClickedButton()==w8[i]))then
			set gengu[i]=(gengu[i]-1)
			call DisplayTextToPlayer(p,0,0,"|cFF99FFCC根骨-1|r")
		elseif((GetClickedButton()==y8[i]))then
			set wuxing[i]=(wuxing[i]-1)
			call DisplayTextToPlayer(p,0,0,"|cFF99FFCC悟性-1|r")
		elseif((GetClickedButton()==z8[i]))then
			set fuyuan[i]=(fuyuan[i]-1)
			call DisplayTextToPlayer(p,0,0,"|cFF99FFCC福缘-1|r")
		elseif((GetClickedButton()==A8[i]))then
			set danpo[i]=(danpo[i]-1)
			call DisplayTextToPlayer(p,0,0,"|cFF99FFCC胆魄-1|r")
		elseif((GetClickedButton()==a8[i]))then
			set yishu[i]=(yishu[i]-1)
			call DisplayTextToPlayer(p,0,0,"|cFF99FFCC医术-1|r")
		elseif((GetClickedButton()==x8[i]))then
			set jingmai[i]=(jingmai[i]-1)
			call DisplayTextToPlayer(p,0,0,"|cFF99FFCC经脉-1|r")
		endif
		call DialogClear(v8[i])
		call DialogSetMessage(D8[i],"请选择要加3的属性")
		call DialogAddButtonBJ(D8[i],"根骨")
		set w8[i]=bj_lastCreatedButton
		call DialogAddButtonBJ(D8[i],"悟性")
		set y8[i]=bj_lastCreatedButton
		call DialogAddButtonBJ(D8[i],"福缘")
		set z8[i]=bj_lastCreatedButton
		call DialogAddButtonBJ(D8[i],"胆魄")
		set A8[i]=bj_lastCreatedButton
		call DialogAddButtonBJ(D8[i],"医术")
		set a8[i]=bj_lastCreatedButton
		call DialogAddButtonBJ(D8[i],"经脉")
		set x8[i]=bj_lastCreatedButton
		call DialogDisplay(p,D8[i],true)
		set C8[i]=true
	endif
	set p = null
endfunction
function x0 takes nothing returns boolean
	return((C8[(1+GetPlayerId(GetTriggerPlayer()))]))
endfunction
function y0 takes nothing returns nothing
	local player p = GetTriggerPlayer()
	local integer i = 1 + GetPlayerId(p)
	set C8[i]=false
	if((GetClickedButton()==w8[i]))then
		set gengu[i]=(gengu[i]+3)
		call DisplayTextToPlayer(p,0,0,"|cFF99FFCC根骨+3|r")
	elseif((GetClickedButton()==y8[i]))then
		set wuxing[i]=(wuxing[i]+3)
		call DisplayTextToPlayer(p,0,0,"|cFF99FFCC悟性+3|r")
	elseif((GetClickedButton()==z8[i]))then
		set fuyuan[i]=(fuyuan[i]+3)
		call DisplayTextToPlayer(p,0,0,"|cFF99FFCC福缘+3|r")
	elseif((GetClickedButton()==A8[i]))then
		set danpo[i]=(danpo[i]+3)
		call DisplayTextToPlayer(p,0,0,"|cFF99FFCC胆魄+3|r")
	elseif((GetClickedButton()==a8[i]))then
		set yishu[i]=(yishu[i]+3)
		call DisplayTextToPlayer(p,0,0,"|cFF99FFCC医术+3|r")
	elseif((GetClickedButton()==x8[i]))then
		set jingmai[i]=(jingmai[i]+3)
		call DisplayTextToPlayer(p,0,0,"|cFF99FFCC经脉+3|r")
	endif
	call DialogClear(D8[i])
	set yongdanshu[i]=(yongdanshu[i]+1)
	call PlaySoundOnUnitBJ(Eh,100,udg_hero[i])
	if Ce[i]!=1 then
	    call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC"+(I2S(yongdanshu[i])+" / 10")))
	else
	    call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC"+(I2S(yongdanshu[i])+" / 15")))
	endif
	set p = null
endfunction
function A0 takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895372))
endfunction
function a0 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	if (yongdanshu[i]<$A) or (yongdanshu[i]<15 and Ce[i]==1 ) then
		if((GetRandomInt(1,5)==3))then
			if((GetRandomInt(1,6)==1))then
				set yishu[i]=(yishu[i]+1)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC医术+1|r")
				call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前医术为：|r|cFF99FFCC"+I2S(yishu[i])))
			elseif((GetRandomInt(1,5)==2))then
				set wuxing[i]=(wuxing[i]+1)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC悟性+1|r")
				call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前悟性为：|r|cFF99FFCC"+I2S(wuxing[i])))
			elseif((GetRandomInt(1,4)==3))then
				set gengu[i]=(gengu[i]+1)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC根骨+1|r")
				call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前根骨为：|r|cFF99FFCC"+I2S(gengu[i])))
			elseif((GetRandomInt(1,3)==2))then
				set fuyuan[i]=(fuyuan[i]+1)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC福缘+1|r")
				call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前福缘为：|r|cFF99FFCC"+I2S(fuyuan[i])))
			elseif((GetRandomInt(1,2)==2))then
				set jingmai[i]=(jingmai[i]+1)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC经脉+1|r")
				call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前经脉为：|r|cFF99FFCC"+I2S(jingmai[i])))
			else
				set danpo[i]=(danpo[i]+1)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC胆魄+1|r")
				call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前胆魄为：|r|cFF99FFCC"+I2S(danpo[i])))
			endif
		elseif((GetRandomInt(1,4)==3))then
			if((GetRandomInt(1,6)==1))then
				set yishu[i]=(yishu[i]+3)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC医术+3|r")
				call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前医术为：|r|cFF99FFCC"+I2S(yishu[i])))
			elseif((GetRandomInt(1,5)==2))then
				set wuxing[i]=(wuxing[i]+3)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC悟性+3|r")
				call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前悟性为：|r|cFF99FFCC"+I2S(wuxing[i])))
			elseif((GetRandomInt(1,4)==3))then
				set gengu[i]=(gengu[i]+3)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC根骨+3|r")
				call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前根骨为：|r|cFF99FFCC"+I2S(gengu[i])))
			elseif((GetRandomInt(1,3)==2))then
				set fuyuan[i]=(fuyuan[i]+3)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC福缘+3|r")
				call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前福缘为：|r|cFF99FFCC"+I2S(fuyuan[i])))
			elseif((GetRandomInt(1,2)==2))then
				set jingmai[i]=(jingmai[i]+3)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC经脉+3|r")
				call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前经脉为：|r|cFF99FFCC"+I2S(jingmai[i])))
			else
				set danpo[i]=(danpo[i]+3)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC胆魄+3|r")
				call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前胆魄为：|r|cFF99FFCC"+I2S(danpo[i])))
			endif
		else
			if((GetRandomInt(1,6)==1))then
				set yishu[i]=(yishu[i]+2)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC医术+2|r")
				call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前医术为：|r|cFF99FFCC"+I2S(yishu[i])))
			elseif((GetRandomInt(1,5)==2))then
				set wuxing[i]=(wuxing[i]+2)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC悟性+2|r")
				call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前悟性为：|r|cFF99FFCC"+I2S(wuxing[i])))
			elseif((GetRandomInt(1,4)==3))then
				set gengu[i]=(gengu[i]+2)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC根骨+2|r")
				call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前根骨为：|r|cFF99FFCC"+I2S(gengu[i])))
			elseif((GetRandomInt(1,3)==2))then
				set fuyuan[i]=(fuyuan[i]+2)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC福缘+2|r")
				call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前福缘为：|r|cFF99FFCC"+I2S(fuyuan[i])))
			elseif((GetRandomInt(1,2)==2))then
				set jingmai[i]=(jingmai[i]+2)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC经脉+2|r")
				call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前经脉为：|r|cFF99FFCC"+I2S(jingmai[i])))
			else
				set danpo[i]=(danpo[i]+2)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC胆魄+2|r")
				call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前胆魄为：|r|cFF99FFCC"+I2S(danpo[i])))
			endif
		endif
		call PlaySoundOnUnitBJ(Eh,100,u)
		set yongdanshu[i]=(yongdanshu[i]+1)
		if Ce[i]!=1 then
		    call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC"+(I2S(yongdanshu[i])+" / 10")))
		else
		    call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC"+(I2S(yongdanshu[i])+" / 15")))
		endif
	else
		call unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()),u)
		call PlaySoundOnUnitBJ(Gh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00你在本次游戏里已经达到了使用属性丹上限，无法再使用本类道具")
	endif
	set u = null
	set p = null
endfunction
//脱胎换骨丹
function b0 takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895374))
endfunction
function C0 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	if((yongdanshu[i]<$A)) or (yongdanshu[i]<15 and Ce[i]==1 ) then
		call DialogSetMessage(v8[i],"请选择要+6的属性")
		call DialogAddButtonBJ(v8[i],"根骨")
		set w8[i]=bj_lastCreatedButton
		call DialogAddButtonBJ(v8[i],"悟性")
		set y8[i]=bj_lastCreatedButton
		call DialogAddButtonBJ(v8[i],"福缘")
		set z8[i]=bj_lastCreatedButton
		call DialogAddButtonBJ(v8[i],"胆魄")
		set A8[i]=bj_lastCreatedButton
		call DialogAddButtonBJ(v8[i],"医术")
		set a8[i]=bj_lastCreatedButton
		call DialogAddButtonBJ(v8[i],"经脉")
		set x8[i]=bj_lastCreatedButton
		call DialogAddButtonBJ(v8[i],"取消")
		set B8[i]=bj_lastCreatedButton
		call DialogDisplay(p,v8[i],true)
		set c8[i]=true
	else
		call unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()),u)
		call PlaySoundOnUnitBJ(Gh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00你在本次游戏里已经达到了使用属性丹上限，无法再使用本类道具")
	endif
	set u = null
	set p = null
endfunction
function D0 takes nothing returns boolean
	return((c8[(1+GetPlayerId(GetTriggerPlayer()))]))
endfunction
function E0 takes nothing returns nothing
	local player p = GetTriggerPlayer()
	local integer i = 1 + GetPlayerId(p)
	set c8[i]=false
	if((GetClickedButton()==B8[i]))then
		call unitadditembyidswapped(1227895374,udg_hero[i])
		call DialogClear(v8[i])
	else
		if((GetClickedButton()==w8[i]))then
			set gengu[i]=(gengu[i]+6)
			set wuxing[i]=(wuxing[i]-1)
			set fuyuan[i]=(fuyuan[i]-1)
			set yishu[i]=(yishu[i]-1)
			set jingmai[i]=(jingmai[i]-1)
			set danpo[i]=(danpo[i]-1)
			call DisplayTextToPlayer(p,0,0,"|cFF99FFCC根骨+6|r")
		elseif((GetClickedButton()==y8[i]))then
			set wuxing[i]=(wuxing[i]+6)
			set gengu[i]=(gengu[i]-1)
			set fuyuan[i]=(fuyuan[i]-1)
			set yishu[i]=(yishu[i]-1)
			set jingmai[i]=(jingmai[i]-1)
			set danpo[i]=(danpo[i]-1)
			call DisplayTextToPlayer(p,0,0,"|cFF99FFCC悟性+6|r")
		elseif((GetClickedButton()==z8[i]))then
			set fuyuan[i]=(fuyuan[i]+6)
			set gengu[i]=(gengu[i]-1)
			set wuxing[i]=(wuxing[i]-1)
			set yishu[i]=(yishu[i]-1)
			set jingmai[i]=(jingmai[i]-1)
			set danpo[i]=(danpo[i]-1)
			call DisplayTextToPlayer(p,0,0,"|cFF99FFCC福缘+6|r")
		elseif((GetClickedButton()==A8[i]))then
			set danpo[i]=(danpo[i]+6)
			set gengu[i]=(gengu[i]-1)
			set wuxing[i]=(wuxing[i]-1)
			set fuyuan[i]=(fuyuan[i]-1)
			set yishu[i]=(yishu[i]-1)
			set jingmai[i]=(jingmai[i]-1)
			call DisplayTextToPlayer(p,0,0,"|cFF99FFCC胆魄+6|r")
		elseif((GetClickedButton()==a8[i]))then
			set yishu[i]=(yishu[i]+6)
			set gengu[i]=(gengu[i]-1)
			set wuxing[i]=(wuxing[i]-1)
			set fuyuan[i]=(fuyuan[i]-1)
			set jingmai[i]=(jingmai[i]-1)
			set danpo[i]=(danpo[i]-1)
			call DisplayTextToPlayer(p,0,0,"|cFF99FFCC医术+6|r")
		elseif((GetClickedButton()==x8[i]))then
			set gengu[i]=(gengu[i]-1)
			set wuxing[i]=(wuxing[i]-1)
			set fuyuan[i]=(fuyuan[i]-1)
			set yishu[i]=(yishu[i]-1)
			set jingmai[i]=(jingmai[i]+6)
			set danpo[i]=(danpo[i]-1)
			call DisplayTextToPlayer(p,0,0,"|cFF99FFCC经脉+6|r")
		endif
		call DialogClear(v8[i])
		call DisplayTextToPlayer(p,0,0,"|cFF99FFCC其它属性-1|r")
		set yongdanshu[i]=(yongdanshu[i]+1)
		call PlaySoundOnUnitBJ(Eh,100,udg_hero[i])
		if Ce[i]!=1 then
		    call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC"+(I2S(yongdanshu[i])+" / 10")))
		else
		    call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前已经服用属性丹数量：|r|cFF99FFCC"+(I2S(yongdanshu[i])+" / 15")))
		endif
	endif
	set p = null
endfunction
//黑玉断续膏
function G0 takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())=='I04P'))
endfunction
function H0 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	if((v9[i]==false or udg_junzhu[i]==true))then
		set v9[i]=true
		call PlaySoundOnUnitBJ(Eh,100,u)
		call ModifyHeroStat(2,udg_hero[i],0,50)
		call DisplayTextToPlayer(Player(-1+(i)),0,0,"|cFFFFCC00使用成功|r|cFF99FFCC真实伤害提升50|r")
		if Ce[i]==7 and udg_junzhu[i]==false then
			set udg_junzhu[i]=true
			if udg_zhangmen[i]==true then
			else
				call SaveStr(YDHT, GetHandleId(p), GetHandleId(p),"〓郡主〓"+LoadStr(YDHT, GetHandleId(p), GetHandleId(p)))
			endif
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜"+GetPlayerName(p)+"获得郡主")
			call SetPlayerName(p, "〓郡主〓"+GetPlayerName(p))
		endif
	else
		call unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()),u)
		call PlaySoundOnUnitBJ(Gh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00你已经使用过本道具了，每个角色只能使用最多1个")
	endif
	set u = null
	set p = null
endfunction
//天王保命丹
function l0 takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())=='I04O'))
endfunction
function J0 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	if((w9[i]==false))then
		set w9[i]=true
		call PlaySoundOnUnitBJ(Eh,100,u)
		call UnitAddAbility(udg_hero[i],1093678923)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC气血提升20000|r")
	else
		call unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()),u)
		call PlaySoundOnUnitBJ(Gh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00你已经使用过本道具了，每个角色只能使用最多1个")
	endif
	set u = null
	set p = null
endfunction
//生生造化丹
function L0 takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())=='I04N'))
endfunction
function M0 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	if((y9[i]==false or udg_junzhu[i]==true))then
		set y9[i]=true
		call PlaySoundOnUnitBJ(Eh,100,u)
		call ModifyHeroStat(1,udg_hero[i],0,40)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC内力提升40|r")
	else
		call unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()),u)
		call PlaySoundOnUnitBJ(Gh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00你已经使用过本道具了，每个角色只能使用最多1个")
	endif
	set u = null
	set p = null
endfunction
//九花玉露丸
function O0 takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())=='I04Q'))
endfunction
function P0 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	if((x9[i]==false))then
		set x9[i]=true
		call PlaySoundOnUnitBJ(Eh,100,u)
		set juexuelingwu[i]=(juexuelingwu[i]+1)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC绝学领悟力+1|r")
	else
		call unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()),u)
		call PlaySoundOnUnitBJ(Gh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00你已经使用过本道具了，每个角色只能使用最多1个")
	endif
	set u = null
	set p = null
endfunction
//绝元丹
function R0 takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896406))
endfunction
function S0 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	call PlaySoundOnUnitBJ(Eh,100,u)
	set juexuelingwu[i]=(juexuelingwu[i]+2)
	call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC绝学领悟力+2|r")
	set u = null
	set p = null
endfunction
//大还丹
function U0 takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896407))
endfunction
function V0 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	call PlaySoundOnUnitBJ(Eh,100,u)
	call ModifyHeroStat(1,udg_hero[i],0,100)
	call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC内力提升100|r")
	set u = null
	set p = null
endfunction
//无极丹
function X0 takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896408))
endfunction
function Y0 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	call PlaySoundOnUnitBJ(Eh,100,u)
	call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC所有武功CD时间清除|r")
	call UnitResetCooldown(udg_hero[i])
	set u = null
	set p = null
endfunction
//续命八丸
function dP takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())=='I06Z'))
endfunction
function eP takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	if((ge[i]))then
		call DisplayTextToPlayer(p,0,0,"|cFFFF0000已经使用过本道具了，重复使用无效果")
		call unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()),u)
	else
		call PlaySoundOnUnitBJ(Eh,100,u)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC复活时间减半|r")
		set ge[i]=true
	endif
	set u = null
	set p = null
endfunction
//通犀地龙丸
function gP takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896624))
endfunction
function hP takes nothing returns nothing
	set ie=(ie+60)
	call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,10.,"|cFFFFCC00使用通犀地龙丸成功|r|cFF99FFCC延迟下波进攻怪物60秒|r")
endfunction
//白云熊胆丸
function jP takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896409))
endfunction
function kP takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	if((GetRandomInt(1,6)==1))then
		set yishu[i]=(yishu[i]+3)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC医术+3|r")
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前医术为：|r|cFF99FFCC"+I2S(yishu[i])))
	elseif((GetRandomInt(1,5)==2))then
		set wuxing[i]=(wuxing[i]+3)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC悟性+3|r")
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前悟性为：|r|cFF99FFCC"+I2S(wuxing[i])))
	elseif((GetRandomInt(1,4)==3))then
		set gengu[i]=(gengu[i]+3)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC根骨+3|r")
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前根骨为：|r|cFF99FFCC"+I2S(gengu[i])))
	elseif((GetRandomInt(1,3)==2))then
		set fuyuan[i]=(fuyuan[i]+3)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC福缘+3|r")
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前福缘为：|r|cFF99FFCC"+I2S(fuyuan[i])))
	elseif((GetRandomInt(1,2)==2))then
		set jingmai[i]=(jingmai[i]+3)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC经脉+3|r")
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前经脉为：|r|cFF99FFCC"+I2S(jingmai[i])))
	else
		set danpo[i]=(danpo[i]+3)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用成功|r|cFF99FFCC胆魄+3|r")
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00当前胆魄为：|r|cFF99FFCC"+I2S(danpo[i])))
	endif
	set u = null
	set p = null
endfunction
//传功丹
function nP takes nothing returns boolean
	return((GetSpellAbilityId()==1093679447))
endfunction
function oP takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	local unit ut = GetSpellTargetUnit()
	local integer j = GetPlayerId(GetOwningPlayer(ut))
	call DialogSetMessage(je[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))],"请选择想被传授的武功")
	set te[i]=j
	if (I7[j*20+1]!='AEfk') then
		call DialogAddButtonBJ(je[i],GetObjectName(I7[j*20+1]))
		set ke[i]=bj_lastCreatedButton
	endif
	if (I7[j*20+2]!='AEfk') then
		call DialogAddButtonBJ(je[i],GetObjectName(I7[j*20+2]))
		set ne[i]=bj_lastCreatedButton
	endif
	if (I7[j*20+3]!='AEfk') then
		call DialogAddButtonBJ(je[i],GetObjectName(I7[j*20+3]))
		set oe[i]=bj_lastCreatedButton
	endif
	if (I7[j*20+4]!='AEfk') then
		call DialogAddButtonBJ(je[i],GetObjectName(I7[j*20+4]))
		set pe[i]=bj_lastCreatedButton
	endif
	if (I7[j*20+5]!='AEfk') then
		call DialogAddButtonBJ(je[i],GetObjectName(I7[j*20+5]))
		set qe[i]=bj_lastCreatedButton
	endif
	if (I7[j*20+6]!='AEfk') then
		call DialogAddButtonBJ(je[i],GetObjectName(I7[j*20+6]))
		set me[i]=bj_lastCreatedButton
	endif
	if (I7[j*20+7]!='AEfk') then
		call DialogAddButtonBJ(je[i],GetObjectName(I7[j*20+7]))
		set re[i]=bj_lastCreatedButton
	endif
	if (I7[j*20+8]!='AEfk') then
		call DialogAddButtonBJ(je[i],GetObjectName(I7[j*20+8]))
		set rre[i]=bj_lastCreatedButton
	endif
	if (I7[j*20+9]!='AEfk') then
		call DialogAddButtonBJ(je[i],GetObjectName(I7[j*20+9]))
		set re9[i]=bj_lastCreatedButton
	endif
	if (I7[j*20+10]!='AEfk') then
		call DialogAddButtonBJ(je[i],GetObjectName(I7[j*20+10]))
		set re10[i]=bj_lastCreatedButton
	endif
	if (I7[j*20+11]!='AEfk') then
		call DialogAddButtonBJ(je[i],GetObjectName(I7[j*20+11]))
		set re11[i]=bj_lastCreatedButton
	endif
	call DialogAddButtonBJ(je[i],"取消")
	set se[i]=bj_lastCreatedButton
	call DialogDisplay(p,je[i],true)
	set u = null
	set p = null
	set ut = null
endfunction
function QiuJiao takes player p, integer num returns nothing
	local integer i = 1 + GetPlayerId(p)
	set L7[i]=1
	loop
	exitwhen L7[i]>wugongshu[i]
	if (I7[(i-1)*20+L7[i]]!='AEfk') then
		if (L7[i]==wugongshu[i])then
			call unitadditembyidswapped(1227896625,P4[i])
			call DisplayTextToPlayer(p,0,0,"|CFFFF0033学习技能已达上限，请先遗忘部分技能")
			exitwhen true
		endif
	else
		if I7[(i-1)*20+1]!=I7[te[i]*20+num] and I7[(i-1)*20+2]!=I7[te[i]*20+num] and I7[(i-1)*20+3]!=I7[te[i]*20+num] and I7[(i-1)*20+4]!=I7[te[i]*20+num] and I7[(i-1)*20+5]!=I7[te[i]*20+num] and I7[(i-1)*20+6]!=I7[te[i]*20+num] and I7[(i-1)*20+7]!=I7[te[i]*20+num] and I7[(i-1)*20+8]!=I7[te[i]*20+num] and I7[(i-1)*20+9]!=I7[te[i]*20+num] and I7[(i-1)*20+10]!=I7[te[i]*20+num] and I7[(i-1)*20+11]!=I7[te[i]*20+num] then
			call UnitAddAbility(udg_hero[i],I7[te[i]*20+num])
			call UnitMakeAbilityPermanent(udg_hero[i], true, I7[te[i]*20+num])
			set I7[(((i-1)*20)+L7[i])]=I7[te[i]*20+num]
			call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033传闻"+(GetPlayerName(p)+(("向"+(GetPlayerName(Player(-1+((te[i]+1))))+"虚心求教，成功的学会了"))+GetObjectName(I7[te[i]*20+num])))))
			set S9=1
			loop
				exitwhen S9>20
				if((I7[te[i]*20+num]==MM9[S9]))then
					set udg_shanghaijiacheng[i]=(udg_shanghaijiacheng[i]+udg_jueneishjc[S9])
					call ModifyHeroStat(1,udg_hero[i],0,udg_jueneiminjie[S9])
					set udg_baojilv[i]=(udg_baojilv[i]+udg_jueneibaojilv[S9])
					set juexuelingwu[i]=(juexuelingwu[i]+udg_jueneijxlw[S9])
					set udg_shanghaixishou[i]=(udg_shanghaixishou[i]+udg_jueneishxs[S9])
				endif
				set S9=S9+1
			endloop
			exitwhen true
		else
			call DisplayTextToPlayer(p,0,0,"|CFFFF0033你已经学会这种武功了")
			call unitadditembyidswapped(1227896625,P4[i])
			exitwhen true
		endif
	endif
	set L7[i]=L7[i]+1
	endloop
endfunction
function qP takes nothing returns nothing
	local unit u = udg_hero[(1+GetPlayerId(GetTriggerPlayer()))]
	local integer i = 1+GetPlayerId(GetTriggerPlayer())
	local player p = GetTriggerPlayer()
	if((GetClickedButton()==ke[i]))then
		call QiuJiao(p, 1)
	elseif((GetClickedButton()==ne[i]))then
		call QiuJiao(p, 2)
	elseif((GetClickedButton()==oe[i]))then
		call QiuJiao(p, 3)
	elseif((GetClickedButton()==pe[i]))then
		call QiuJiao(p, 4)
	elseif((GetClickedButton()==qe[i]))then
		call QiuJiao(p, 5)
	elseif((GetClickedButton()==me[i]))then
		call QiuJiao(p, 6)
	elseif((GetClickedButton()==re[i]))then
		call QiuJiao(p, 7)
	elseif((GetClickedButton()==rre[i]))then
		call QiuJiao(p, 8)
	elseif((GetClickedButton()==re9[i]))then
		call QiuJiao(p, 9)
	elseif((GetClickedButton()==re10[i]))then
		call QiuJiao(p, 10)
	elseif((GetClickedButton()==re11[i]))then
		call QiuJiao(p, 11)
	elseif((GetClickedButton()==se[i]))then
		call unitadditembyidswapped(1227896625,P4[i])
	endif
	call DialogClear(je[i])
endfunction
//十香软筋散
function sP takes nothing returns boolean
	return((GetSpellAbilityId()=='A09X'))
endfunction
function tP takes nothing returns boolean
	local integer id=GetHandleId(GetTriggeringTrigger())
	return(((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB))))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
function uP takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	call SaveUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$270B8163,GetEnumUnit())
	call SaveLocationHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$247CC5E5,GetUnitLoc(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$270B8163)))
	call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB)),LoadLocationHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$247CC5E5),bj_UNIT_FACING)
	call UnitAddAbility(bj_lastCreatedUnit,1093679450)
	call IssueTargetOrderById(bj_lastCreatedUnit,$D006B,LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$270B8163))
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
	call ShowUnitHide(bj_lastCreatedUnit)
	call RemoveLocation(LoadLocationHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$247CC5E5))
endfunction
function vP takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetSpellTargetLoc())
	call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,GetTriggerUnit())
	call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(800.,LoadLocationHandle(YDHT,id*cx,$5E83114F),Condition(function tP)),function uP)
	call FlushChildHashtable(YDHT,id*cx)
endfunction
//三尸脑神丹
function xP takes nothing returns boolean
	return((GetSpellAbilityId()=='A0A0'))
endfunction
function yP takes nothing returns boolean
	local integer id=GetHandleId(GetTriggeringTrigger())
	return(((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB))))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
function zP takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	call SaveUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$270B8163,GetEnumUnit())
	call SaveLocationHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$247CC5E5,GetUnitLoc(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$270B8163)))
	call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB)),LoadLocationHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$247CC5E5),bj_UNIT_FACING)
	call UnitAddAbility(bj_lastCreatedUnit,1093681457)
	call IssueTargetOrderById(bj_lastCreatedUnit,$D00DD,LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$270B8163))
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',2.)
	call ShowUnitHide(bj_lastCreatedUnit)
	call RemoveLocation(LoadLocationHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$247CC5E5))
endfunction
function AP takes nothing returns nothing
	local location loc = GetSpellTargetLoc()
	call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(600.,loc,Condition(function yP)),function zP)
	call RemoveLocation(loc)
	set loc = null
endfunction
//七星海棠
function BP takes nothing returns boolean
	return (GetSpellAbilityId()=='A0A3')
endfunction
function bP takes nothing returns nothing
	local unit u = GetSpellTargetUnit()
	call YDWEPolledWaitNull(.3)
	call SetWidgetLife(u,.7*GetUnitState(u,UNIT_STATE_LIFE))
	set u = null
endfunction
//-------各种丹药结束-------//
//----------炼丹系统开始----------//
function isLianDanItem takes item it returns boolean
	if (GetItemTypeId(it)=='I07L' or GetItemTypeId(it)=='I07M' or GetItemTypeId(it)=='I07N' or GetItemTypeId(it)=='I07O' or GetItemTypeId(it)=='I07P' or GetItemTypeId(it)=='I07Q' or GetItemTypeId(it)=='I07R' or GetItemTypeId(it)=='I07J' or GetItemTypeId(it)=='I07I' or GetItemTypeId(it)=='I07K' or GetItemTypeId(it)=='I05K') then
		return true
	endif
	return false
endfunction
function CorresDan takes integer dan returns integer
	if (dan == 'I07L') then
		return 'I06Y'
	elseif (dan == 'I07N') then
		return 'I071'
	elseif (dan == 'I07I') then
		return 'I06W'
	elseif (dan == 'I07P') then
		return 'I074'
	elseif (dan == 'I07Q') then
		return 'I06V'
	elseif (dan == 'I07R') then
		return 'I075'
	elseif (dan == 'I07K') then
		return 'I073'
	elseif (dan == 'I05K') then
		return 'I072'
	elseif (dan == 'I07J') then
		return 'I070'
	elseif (dan == 'I07M') then
		return 'I06X'
	elseif (dan == 'I07O') then
		return 'I06Z'
	endif
	return 0
endfunction
function EP takes nothing returns boolean
	if (GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and isLianDanItem(GetManipulatedItem()) then
    	if Ce[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]!=1 and UnitHaveItem(udg_hero[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))],'I0AM')==false then
    		call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cFFFFCC00你不是炼丹师，并且未携带神木王鼎，不可以炼制丹药")
    		call AdjustPlayerStateBJ(2000,GetOwningPlayer(GetTriggerUnit()),PLAYER_STATE_RESOURCE_GOLD)
    		return false
    	else
    	    return true
        endif
    endif
    return false
endfunction
function LianSomeDan takes unit u, item it, integer dan, integer ys, integer y1, integer y2, integer yy returns nothing
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	local integer j = 0
	local integer yin = 0
	local integer yang = 0
	local integer que = 0
	if (GetItemTypeId(it) == dan) then
		if (yishu[i]<ys)then
			call AdjustPlayerStateBJ(2000, p, PLAYER_STATE_RESOURCE_GOLD)
			call DisplayTimedTextToPlayer(p,0,0,5.,"|cffff0000医术不足！")
		elseif (UnitHaveItem(u,yy)==false)then
			call AdjustPlayerStateBJ(2000,p,PLAYER_STATE_RESOURCE_GOLD)
			call DisplayTimedTextToPlayer(p,0,0,5.,"|cffff0000缺少炼制丹药的药引！")
		else
			call DisplayTimedTextToPlayer(p,0,0,5.,"|cff00ff00炼制丹药中.......")
			set j = 1
			loop
			exitwhen j>6
				if((GetItemTypeId(UnitItemInSlotBJ(u,j))==YaoCao[11]))then
					set yin = yin+5
					set yang = yang+1
					call RemoveItem(UnitItemInSlotBJ(u,j))
				elseif((GetItemTypeId(UnitItemInSlotBJ(u,j))==YaoCao[9]))then
					set yang = yang+4
					call RemoveItem(UnitItemInSlotBJ(u,j))
				elseif((GetItemTypeId(UnitItemInSlotBJ(u,j))==YaoCao[10]))then
					set yin = yin+3
					set yang = yang+4
					call RemoveItem(UnitItemInSlotBJ(u,j))
				elseif((GetItemTypeId(UnitItemInSlotBJ(u,j))==YaoCao[8]))then
					set yin = yin+4
					set yang = yang+3
					call RemoveItem(UnitItemInSlotBJ(u,j))
				elseif((GetItemTypeId(UnitItemInSlotBJ(u,j))==YaoCao[7]))then
					set yin = yin+4
					call RemoveItem(UnitItemInSlotBJ(u,j))
				elseif((GetItemTypeId(UnitItemInSlotBJ(u,j))==YaoCao[12]))then
					set yin = yin+1
					set yang = yang+5
					call RemoveItem(UnitItemInSlotBJ(u,j))
				elseif((GetItemTypeId(UnitItemInSlotBJ(u,j))==YaoCao[6]))then
					set yin = yin+2
					set yang = yang+3
					call RemoveItem(UnitItemInSlotBJ(u,j))
				elseif((GetItemTypeId(UnitItemInSlotBJ(u,j))==YaoCao[1]))then
					set yin = yin+2
					set yang = yang+1
					call RemoveItem(UnitItemInSlotBJ(u,j))
				elseif((GetItemTypeId(UnitItemInSlotBJ(u,j))==YaoCao[2]))then
					set yin = yin+1
					set yang = yang+2
					call RemoveItem(UnitItemInSlotBJ(u,j))
				elseif((GetItemTypeId(UnitItemInSlotBJ(u,j))==YaoCao[3]))then
					set yin = yin+3
					set yang = yang-1
					call RemoveItem(UnitItemInSlotBJ(u,j))
				elseif((GetItemTypeId(UnitItemInSlotBJ(u,j))==YaoCao[4]))then
					set yin = yin-1
					set yang = yang+3
					call RemoveItem(UnitItemInSlotBJ(u,j))
				elseif((GetItemTypeId(UnitItemInSlotBJ(u,j))==YaoCao[5]))then
					set yin = yin+3
					set yang = yang+2
					call RemoveItem(UnitItemInSlotBJ(u,j))
				endif
				set j=j+1
			endloop
			if (yin >= y1) then
			else
				set que = y1-yin
				call DisplayTimedTextToPlayer(p,0,0,5.,"|cff00ff33阴性缺"+ I2S(y1-yin)+"，炼制成功率降低了"+I2S((y1-yin)*5)+"%")
			endif
			if (yang >= y2) then
			else
				set que = que+y2-yang
				call DisplayTimedTextToPlayer(p,0,0,5.,"|cff00ff33阳性缺"+ I2S(y2-yang)+"，炼制成功率降低了"+I2S((y2-yang)*5)+"%")
			endif
			if (udg_lddsbool[i]) then
				set que = que - 4
				call DisplayTimedTextToPlayer(p,0,0,5.,"|cff00ff33由于你是炼丹大师，炼制成功率提高20%")
			endif
			if (GetRandomInt(1,20) <= 20-que) then
				call unitadditembyidswapped(CorresDan(dan),u)
				call DisplayTimedTextToPlayer(p,0,0,5.,"|cff00ffff恭喜炼制成功！")
				set udg_ldds[i] = udg_ldds[i] + 1
				if (udg_ldds[i]<=5) and udg_lddsbool[i] == false then
					call DisplayTextToPlayer(p, 0, 0, "|CFF66FF00恭喜您炼成第"+I2S(udg_ldds[i])+"颗丹药，炼成5颗可获得大师哦")
				endif
				if (udg_ldds[i]==5) and udg_lddsbool[i] == false then
					set udg_lddsbool[i] = true
					if udg_zhangmen[i]==true then
					else
						call SaveStr(YDHT, GetHandleId(p), GetHandleId(p),"〓炼丹大师〓"+LoadStr(YDHT, GetHandleId(p), GetHandleId(p)))
					endif
					call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜"+GetPlayerName(p)+"获得炼丹大师")
					call SetPlayerName(p, "〓炼丹大师〓"+GetPlayerName(p))
				endif
			else
				call DisplayTimedTextToPlayer(p,0,0,5.,"|cffff0000炼制失败！")
			endif
		endif
	endif
	set u = null
	set p = null
endfunction
function FP takes nothing returns nothing
	local unit u = GetTriggerUnit()
	call LianSomeDan(u, GetManipulatedItem(), 'I07L', 26, 18, 18, YaoCao[8])
	call LianSomeDan(u, GetManipulatedItem(), 'I07N', 15, 10, 10, YaoCao[5])
	call LianSomeDan(u, GetManipulatedItem(), 'I07I', 24, 15, 20, YaoCao[9])
	call LianSomeDan(u, GetManipulatedItem(), 'I07P', 15, 18, 19, YaoCao[3])
	call LianSomeDan(u, GetManipulatedItem(), 'I07Q', 30, 10, 24, YaoCao[12])
	call LianSomeDan(u, GetManipulatedItem(), 'I07R', 26, 24, 8, YaoCao[11])
	call LianSomeDan(u, GetManipulatedItem(), 'I07K', 22, 20, 12, YaoCao[7])
	call LianSomeDan(u, GetManipulatedItem(), 'I05K', 15, 15, 5, YaoCao[2])
	call LianSomeDan(u, GetManipulatedItem(), 'I07J', 15, 12, 12, YaoCao[10])
	call LianSomeDan(u, GetManipulatedItem(), 'I07M', 16, 5, 16, YaoCao[4])
	call LianSomeDan(u, GetManipulatedItem(), 'I07O', 22, 15, 15, YaoCao[6])
	set u = null
endfunction
//----------炼丹系统结束----------//
