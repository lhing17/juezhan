//大战江南七怪
function XQ takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895630))
endfunction
function YQ takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	local location loc = GetRectCenter(tf)
	if (GetUnitLevel(u)<10) then
		call DisplayTextToPlayer(p,0,0,"|cFFFF0000等级不足10级无法接取该任务")
	else
		if (shengwang[i]<500) then
			call DisplayTextToPlayer(p,0,0,"|cFFFF0000江湖声望不足500无法接取该任务")
		else
			if (xiuxing[i]>=1) then
				call DisplayTextToPlayer(p,0,0,"|cFFFF0000你已经完成这个任务了")
			else
				if (J8[i]==0) then
					set J8[i]=1
					call PlaySoundOnUnitBJ(bh,100,u)
					call DisplayTextToPlayer(p,0,0,"|cFFFFCC00丘处机：|r |cFF99FFCC请前往挑战|r|cFFADFF2F江南七怪|r\n")
					call PingMinimapLocForForce(ov(p),loc,5.)
					call RemoveLocation(loc)
				else
					call DisplayTextToPlayer(p,0,0,"|cFFFFCC00丘处机：|r |cFF99FFCC请前往挑战|r|cFFADFF2F江南七怪|r\n")
				endif
			endif
		endif
	endif
	set u = null
	set p = null
	set loc = null
endfunction
function dR takes nothing returns boolean
	return (J8[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==1 and (GetUnitTypeId(GetTriggerUnit())=='owar' or GetUnitTypeId(GetTriggerUnit())=='nw2w' or GetUnitTypeId(GetTriggerUnit())=='ohun' or GetUnitTypeId(GetTriggerUnit())=='opeo' or GetUnitTypeId(GetTriggerUnit())=='nogm' or GetUnitTypeId(GetTriggerUnit())=='hsor' or GetUnitTypeId(GetTriggerUnit())=='ntkt'))
endfunction
function eR takes nothing returns nothing
	local unit u = GetKillingUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	if GetUnitTypeId(GetTriggerUnit())=='owar' then
		set LLguaiA[i] = 1
	endif
	if GetUnitTypeId(GetTriggerUnit())=='nw2w' then
		set LLguaiG[i] = 1
		if Ce[i]==8 then
			if GetRandomReal(1, 100)<=40. then
				call createitemloc('I0C6',GetUnitLoc(u))
			endif
		else
			if GetRandomReal(1, 100)<=20. then
				call createitemloc('I0C6',GetUnitLoc(u))
			endif
		endif
	endif
	if GetUnitTypeId(GetTriggerUnit())=='ohun' then
		set LLguaiB[i] = 1
	endif
	if GetUnitTypeId(GetTriggerUnit())=='opeo' then
		set LLguaiC[i] = 1
	endif
	if GetUnitTypeId(GetTriggerUnit())=='nogm' then
		set LLguaiD[i] = 1
	endif
	if GetUnitTypeId(GetTriggerUnit())=='hsor' then
		set LLguaiE[i] = 1
	endif
	if GetUnitTypeId(GetTriggerUnit())=='ntkt' then
		set LLguaiF[i] = 1
	endif
	if LLguaiA[i]==1 and LLguaiB[i]==1 and LLguaiC[i]==1 and LLguaiD[i]==1 and LLguaiE[i]==1 and LLguaiF[i]==1 and LLguaiG[i]==1 then
		//set shengwang[i]=shengwang[i]+350
		set xiuxing[i]=1
		if GetUnitAbilityLevel(GetKillingUnit(), 'A03Q') !=0 then
			call SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()),'Rhri',2)
			call SetUnitAcquireRange(GetKillingUnit(), 700)
		endif
		set udg_lilianxishu[i]=1.7
		set danpo[i]=(danpo[i]+1)
		set gengu[i]=(gengu[i]+1)
		set fuyuan[i]=(fuyuan[i]+1)
		set jingmai[i]=(jingmai[i]+1)
		set wuxing[i]=(wuxing[i]+1)
		set yishu[i]=(yishu[i]+1)
		set J8[i] = 2
		call PlaySoundOnUnitBJ(Hh,100,u)
		call unitadditembyidswapped(1227895371,u)
		call DisplayTextToPlayer(p,0,0,"|CFF34FF00完成任务大战江南七怪，修行+1，全性格属性+1，奖励乾坤丹一个")
		if (GetRandomInt(1,30)<=fuyuan[i]-5) then
			call unitadditembyidswapped(gudong[GetRandomInt(1,3)],u)
			call DisplayTextToPlayer(p,0,0,"|CFF34FF00你的运气（与福缘有关）太好了，竟然意外获得了一个古董")
		endif
	else
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00当前进度：")
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00韩小莹："+(I2S(LLguaiE[i])+" / 1")))
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00全金发："+(I2S(LLguaiC[i])+" / 1")))
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00张阿生："+(I2S(LLguaiF[i])+" / 1")))
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00南希仁："+(I2S(LLguaiB[i])+" / 1")))
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00韩宝驹："+(I2S(LLguaiD[i])+" / 1")))
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00朱聪："+(I2S(LLguaiG[i])+" / 1")))
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00柯镇恶："+(I2S(LLguaiA[i])+" / 1")))
	endif
	set u = null
	set p = null
endfunction
//十八罗汉阵
function gR takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895641))
endfunction
function hR takes nothing returns boolean
	return((GetUnitTypeId(GetFilterUnit())==1852862003))
endfunction
function iR takes nothing returns nothing
	call RemoveUnit(GetEnumUnit())
