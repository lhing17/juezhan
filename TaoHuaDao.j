//------桃花岛系统------//
function IsTaoHua takes nothing returns boolean
	return (GetItemTypeId(GetManipulatedItem())=='I09S' or GetItemTypeId(GetManipulatedItem())=='I0A3')
endfunction
function TaoHuaDao takes nothing returns nothing
	if (GetItemTypeId(GetManipulatedItem())=='I09S') then
		if taohuakai==true or udg_xbdsbool[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]==true then
			if((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))then
				call SetUnitPosition(GetTriggerUnit(),9631,1139)
				call PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()),9631,1139,0)
				call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cFFFFCC00有玩家进入桃花岛")
				call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cFFFFCC00”源思英年,巴巴西洛普,雪陆文出；源思英年,巴巴西洛普,雪陆文出！“")
			else
				call AdjustPlayerStateBJ(500,GetOwningPlayer(GetTriggerUnit()),PLAYER_STATE_RESOURCE_GOLD)
			endif
		else
			call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cFFFFCC00桃花岛尚未开放")
			call AdjustPlayerStateBJ(500,GetOwningPlayer(GetTriggerUnit()),PLAYER_STATE_RESOURCE_GOLD)
		endif
	elseif (GetItemTypeId(GetManipulatedItem())=='I0A3') then
		if((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))then
			call SetUnitPosition(GetTriggerUnit(),12800,-14800)
			call PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()),12800,-14800,0)
			call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cFFFFCC00有玩家去救火")
		else
			call AdjustPlayerStateBJ(200000,GetOwningPlayer(GetTriggerUnit()),PLAYER_STATE_RESOURCE_GOLD)
		endif
	endif
endfunction
function TaoKaiFang takes nothing returns nothing
	local timer t=GetExpiredTimer()
	local rect r=Rect(8800,-4500,14300,4500)
	local region rg=CreateRegion()
	local integer i=0
	local timerdialog td=LoadTimerDialogHandle(YDHT,GetHandleId(t),0)
	set taohuakai=false
	call RegionAddRect(rg,r)
	set i = 1
	loop
		exitwhen i >= 6
		if IsUnitInRegion(rg,udg_hero[i]) then
			call SetUnitPosition(udg_hero[i],-1174,-678)
			call PanCameraToTimedForPlayer(GetOwningPlayer(udg_hero[i]),-1174,-678,0)
			call DisplayTextToPlayer(GetOwningPlayer(udg_hero[i]),0,0,"|cFFFFCC00时间到，离开桃花岛")
		endif
		set i = i + 1
	endloop
	call DestroyTimerDialog(td)
	call PauseTimer(t)
	call DestroyTimer(t)
	call RemoveRegion(rg)
	call RemoveRect(r)
	set r=null
	set rg=null
	set t=null
	set td=null
endfunction
function TaoHuaKaiFang takes nothing returns nothing
	local timer t=GetExpiredTimer()
	local timer tm=CreateTimer()
	local timerdialog td=LoadTimerDialogHandle(YDHT,GetHandleId(t),0)
	set taohuakai=true
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cFFFFCC00桃花岛已开放，你可以由正派武林右侧NPC我是随风处进入")
	call PingMinimapForForce(GetPlayersAll(),9631,1139,5)
	call TimerStart(tm,600,false,function TaoKaiFang)
	//call TimerStart(tm,60,false,function TaoKaiFang)
	call CreateTimerDialogBJ(tm,"桃花岛关闭倒计时：")
	call TimerDialogDisplay(bj_lastCreatedTimerDialog,true)
	call SaveTimerDialogHandle(YDHT,GetHandleId(tm),0,bj_lastCreatedTimerDialog)
	call DestroyTimerDialog(td)
	call PauseTimer(t)
	call DestroyTimer(t)
	set t=null
	set tm=null
	set td=null
endfunction
function TaoHuaDaoKaiFang takes nothing returns nothing
	local timer t=CreateTimer()
	call TimerStart(t,1800,false,function TaoHuaKaiFang)
	//call TimerStart(t,20,false,function TaoHuaKaiFang)
	call CreateTimerDialogBJ(t,"桃花岛开放倒计时：")
	call TimerDialogDisplay(bj_lastCreatedTimerDialog,true)
	call SaveTimerDialogHandle(YDHT,GetHandleId(t),0,bj_lastCreatedTimerDialog)
	set t=null