endfunction
function jR takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
	call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
	if((GetUnitLevel(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))<25))then
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFF0000等级不足25级无法接取该任务")
	else
	if((shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]<1800))then
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFF0000江湖声望不足1800无法接取该任务")
	else
	if((xiuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]<1))then
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFF0000你必须先完成历练1任务")
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Te))
	call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	else
	if((xiuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]>=2))then
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFF0000你已经完成这个任务了")
	else
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Mf))
	call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(1200.,LoadLocationHandle(YDHT,id*cx,$5E83114F),Condition(function hR)),function iR)
	call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00戒律主持：|r |cFF99FFCC想证明自己的能力就要通关少林|r|cFFADFF2F十八罗汉阵")
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call TriggerSleepAction(2)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRandomLocInRect(Mf))
	call CreateNUnitsAtLoc(1,1852862003,Player(12),LoadLocationHandle(YDHT,id*cx,$5E83114F),bj_UNIT_FACING)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRandomLocInRect(Mf))
	call CreateNUnitsAtLoc(1,1852862003,Player(12),LoadLocationHandle(YDHT,id*cx,$5E83114F),bj_UNIT_FACING)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRandomLocInRect(Mf))
	call CreateNUnitsAtLoc(1,1852862003,Player(12),LoadLocationHandle(YDHT,id*cx,$5E83114F),bj_UNIT_FACING)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRandomLocInRect(Mf))
	call CreateNUnitsAtLoc(1,1852862003,Player(12),LoadLocationHandle(YDHT,id*cx,$5E83114F),bj_UNIT_FACING)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call TriggerSleepAction(4.)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRandomLocInRect(Mf))
	call CreateNUnitsAtLoc(1,1852862003,Player(12),LoadLocationHandle(YDHT,id*cx,$5E83114F),bj_UNIT_FACING)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRandomLocInRect(Mf))
	call CreateNUnitsAtLoc(1,1852862003,Player(12),LoadLocationHandle(YDHT,id*cx,$5E83114F),bj_UNIT_FACING)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRandomLocInRect(Mf))
	call CreateNUnitsAtLoc(1,1852862003,Player(12),LoadLocationHandle(YDHT,id*cx,$5E83114F),bj_UNIT_FACING)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRandomLocInRect(Mf))
	call CreateNUnitsAtLoc(1,1852862003,Player(12),LoadLocationHandle(YDHT,id*cx,$5E83114F),bj_UNIT_FACING)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRandomLocInRect(Mf))
	call CreateNUnitsAtLoc(1,1852862003,Player(12),LoadLocationHandle(YDHT,id*cx,$5E83114F),bj_UNIT_FACING)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRandomLocInRect(Mf))
	call CreateNUnitsAtLoc(1,1852862003,Player(12),LoadLocationHandle(YDHT,id*cx,$5E83114F),bj_UNIT_FACING)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call TriggerSleepAction(6.)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRandomLocInRect(Mf))
	call CreateNUnitsAtLoc(1,1852862003,Player(12),LoadLocationHandle(YDHT,id*cx,$5E83114F),bj_UNIT_FACING)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRandomLocInRect(Mf))
	call CreateNUnitsAtLoc(1,1852862003,Player(12),LoadLocationHandle(YDHT,id*cx,$5E83114F),bj_UNIT_FACING)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRandomLocInRect(Mf))
	call CreateNUnitsAtLoc(1,1852862003,Player(12),LoadLocationHandle(YDHT,id*cx,$5E83114F),bj_UNIT_FACING)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRandomLocInRect(Mf))
	call CreateNUnitsAtLoc(1,1852862003,Player(12),LoadLocationHandle(YDHT,id*cx,$5E83114F),bj_UNIT_FACING)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRandomLocInRect(Mf))
	call CreateNUnitsAtLoc(1,1852862003,Player(12),LoadLocationHandle(YDHT,id*cx,$5E83114F),bj_UNIT_FACING)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRandomLocInRect(Mf))
	call CreateNUnitsAtLoc(1,1852862003,Player(12),LoadLocationHandle(YDHT,id*cx,$5E83114F),bj_UNIT_FACING)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRandomLocInRect(Mf))
	call CreateNUnitsAtLoc(1,1852862003,Player(12),LoadLocationHandle(YDHT,id*cx,$5E83114F),bj_UNIT_FACING)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRandomLocInRect(Mf))
	call CreateNUnitsAtLoc(1,1852862003,Player(12),LoadLocationHandle(YDHT,id*cx,$5E83114F),bj_UNIT_FACING)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	endif
	endif
	endif
	endif
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function mR takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())==1852862003)and(xiuxing[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==1))
endfunction
function nR takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))))
	set N8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(N8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	if((N8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]>=18))then
	set xiuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=2
	if GetUnitAbilityLevel(GetKillingUnit(), 'A03Q') !=0 then
		call SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()),'Rhri',3)
		call SetUnitAcquireRange(GetKillingUnit(), 800)
	endif
	set udg_lilianxishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=2.6
	set danpo[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(danpo[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set gengu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(gengu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set jingmai[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(jingmai[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set wuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(wuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set yishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(yishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	call PlaySoundOnUnitBJ(Hh,100,GetKillingUnit())
	if udg_runamen[1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))]!=11 then
	    call unitadditembyidswapped(1227895642,GetKillingUnit())
	    call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务十八罗汉阵，获得修行+1，全性格属性+1，门派毕业卷")
	else
	    call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务十八罗汉阵，获得修行+1，全性格属性+1")
	endif

	else
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("十八罗汉："+(I2S(N8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 18")))
	endif
	call FlushChildHashtable(YDHT,id*cx)
endfunction
//十恶不赦
function sR takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895879))
endfunction
function tR takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
	call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
	if((GetUnitLevel(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))<40))then
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFF0000等级不足40级无法接取该任务")
	else
	if((shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]<3500))then
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFF0000江湖声望不足3500无法接取该任务")
	else
	if((xiuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]<2))then
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFF0000你必须先完成历练2任务")
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(ag))
	call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	else
	if((xiuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]>=3))then
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFF0000你已经完成这个任务了")
	else
	if((h9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]))then
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Ag))
	call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00黄蓉：|r|cFFADFF2F十恶不赦 |r|cFF99FFCC危害武林江湖多年，你须在|r|cFFADFF2F2分钟内|r|cFF99FFCC击杀超过100只，才能完成任务")
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	else
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Ag))
	call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00黄蓉：|r|cFFADFF2F十恶不赦 |r|cFF99FFCC危害武林江湖多年，你须在|r|cFFADFF2F150秒内|r|cFF99FFCC击杀超过100只，才能完成任务")
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call StartTimerBJ(f9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)],false,150.)
	call CreateTimerDialogBJ(bj_lastStartedTimer,"闯关倒计时:")
	call TimerDialogDisplayForPlayerBJ(true,bj_lastCreatedTimerDialog,GetOwningPlayer(GetTriggerUnit()))
	set g9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=bj_lastCreatedTimerDialog
	set h9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=true
	set i9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
	endif
	endif
	endif
	endif
	endif
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function vR takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())=='ndtb')and(h9[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]))
endfunction
function wR takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))))
	set i9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(i9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	if((i9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]>=100))then
	call PlaySoundOnUnitBJ(Hh,100,GetKillingUnit())
	set xiuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=3
	if GetUnitAbilityLevel(GetKillingUnit(), 'A03Q') !=0 then
		call SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()),'Rhri',4)
		call SetUnitAcquireRange(GetKillingUnit(), 900)
	endif
	set udg_lilianxishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=4.2
	set danpo[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(danpo[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set gengu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(gengu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set jingmai[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(jingmai[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set wuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(wuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set yishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(yishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set h9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=false
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务勇闯十恶不赦岛，获得修行+1，全性格属性+1，脱胎换骨丹1个，你可以前往藏经阁了")
	call DestroyTimerDialog(g9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])
	call DestroyTimer(f9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Bg))
	call SetUnitPositionLoc(udg_hero[LoadInteger(YDHT,id*cx,-$5E9EB4B3)],LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call unitadditembyidswapped(1227895374,GetKillingUnit())
	else
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("十恶不赦："+(I2S(i9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 100")))
	endif
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function yR takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$63F0AAA2,1)
	call DestroyTimerDialog(g9[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	if((RectContainsUnit(bg,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])))then
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Bg))
	call SetUnitPositionLoc(udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)],LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	endif
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),0,0,"|cFFFF0000时间到，任务失败了")
	set h9[LoadInteger(YDHT,id*cx,-$63F0AAA2)]=false
	call PlaySoundOnUnitBJ(Gh,100,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function AR takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$63F0AAA2,2)
	call DestroyTimerDialog(g9[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	if((RectContainsUnit(bg,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])))then
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Bg))
	call SetUnitPositionLoc(udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)],LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	endif
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),0,0,"|cFFFF0000时间到，任务失败了")
	set h9[LoadInteger(YDHT,id*cx,-$63F0AAA2)]=false
	call PlaySoundOnUnitBJ(Gh,100,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function BR takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$63F0AAA2,3)
	call DestroyTimerDialog(g9[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	if((RectContainsUnit(bg,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])))then
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Bg))
	call SetUnitPositionLoc(udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)],LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	endif
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),0,0,"|cFFFF0000时间到，任务失败了")
	set h9[LoadInteger(YDHT,id*cx,-$63F0AAA2)]=false
	call PlaySoundOnUnitBJ(Gh,100,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function CR takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$63F0AAA2,4)
	call DestroyTimerDialog(g9[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	if((RectContainsUnit(bg,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])))then
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Bg))
	call SetUnitPositionLoc(udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)],LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	endif
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),0,0,"|cFFFF0000时间到，任务失败了")
	set h9[LoadInteger(YDHT,id*cx,-$63F0AAA2)]=false
	call PlaySoundOnUnitBJ(Gh,100,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function DR takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$63F0AAA2,5)
	call DestroyTimerDialog(g9[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	if((RectContainsUnit(bg,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])))then
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Bg))
	call SetUnitPositionLoc(udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)],LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	endif
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),0,0,"|cFFFF0000时间到，任务失败了")
	set h9[LoadInteger(YDHT,id*cx,-$63F0AAA2)]=false
	call PlaySoundOnUnitBJ(Gh,100,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	call FlushChildHashtable(YDHT,id*cx)
endfunction
//挑战光明顶
function FR takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895893))
endfunction
function GR takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
	call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
	if((GetUnitLevel(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))<55))then
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFF0000等级不足55级无法接取该任务")
	else
	if((shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]<5500))then
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFF0000江湖声望不足5500无法接取该任务")
	else
	if((xiuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]<3))then
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFF0000你必须先完成历练3任务")
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Bg))
	call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	else
	if((xiuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]>=4))then
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFF0000你已经完成这个任务了")
	else
	if((T9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]))then
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Jg))
	call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00当前进度：")
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00紫杉龙王："+(I2S(LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00青翼蝠王："+(I2S(LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00金毛狮王："+(I2S(LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00白眉鹰王："+(I2S(LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00阳顶天："+(I2S(LLguaiE[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	else
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Jg))
	call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	set LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
	set LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
	set LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
	set LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
	set LLguaiE[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00当前进度：")
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00紫杉龙王："+(I2S(LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00青翼蝠王："+(I2S(LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00金毛狮王："+(I2S(LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00白眉鹰王："+(I2S(LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00阳顶天："+(I2S(LLguaiE[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call StartTimerBJ(Z9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)],false,240.)
	call CreateTimerDialogBJ(bj_lastStartedTimer,"攻打光明顶倒计时:")
	call TimerDialogDisplayForPlayerBJ(true,bj_lastCreatedTimerDialog,GetOwningPlayer(GetTriggerUnit()))
	set dd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=bj_lastCreatedTimerDialog
	set T9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=true
	endif
	endif
	endif
	endif
	endif
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function IR takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())==1853056884)and(T9[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]))
endfunction
function lR takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))))
	if((LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==0))then
	set LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=1
	if((LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1)and(LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1)and(LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1)and(LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1)and(LLguaiE[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1))then
	call PlaySoundOnUnitBJ(Hh,100,GetKillingUnit())
	set xiuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=4
	if GetUnitAbilityLevel(GetKillingUnit(), 'A03Q') !=0 then
		call SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()),'Rhri',5)
		call SetUnitAcquireRange(GetKillingUnit(), 1000)
	endif
	set udg_lilianxishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=7.
	set T9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=false
	set danpo[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(danpo[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set gengu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(gengu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set jingmai[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(jingmai[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set wuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(wuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set yishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(yishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务勇闯光明顶，获得修行+1，全性格属性+1，你可以前往逍遥宫了")
	call DestroyTimerDialog(dd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])
	call DestroyTimer(Z9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Lg))
	call SetUnitPositionLoc(udg_hero[LoadInteger(YDHT,id*cx,-$5E9EB4B3)],LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	else
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00当前进度：")
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00紫杉龙王："+(I2S(LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00青翼蝠王："+(I2S(LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00金毛狮王："+(I2S(LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00白眉鹰王："+(I2S(LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00阳顶天："+(I2S(LLguaiE[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	endif
	else
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00当前进度：")
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00紫杉龙王："+(I2S(LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00青翼蝠王："+(I2S(LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00金毛狮王："+(I2S(LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00白眉鹰王："+(I2S(LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00阳顶天："+(I2S(LLguaiE[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	endif
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function KR takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())=='nsgb')and(T9[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]))
endfunction
function LR takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))))
	if((LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==0))then
	set LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=1
	if((LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1)and(LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1)and(LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1)and(LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1)and(LLguaiE[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1))then
	call PlaySoundOnUnitBJ(Hh,100,GetKillingUnit())
	set xiuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=4
	if GetUnitAbilityLevel(GetKillingUnit(), 'A03Q') !=0 then
		call SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()),'Rhri',5)
		call SetUnitAcquireRange(GetKillingUnit(), 1000)
	endif
	set udg_lilianxishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=7.
	set T9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=false
	set danpo[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(danpo[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set gengu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(gengu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set jingmai[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(jingmai[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set wuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(wuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set yishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(yishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务勇闯光明顶，获得修行+1，全性格属性+1，你可以前往逍遥宫了")
	call DestroyTimerDialog(dd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])
	call DestroyTimer(Z9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Lg))
	call SetUnitPositionLoc(udg_hero[LoadInteger(YDHT,id*cx,-$5E9EB4B3)],LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	else
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00当前进度：")
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00紫杉龙王："+(I2S(LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00青翼蝠王："+(I2S(LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00金毛狮王："+(I2S(LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00白眉鹰王："+(I2S(LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00阳顶天："+(I2S(LLguaiE[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	endif
	else
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00当前进度：")
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00紫杉龙王："+(I2S(LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00青翼蝠王："+(I2S(LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00金毛狮王："+(I2S(LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00白眉鹰王："+(I2S(LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00阳顶天："+(I2S(LLguaiE[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	endif
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function NR takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())=='nsgn')and(T9[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]))
endfunction
function OR takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))))
	if((LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==0))then
	set LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=1
	if((LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1)and(LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1)and(LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1)and(LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1)and(LLguaiE[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1))then
	call PlaySoundOnUnitBJ(Hh,100,GetKillingUnit())
	set xiuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=4
	if GetUnitAbilityLevel(GetKillingUnit(), 'A03Q') !=0 then
		call SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()),'Rhri',5)
		call SetUnitAcquireRange(GetKillingUnit(), 1000)
	endif
	set udg_lilianxishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=7.
	set T9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=false
	set danpo[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(danpo[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set gengu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(gengu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set jingmai[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(jingmai[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set wuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(wuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set yishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(yishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务勇闯光明顶，获得修行+1，全性格属性+1，你可以前往逍遥宫了")
	call DestroyTimerDialog(dd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])
	call DestroyTimer(Z9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Lg))
	call SetUnitPositionLoc(udg_hero[LoadInteger(YDHT,id*cx,-$5E9EB4B3)],LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	else
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00当前进度：")
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00紫杉龙王："+(I2S(LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00青翼蝠王："+(I2S(LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00金毛狮王："+(I2S(LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00白眉鹰王："+(I2S(LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00阳顶天："+(I2S(LLguaiE[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	endif
	else
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00当前进度：")
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00紫杉龙王："+(I2S(LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00青翼蝠王："+(I2S(LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00金毛狮王："+(I2S(LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00白眉鹰王："+(I2S(LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00阳顶天："+(I2S(LLguaiE[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	endif
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function QR takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())=='ntkc')and(T9[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]))
endfunction
function RR takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))))
	if((LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==0))then
	set LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=1
	if((LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1)and(LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1)and(LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1)and(LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1)and(LLguaiE[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1))then
	call PlaySoundOnUnitBJ(Hh,100,GetKillingUnit())
	set xiuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=4
	if GetUnitAbilityLevel(GetKillingUnit(), 'A03Q') !=0 then
		call SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()),'Rhri',5)
		call SetUnitAcquireRange(GetKillingUnit(), 1000)
	endif
	set udg_lilianxishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=7.
	set T9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=false
	set danpo[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(danpo[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set gengu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(gengu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set jingmai[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(jingmai[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set wuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(wuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set yishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(yishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务勇闯光明顶，获得修行+1，全性格属性+1，你可以前往逍遥宫了")
	call DestroyTimerDialog(dd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])
	call DestroyTimer(Z9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Lg))
	call SetUnitPositionLoc(udg_hero[LoadInteger(YDHT,id*cx,-$5E9EB4B3)],LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	else
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00当前进度：")
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00紫杉龙王："+(I2S(LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00青翼蝠王："+(I2S(LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00金毛狮王："+(I2S(LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00白眉鹰王："+(I2S(LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00阳顶天："+(I2S(LLguaiE[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	endif
	else
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00当前进度：")
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00紫杉龙王："+(I2S(LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00青翼蝠王："+(I2S(LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00金毛狮王："+(I2S(LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00白眉鹰王："+(I2S(LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00阳顶天："+(I2S(LLguaiE[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	endif
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function TR takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())=='nwzr')and(T9[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]))
endfunction
function UR takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))))
	if((LLguaiE[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==0))then
	set LLguaiE[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=1
	if((LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1)and(LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1)and(LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1)and(LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1)and(LLguaiE[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1))then
	call PlaySoundOnUnitBJ(Hh,100,GetKillingUnit())
	set xiuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=4
	if GetUnitAbilityLevel(GetKillingUnit(), 'A03Q') !=0 then
		call SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()),'Rhri',5)
		call SetUnitAcquireRange(GetKillingUnit(), 1000)
	endif
	set udg_lilianxishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=7.
	set T9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=false
	set danpo[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(danpo[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set gengu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(gengu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set jingmai[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(jingmai[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set wuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(wuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set yishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(yishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|CFF34FF00完成任务勇闯光明顶，获得修行+1，全性格属性+1，你可以前往逍遥宫了")
	call DestroyTimerDialog(dd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])
	call DestroyTimer(Z9[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Lg))
	call SetUnitPositionLoc(udg_hero[LoadInteger(YDHT,id*cx,-$5E9EB4B3)],LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	else
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00当前进度：")
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00紫杉龙王："+(I2S(LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00青翼蝠王："+(I2S(LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00金毛狮王："+(I2S(LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00白眉鹰王："+(I2S(LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00阳顶天："+(I2S(LLguaiE[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	endif
	else
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00当前进度：")
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00紫杉龙王："+(I2S(LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00青翼蝠王："+(I2S(LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00金毛狮王："+(I2S(LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00白眉鹰王："+(I2S(LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00阳顶天："+(I2S(LLguaiE[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 1")))
	endif
	call FlushChildHashtable(YDHT,id*cx)
endfunction
//任务失败
function WR takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$63F0AAA2,1)
	call DestroyTimerDialog(dd[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	if((RectContainsUnit(Kg,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])))then
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Lg))
	call SetUnitPositionLoc(udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)],LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	endif
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),0,0,"|cFFFF0000时间到，任务失败了")
	set T9[LoadInteger(YDHT,id*cx,-$63F0AAA2)]=false
	call PlaySoundOnUnitBJ(Gh,100,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function YR takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$63F0AAA2,2)
	call DestroyTimerDialog(dd[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	if((RectContainsUnit(Kg,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])))then
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Lg))
	call SetUnitPositionLoc(udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)],LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	endif
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),0,0,"|cFFFF0000时间到，任务失败了")
	set T9[LoadInteger(YDHT,id*cx,-$63F0AAA2)]=false
	call PlaySoundOnUnitBJ(Gh,100,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function dS takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$63F0AAA2,3)
	call DestroyTimerDialog(dd[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	if((RectContainsUnit(Kg,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])))then
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Lg))
	call SetUnitPositionLoc(udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)],LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	endif
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),0,0,"|cFFFF0000时间到，任务失败了")
	set T9[LoadInteger(YDHT,id*cx,-$63F0AAA2)]=false
	call PlaySoundOnUnitBJ(Gh,100,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function fS takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$63F0AAA2,4)
	call DestroyTimerDialog(dd[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	if((RectContainsUnit(Kg,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])))then
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Lg))
	call SetUnitPositionLoc(udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)],LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	endif
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),0,0,"|cFFFF0000时间到，任务失败了")
	set T9[LoadInteger(YDHT,id*cx,-$63F0AAA2)]=false
	call PlaySoundOnUnitBJ(Gh,100,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function hS takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$63F0AAA2,5)
	call DestroyTimerDialog(dd[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	if((RectContainsUnit(Kg,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])))then
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Lg))
	call SetUnitPositionLoc(udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)],LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	endif
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),0,0,"|cFFFF0000时间到，任务失败了")
	set T9[LoadInteger(YDHT,id*cx,-$63F0AAA2)]=false
	call PlaySoundOnUnitBJ(Gh,100,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	call FlushChildHashtable(YDHT,id*cx)
endfunction
//华山论剑
function jS takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895896))
endfunction
function kS takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
	call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
	if((GetUnitLevel(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0))<70))then
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFF0000等级不足70级无法接取该任务")
	else
	if((shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]<7500))then
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFF0000江湖声望不足7500无法接取该任务")
	else
	if((xiuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]<4))then
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFF0000你必须先完成历练4任务")
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Lg))
	call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	else
	if((xiuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]>=5))then
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFF0000你已经完成这个任务了")
	else
	if((ed[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]))then
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Qg))
	call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00当前进度：")
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00黄药师："+(I2S((LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-1))+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00欧阳锋："+(I2S((LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-1))+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00一灯大师："+(I2S((LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-1))+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00洪七公："+(I2S((LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-1))+" / 1")))
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	else
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Qg))
	call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	set LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=1
	set LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=1
	set LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=1
	set LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=1
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00当前进度：")
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00黄药师："+(I2S((LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-1))+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00欧阳锋："+(I2S((LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-1))+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00一灯大师："+(I2S((LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-1))+" / 1")))
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|cFFFFCC00洪七公："+(I2S((LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-1))+" / 1")))
	call StartTimerBJ(fd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)],false,280.)
	call CreateTimerDialogBJ(bj_lastStartedTimer,"华山论剑倒计时")
	call TimerDialogDisplayForPlayerBJ(true,bj_lastCreatedTimerDialog,GetOwningPlayer(GetTriggerUnit()))
	set gd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=bj_lastCreatedTimerDialog
	set ed[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=true
	endif
	endif
	endif
	endif
	endif
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function nS takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())==1869050475)and(ed[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]))
endfunction
function oS takes nothing returns nothing
	local unit u = GetKillingUnit()
	local player p = GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	local location loc = null
	if((LLguaiA[i]==1))then
		set LLguaiA[i]=2
		if((LLguaiA[i]==2)and(LLguaiB[i]==2)and(LLguaiC[i]==2)and(LLguaiD[i]==2))then
			call PlaySoundOnUnitBJ(Hh,100,GetKillingUnit())
			set xiuxing[i]=5
			if GetUnitAbilityLevel(GetKillingUnit(), 'A03Q') !=0 then
				call SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()),'Rhri',6)
				call SetUnitAcquireRange(GetKillingUnit(), 1100)
			endif
			set udg_lilianxishu[i]=12.
			set ed[i]=false
			set danpo[i]=(danpo[i]+1)
			set gengu[i]=(gengu[i]+1)
			set fuyuan[i]=(fuyuan[i]+1)
			set jingmai[i]=(jingmai[i]+1)
			set wuxing[i]=(wuxing[i]+1)
			set yishu[i]=(yishu[i]+1)
			call DisplayTextToPlayer(p,0,0,"|CFF34FF00完成任务华山论剑，获得修行+1全性格属性+1，你可以前往黑木崖了")
			call DestroyTimerDialog(gd[i])
			set loc = GetRectCenter(Rg)
			call SetUnitPositionLoc(udg_hero[i],loc)
			call PanCameraToTimedLocForPlayer(p,loc,0)
			call RemoveLocation(loc)
		else
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00当前进度：")
			call DisplayTextToPlayer(p,0,0,("|cFFFFCC00黄药师："+(I2S((LLguaiA[i]-1))+" / 1")))
			call DisplayTextToPlayer(p,0,0,("|cFFFFCC00欧阳锋："+(I2S((LLguaiB[i]-1))+" / 1")))
			call DisplayTextToPlayer(p,0,0,("|cFFFFCC00一灯大师："+(I2S((LLguaiC[i]-1))+" / 1")))
			call DisplayTextToPlayer(p,0,0,("|cFFFFCC00洪七公："+(I2S((LLguaiD[i]-1))+" / 1")))
		endif
	else
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00当前进度：")
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00黄药师："+(I2S((LLguaiA[i]-1))+" / 1")))
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00欧阳锋："+(I2S((LLguaiB[i]-1))+" / 1")))
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00一灯大师："+(I2S((LLguaiC[i]-1))+" / 1")))
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00洪七公："+(I2S((LLguaiD[i]-1))+" / 1")))
	endif
	set u = null
	set p = null
	set loc = null
endfunction
function qS takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())==1853058150)and(ed[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]))
endfunction
function rS takes nothing returns nothing
	local unit u = GetKillingUnit()
	local player p = GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	local location loc = null
	if((LLguaiB[i]==1))then
		set LLguaiB[i]=2
		if((LLguaiA[i]==2)and(LLguaiB[i]==2)and(LLguaiC[i]==2)and(LLguaiD[i]==2))then
			call PlaySoundOnUnitBJ(Hh,100,GetKillingUnit())
			set xiuxing[i]=5
			if GetUnitAbilityLevel(GetKillingUnit(), 'A03Q') !=0 then
				call SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()),'Rhri',6)
				call SetUnitAcquireRange(GetKillingUnit(), 1100)
			endif
			set udg_lilianxishu[i]=12.
			set ed[i]=false
			set danpo[i]=(danpo[i]+1)
			set gengu[i]=(gengu[i]+1)
			set fuyuan[i]=(fuyuan[i]+1)
			set jingmai[i]=(jingmai[i]+1)
			set wuxing[i]=(wuxing[i]+1)
			set yishu[i]=(yishu[i]+1)
			call DisplayTextToPlayer(p,0,0,"|CFF34FF00完成任务华山论剑，获得修行+1全性格属性+1，你可以前往黑木崖了")
			call DestroyTimerDialog(gd[i])
			set loc = GetRectCenter(Rg)
			call SetUnitPositionLoc(udg_hero[i],loc)
			call PanCameraToTimedLocForPlayer(p,loc,0)
			call RemoveLocation(loc)
		else
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00当前进度：")
			call DisplayTextToPlayer(p,0,0,("|cFFFFCC00黄药师："+(I2S((LLguaiA[i]-1))+" / 1")))
			call DisplayTextToPlayer(p,0,0,("|cFFFFCC00欧阳锋："+(I2S((LLguaiB[i]-1))+" / 1")))
			call DisplayTextToPlayer(p,0,0,("|cFFFFCC00一灯大师："+(I2S((LLguaiC[i]-1))+" / 1")))
			call DisplayTextToPlayer(p,0,0,("|cFFFFCC00洪七公："+(I2S((LLguaiD[i]-1))+" / 1")))
		endif
	else
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00当前进度：")
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00黄药师："+(I2S((LLguaiA[i]-1))+" / 1")))
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00欧阳锋："+(I2S((LLguaiB[i]-1))+" / 1")))
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00一灯大师："+(I2S((LLguaiC[i]-1))+" / 1")))
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00洪七公："+(I2S((LLguaiD[i]-1))+" / 1")))
	endif
	set u = null
	set p = null
	set loc = null
endfunction
function tS takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())==1853323879)and(ed[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]))
endfunction
function uS takes nothing returns nothing
local unit u = GetKillingUnit()
	local player p = GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	local location loc = null
	if((LLguaiC[i]==1))then
		set LLguaiC[i]=2
		if((LLguaiA[i]==2)and(LLguaiB[i]==2)and(LLguaiC[i]==2)and(LLguaiD[i]==2))then
			call PlaySoundOnUnitBJ(Hh,100,GetKillingUnit())
			set xiuxing[i]=5
			if GetUnitAbilityLevel(GetKillingUnit(), 'A03Q') !=0 then
				call SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()),'Rhri',6)
				call SetUnitAcquireRange(GetKillingUnit(), 1100)
			endif
			set udg_lilianxishu[i]=12.
			set ed[i]=false
			set danpo[i]=(danpo[i]+1)
			set gengu[i]=(gengu[i]+1)
			set fuyuan[i]=(fuyuan[i]+1)
			set jingmai[i]=(jingmai[i]+1)
			set wuxing[i]=(wuxing[i]+1)
			set yishu[i]=(yishu[i]+1)
			call DisplayTextToPlayer(p,0,0,"|CFF34FF00完成任务华山论剑，获得修行+1全性格属性+1，你可以前往黑木崖了")
			call DestroyTimerDialog(gd[i])
			set loc = GetRectCenter(Rg)
			call SetUnitPositionLoc(udg_hero[i],loc)
			call PanCameraToTimedLocForPlayer(p,loc,0)
			call RemoveLocation(loc)
		else
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00当前进度：")
			call DisplayTextToPlayer(p,0,0,("|cFFFFCC00黄药师："+(I2S((LLguaiA[i]-1))+" / 1")))
			call DisplayTextToPlayer(p,0,0,("|cFFFFCC00欧阳锋："+(I2S((LLguaiB[i]-1))+" / 1")))
			call DisplayTextToPlayer(p,0,0,("|cFFFFCC00一灯大师："+(I2S((LLguaiC[i]-1))+" / 1")))
			call DisplayTextToPlayer(p,0,0,("|cFFFFCC00洪七公："+(I2S((LLguaiD[i]-1))+" / 1")))
		endif
	else
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00当前进度：")
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00黄药师："+(I2S((LLguaiA[i]-1))+" / 1")))
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00欧阳锋："+(I2S((LLguaiB[i]-1))+" / 1")))
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00一灯大师："+(I2S((LLguaiC[i]-1))+" / 1")))
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00洪七公："+(I2S((LLguaiD[i]-1))+" / 1")))
	endif
	set u = null
	set p = null
	set loc = null
endfunction
function wS takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())==1853320818)and(ed[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]))
endfunction
function xS takes nothing returns nothing
local unit u = GetKillingUnit()
	local player p = GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	local location loc = null
	if((LLguaiD[i]==1))then
		set LLguaiD[i]=2
		if((LLguaiA[i]==2)and(LLguaiB[i]==2)and(LLguaiC[i]==2)and(LLguaiD[i]==2))then
			call PlaySoundOnUnitBJ(Hh,100,GetKillingUnit())
			set xiuxing[i]=5
			if GetUnitAbilityLevel(GetKillingUnit(), 'A03Q') !=0 then
				call SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()),'Rhri',6)
				call SetUnitAcquireRange(GetKillingUnit(), 1100)
			endif
			set udg_lilianxishu[i]=12.
			set ed[i]=false
			set danpo[i]=(danpo[i]+1)
			set gengu[i]=(gengu[i]+1)
			set fuyuan[i]=(fuyuan[i]+1)
			set jingmai[i]=(jingmai[i]+1)
			set wuxing[i]=(wuxing[i]+1)
			set yishu[i]=(yishu[i]+1)
			call DisplayTextToPlayer(p,0,0,"|CFF34FF00完成任务华山论剑，获得修行+1全性格属性+1，你可以前往黑木崖了")
			call DestroyTimerDialog(gd[i])
			set loc = GetRectCenter(Rg)
			call SetUnitPositionLoc(udg_hero[i],loc)
			call PanCameraToTimedLocForPlayer(p,loc,0)
			call RemoveLocation(loc)
		else
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00当前进度：")
			call DisplayTextToPlayer(p,0,0,("|cFFFFCC00黄药师："+(I2S((LLguaiA[i]-1))+" / 1")))
			call DisplayTextToPlayer(p,0,0,("|cFFFFCC00欧阳锋："+(I2S((LLguaiB[i]-1))+" / 1")))
			call DisplayTextToPlayer(p,0,0,("|cFFFFCC00一灯大师："+(I2S((LLguaiC[i]-1))+" / 1")))
			call DisplayTextToPlayer(p,0,0,("|cFFFFCC00洪七公："+(I2S((LLguaiD[i]-1))+" / 1")))
		endif
	else
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00当前进度：")
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00黄药师："+(I2S((LLguaiA[i]-1))+" / 1")))
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00欧阳锋："+(I2S((LLguaiB[i]-1))+" / 1")))
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00一灯大师："+(I2S((LLguaiC[i]-1))+" / 1")))
		call DisplayTextToPlayer(p,0,0,("|cFFFFCC00洪七公："+(I2S((LLguaiD[i]-1))+" / 1")))
	endif
	set u = null
	set p = null
	set loc = null