endfunction
function TaoHuaGun takes nothing returns nothing
	local unit u=GetKillingUnit()
	//call BJDebugMsg("出现了么A")
	//set lh_r=Rect(8800,-4500,14300,4500)
	if RectContainsUnit(lh_r,u) then
		//call BJDebugMsg("出现了么B")
		if GetUnitTypeId(GetTriggerUnit())=='o021' or GetUnitTypeId(GetTriggerUnit())=='o022' or GetUnitTypeId(GetTriggerUnit())=='nwnr' or GetUnitTypeId(GetTriggerUnit())=='ogrk' or GetUnitTypeId(GetTriggerUnit())=='nslf' or GetUnitTypeId(GetTriggerUnit())=='n00A' or GetUnitTypeId(GetTriggerUnit())=='n00D' then
			call SetUnitPosition(u,-1174,-678)
			call PanCameraToTimedForPlayer(GetOwningPlayer(u),-1174,-678,0)
			call DisplayTextToPlayer(GetOwningPlayer(u),0,0,"|cFFFFCC00有玩家杀死了"+GetUnitName(GetTriggerUnit())+"，离开桃花岛")
			if GetUnitTypeId(GetTriggerUnit())=='ogrk' and ((GetRandomInt(1,100)<=30) or (GetRandomInt(1,100)<=50 and udg_xbdsbool[1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))]==true)) then
				call unitadditembyidswapped('I0A1',u)
			endif
			if GetUnitTypeId(GetTriggerUnit())=='nslf' and ((GetRandomInt(1,100)<=30) or (GetRandomInt(1,100)<=50 and udg_xbdsbool[1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))]==true)) then
				call unitadditembyidswapped('I09B',u)
			endif
			if GetUnitTypeId(GetTriggerUnit())=='nwnr' and ((GetRandomInt(1,100)<=30) or (GetRandomInt(1,100)<=50 and udg_xbdsbool[1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))]==true)) then
				call unitadditembyidswapped('I097',u)
			endif
			if GetUnitTypeId(GetTriggerUnit())=='o021' and ((GetRandomInt(1,100)<=30) or (GetRandomInt(1,100)<=50 and udg_xbdsbool[1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))]==true)) then
				call unitadditembyidswapped('I067',u)
			endif
			if GetUnitTypeId(GetTriggerUnit())=='o022' and ((GetRandomInt(1,100)<=30) or (GetRandomInt(1,100)<=50 and udg_xbdsbool[1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))]==true)) then
				call unitadditembyidswapped('I061',u)
			endif
			if GetUnitTypeId(GetTriggerUnit())=='n00A' and ((GetRandomInt(1,100)<=30) or (GetRandomInt(1,100)<=50 and udg_xbdsbool[1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))]==true)) then
				call unitadditembyidswapped('I060',u)
			endif
			if GetUnitTypeId(GetTriggerUnit())=='n00D' and ((GetRandomInt(1,100)<=60) or (GetRandomInt(1,100)<=100 and udg_xbdsbool[1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))]==true)) then
				call unitadditembyidswapped('I09G',u)
			endif
		endif
	endif
	set u=null
endfunction
function TaoHua_Condition takes nothing returns boolean
	return GetOwningPlayer(GetTriggerUnit())==Player(15) and (GetUnitTypeId(GetTriggerUnit())=='o022' or GetUnitTypeId(GetTriggerUnit())=='o021' or GetUnitTypeId(GetTriggerUnit())=='nwnr' or GetUnitTypeId(GetTriggerUnit())=='ogrk' or GetUnitTypeId(GetTriggerUnit())=='nslf' or GetUnitTypeId(GetTriggerUnit())=='n00A')
endfunction
function TaoHua_Action takes nothing returns nothing
	call SetUnitOwner(GetTriggerUnit(),Player(12),true)
	call UnitAddAbility(GetTriggerUnit(),'A07V')
	call UnitAddAbility(GetTriggerUnit(),'A04I')
	call UnitAddAbility(GetTriggerUnit(),'A04K')
endfunction
function OuYangFeng_Condition takes nothing returns boolean
	return RectContainsUnit(lh_r,GetTriggerUnit()) and GetUnitTypeId(GetTriggerUnit())=='nslf' and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker())) and (UnitHasBuffBJ(GetTriggerUnit(),'Bcri') or UnitHasBuffBJ(GetTriggerUnit(),'Bcrs') or UnitHasBuffBJ(GetTriggerUnit(),'BNso'))
endfunction
function OuYangFeng_Action takes nothing returns nothing
	local location loc = GetUnitLoc(GetTriggerUnit())
	call KillUnit(GetTriggerUnit())
	call CreateNUnitsAtLoc(1, 'n00D', GetOwningPlayer(GetTriggerUnit()), loc, bj_UNIT_FACING)
	call RemoveLocation(loc)
	set loc = null
endfunction
function HongQiGong_Condition takes nothing returns boolean
	return  RectContainsUnit(lh_r,GetTriggerUnit()) and GetUnitTypeId(GetTriggerUnit())=='nwnr' and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker())) and (UnitHasBuffBJ(GetTriggerUnit(),'BEsh') or UnitHasBuffBJ(GetTriggerUnit(),'BIpb') or UnitHasBuffBJ(GetTriggerUnit(),'BIpd'))
endfunction
function HongQiGong_Action takes nothing returns nothing
	call KillUnit(GetTriggerUnit())
	call ShowUnitShow(gg_unit_n00E_0066)
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cFFFFCC00洪七公已中毒，现正在某处疗伤")
endfunction
//------桃花岛系统结束------//