endfunction
//任务失败
function zS takes nothing returns boolean
	return((ed[1]))
endfunction
function AS takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$63F0AAA2,1)
	call DestroyTimerDialog(gd[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	if((RectContainsUnit(Rf,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])))then
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Rg))
	call SetUnitPositionLoc(udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)],LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	endif
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),0,0,"|cFFFF0000时间到，任务失败了")
	set ed[LoadInteger(YDHT,id*cx,-$63F0AAA2)]=false
	call PlaySoundOnUnitBJ(Gh,100,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function BS takes nothing returns boolean
	return((ed[2]))
endfunction
function bS takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$63F0AAA2,2)
	call DestroyTimerDialog(gd[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	if((RectContainsUnit(Rf,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])))then
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Rg))
	call SetUnitPositionLoc(udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)],LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	endif
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),0,0,"|cFFFF0000时间到，任务失败了")
	set ed[LoadInteger(YDHT,id*cx,-$63F0AAA2)]=false
	call PlaySoundOnUnitBJ(Gh,100,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function cS takes nothing returns boolean
	return((ed[3]))
endfunction
function DS takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$63F0AAA2,3)
	call DestroyTimerDialog(gd[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	if((RectContainsUnit(Rf,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])))then
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Rg))
	call SetUnitPositionLoc(udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)],LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	endif
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),0,0,"|cFFFF0000时间到，任务失败了")
	set ed[LoadInteger(YDHT,id*cx,-$63F0AAA2)]=false
	call PlaySoundOnUnitBJ(Gh,100,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function FS takes nothing returns boolean
	return((ed[4]))
endfunction
function GS takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$63F0AAA2,4)
	call DestroyTimerDialog(gd[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	if((RectContainsUnit(Rf,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])))then
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Rg))
	call SetUnitPositionLoc(udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)],LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	endif
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),0,0,"|cFFFF0000时间到，任务失败了")
	set ed[LoadInteger(YDHT,id*cx,-$63F0AAA2)]=false
	call PlaySoundOnUnitBJ(Gh,100,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function IS takes nothing returns boolean
	return((ed[5]))
endfunction
function lS takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$63F0AAA2,5)
	call DestroyTimerDialog(gd[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	if((RectContainsUnit(Rf,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])))then
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Rg))
	call SetUnitPositionLoc(udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)],LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	endif
	call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$63F0AAA2))),0,0,"|cFFFF0000时间到，任务失败了")
	set ed[LoadInteger(YDHT,id*cx,-$63F0AAA2)]=false
	call PlaySoundOnUnitBJ(Gh,100,udg_hero[LoadInteger(YDHT,id*cx,-$63F0AAA2)])
	call FlushChildHashtable(YDHT,id*cx)
endfunction
//古龙传奇
function KS takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896386))
endfunction
function LS takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	local location loc = null
	if (GetUnitLevel(u)<100) then
		call DisplayTextToPlayer(p,0,0,"|cFFFF0000等级不足100级无法接取该任务")
	elseif (shengwang[i]<11000) then
		call DisplayTextToPlayer(p,0,0,"|cFFFF0000江湖声望不足11000无法接取该任务")
	elseif (xiuxing[i]<5) then
		call DisplayTextToPlayer(p,0,0,"|cFFFF0000你必须先完成历练5任务")
		set loc = GetRectCenter(Rg)
		call PingMinimapLocForForce(ov(p),loc,5.)
		call RemoveLocation(loc)
	elseif (xiuxing[i]>=6) then
		call DisplayTextToPlayer(p,0,0,"|cFFFF0000你已经完成这个任务了")
	elseif (Rd[i]) then
		set loc = GetRectCenter(dh)
		call SetUnitPositionLoc(u,loc)
		call PanCameraToTimedLocForPlayer(p,loc,0)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00当前进度：")
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00楚留香："+I2S(LLguaiA[i]-2)+" / 1")
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00叶孤城："+I2S(LLguaiB[i]-2)+" / 1")
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00西门吹雪："+I2S(LLguaiC[i]-2)+" / 1")
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00陆小凤："+I2S(LLguaiD[i]-2)+" / 1")
		call RemoveLocation(loc)
	else
		set loc = GetRectCenter(dh)
		call SetUnitPositionLoc(u,loc)
		call PanCameraToTimedLocForPlayer(p, loc, 0)
		call RemoveLocation(loc)
		set LLguaiA[i]=2
		set LLguaiB[i]=2
		set LLguaiC[i]=2
		set LLguaiD[i]=2
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00当前进度：")
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00楚留香：0 / 1")
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00叶孤城：0 / 1")
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00西门吹雪： 0 / 1")
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00陆小凤： 0 / 1")
		call StartTimerBJ(fd[i],false,120.)
		call CreateTimerDialogBJ(bj_lastStartedTimer,"紫禁决战倒计时")
		call TimerDialogDisplayForPlayerBJ(true,bj_lastCreatedTimerDialog,GetOwningPlayer(GetTriggerUnit()))
		set gd[i]=bj_lastCreatedTimerDialog
		set Rd[i]=true
	endif
	set u = null
	set p = null
	set loc = null
endfunction
function NS takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())==1852794732)and(Rd[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]))
endfunction
function OS takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))))
	if((LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==2))then
	set LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=3
	if((LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==3)and(LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==3)and(LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==3)and(LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==3))then
	call PlaySoundOnUnitBJ(Hh,100,GetKillingUnit())
	set xiuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=6
	if GetUnitAbilityLevel(GetKillingUnit(), 'A03Q') !=0 then
		call SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()),'Rhri',7)
		call SetUnitAcquireRange(GetKillingUnit(), 1200)
	endif
	set udg_lilianxishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=20.
	set Rd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=false
	set danpo[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(danpo[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set gengu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(gengu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set jingmai[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(jingmai[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set wuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(wuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set yishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(yishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,"|CFF34FF00完成任务决战紫禁之巅，获得修行+1全性格属性+1，你可以前往一品居了")
	call DestroyTimerDialog(gd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])
	call DestroyTimer(fd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Zg))
	call SetUnitPositionLoc(udg_hero[LoadInteger(YDHT,id*cx,-$5E9EB4B3)],LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	else
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,"|cFFFFCC00当前进度：")
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00楚留香："+(I2S((LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00叶孤城："+(I2S((LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00西门吹雪："+(I2S((LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00陆小凤："+(I2S((LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	endif
	else
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,"|cFFFFCC00当前进度：")
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00楚留香："+(I2S((LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00叶孤城："+(I2S((LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00西门吹雪："+(I2S((LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00陆小凤："+(I2S((LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	endif
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function QS takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())==1853252716)and(Rd[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]))
endfunction
function RS takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))))
	if((LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==2))then
	set LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=3
	if((LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==3)and(LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==3)and(LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==3)and(LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==3))then
	call PlaySoundOnUnitBJ(Hh,100,GetKillingUnit())
	set xiuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=6
	if GetUnitAbilityLevel(GetKillingUnit(), 'A03Q') !=0 then
		call SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()),'Rhri',7)
		call SetUnitAcquireRange(GetKillingUnit(), 1200)
	endif
	set udg_lilianxishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=20.
	set Rd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=false
	set danpo[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(danpo[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set gengu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(gengu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set jingmai[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(jingmai[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set wuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(wuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set yishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(yishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,"|CFF34FF00完成任务决战紫禁之巅，获得修行+1全性格属性+1，你可以前往一品居了")
	call DestroyTimerDialog(gd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])
	call DestroyTimer(fd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Zg))
	call SetUnitPositionLoc(udg_hero[LoadInteger(YDHT,id*cx,-$5E9EB4B3)],LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	else
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,"|cFFFFCC00当前进度：")
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00楚留香："+(I2S((LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00叶孤城："+(I2S((LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00西门吹雪："+(I2S((LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00陆小凤："+(I2S((LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	endif
	else
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,"|cFFFFCC00当前进度：")
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00楚留香："+(I2S((LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00叶孤城："+(I2S((LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00西门吹雪："+(I2S((LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00陆小凤："+(I2S((LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	endif
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function TS takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())=='nrvi')and(Rd[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]))
endfunction
function US takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))))
	if((LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==2))then
	set LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=3
	if((LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==3)and(LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==3)and(LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==3)and(LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==3))then
	call PlaySoundOnUnitBJ(Hh,100,GetKillingUnit())
	set xiuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=6
	if GetUnitAbilityLevel(GetKillingUnit(), 'A03Q') !=0 then
		call SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()),'Rhri',7)
		call SetUnitAcquireRange(GetKillingUnit(), 1200)
	endif
	set udg_lilianxishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=20.
	set Rd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=false
	set danpo[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(danpo[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set gengu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(gengu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set jingmai[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(jingmai[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set wuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(wuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set yishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(yishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,"|CFF34FF00完成任务决战紫禁之巅，获得修行+1全性格属性+1，你可以前往一品居了")
	call DestroyTimerDialog(gd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])
	call DestroyTimer(fd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Zg))
	call SetUnitPositionLoc(udg_hero[LoadInteger(YDHT,id*cx,-$5E9EB4B3)],LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	else
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,"|cFFFFCC00当前进度：")
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00楚留香："+(I2S((LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00叶孤城："+(I2S((LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00西门吹雪："+(I2S((LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00陆小凤："+(I2S((LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	endif
	else
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,"|cFFFFCC00当前进度：")
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00楚留香："+(I2S((LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00叶孤城："+(I2S((LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00西门吹雪："+(I2S((LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00陆小凤："+(I2S((LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	endif
	call FlushChildHashtable(YDHT,id*cx)
endfunction
function WS takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())==1851944036)and(Rd[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]))
endfunction
function XS takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))))
	if((LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==2))then
	set LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=3
	if((LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==3)and(LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==3)and(LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==3)and(LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==3))then
	call PlaySoundOnUnitBJ(Hh,100,GetKillingUnit())
	set xiuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=6
	if GetUnitAbilityLevel(GetKillingUnit(), 'A03Q') !=0 then
		call SetPlayerTechResearched(GetOwningPlayer(GetKillingUnit()),'Rhri',7)
		call SetUnitAcquireRange(GetKillingUnit(), 1200)
	endif
	set udg_lilianxishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=20.
	set Rd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=false
	set danpo[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(danpo[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set gengu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(gengu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(fuyuan[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set jingmai[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(jingmai[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set wuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(wuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	set yishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(yishu[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,"|CFF34FF00完成任务决战紫禁之巅，获得修行+1全性格属性+1，你可以前往一品居了")
	call DestroyTimerDialog(gd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])
	call DestroyTimer(fd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])
	call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Zg))
	call SetUnitPositionLoc(udg_hero[LoadInteger(YDHT,id*cx,-$5E9EB4B3)],LoadLocationHandle(YDHT,id*cx,$5E83114F))
	call PanCameraToTimedLocForPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
	else
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,"|cFFFFCC00当前进度：")
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00楚留香："+(I2S((LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00叶孤城："+(I2S((LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00西门吹雪："+(I2S((LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00陆小凤："+(I2S((LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	endif
	else
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,"|cFFFFCC00当前进度：")
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00楚留香："+(I2S((LLguaiA[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00叶孤城："+(I2S((LLguaiB[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00西门吹雪："+(I2S((LLguaiC[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	call DisplayTextToPlayer(Player(-1+LoadInteger(YDHT,id*cx,-$5E9EB4B3)),0,0,("|cFFFFCC00陆小凤："+(I2S((LLguaiD[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]-2))+" / 1")))
	endif
	call FlushChildHashtable(YDHT,id*cx)
endfunction
//任务失败
function RenWuFail takes integer i returns nothing
	call DestroyTimerDialog(gd[i])
	if (RectContainsUnit(eh,udg_hero[i])) then
		call SetUnitPosition(udg_hero[i],-9984, 700)
		call PanCameraToTimedForPlayer(Player(i-1),-9984, 700,0)
	endif
	call DisplayTextToPlayer(Player(i-1),0,0,"|cFFFF0000时间到，任务失败了")
	set Rd[i]=false
	call PlaySoundOnUnitBJ(Gh,100,udg_hero[i])
endfunction
function ZS takes nothing returns boolean
	return Rd[1]
endfunction
function d5 takes nothing returns nothing
	call RenWuFail(1)
endfunction
function f5 takes nothing returns boolean
	return Rd[2]
endfunction
function g5 takes nothing returns nothing
	call RenWuFail(2)
endfunction
function i5 takes nothing returns boolean
	return Rd[3]
endfunction
function j5 takes nothing returns nothing
	call RenWuFail(3)
endfunction
function m5 takes nothing returns boolean
	return Rd[4]
endfunction
function nn5 takes nothing returns nothing
	call RenWuFail(4)
endfunction
function p5 takes nothing returns boolean
	return Rd[5]
endfunction
function q5 takes nothing returns nothing
	call RenWuFail(5)
endfunction

function Experiences_Trigger takes nothing returns nothing
	local trigger t = CreateTrigger()
	
	set zr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(zr,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(zr,Condition(function XQ))
	call TriggerAddAction(zr,function YQ)
	set Ar=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(Ar,Player(12),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Ar,Condition(function dR))
	call TriggerAddAction(Ar,function eR)
	set ar=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ar,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(ar,Condition(function gR))
	call TriggerAddAction(ar,function jR)
	set Br=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Br,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Br,Condition(function mR))
	call TriggerAddAction(Br,function nR)
	
	set Cr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Cr,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Cr,Condition(function sR))
	call TriggerAddAction(Cr,function tR)
	set cr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(cr,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(cr,Condition(function vR))
	call TriggerAddAction(cr,function wR)
	set Dr=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Dr,f9[1])
	call TriggerAddAction(Dr,function yR)
	set Er=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Er,f9[2])
	call TriggerAddAction(Er,function AR)
	set Fr=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Fr,f9[3])
	call TriggerAddAction(Fr,function BR)
	set Gr=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Gr,f9[4])
	call TriggerAddAction(Gr,function CR)
	set Hr=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Hr,f9[5])
	call TriggerAddAction(Hr,function DR)
	set Ir=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Ir,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Ir,Condition(function FR))
	call TriggerAddAction(Ir,function GR)
	set lr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(lr,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(lr,Condition(function IR))
	call TriggerAddAction(lr,function lR)
	set Jr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Jr,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Jr,Condition(function KR))
	call TriggerAddAction(Jr,function LR)
	set Kr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Kr,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Kr,Condition(function NR))
	call TriggerAddAction(Kr,function OR)
	set Lr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Lr,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Lr,Condition(function QR))
	call TriggerAddAction(Lr,function RR)
	set Mr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Mr,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Mr,Condition(function TR))
	call TriggerAddAction(Mr,function UR)
	set Nr=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Nr,Z9[1])
	call TriggerAddAction(Nr,function WR)
	set Pr=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Pr,Z9[2])
	call TriggerAddAction(Pr,function YR)
	set Qr=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Qr,Z9[3])
	call TriggerAddAction(Qr,function dS)
	set Rr=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Rr,Z9[4])
	call TriggerAddAction(Rr,function fS)
	set Sr=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Sr,Z9[5])
	call TriggerAddAction(Sr,function hS)
	set Tr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Tr,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Tr,Condition(function jS))
	call TriggerAddAction(Tr,function kS)
	set Ur=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Ur,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Ur,Condition(function nS))
	call TriggerAddAction(Ur,function oS)
	set Vr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Vr,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Vr,Condition(function qS))
	call TriggerAddAction(Vr,function rS)
	set Wr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Wr,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Wr,Condition(function tS))
	call TriggerAddAction(Wr,function uS)
	set Xr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Xr,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Xr,Condition(function wS))
	call TriggerAddAction(Xr,function xS)
	set Yr=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Yr,fd[1])
	call TriggerAddCondition(Yr,Condition(function zS))
	call TriggerAddAction(Yr,function AS)
	set Zr=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Zr,fd[2])
	call TriggerAddCondition(Zr,Condition(function BS))
	call TriggerAddAction(Zr,function bS)
	set ds=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(ds,fd[3])
	call TriggerAddCondition(ds,Condition(function cS))
	call TriggerAddAction(ds,function DS)
	set es=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(es,fd[4])
	call TriggerAddCondition(es,Condition(function FS))
	call TriggerAddAction(es,function GS)
	set fs=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(fs,fd[5])
	call TriggerAddCondition(fs,Condition(function IS))
	call TriggerAddAction(fs,function lS)
	set gs=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(gs,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(gs,Condition(function KS))
	call TriggerAddAction(gs,function LS)
	set hs=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(hs,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(hs,Condition(function NS))
	call TriggerAddAction(hs,function OS)
	set is=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(is,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(is,Condition(function QS))
	call TriggerAddAction(is,function RS)
	set js=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(js,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(js,Condition(function TS))
	call TriggerAddAction(js,function US)
	set ks=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ks,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(ks,Condition(function WS))
	call TriggerAddAction(ks,function XS)
	set ms=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(ms,fd[1])
	call TriggerAddCondition(ms,Condition(function ZS))
	call TriggerAddAction(ms,function d5)
	set ns=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(ns,fd[2])
	call TriggerAddCondition(ns,Condition(function f5))
	call TriggerAddAction(ns,function g5)
	set os=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(os,fd[3])
	call TriggerAddCondition(os,Condition(function i5))
	call TriggerAddAction(os,function j5)
	set ps=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(ps,fd[4])
	call TriggerAddCondition(ps,Condition(function m5))
	call TriggerAddAction(ps,function nn5)
	set qs=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(qs,fd[5])
	call TriggerAddCondition(qs,Condition(function p5))
	call TriggerAddAction(qs,function q5)
	set t = null
endfunction
