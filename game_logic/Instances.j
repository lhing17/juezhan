//--------------------------------
//   
//    副  本  系  统
//
//--------------------------------
//杀野猪首领
function WI takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())=='nqb3'))
endfunction
function XI takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
	if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
		set MM7=2
	else
		set MM7=1
	endif
	set N7=1
	loop
		exitwhen N7>MM7
		if((GetRandomInt(1,100)<=udg_baolv[1]))then
			call createitemloc('I021',LoadLocationHandle(YDHT,id*cx,$1769D332))
			set udg_baolv[1]=udg_baolv[1]*9/10-1
		else
			set udg_baolv[1]=udg_baolv[1]*11/10+1
			if udg_baolv[1]<0 then
				set udg_baolv[1]=0
			endif
			if udg_baolv[1]>100 then
				set udg_baolv[1]=100
			endif
		endif
		set N7=N7+1
	endloop
	call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))))
	if((e8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1))then
		call unitadditembyidswapped(1227896391,GetKillingUnit())
		if((GetRandomInt(1,50)<=25))then
			call unitadditembyidswapped(1227895347,GetKillingUnit())
		else
			call unitadditembyidswapped(1227895346,GetKillingUnit())
		endif
		call AddHeroXP(GetKillingUnit(),$96,true)
		call PlaySoundOnUnitBJ(Hh,100,GetKillingUnit())
		call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("|CFF34FF00完成任务获得经验+150、江湖声望+50、富可敌国令和"+GetItemName(bj_lastCreatedItem)))
		set shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+50)
		set e8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
	endif
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
	call FlushChildHashtable(YDHT,id*cx)
endfunction

//杀豺狼
function ZI takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())=='ngns'))
endfunction
function dl takes nothing returns nothing
	call BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit() , 0, 0, 0, 0, 0, 8, YaoCao[1])
endfunction
//杀江南水怪
function fl takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())=='hwat'))
endfunction
function gl takes nothing returns nothing
	call BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit() , 0, 0, 0, 0, 0, 8, YaoCao[2])
endfunction
//FB1
function il takes nothing returns boolean
	return (GetUnitTypeId(GetTriggerUnit())=='oshm') or (GetUnitTypeId(GetTriggerUnit())=='nass') or (GetUnitTypeId(GetTriggerUnit())=='odoc') or (GetUnitTypeId(GetTriggerUnit())=='orai') or (GetUnitTypeId(GetTriggerUnit())=='otau') or (GetUnitTypeId(GetTriggerUnit())=='odkt') or (GetUnitTypeId(GetTriggerUnit())=='uaco')
endfunction
function jl takes nothing returns nothing
	if (GetUnitTypeId(GetTriggerUnit())=='oshm') or (GetUnitTypeId(GetTriggerUnit())=='nass') then
		call BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit() , 8, 'I02J', 'I02I', 0, 0, 8, YaoCao[3])
		call BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit() , 1, 'I01W', 0, 0, 0, 0, 0)
	elseif (GetUnitTypeId(GetTriggerUnit())=='odoc') then
		call BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit() , 100, 'I01U', 'I01Z', 0, 0, 0, 0)
	elseif (GetUnitTypeId(GetTriggerUnit())=='orai') then
		call BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit() , 100, 'I01S', 'I01Y', 'I01X', 0, 0, 0)
		//火功头陀
	elseif (GetUnitTypeId(GetTriggerUnit())=='otau') then
		call BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit() , 100, 'I02Z', 'I03D', 0, 0, 0, 0)
		if GetRandomReal(1, 100)<=3. or (GetRandomReal(1, 100)<=6. and Ce[1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))]==8) then
			call createitemloc('I0C5',GetUnitLoc(GetKillingUnit()))
		endif
	elseif (GetUnitTypeId(GetTriggerUnit())=='odkt') then
		call BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit() , 100, 'I02U', 'I03G', 'I02W', 0, 0, 0)
		//毒手药王
	elseif (GetUnitTypeId(GetTriggerUnit())=='uaco') then
		call BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit() , 100, 'I02L', 'I02N', 'I02K', 0, 0, 0)
		if GetRandomReal(1, 100)<=50. or Ce[1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))]==8 then
			call createitemloc('I0CB',GetUnitLoc(GetKillingUnit()))
		endif
	endif
endfunction
//FB2
function al takes nothing returns boolean
	return(((GetUnitTypeId(GetTriggerUnit())=='efon')or(GetUnitTypeId(GetTriggerUnit())=='nowb')))
endfunction
function Bl takes nothing returns nothing
	call BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit() , 8, 'I01I', 'I02E', 'I02H', 0, 0, 0)
	//call BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit() , 1, 'I01J', 0, 0, 0, 0, 0)
endfunction
//杀唐文亮
function cl takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())=='nbdw'))
endfunction
function KillTangWenLiang takes nothing returns nothing
	call BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit() , 100, 'I01L', 'I01M', 'I01Q', 'I01R', 0, 0)
endfunction
//杀关能
function Fl takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())=='ndrw'))
endfunction
function Gl takes nothing returns nothing
	call BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit() , 100, 1227895118, 1227895120, 1227895119, 0, 0, 0)
endfunction
//杀李莫愁
function Il takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())==1702258030))
endfunction
function ll takes nothing returns nothing
	call BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit() , 100, 1227895621, 1227895626, 0, 0, 0, 0)
endfunction
//杀木灵子
function Kl takes nothing returns boolean
return((GetUnitTypeId(GetTriggerUnit())==1700884333))
endfunction
function Ll takes nothing returns nothing
	call BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit() , 100, 'I03L', 1227895382, 0, 0, 0, 0)
endfunction
//杀狄云
function Nl takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())==1852007777))
endfunction
function Ol takes nothing returns nothing
	call BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit() , 100, 1227895603, 1227895627, 0, 0, 0, 0)
endfunction
//杀林朝英
function Ql takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())=='ndqs'))
endfunction
function Rl takes nothing returns nothing
	local location loc = GetUnitLoc(GetTriggerUnit())
	local location loc2 = null
	local integer i = 1
	set shengwang[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]=(shengwang[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]+50)
	call DisplayTextToPlayer(GetOwningPlayer(GetKillingUnit()),0,0,"|cff00ff00击杀林朝英，获得江湖声望+50")
	//call BJDebugMsg(I2S(LoadInteger(YDHT, StringHash("武学")+GetRandomInt(42, 46), 2)))
	call BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit() , 100, udg_jianghu[GetRandomInt(1,18)], 0, 0, 0, 0, 0)
	if Ce[1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))]==8 then
		if GetRandomReal(1, 100)<=10. then
		call createitemloc('I0C4',loc)
		endif
		if GetRandomReal(1, 100)<=10. then
			call createitemloc('I0C5',loc)
		endif
		if GetRandomReal(1, 100)<=10. then
			call createitemloc('I0C8',loc)
		endif
		if GetRandomReal(1, 100)<=10. then
			call createitemloc('I0CJ',loc)
		endif
	else
		if GetRandomReal(1, 100)<=5. then
			call createitemloc('I0C4',loc)
		endif
		if GetRandomReal(1, 100)<=5. then
			call createitemloc('I0C5',loc)
		endif
		if GetRandomReal(1, 100)<=5. then
			call createitemloc('I0C8',loc)
		endif
		if GetRandomReal(1, 100)<=5. then
			call createitemloc('I0CJ',loc)
		endif
	endif
	if udg_lddsbool[1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))]==true then
		call createitemloc(YaoCao[9],loc)
	endif
	set i = 0
	loop
		exitwhen i >= 5
		call AdjustPlayerStateBJ(16*(10-GetNumPlayer())/10,Player(i),PLAYER_STATE_RESOURCE_LUMBER)
		set i = i + 1
	endloop
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "击杀林朝英，每位玩家奖励珍稀"+I2S(16*(10-GetNumPlayer())/10)+"个")
	set loc2 = pu(loc,GetRandomReal(30.,200.),GetRandomReal(0,360.))
	call createitemloc(gudong[GetRandomInt(4,6)],loc2)
	call RemoveLocation(loc2)
	set loc2 = pu(loc,GetRandomReal(30.,200.),GetRandomReal(0,360.))
	call createitemloc(gudong[GetRandomInt(1,6)],loc2)
	call RemoveLocation(loc2)
	set loc2 = pu(loc,GetRandomReal(30.,200.),GetRandomReal(0,360.))
	call createitemloc(gudong[GetRandomInt(1,6)],loc2)
	call RemoveLocation(loc2)
	set loc2 = pu(loc,GetRandomReal(30.,200.),GetRandomReal(0,360.))
	call createitemloc(1227895897,loc2)
	call RemoveLocation(loc2)
	set loc2 = pu(loc,GetRandomReal(30.,200.),GetRandomReal(0,360.))
	call createitemloc(1227895897,loc2)
	call RemoveLocation(loc2)
	set loc2 = pu(loc,GetRandomReal(30.,200.),GetRandomReal(0,360.))
	call createitemloc(1227895897,loc2)
	call RemoveLocation(loc2)
	set loc2 = pu(loc,GetRandomReal(30.,200.),GetRandomReal(0,360.))
	call createitemloc(1227895897,loc2)
	call RemoveLocation(loc2)
	set loc2 = pu(loc,GetRandomReal(30.,200.),GetRandomReal(0,360.))
	call createitemloc(1227895897,loc2)
	call RemoveLocation(loc2)
	call RemoveLocation(loc)
	set loc = null
	set loc2 = null
endfunction
//杀古墓弟子
function Tl takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())=='ndqv'))
endfunction
function Ul takes nothing returns nothing
	call BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit() , 25, 1227895897, 0, 0, 0, 15, YaoCao[11])
	call BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit() , fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]/4, gudong[GetRandomInt(1,6)], 0, 0, 0, 0, 0)
endfunction
//FB3杀南海鳄神
function Wl takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())=='nsqo'))
endfunction
function Xl takes nothing returns nothing
	call BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit() , 100, 1227895095, 1227895107, 1227895097, 0, 0, 0)
endfunction
//FB3杀叶二娘
function Zl takes nothing returns boolean
	return (GetUnitTypeId(GetTriggerUnit())=='nhrr')
endfunction
function dd1 takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
if((GetRandomInt(1,60)<=20))then
call createitemloc('I04E',LoadLocationHandle(YDHT,id*cx,$1769D332))
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,0)
call SaveInteger(YDHT,id*cx,$648579A8,GetRandomInt(1,5))
call SaveInteger(YDHT,id*cx,-$180E5D51,GetRandomInt(1,5))
call SaveInteger(YDHT,id*cx,-$77543A28,0)
call SaveInteger(YDHT,id*cx,-$2D2EBEF5,0)
call SaveInteger(YDHT,id*cx,1732931645,GetRandomInt(0,2))
call SaveInteger(YDHT,id*cx,-$4E51D54A,0)
call SaveInteger(YDHT,id*cx,$44078039,0)
call SaveInteger(YDHT,id*cx,-$6F9D2AE1,0)
call SetItemUserData(bj_lastCreatedItem,(((((((((LoadInteger(YDHT,id*cx,-$5E9EB4B3)*$5F5E100)+(LoadInteger(YDHT,id*cx,$648579A8)*$989680))+(LoadInteger(YDHT,id*cx,-$180E5D51)*$F4240))+(LoadInteger(YDHT,id*cx,-$77543A28)*$186A0))+(LoadInteger(YDHT,id*cx,-$2D2EBEF5)*$2710))+(LoadInteger(YDHT,id*cx,1732931645)*$3E8))+(LoadInteger(YDHT,id*cx,-$4E51D54A)*100))+(LoadInteger(YDHT,id*cx,$44078039)*$A))+LoadInteger(YDHT,id*cx,-$6F9D2AE1)))
else
if((GetRandomInt(1,50)<=25))then
call createitemloc(1227895096,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
call createitemloc(1227895106,LoadLocationHandle(YDHT,id*cx,$1769D332))
endif
endif
set N7=N7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//FB3杀段延庆
function f1 takes nothing returns boolean
return((GetUnitTypeId(GetTriggerUnit())=='nubw'))
endfunction
function g1 takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
	if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
		set MM7=2
	else
		set MM7=1
	endif
	set N7=1
	loop
		exitwhen N7>MM7
		if((GetRandomInt(1,60)<=60))then
			call createitemloc(1227895878,LoadLocationHandle(YDHT,id*cx,$1769D332))
			call SaveInteger(YDHT,id*cx,-$5E9EB4B3,0)
			call SaveInteger(YDHT,id*cx,$648579A8,GetRandomInt(1,5))
			call SaveInteger(YDHT,id*cx,-$180E5D51,GetRandomInt(1,5))
			call SaveInteger(YDHT,id*cx,-$77543A28,0)
			call SaveInteger(YDHT,id*cx,-$2D2EBEF5,0)
			call SaveInteger(YDHT,id*cx,1732931645,GetRandomInt(0,1))
			call SaveInteger(YDHT,id*cx,-$4E51D54A,0)
			call SaveInteger(YDHT,id*cx,$44078039,0)
			call SaveInteger(YDHT,id*cx,-$6F9D2AE1,0)
			call SetItemUserData(bj_lastCreatedItem,(((((((((LoadInteger(YDHT,id*cx,-$5E9EB4B3)*$5F5E100)+(LoadInteger(YDHT,id*cx,$648579A8)*$989680))+(LoadInteger(YDHT,id*cx,-$180E5D51)*$F4240))+(LoadInteger(YDHT,id*cx,-$77543A28)*$186A0))+(LoadInteger(YDHT,id*cx,-$2D2EBEF5)*$2710))+(LoadInteger(YDHT,id*cx,1732931645)*$3E8))+(LoadInteger(YDHT,id*cx,-$4E51D54A)*100))+(LoadInteger(YDHT,id*cx,$44078039)*$A))+LoadInteger(YDHT,id*cx,-$6F9D2AE1)))
		else
			//call createitemloc(1227895108,LoadLocationHandle(YDHT,id*cx,$1769D332))
		endif
		set N7=N7+1
	endloop
	call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
	call FlushChildHashtable(YDHT,id*cx)
endfunction
//FB3杀梅超风
function i1 takes nothing returns boolean
return((GetUnitTypeId(GetTriggerUnit())==1702061422))
endfunction
function j1 takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
if((GetRandomInt(1,60)<=20))then
call createitemloc(1227895624,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,50)<=25))then
call createitemloc('I03I',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
call createitemloc('I02X',LoadLocationHandle(YDHT,id*cx,$1769D332))
endif
endif
set N7=N7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//FB3杀云中鹤
function m1 takes nothing returns boolean
return((GetUnitTypeId(GetTriggerUnit())=='nomg'))
endfunction
function nn1 takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
if((GetRandomInt(1,50)<=25))then
call createitemloc(1227895105,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
call createitemloc(1227895094,LoadLocationHandle(YDHT,id*cx,$1769D332))
endif
//擒龙控鹤
if GetRandomReal(1, 100)<=10. or(GetRandomReal(1, 100)<=20. and Ce[1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))]==8) then
	call createitemloc('I0CC',LoadLocationHandle(YDHT,id*cx,$1769D332))
endif
set N7=N7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//FB3杀张无忌
function p1 takes nothing returns boolean
return((GetUnitTypeId(GetTriggerUnit())==1701672039))
endfunction
function q1 takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
if((GetRandomInt(1,50)<=25))then
call createitemloc('I030',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
call createitemloc(1227895385,LoadLocationHandle(YDHT,id*cx,$1769D332))
endif
set N7=N7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//FB3杀武三通
function t1 takes nothing returns boolean
return((GetUnitTypeId(GetTriggerUnit())==1970169187))
endfunction
function u1 takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
if((GetRandomInt(1,50)<=25))then
call createitemloc('I03F',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
call createitemloc(1227895601,LoadLocationHandle(YDHT,id*cx,$1769D332))
endif
set N7=N7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//杀门派叛徒和武林恶徒
function ww1 takes nothing returns boolean
return(((GetUnitTypeId(GetTriggerUnit())=='nfor')or(GetUnitTypeId(GetTriggerUnit())=='nnwr')))
endfunction
function z1 takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
if((GetRandomInt(1,500)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]))then
call createitemloc(gudong[GetRandomInt(4,9)],LoadLocationHandle(YDHT,id*cx,$1769D332))
endif
set N7=N7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))))
if((Td[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1))then
if((GetUnitTypeId(GetTriggerUnit())=='nfor'))then
if((Vd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]<$A))then
set Vd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(Vd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("门派叛徒："+(I2S(Vd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 10")))
else
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("门派叛徒："+(I2S(Vd[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 10")))
endif
else
if((Ud[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]<$A))then
set Ud[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=(Ud[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]+1)
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("武林恶徒："+(I2S(Ud[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 10")))
else
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("武林恶徒："+(I2S(Ud[LoadInteger(YDHT,id*cx,-$5E9EB4B3)])+" / 10")))
endif
endif
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
//杀极恶领主
function a1 takes nothing returns boolean
return((GetUnitTypeId(GetTriggerUnit())=='nfov'))
endfunction
function B1 takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
call createitemloc('I02S',LoadLocationHandle(YDHT,id*cx,$1769D332))
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,0)
call SaveInteger(YDHT,id*cx,$648579A8,GetRandomInt(1,5))
call SaveInteger(YDHT,id*cx,-$180E5D51,GetRandomInt(1,6))
call SaveInteger(YDHT,id*cx,-$77543A28,0)
call SaveInteger(YDHT,id*cx,-$2D2EBEF5,0)
call SaveInteger(YDHT,id*cx,1732931645,GetRandomInt(0,1))
call SaveInteger(YDHT,id*cx,-$4E51D54A,0)
call SaveInteger(YDHT,id*cx,$44078039,0)
call SaveInteger(YDHT,id*cx,-$6F9D2AE1,0)
call SetItemUserData(bj_lastCreatedItem,(((((((((LoadInteger(YDHT,id*cx,-$5E9EB4B3)*$5F5E100)+(LoadInteger(YDHT,id*cx,$648579A8)*$989680))+(LoadInteger(YDHT,id*cx,-$180E5D51)*$F4240))+(LoadInteger(YDHT,id*cx,-$77543A28)*$186A0))+(LoadInteger(YDHT,id*cx,-$2D2EBEF5)*$2710))+(LoadInteger(YDHT,id*cx,1732931645)*$3E8))+(LoadInteger(YDHT,id*cx,-$4E51D54A)*100))+(LoadInteger(YDHT,id*cx,$44078039)*$A))+LoadInteger(YDHT,id*cx,-$6F9D2AE1)))
call SaveLocationHandle(YDHT,id*cx,-$185C9FC2,pu(LoadLocationHandle(YDHT,id*cx,$1769D332),GetRandomReal(30.,120.),(GetRandomReal(0,360.))))
call createitemloc(gudong[GetRandomInt(4,9)],LoadLocationHandle(YDHT,id*cx,-$185C9FC2))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$185C9FC2))
call SaveLocationHandle(YDHT,id*cx,-$185C9FC2,pu(LoadLocationHandle(YDHT,id*cx,$1769D332),GetRandomReal(30.,120.),(GetRandomReal(0,360.))))
call createitemloc(gudong[GetRandomInt(4,9)],LoadLocationHandle(YDHT,id*cx,-$185C9FC2))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$185C9FC2))
call SaveLocationHandle(YDHT,id*cx,-$185C9FC2,pu(LoadLocationHandle(YDHT,id*cx,$1769D332),GetRandomReal(30.,120.),(GetRandomReal(0,360.))))
call createitemloc(gudong[GetRandomInt(4,9)],LoadLocationHandle(YDHT,id*cx,-$185C9FC2))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$185C9FC2))
call SaveLocationHandle(YDHT,id*cx,-$185C9FC2,pu(LoadLocationHandle(YDHT,id*cx,$1769D332),GetRandomReal(30.,120.),(GetRandomReal(0,360.))))
call createitemloc(gudong[GetRandomInt(4,9)],LoadLocationHandle(YDHT,id*cx,-$185C9FC2))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$185C9FC2))
call SaveLocationHandle(YDHT,id*cx,-$185C9FC2,pu(LoadLocationHandle(YDHT,id*cx,$1769D332),GetRandomReal(30.,120.),(GetRandomReal(0,360.))))
call createitemloc('texp',LoadLocationHandle(YDHT,id*cx,-$185C9FC2))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$185C9FC2))
call SaveLocationHandle(YDHT,id*cx,-$185C9FC2,pu(LoadLocationHandle(YDHT,id*cx,$1769D332),GetRandomReal(30.,120.),(GetRandomReal(0,360.))))
call createitemloc('texp',LoadLocationHandle(YDHT,id*cx,-$185C9FC2))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$185C9FC2))
call SaveLocationHandle(YDHT,id*cx,-$185C9FC2,pu(LoadLocationHandle(YDHT,id*cx,$1769D332),GetRandomReal(30.,120.),(GetRandomReal(0,360.))))
call createitemloc('texp',LoadLocationHandle(YDHT,id*cx,-$185C9FC2))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$185C9FC2))
call SaveLocationHandle(YDHT,id*cx,-$185C9FC2,pu(LoadLocationHandle(YDHT,id*cx,$1769D332),GetRandomReal(30.,120.),(GetRandomReal(0,360.))))
call createitemloc('texp',LoadLocationHandle(YDHT,id*cx,-$185C9FC2))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$185C9FC2))
call SaveLocationHandle(YDHT,id*cx,-$185C9FC2,pu(LoadLocationHandle(YDHT,id*cx,$1769D332),GetRandomReal(30.,120.),(GetRandomReal(0,360.))))
call createitemloc('texp',LoadLocationHandle(YDHT,id*cx,-$185C9FC2))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$185C9FC2))
call SaveLocationHandle(YDHT,id*cx,-$185C9FC2,pu(LoadLocationHandle(YDHT,id*cx,$1769D332),GetRandomReal(30.,120.),(GetRandomReal(0,360.))))
call createitemloc('texp',LoadLocationHandle(YDHT,id*cx,-$185C9FC2))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$185C9FC2))
call SaveLocationHandle(YDHT,id*cx,-$185C9FC2,pu(LoadLocationHandle(YDHT,id*cx,$1769D332),GetRandomReal(30.,120.),(GetRandomReal(0,360.))))
call createitemloc('texp',LoadLocationHandle(YDHT,id*cx,-$185C9FC2))
call createitemloc(YaoCao[10],LoadLocationHandle(YDHT,id*cx,$1769D332))
if udg_lddsbool[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))] then
    call createitemloc(YaoCao[10],LoadLocationHandle(YDHT,id*cx,$1769D332))
endif
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$185C9FC2))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//边境掉落
function C1 takes nothing returns nothing
if((GetRandomInt(1,4)==1))then
set Zd=1227896396
else
if((GetRandomInt(1,3)==1))then
set Zd=1227896397
else
if((GetRandomInt(1,2)==1))then
set Zd='I06K'
else
set Zd='I02S'
endif
endif
endif
call createitemloc(Zd,v7[$B])
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30,("|cFFFFCC33边境刷新掉落：|cFF33FFFF"+GetItemName(bj_lastCreatedItem)))
call RemoveItem(bj_lastCreatedItem)
endfunction
//边境掉落
function D1 takes nothing returns boolean
return((RectContainsUnit(df,GetTriggerUnit())))
endfunction
function E1 takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
if((GetRandomInt(1,100)<=5))then
call createitemloc(Zd,LoadLocationHandle(YDHT,id*cx,$1769D332))
if((Zd=='I02S'))then
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,0)
call SaveInteger(YDHT,id*cx,$648579A8,GetRandomInt(1,5))
call SaveInteger(YDHT,id*cx,-$180E5D51,GetRandomInt(1,6))
call SaveInteger(YDHT,id*cx,-$77543A28,0)
call SaveInteger(YDHT,id*cx,-$2D2EBEF5,0)
call SaveInteger(YDHT,id*cx,1732931645,GetRandomInt(0,1))
call SaveInteger(YDHT,id*cx,-$4E51D54A,0)
call SaveInteger(YDHT,id*cx,$44078039,0)
call SaveInteger(YDHT,id*cx,-$6F9D2AE1,0)
call SetItemUserData(bj_lastCreatedItem,(((((((((LoadInteger(YDHT,id*cx,-$5E9EB4B3)*$5F5E100)+(LoadInteger(YDHT,id*cx,$648579A8)*$989680))+(LoadInteger(YDHT,id*cx,-$180E5D51)*$F4240))+(LoadInteger(YDHT,id*cx,-$77543A28)*$186A0))+(LoadInteger(YDHT,id*cx,-$2D2EBEF5)*$2710))+(LoadInteger(YDHT,id*cx,1732931645)*$3E8))+(LoadInteger(YDHT,id*cx,-$4E51D54A)*100))+(LoadInteger(YDHT,id*cx,$44078039)*$A))+LoadInteger(YDHT,id*cx,-$6F9D2AE1)))
endif
endif
set N7=N7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//杀扫地神僧
function G1 takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())=='nsrh'))
endfunction
function H1 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(GetKillingUnit())
	local integer i = 1+GetPlayerId(p)
	local location loc = GetUnitLoc(u)
	set shengwang[i] = shengwang[i] + 100
	call DisplayTextToPlayer(p,0,0,"|cff00ff00击杀扫地神僧，获得江湖声望+100")
	if (GetRandomInt(1,1000)<=fuyuan[i] or (GetRandomInt(1, 100)<=30 and Ce[i]==6)) then
		set MM7=2
	else
		set MM7=1
	endif
	set N7=1
	loop
		exitwhen N7>MM7
		call createitemloc(udg_juexue[GetRandomInt(1,10)],loc)
		call createitemloc(YaoCao[9],loc)
		if Ce[i]==8 then
			if GetRandomReal(1, 100)<=10. then
				call createitemloc('I0C3',loc)
			endif
			if GetRandomReal(1, 100)<=10. then
				call createitemloc('I0C9',loc)
			endif
			if GetRandomReal(1, 100)<=10. then
				call createitemloc('I0CD',loc)
			endif
		else
			if GetRandomReal(1, 100)<=5. then
				call createitemloc('I0C3',loc)
			endif
			if GetRandomReal(1, 100)<=5. then
				call createitemloc('I0C9',loc)
			endif
			if GetRandomReal(1, 100)<=5. then
				call createitemloc('I0CD',loc)
			endif
		endif
		if udg_lddsbool[i]==true then
			call createitemloc(YaoCao[9],loc)
		endif
		set N7=N7+1
	endloop
	call RemoveLocation(loc)
	set u = null
	set p = null
	set loc = null
endfunction
//FB4杀南海神尼
function l1 takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())=='nelb'))
endfunction
function J1 takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
call createitemloc('I09I',LoadLocationHandle(YDHT,id*cx,$1769D332))
if((GetRandomInt(1,50)<=30))then
call createitemloc(YaoCao[6],LoadLocationHandle(YDHT,id*cx,$1769D332))
if udg_lddsbool[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))] then
    call createitemloc(YaoCao[6],LoadLocationHandle(YDHT,id*cx,$1769D332))
endif
endif
set N7=N7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//FB4杀公孙止
function L1 takes nothing returns boolean
return((GetUnitTypeId(GetTriggerUnit())=='nfpu'))
endfunction
function MM1 takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
if((GetRandomInt(1,60)<=25))then
call createitemloc(1227895089,LoadLocationHandle(YDHT,id*cx,$1769D332))
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,0)
call SaveInteger(YDHT,id*cx,$648579A8,GetRandomInt(1,5))
call SaveInteger(YDHT,id*cx,-$180E5D51,GetRandomInt(1,6))
call SaveInteger(YDHT,id*cx,-$77543A28,0)
call SaveInteger(YDHT,id*cx,-$2D2EBEF5,0)
call SaveInteger(YDHT,id*cx,1732931645,GetRandomInt(0,2))
call SaveInteger(YDHT,id*cx,-$4E51D54A,0)
call SaveInteger(YDHT,id*cx,$44078039,0)
call SaveInteger(YDHT,id*cx,-$6F9D2AE1,0)
call SetItemUserData(bj_lastCreatedItem,(((((((((LoadInteger(YDHT,id*cx,-$5E9EB4B3)*$5F5E100)+(LoadInteger(YDHT,id*cx,$648579A8)*$989680))+(LoadInteger(YDHT,id*cx,-$180E5D51)*$F4240))+(LoadInteger(YDHT,id*cx,-$77543A28)*$186A0))+(LoadInteger(YDHT,id*cx,-$2D2EBEF5)*$2710))+(LoadInteger(YDHT,id*cx,1732931645)*$3E8))+(LoadInteger(YDHT,id*cx,-$4E51D54A)*100))+(LoadInteger(YDHT,id*cx,$44078039)*$A))+LoadInteger(YDHT,id*cx,-$6F9D2AE1)))
else
if((GetRandomInt(1,50)<=30))then
call createitemloc(1227895091,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
call createitemloc(1227895371,LoadLocationHandle(YDHT,id*cx,$1769D332))
endif
endif
set N7=N7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//FB4杀裘千仞
function O1 takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())=='nmgr'))
endfunction
function P1 takes nothing returns nothing
	local location loc=GetUnitLoc(GetTriggerUnit())
	if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
		set MM7=2
	else
		set MM7=1
	endif
	set N7=1
	loop
		exitwhen N7>MM7
		if GetRandomInt(0,100)<=5 then
			call createitemloc(1227895090,loc)
			call SetItemUserData(bj_lastCreatedItem,(GetRandomInt(1,6)*$989680)+(GetRandomInt(1,5)*$F4240)+(GetRandomInt(0,2)*$3E8))
		else
			call createitemloc('I099',loc)
		endif
		set N7=N7+1
	endloop
	call RemoveLocation(loc)
	set loc=null
endfunction
//FB4杀裘千尺
function R1 takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())=='nhfp'))
endfunction
function S1 takes nothing returns nothing
	local location loc=GetUnitLoc(GetTriggerUnit())
	if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
		set MM7=2
	else
		set MM7=1
	endif
	set N7=1
	loop
		exitwhen N7>MM7
		if GetRandomInt(0,100)<=5 then
			call createitemloc(1227895372,loc)
		else
			call createitemloc('I09A',loc)
		endif
		set N7=N7+1
	endloop
	call RemoveLocation(loc)
	set loc=null
endfunction
//FB4杀长须老鬼
function U1 takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())=='nrzb'))
endfunction
function V1 takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
if((GetRandomInt(1,100)<=25))then
call createitemloc('I014',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,75)<=25))then
call createitemloc(1227895093,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,50)<=25))then
call createitemloc('I00Z',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
call createitemloc('I010',LoadLocationHandle(YDHT,id*cx,$1769D332))
endif
endif
endif
set N7=N7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//FB5杀李秋水
function X1 takes nothing returns boolean
return((GetUnitTypeId(GetTriggerUnit())==1852270642))
endfunction
function Y1 takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
if((GetRandomInt(1,50)<=25))then
call createitemloc('I00V',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
call createitemloc('I00U',LoadLocationHandle(YDHT,id*cx,$1769D332))
endif
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,0)
call SaveInteger(YDHT,id*cx,$648579A8,GetRandomInt(1,5))
call SaveInteger(YDHT,id*cx,-$180E5D51,GetRandomInt(1,7))
call SaveInteger(YDHT,id*cx,-$77543A28,GetRandomInt(1,5))
call SaveInteger(YDHT,id*cx,-$2D2EBEF5,GetRandomInt(1,7))
call SaveInteger(YDHT,id*cx,1732931645,GetRandomInt(0,2))
call SaveInteger(YDHT,id*cx,-$4E51D54A,0)
call SaveInteger(YDHT,id*cx,$44078039,0)
call SaveInteger(YDHT,id*cx,-$6F9D2AE1,0)
call SetItemUserData(bj_lastCreatedItem,(((((((((LoadInteger(YDHT,id*cx,-$5E9EB4B3)*$5F5E100)+(LoadInteger(YDHT,id*cx,$648579A8)*$989680))+(LoadInteger(YDHT,id*cx,-$180E5D51)*$F4240))+(LoadInteger(YDHT,id*cx,-$77543A28)*$186A0))+(LoadInteger(YDHT,id*cx,-$2D2EBEF5)*$2710))+(LoadInteger(YDHT,id*cx,1732931645)*$3E8))+(LoadInteger(YDHT,id*cx,-$4E51D54A)*100))+(LoadInteger(YDHT,id*cx,$44078039)*$A))+LoadInteger(YDHT,id*cx,-$6F9D2AE1)))
set N7=N7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//FB5杀天山童姥
function dJ takes nothing returns boolean
return((GetUnitTypeId(GetTriggerUnit())==1852207984))
endfunction
function eJ takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
if((GetRandomInt(0,100)<=100))then
call createitemloc('I00W',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
//call createitemloc('I00T',LoadLocationHandle(YDHT,id*cx,$1769D332))
endif
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,0)
call SaveInteger(YDHT,id*cx,$648579A8,GetRandomInt(1,5))
call SaveInteger(YDHT,id*cx,-$180E5D51,GetRandomInt(1,7))
call SaveInteger(YDHT,id*cx,-$77543A28,GetRandomInt(1,5))
call SaveInteger(YDHT,id*cx,-$2D2EBEF5,GetRandomInt(1,7))
call SaveInteger(YDHT,id*cx,1732931645,GetRandomInt(0,2))
call SaveInteger(YDHT,id*cx,-$4E51D54A,0)
call SaveInteger(YDHT,id*cx,$44078039,0)
call SaveInteger(YDHT,id*cx,-$6F9D2AE1,0)
call SetItemUserData(bj_lastCreatedItem,(((((((((LoadInteger(YDHT,id*cx,-$5E9EB4B3)*$5F5E100)+(LoadInteger(YDHT,id*cx,$648579A8)*$989680))+(LoadInteger(YDHT,id*cx,-$180E5D51)*$F4240))+(LoadInteger(YDHT,id*cx,-$77543A28)*$186A0))+(LoadInteger(YDHT,id*cx,-$2D2EBEF5)*$2710))+(LoadInteger(YDHT,id*cx,1732931645)*$3E8))+(LoadInteger(YDHT,id*cx,-$4E51D54A)*100))+(LoadInteger(YDHT,id*cx,$44078039)*$A))+LoadInteger(YDHT,id*cx,-$6F9D2AE1)))
set N7=N7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//FB5杀无崖子
function gJ takes nothing returns boolean
return((GetUnitTypeId(GetTriggerUnit())==1852663652))
endfunction
function hJ takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
if((GetRandomInt(1,50)<=25))then
call createitemloc('I00P',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
call createitemloc('I00O',LoadLocationHandle(YDHT,id*cx,$1769D332))
endif
if GetRandomReal(1, 100)<=3. or (GetRandomReal(1, 100)<=6. and Ce[1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))]==8) then
	call createitemloc('I0CA',LoadLocationHandle(YDHT,id*cx,$1769D332))
endif
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,0)
call SaveInteger(YDHT,id*cx,$648579A8,GetRandomInt(1,5))
call SaveInteger(YDHT,id*cx,-$180E5D51,GetRandomInt(1,7))
call SaveInteger(YDHT,id*cx,-$77543A28,GetRandomInt(1,5))
call SaveInteger(YDHT,id*cx,-$2D2EBEF5,GetRandomInt(1,7))
call SaveInteger(YDHT,id*cx,1732931645,GetRandomInt(0,2))
call SaveInteger(YDHT,id*cx,-$4E51D54A,0)
call SaveInteger(YDHT,id*cx,$44078039,0)
call SaveInteger(YDHT,id*cx,-$6F9D2AE1,0)
call SetItemUserData(bj_lastCreatedItem,(((((((((LoadInteger(YDHT,id*cx,-$5E9EB4B3)*$5F5E100)+(LoadInteger(YDHT,id*cx,$648579A8)*$989680))+(LoadInteger(YDHT,id*cx,-$180E5D51)*$F4240))+(LoadInteger(YDHT,id*cx,-$77543A28)*$186A0))+(LoadInteger(YDHT,id*cx,-$2D2EBEF5)*$2710))+(LoadInteger(YDHT,id*cx,1732931645)*$3E8))+(LoadInteger(YDHT,id*cx,-$4E51D54A)*100))+(LoadInteger(YDHT,id*cx,$44078039)*$A))+LoadInteger(YDHT,id*cx,-$6F9D2AE1)))
set N7=N7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//FB5杀闪电蜥蜴
function jJ takes nothing returns boolean
return((GetUnitTypeId(GetTriggerUnit())==1853058166))
endfunction
function kJ takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
call createitemloc(1227895861,LoadLocationHandle(YDHT,id*cx,$1769D332))
set N7=N7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//FB5杀千山雪母
function nJ takes nothing returns boolean
	return (GetUnitTypeId(GetTriggerUnit())=='nsbm')
endfunction
function oJ takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	local location loc = GetUnitLoc(u)
	if(GetRandomInt(1,1000)<=fuyuan[i] or (GetRandomInt(1, 100)<=30 and Ce[i]==6))then
		set MM7=2
	else
		set MM7=1
	endif
	set N7=1
	loop
		exitwhen N7>MM7
		call createitemloc(1227895860,loc)
		set N7=N7+1
	endloop
	call RemoveLocation(loc)
	set u = null
	set p = null
	set loc = null
endfunction
//杀黄裳
function qJ takes nothing returns boolean
return((GetUnitTypeId(GetTriggerUnit())==1752395892))
endfunction
function rJ takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
set shengwang[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]=(shengwang[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]+$C8)
call DisplayTextToPlayer(GetOwningPlayer(GetKillingUnit()),0,0,"|cff00ff00击杀黄裳，获得江湖声望+200")
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
if((GetRandomInt(1,80)<=$A))then
call createitemloc(1227895635,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,70)<=$A))then
call createitemloc('I03M',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,60)<=$A))then
call createitemloc(1227895637,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,50)<=$A))then
call createitemloc(1227895634,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,40)<=$A))then
call createitemloc(1227895632,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,30)<=$A))then
call createitemloc(1227895633,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,20)<=$A))then
call createitemloc(1227895631,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
call createitemloc(1227895636,LoadLocationHandle(YDHT,id*cx,$1769D332))
endif
endif
endif
endif
endif
endif
endif
call createitemloc(YaoCao[12],LoadLocationHandle(YDHT,id*cx,$1769D332))
if udg_lddsbool[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))] then
    call createitemloc(YaoCao[12],LoadLocationHandle(YDHT,id*cx,$1769D332))
endif
set N7=N7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//FB6杀令狐冲
function tJ takes nothing returns boolean
return((GetUnitTypeId(GetTriggerUnit())==1751672179))
endfunction
function uJ takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
if((GetRandomInt(1,50)<=25))then
call createitemloc('I00I',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
call createitemloc('I00N',LoadLocationHandle(YDHT,id*cx,$1769D332))
endif
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,GetRandomInt(1,4))
call SaveInteger(YDHT,id*cx,$648579A8,GetRandomInt(1,5))
call SaveInteger(YDHT,id*cx,-$180E5D51,GetRandomInt(1,8))
call SaveInteger(YDHT,id*cx,-$77543A28,GetRandomInt(1,5))
call SaveInteger(YDHT,id*cx,-$2D2EBEF5,GetRandomInt(1,8))
call SaveInteger(YDHT,id*cx,1732931645,GetRandomInt(0,3))
call SaveInteger(YDHT,id*cx,-$4E51D54A,0)
call SaveInteger(YDHT,id*cx,$44078039,0)
call SaveInteger(YDHT,id*cx,-$6F9D2AE1,0)
call SetItemUserData(bj_lastCreatedItem,(((((((((LoadInteger(YDHT,id*cx,-$5E9EB4B3)*$5F5E100)+(LoadInteger(YDHT,id*cx,$648579A8)*$989680))+(LoadInteger(YDHT,id*cx,-$180E5D51)*$F4240))+(LoadInteger(YDHT,id*cx,-$77543A28)*$186A0))+(LoadInteger(YDHT,id*cx,-$2D2EBEF5)*$2710))+(LoadInteger(YDHT,id*cx,1732931645)*$3E8))+(LoadInteger(YDHT,id*cx,-$4E51D54A)*100))+(LoadInteger(YDHT,id*cx,$44078039)*$A))+LoadInteger(YDHT,id*cx,-$6F9D2AE1)))
set N7=N7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//FB6杀风清扬
function wJ takes nothing returns boolean
return((GetUnitTypeId(GetTriggerUnit())==1851942252))
endfunction
function xJ takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
if((GetRandomInt(1,50)<=25))then
call createitemloc(1227895874,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
call createitemloc('I00G',LoadLocationHandle(YDHT,id*cx,$1769D332))
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,GetRandomInt(1,4))
call SaveInteger(YDHT,id*cx,$648579A8,GetRandomInt(1,5))
call SaveInteger(YDHT,id*cx,-$180E5D51,GetRandomInt(1,8))
call SaveInteger(YDHT,id*cx,-$77543A28,GetRandomInt(1,5))
call SaveInteger(YDHT,id*cx,-$2D2EBEF5,GetRandomInt(1,8))
call SaveInteger(YDHT,id*cx,1732931645,GetRandomInt(0,3))
call SaveInteger(YDHT,id*cx,-$4E51D54A,0)
call SaveInteger(YDHT,id*cx,$44078039,0)
call SaveInteger(YDHT,id*cx,-$6F9D2AE1,0)
call SetItemUserData(bj_lastCreatedItem,(((((((((LoadInteger(YDHT,id*cx,-$5E9EB4B3)*$5F5E100)+(LoadInteger(YDHT,id*cx,$648579A8)*$989680))+(LoadInteger(YDHT,id*cx,-$180E5D51)*$F4240))+(LoadInteger(YDHT,id*cx,-$77543A28)*$186A0))+(LoadInteger(YDHT,id*cx,-$2D2EBEF5)*$2710))+(LoadInteger(YDHT,id*cx,1732931645)*$3E8))+(LoadInteger(YDHT,id*cx,-$4E51D54A)*100))+(LoadInteger(YDHT,id*cx,$44078039)*$A))+LoadInteger(YDHT,id*cx,-$6F9D2AE1)))
endif
set N7=N7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//FB6杀独孤求败
function zJ takes nothing returns boolean
return((GetUnitTypeId(GetTriggerUnit())==1852142199))
endfunction
function AJ takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
if((GetRandomInt(1,50)<=25))then
call createitemloc(1227895873,LoadLocationHandle(YDHT,id*cx,$1769D332))
else
call createitemloc('I00C',LoadLocationHandle(YDHT,id*cx,$1769D332))
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,GetRandomInt(1,4))
call SaveInteger(YDHT,id*cx,$648579A8,GetRandomInt(1,5))
call SaveInteger(YDHT,id*cx,-$180E5D51,GetRandomInt(1,8))
call SaveInteger(YDHT,id*cx,-$77543A28,GetRandomInt(1,5))
call SaveInteger(YDHT,id*cx,-$2D2EBEF5,GetRandomInt(1,8))
call SaveInteger(YDHT,id*cx,1732931645,GetRandomInt(0,3))
call SaveInteger(YDHT,id*cx,-$4E51D54A,0)
call SaveInteger(YDHT,id*cx,$44078039,0)
call SaveInteger(YDHT,id*cx,-$6F9D2AE1,0)
call SetItemUserData(bj_lastCreatedItem,(((((((((LoadInteger(YDHT,id*cx,-$5E9EB4B3)*$5F5E100)+(LoadInteger(YDHT,id*cx,$648579A8)*$989680))+(LoadInteger(YDHT,id*cx,-$180E5D51)*$F4240))+(LoadInteger(YDHT,id*cx,-$77543A28)*$186A0))+(LoadInteger(YDHT,id*cx,-$2D2EBEF5)*$2710))+(LoadInteger(YDHT,id*cx,1732931645)*$3E8))+(LoadInteger(YDHT,id*cx,-$4E51D54A)*100))+(LoadInteger(YDHT,id*cx,$44078039)*$A))+LoadInteger(YDHT,id*cx,-$6F9D2AE1)))
endif
call createitemloc(YaoCao[8],LoadLocationHandle(YDHT,id*cx,$1769D332))
if udg_lddsbool[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))] then
    call createitemloc(YaoCao[8],LoadLocationHandle(YDHT,id*cx,$1769D332))
endif
set N7=N7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//FB6杀东方不败
function BJ takes nothing returns boolean
return((GetUnitTypeId(GetTriggerUnit())==1969976430))
endfunction
function bJ takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
if((GetRandomInt(1,125)<=25))then
call createitemloc('I00D',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,100)<=25))then
call createitemloc('I00B',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,75)<=25))then
call createitemloc('I00F',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,50)<=25))then
call createitemloc('I00L',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
call createitemloc(1227894856,LoadLocationHandle(YDHT,id*cx,$1769D332))
endif
endif
endif
endif
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,GetRandomInt(1,4))
call SaveInteger(YDHT,id*cx,$648579A8,GetRandomInt(1,5))
call SaveInteger(YDHT,id*cx,-$180E5D51,GetRandomInt(1,8))
call SaveInteger(YDHT,id*cx,-$77543A28,GetRandomInt(1,5))
call SaveInteger(YDHT,id*cx,-$2D2EBEF5,GetRandomInt(1,8))
call SaveInteger(YDHT,id*cx,1732931645,GetRandomInt(0,3))
call SaveInteger(YDHT,id*cx,-$4E51D54A,0)
call SaveInteger(YDHT,id*cx,$44078039,0)
call SaveInteger(YDHT,id*cx,-$6F9D2AE1,0)
call SetItemUserData(bj_lastCreatedItem,(((((((((LoadInteger(YDHT,id*cx,-$5E9EB4B3)*$5F5E100)+(LoadInteger(YDHT,id*cx,$648579A8)*$989680))+(LoadInteger(YDHT,id*cx,-$180E5D51)*$F4240))+(LoadInteger(YDHT,id*cx,-$77543A28)*$186A0))+(LoadInteger(YDHT,id*cx,-$2D2EBEF5)*$2710))+(LoadInteger(YDHT,id*cx,1732931645)*$3E8))+(LoadInteger(YDHT,id*cx,-$4E51D54A)*100))+(LoadInteger(YDHT,id*cx,$44078039)*$A))+LoadInteger(YDHT,id*cx,-$6F9D2AE1)))
set N7=N7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//杀矮人得决战魁、杀矮子王得江湖忠
function IsAiRen takes nothing returns boolean
    return((GetUnitTypeId(GetTriggerUnit())=='hrif') or (GetUnitTypeId(GetTriggerUnit())=='Hmkg'))
endfunction
function KillAiRen takes nothing returns nothing
    local unit u=GetTriggerUnit()
    local location loc=GetUnitLoc(u)
    if GetUnitTypeId(u)=='hrif' then
    	if GetRandomReal(0,30)<=2 then
    	    call createitemloc('I08Y',loc)
    	endif
    else
   		call createitemloc('I08V',loc)
	endif
    call RemoveLocation(loc)
    set loc=null
    set u=null
endfunction
//杀牛妖得残章第一式
function cJ takes nothing returns boolean
return((GetUnitTypeId(GetTriggerUnit())=='njgb'))
endfunction
function DJ takes nothing returns nothing
 local unit u=GetTriggerUnit()
    local location loc=GetUnitLoc(u)
    local integer i=0
    set i=GetRandomInt(1,10)
    if GetRandomReal(0,27)<=3 then
        call createitemloc(udg_canzhang[i],loc)
    endif
    call RemoveLocation(loc)
    set loc=null
    set u=null
endfunction
//杀渣小庸只掉落江湖套
function FJ takes nothing returns boolean
return((GetUnitTypeId(GetTriggerUnit())==1852207203))
endfunction
function GJ takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
//渣小庸只掉落江湖套
	if((GetRandomInt(1,75)<=25))then
		call createitemloc('I08X',LoadLocationHandle(YDHT,id*cx,$1769D332))
	else
		if GetRandomInt(1, 50)<=30 then
			call createitemloc('I08Z',LoadLocationHandle(YDHT,id*cx,$1769D332))
		else
			call createitemloc('I090',LoadLocationHandle(YDHT,id*cx,$1769D332))
		endif
	endif

set N7=N7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//FB3
//杀熊、桃花岛哑仆、灭火（救火）
function JK takes nothing returns boolean
	return GetUnitTypeId(GetTriggerUnit())=='nfrl' or GetUnitTypeId(GetTriggerUnit())=='nvil' or GetUnitTypeId(GetTriggerUnit())=='nlv3'
endfunction
function KK takes nothing returns nothing
	local unit u=GetKillingUnit()
	local unit uc=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	local location loc=GetUnitLoc(uc)
	if GetUnitTypeId(uc)=='nfrl' then
		if GetRandomInt(1,50)<=3 then
		    call createitemloc('I02C',loc)
		endif
		if GetRandomInt(1,50)<=3 then
		    call createitemloc('I02O',loc)
		endif
		if((rd[i]==1))then
			set ud[i]=ud[i]+1
			if ud[i]>=30 then
				set rd[i]=2
				call unitadditembyidswapped(1227895372,u)
				call PlaySoundOnUnitBJ(Hh,100,u)
				call DisplayTextToPlayer(p,0,0,("|CFF34FF00完成任务获得江湖声望+150和"+GetItemName(bj_lastCreatedItem)))
				set shengwang[i]=(shengwang[i]+$96)
			else
				call DisplayTextToPlayer(p,0,0,("熊："+(I2S(ud[i])+" / 30")))
			endif
		endif
	elseif GetUnitTypeId(uc)=='nvil' then
		if LoadInteger(YDHT,StringHash("哑仆任务"),i)==1 then
			call SaveInteger(YDHT,StringHash("哑仆"),i,LoadInteger(YDHT,StringHash("哑仆"),i)+1)
			if LoadInteger(YDHT,StringHash("哑仆"),i)>=10 then
				call SaveInteger(YDHT,StringHash("哑仆任务"),i,0)
				call SaveInteger(YDHT,StringHash("哑仆"),i,0)
				call unitadditembyidswapped('I09V',u)
				call PlaySoundOnUnitBJ(Hh,100,u)
				call DisplayTextToPlayer(p,0,0,("|CFF34FF00完成任务获得"+GetItemName(bj_lastCreatedItem)))
			else
				call DisplayTextToPlayer(p,0,0,("哑仆："+I2S(LoadInteger(YDHT,StringHash("哑仆"),i))+" / 10"))
			endif
		endif
		if GetRandomReal(1, 100) <=5 then
			call unitadditembyidswapped('I09K',u)
		endif
	elseif GetUnitTypeId(uc)=='nlv3' then
		if GetRandomInt(0,100)<=100-GetNumPlayer()*10 then
			call AdjustPlayerStateBJ(2,Player(0),PLAYER_STATE_RESOURCE_LUMBER)
			call AdjustPlayerStateBJ(2,Player(1),PLAYER_STATE_RESOURCE_LUMBER)
			call AdjustPlayerStateBJ(2,Player(2),PLAYER_STATE_RESOURCE_LUMBER)
			call AdjustPlayerStateBJ(2,Player(3),PLAYER_STATE_RESOURCE_LUMBER)
			call AdjustPlayerStateBJ(2,Player(4),PLAYER_STATE_RESOURCE_LUMBER)
		endif
		if GetRandomReal(1, 100) <=2.5 then
			call unitadditembyidswapped('I09I',u)
		endif
	endif
	call RemoveLocation(loc)
	set u=null
	set uc=null
	set p=null
	set loc=null
endfunction
//-------副本系统开始-------//
function IsFuBen takes item it returns boolean
	if GetItemTypeId(it)=='I02F' or GetItemTypeId(it)=='I03V' or GetItemTypeId(it)=='I04C' or GetItemTypeId(it)=='I04I' or GetItemTypeId(it)=='I04V' or GetItemTypeId(it)=='I05L' then
		return true
	endif
	return false
endfunction
function ShenMiGuaiWu takes unit u, location loc, integer FBNum, integer gw1, integer gw2, integer gw3 returns nothing
	local integer i = 1+GetPlayerId(GetOwningPlayer(u))
	if (GetRandomInt(1,100)<=20 and udg_jddsbool[i]==false)then
		call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30,"|cFFFFCC33载入神秘怪物：|cFF33FFFF无")
	else
		if((GetRandomInt(1,60)<=20))then
			call CreateNUnitsAtLoc(1,gw1,Player(12),loc,bj_UNIT_FACING)
		elseif((GetRandomInt(1,40)<=20))then
			call CreateNUnitsAtLoc(1,gw2,Player(12),loc,bj_UNIT_FACING)
		else
			call CreateNUnitsAtLoc(1,gw3,Player(12),loc,bj_UNIT_FACING)
		endif
		call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30,("|cFFFFCC33载入神秘怪物：|cFF33FFFF"+GetUnitName(bj_lastCreatedUnit)))
		set p8[FBNum]=bj_lastCreatedUnit
	endif
endfunction
function XiYouDiaoLuo takes unit u, integer FBNum, integer dl1, integer dl2, integer dl3, integer dl4 returns nothing
	local integer i = 1+GetPlayerId(GetOwningPlayer(u))
	if((GetRandomInt(1,100)<=20 and udg_jddsbool[i]==false))then
		call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30,"|cFFFFCC33载入稀有掉落：|cFF33FFFF无")
		set q8[FBNum]='crys'
	else
		if((GetRandomInt(1,60)<=15))then
			set q8[FBNum]=dl1
		elseif((GetRandomInt(1,45)<=15))then
			set q8[FBNum]=dl2
		elseif((GetRandomInt(1,30)<=25))then
			set q8[FBNum]=dl3
		else
			set q8[FBNum]=dl4
		endif
		call createitemloc(q8[FBNum],v7[$B])
		call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30,("|cFFFFCC33载入稀有掉落：|cFF33FFFF"+GetItemName(bj_lastCreatedItem)))
		call RemoveItem(bj_lastCreatedItem)
	endif
endfunction
function QiYuanNPC takes unit u, integer FBNum, integer id, integer id2, rect rt1, rect rt2, rect rt3, rect rt4, rect rt5, rect rt6 returns nothing
	local location loc3 = null
	local integer i = 1+GetPlayerId(GetOwningPlayer(u))
	if((GetRandomInt(1,100)<=50 and udg_jddsbool[i]==false))then
		call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30,"|cFFFFCC33载入奇缘NPC：|cFF33FFFF无")
	else
		if (id!='crys') then
			if((GetRandomInt(1,120)<=20))then
				set loc3 = GetRectCenter(rt1)
			elseif((GetRandomInt(1,100)<=20))then
				set loc3 = GetRectCenter(rt2)
			elseif((GetRandomInt(1,80)<=20))then
				set loc3 = GetRectCenter(rt3)
			elseif((GetRandomInt(1,60)<=20))then
				set loc3 = GetRectCenter(rt4)
			elseif((GetRandomInt(1,40)<=20))then
				set loc3 = GetRectCenter(rt5)
			else
				set loc3 = GetRectCenter(rt6)
			endif
			if GetRandomInt(1,2)==1 then
				call CreateNUnitsAtLoc(1,id,Player(15),loc3,bj_UNIT_FACING)
			else
				call CreateNUnitsAtLoc(1,id2,Player(15),loc3,bj_UNIT_FACING)
			endif
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30,("|cFFFFCC33载入奇缘NPC：|cFF33FFFF"+GetUnitName(bj_lastCreatedUnit)))
			set r8[FBNum]=bj_lastCreatedUnit
			call RemoveLocation(loc3)
		endif
	endif
	set loc3 = null
endfunction
function EnterFB takes unit u, integer goldnum, rect rt0, rect rt1, rect rt2, integer FBNum, string FBName returns nothing
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	local location loc = null
	local location loc2 = null
	local integer array gws
	local integer array dls
	local integer array qys
	local rect array qylocs
	//神秘怪物
	set gws[1] = 'otau'
	set gws[2] = 'odkt'
	set gws[3] = 'uaco'
	set gws[4] = 1702258030
	set gws[5] = 1700884333
	set gws[6] = 1852007777
	set gws[7] = 1701672039
	set gws[8] = 1702061422
	set gws[9] = 1970169187
	set gws[10] = 'nelb'
	set gws[11] = 'nhfp'
	set gws[12] = 'nmgr'
	set gws[13] = 1853058166
	set gws[14] = 'nsbm'
	set gws[15] = 'nsbm'
	set gws[16] = 1852142199
	set gws[17] = 1851942252
	set gws[18] = 1751672179
	//稀有掉落
	set dls[1] = 'I021'
	set dls[2] = 'I01L'
	set dls[3] = 'I01M'
	set dls[4] = 1227895110
	set dls[5] = 1227895109
	set dls[6] = 'I02S'
	set dls[7] = 1227895111
	set dls[8] = 1227895371
	set dls[9] = 'I02S'
	set dls[10] = 'I02S'
	set dls[11] = 1227895380
	set dls[12] = 1227895857
	set dls[13] = 1227895859
	set dls[14] = 'I042'
	set dls[15] = 'I014'
	set dls[16] = 'I014'
	set dls[17] = 'I00Q'
	set dls[18] = 'I00S'
	set dls[19] = 'I00R'
	set dls[20] = 'I00R'
	set dls[21] = 'I00K'
	set dls[22] = 'I00M'
	set dls[23] = 'I00M'
	set dls[24] = 'I00K'
	set dls[25] = 'crys'
	set dls[26] = 'crys'
	set dls[27] = 'crys'
	set dls[28] = 'crys'
	//奇缘NPC
	set qys[1] = 1865429068
	set qys[2] = 1865429068
	set qys[3] = 1865429071
	set qys[4] = 1865429059
	set qys[5] = 1865429073
	set qys[6] = 1865429073
	set qys[7] = 1865429076
	set qys[8] = 'o026'
	set qys[9] = 1865429080
	set qys[10] = 1865429080
	set qys[11] = 'crys'
	set qys[12] = 'crys'

	set qylocs[1] = gf
	set qylocs[2] = hf
	set qylocs[3] = jf
	set qylocs[4] = kf
	set qylocs[5] = mf
	set qylocs[6] = nf
	set qylocs[7] = Af
	set qylocs[8] = af
	set qylocs[9] = Bf
	set qylocs[10] = bf
	set qylocs[11] = Cf
	set qylocs[12] = cf
	set qylocs[13] = Zf
	set qylocs[14] = Zf
	set qylocs[15] = Zf
	set qylocs[16] = Zf
	set qylocs[17] = Zf
	set qylocs[18] = Zf
	set qylocs[19] = Fg
	set qylocs[20] = Fg
	set qylocs[21] = Fg
	set qylocs[22] = Fg
	set qylocs[23] = Fg
	set qylocs[24] = Fg
	set qylocs[25] = Pg
	set qylocs[26] = Pg
	set qylocs[27] = Pg
	set qylocs[28] = Pg
	set qylocs[29] = Pg
	set qylocs[30] = Pg
	set qylocs[31] = Pg
	set qylocs[32] = Pg
	set qylocs[33] = Pg
	set qylocs[34] = Pg
	set qylocs[35] = Pg
	set qylocs[36] = Pg
	if (xiuxing[i]<=FBNum-2) then
		call AdjustPlayerStateBJ(goldnum,p,PLAYER_STATE_RESOURCE_GOLD)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00修行达到"+I2S(FBNum-1)+"才可以进入,你的修行不足，请前往地图指示点修行去吧")
		set loc = GetRectCenter(rt0)
		call PingMinimapLocForForce(ov(p),loc,5.)
		call RemoveLocation(loc)
	else
		if((UnitTypeNotNull(u,UNIT_TYPE_HERO)))then
			set loc = GetRectCenter(rt1)
			set loc2 = GetRectCenter(rt2)
			call SetUnitPositionLoc(u,loc)
			call PanCameraToTimedLocForPlayer(p,loc,0)
			if((m8[FBNum]==false))then
				call RemoveUnit(r8[FBNum])
				set q8[FBNum]='crys'
				call RemoveUnit(p8[FBNum])
				call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30,"|cFFFFCC00开始载入动态副本：|r |cFF99FFCC"+FBName+"|r")
				call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30,"|cFFcc99ff――――――――――")
				call ShenMiGuaiWu(u, loc2, FBNum, gws[FBNum*3-2], gws[FBNum*3-1], gws[FBNum*3])
				call XiYouDiaoLuo(u, FBNum, dls[FBNum*4-3], dls[FBNum*4-2], dls[FBNum*4-1], dls[FBNum*4])
				call QiYuanNPC(u, FBNum, qys[FBNum*2-1], qys[FBNum*2], qylocs[FBNum*6-5], qylocs[FBNum*6-4], qylocs[FBNum*6-3], qylocs[FBNum*6-2], qylocs[FBNum*6-1], qylocs[FBNum*6])
				call DisplayTimedTextToPlayer(p,0,0,30,"|cFFFFCC33小怪武功：|cFF33FFFF暂未制作此玩法")
				call DisplayTimedTextToPlayer(p,0,0,30,"|cFFFFCC33BOSS武功：|cFF33FFFF暂未制作此玩法")
				call StartTimerBJ(Hd[FBNum],false,150.)
				call DisplayTimedTextToPlayer(p,0,0,30,("|cFFFF0033副本重置倒计时：|cFF33FFFF"+(I2S(R2I(TimerGetRemaining(Hd[FBNum])))+"秒")))
				set m8[FBNum]=true
				call YDWEPolledWaitNull(150.)
				set m8[FBNum]=false
			else
				call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30,"|cFFFFCC00进入动态副本：|r |cFF99FFCC"+FBName+"|r")
				call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30,"|cFFcc99ff――――――――――")
				call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30,("|cFFFFCC33神秘怪物：|cFF33FFFF"+GetUnitName(p8[FBNum])))
				call createitemloc(q8[FBNum],v7[$B])
				call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30,("|cFFFFCC33稀有掉落：|cFF33FFFF"+GetItemName(bj_lastCreatedItem)))
				call RemoveItem(bj_lastCreatedItem)
				call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30,("|cFFFFCC33载入奇缘NPC：|cFF33FFFF"+GetUnitName(r8[FBNum])))
				call DisplayTimedTextToPlayer(p,0,0,30,"|cFFFFCC33小怪武功：|cFF33FFFF暂未制作此玩法")
				call DisplayTimedTextToPlayer(p,0,0,30,"|cFFFFCC33BOSS武功：|cFF33FFFF暂未制作此玩法")
				call DisplayTimedTextToPlayer(p,0,0,30,("|cFFFF0033副本重置倒计时：|cFF33FFFF"+(I2S(R2I(TimerGetRemaining(Hd[FBNum])))+"秒")))
			endif
			call RemoveLocation(loc)
			call RemoveLocation(loc2)
		else
			call AdjustPlayerStateBJ(100,p,PLAYER_STATE_RESOURCE_GOLD)
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00只能由主角亲自购买前往")
		endif
	endif
	set p = null
	set u = null
	set loc = null
	set loc2 = null
endfunction
//进入FB
function IL takes nothing returns boolean
	return IsFuBen(GetManipulatedItem())
endfunction
function lL takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local item it = GetManipulatedItem()
	if GetItemTypeId(it)=='I02F'  then
		call EnterFB(u, 100, Te, Ze, ef, 1, "马贼洞")
	elseif GetItemTypeId(it)=='I03V' then
		call EnterFB(u, 300, Te, yf, zf, 2, "崆峒山")
	elseif GetItemTypeId(it)=='I04C' then
		call EnterFB(u, 1000, ag, Xf, Yf, 3, "塞北")
	elseif GetItemTypeId(it)=='I04I' then
		call EnterFB(u, 3000, Bg, Eg, Dg, 4, "绝情谷")
	elseif GetItemTypeId(it)=='I04V' then
		call EnterFB(u, 6000, Lg, Ng, Og, 5, "逍遥宫")
	elseif  GetItemTypeId(it)=='I05L' then
		call EnterFB(u, 10000, Rg, Wg, Xg, 6, "黑木崖")
	endif
	set u = null
	set it = null
endfunction
function KL takes nothing returns boolean
	return((RectContainsUnit(of,GetTriggerUnit())))
endfunction
function LL takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	local location loc = GetUnitLoc(u)
	if((GetRandomInt(1,1000)<=fuyuan[i]) or (GetRandomInt(1, 100)<=30 and Ce[i]==6))then
		set MM7=2
	else
		set MM7=1
	endif
	set N7=1
	loop
		exitwhen N7>MM7
		if((GetRandomInt(1,100)>=98)and(q8[1]!='crys'))then
			call createitemloc(q8[1],loc)
		endif
		set N7=N7+1
	endloop
	call RemoveLocation(loc)
	set p = null
	set u = null
	set loc = null
endfunction
//-------副本系统结束-------//
//-------各种副本开始-------//
//韦小宝赌博
function NL takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())==1865429068)and(DistanceBetweenPoints(GetUnitLoc(GetTriggerUnit()),GetUnitLoc(udg_hero[(1+GetPlayerId(GetTriggerPlayer()))]))<=250.))
endfunction
function OL takes nothing returns nothing
	set s8=GetTriggerPlayer()
	set t8=true
	call RemoveUnit(GetTriggerUnit())
	call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,30,"|cFFFFCC33韦小宝想邀请你同他赌一局，你是否愿意呢？|cFF33FFFF15秒钟内操作键盘选择  \n↑：同意并将身上的钱全部下注\n←：同意并将身上50%的钱下注\n→：同意并将身上25%的钱下注\n↓：拒绝")
	call YDWEPolledWaitNull(15.)
	set t8=false
endfunction
function QL takes nothing returns boolean
	return((GetTriggerPlayer()==s8)and(t8))
endfunction
function RL takes nothing returns nothing
	local player p = GetTriggerPlayer()
	local integer i = 1+GetPlayerId(p)
	if((GetRandomInt(1,10)<=5))then
		call SetPlayerStateBJ(p, PLAYER_STATE_RESOURCE_GOLD, (GetPlayerState(s8,PLAYER_STATE_RESOURCE_GOLD)*2))
		call DisplayTextToPlayer(p,0,0,"赌赢了~")
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFF66FF00有玩家和韦小宝赌博赢得了大量的金钱，停怪就靠他了")
		//if Ce[i]==4 then
		//	if udg_jdds[i]<1 then
		//		set udg_jdds[i] = udg_jdds[i]+1
		//		call DisplayTextToPlayer(p, 0, 0, "|CFF66FF00恭喜您和韦小宝赌赢了"+I2S(udg_jdds[i])+"次，赌赢2次可获得鉴定大师哦")
		//	else
		//		if udg_jddsbool[i] == false then
		//			set udg_jddsbool[i] = true
		//			if udg_zhangmen[i]==true then
		//			else
		//				call SaveStr(YDHT, GetHandleId(p), GetHandleId(p),"〓鉴定大师〓"+LoadStr(YDHT, GetHandleId(p), GetHandleId(p)))
		//			endif
		//			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜"+GetPlayerName(p)+"获得鉴定大师")
		//			call SetPlayerName(p, "〓鉴定大师〓"+GetPlayerName(p))
		//		endif
		//	endif
		//endif
	else
		call SetPlayerStateBJ(p,PLAYER_STATE_RESOURCE_GOLD,0)
		call DisplayTextToPlayer(p,0,0,"赌输了！！")
		if GetRandomInt(1, 100)<=50 or Ce[i]==8 then
			call createitemloc('I0C2',GetUnitLoc(udg_hero[i]))
		endif
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFF66FF00有玩家和韦小宝输得一踏糊涂，大家祈祷吧")
	endif
	set s8=Player(15)
	set p = null
endfunction
function TL takes nothing returns boolean
	return((GetTriggerPlayer()==s8)and(t8))
endfunction
function UL takes nothing returns nothing
	local player p = GetTriggerPlayer()
	local integer i = 1+GetPlayerId(p)
	if((GetRandomInt(1,$A)<=7))then
		call SetPlayerStateBJ(p, PLAYER_STATE_RESOURCE_GOLD, (GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)*5/4))
		call DisplayTextToPlayer(p,0,0,"赌赢了~")
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFF66FF00有玩家和韦小宝赌博赢得了大量的金钱，停怪就靠他了")
		//if Ce[i]==4 then
		//	if udg_jdds[i]<6 then
		//		set udg_jdds[i] = udg_jdds[i]+1
		//	else
		//		if udg_jddsbool[i] == false then
		//			set udg_jddsbool[i] = true
		//			if udg_zhangmen[i]==true then
		//			else
		//				call SaveStr(YDHT, GetHandleId(p), GetHandleId(p),"〓鉴定大师〓"+LoadStr(YDHT, GetHandleId(p), GetHandleId(p)))
		//			endif
		//			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜"+GetPlayerName(p)+"获得鉴定大师")
		//			call SetPlayerName(p, "〓鉴定大师〓"+GetPlayerName(p))
		//		endif
		//	endif
		//endif
	else
		call SetPlayerStateBJ(p,PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)*3/4))
		call DisplayTextToPlayer(p,0,0,"赌输了！！")
		if GetRandomInt(1, 100)<=50 or Ce[i]==8 then
			call createitemloc('I0C2',GetUnitLoc(udg_hero[i]))
		endif
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFF66FF00有玩家和韦小宝输得一踏糊涂，大家祈祷吧")
	endif
	set s8=Player(15)
	set p = null
endfunction
function WL takes nothing returns boolean
	return((GetTriggerPlayer()==s8)and(t8))
endfunction
function XL takes nothing returns nothing
	local player p = GetTriggerPlayer()
	local integer i = 1+GetPlayerId(p)
	if((GetRandomInt(1,$A)<=6))then
		call SetPlayerStateBJ(p, PLAYER_STATE_RESOURCE_GOLD, (GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)*3/2))
		call DisplayTextToPlayer(p,0,0,"赌赢了~")
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFF66FF00有玩家和韦小宝赌博赢得了大量的金钱，停怪就靠他了")
		//if Ce[i]==4 then
		//	if udg_jdds[i]<6 then
		//		set udg_jdds[i] = udg_jdds[i]+1
		//	else
		//		if udg_jddsbool[i] == false then
		//			set udg_jddsbool[i] = true
		//			if udg_zhangmen[i]==true then
		//			else
		//				call SaveStr(YDHT, GetHandleId(p), GetHandleId(p),"〓鉴定大师〓"+LoadStr(YDHT, GetHandleId(p), GetHandleId(p)))
		//			endif
		//			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜"+GetPlayerName(p)+"获得鉴定大师")
		//			call SetPlayerName(p, "〓鉴定大师〓"+GetPlayerName(p))
		//		endif
		//	endif
		//endif
	else
		call SetPlayerStateBJ(p,PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)/2))
		call DisplayTextToPlayer(p,0,0,"赌输了！！")
		if GetRandomInt(1, 100)<=50 or Ce[i]==8 then
			call createitemloc('I0C2',GetUnitLoc(udg_hero[i]))
		endif
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFF66FF00有玩家和韦小宝输得一踏糊涂，大家祈祷吧")
	endif
	set s8=Player(15)
	set p = null
endfunction
function ZL takes nothing returns boolean
	return((GetTriggerPlayer()==s8)and(t8))
endfunction
function dM takes nothing returns nothing
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFF66FF00有玩家放弃和韦小宝赌博")
set s8=Player(15)
endfunction
//FB2稀有掉落
function iM takes nothing returns boolean
	return((RectContainsUnit(xf,GetTriggerUnit())))
endfunction
function jM takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
if((GetRandomInt(1,100)>=98)and(q8[2]!='crys'))then
call createitemloc(q8[2],LoadLocationHandle(YDHT,id*cx,$1769D332))
if((q8[2]=='I02S'))then
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,0)
call SaveInteger(YDHT,id*cx,$648579A8,GetRandomInt(1,5))
call SaveInteger(YDHT,id*cx,-$180E5D51,GetRandomInt(1,6))
call SaveInteger(YDHT,id*cx,-$77543A28,0)
call SaveInteger(YDHT,id*cx,-$2D2EBEF5,0)
call SaveInteger(YDHT,id*cx,1732931645,GetRandomInt(0,1))
call SaveInteger(YDHT,id*cx,-$4E51D54A,0)
call SaveInteger(YDHT,id*cx,$44078039,0)
call SaveInteger(YDHT,id*cx,-$6F9D2AE1,0)
call SetItemUserData(bj_lastCreatedItem,(((((((((LoadInteger(YDHT,id*cx,-$5E9EB4B3)*$5F5E100)+(LoadInteger(YDHT,id*cx,$648579A8)*$989680))+(LoadInteger(YDHT,id*cx,-$180E5D51)*$F4240))+(LoadInteger(YDHT,id*cx,-$77543A28)*$186A0))+(LoadInteger(YDHT,id*cx,-$2D2EBEF5)*$2710))+(LoadInteger(YDHT,id*cx,1732931645)*$3E8))+(LoadInteger(YDHT,id*cx,-$4E51D54A)*100))+(LoadInteger(YDHT,id*cx,$44078039)*$A))+LoadInteger(YDHT,id*cx,-$6F9D2AE1)))
endif
endif
set N7=N7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//FB2奇缘NPC
function mM takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895639))
endfunction
function nM takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call RemoveUnit(r8[2])
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,GetTriggerUnit())
call SaveLocationHandle(YDHT,id*cx,-$3348E012,GetUnitLoc(GetTriggerUnit()))
call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)),LoadLocationHandle(YDHT,id*cx,-$3348E012),bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,'A033')
call IssueImmediateOrderById(bj_lastCreatedUnit,$D00C4)
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',3.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
call FlushChildHashtable(YDHT,id*cx)
endfunction
function pM takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895640))
endfunction
function qM takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call RemoveUnit(r8[2])
call SaveUnitHandle(YDHT,id*cx,$59BEA0CB,GetTriggerUnit())
call SaveLocationHandle(YDHT,id*cx,-$3348E012,GetUnitLoc(GetTriggerUnit()))
call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(LoadUnitHandle(YDHT,id*cx,$59BEA0CB)),LoadLocationHandle(YDHT,id*cx,-$3348E012),bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,1093678673)
call IssueTargetOrderById(bj_lastCreatedUnit,$D0062,GetTriggerUnit())
call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',3.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,-$3348E012))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//进入古墓
function sM takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function tM takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
if((shengwang[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]>=800)and(fuyuan[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]>=15))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Gf))
call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
else
call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cffff0000进入古墓条件：\n福缘15，江湖声望800")
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
function vM takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function wM takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(If))
call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call FlushChildHashtable(YDHT,id*cx)
endfunction
function yM takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function zM takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Lf))
call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call FlushChildHashtable(YDHT,id*cx)
endfunction
function aM takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function BM takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Jf))
call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call FlushChildHashtable(YDHT,id*cx)
endfunction
function CM takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function cM takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Sf))
call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call FlushChildHashtable(YDHT,id*cx)
endfunction
function EM takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function FM takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Pf))
call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call FlushChildHashtable(YDHT,id*cx)
endfunction
function HM takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function IM takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Wf))
call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call FlushChildHashtable(YDHT,id*cx)
endfunction
function JM takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function KM takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Uf))
call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//FB3稀有掉落
function PM takes nothing returns boolean
return((RectContainsUnit(Nf,GetTriggerUnit())))
endfunction
function QM takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
if((GetRandomInt(1,100)<=5)and(q8[3]!='crys'))then
call createitemloc(q8[3],LoadLocationHandle(YDHT,id*cx,$1769D332))
if((q8[3]=='I02S'))then
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,0)
call SaveInteger(YDHT,id*cx,$648579A8,GetRandomInt(1,5))
call SaveInteger(YDHT,id*cx,-$180E5D51,GetRandomInt(1,6))
call SaveInteger(YDHT,id*cx,-$77543A28,0)
call SaveInteger(YDHT,id*cx,-$2D2EBEF5,0)
call SaveInteger(YDHT,id*cx,1732931645,GetRandomInt(0,1))
call SaveInteger(YDHT,id*cx,-$4E51D54A,0)
call SaveInteger(YDHT,id*cx,$44078039,0)
call SaveInteger(YDHT,id*cx,-$6F9D2AE1,0)
call SetItemUserData(bj_lastCreatedItem,(((((((((LoadInteger(YDHT,id*cx,-$5E9EB4B3)*$5F5E100)+(LoadInteger(YDHT,id*cx,$648579A8)*$989680))+(LoadInteger(YDHT,id*cx,-$180E5D51)*$F4240))+(LoadInteger(YDHT,id*cx,-$77543A28)*$186A0))+(LoadInteger(YDHT,id*cx,-$2D2EBEF5)*$2710))+(LoadInteger(YDHT,id*cx,1732931645)*$3E8))+(LoadInteger(YDHT,id*cx,-$4E51D54A)*100))+(LoadInteger(YDHT,id*cx,$44078039)*$A))+LoadInteger(YDHT,id*cx,-$6F9D2AE1)))
endif
endif
set N7=N7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//高昌迷宫
function SM takes nothing returns boolean
return((GetItemTypeId(GetManipulatedItem())==1227895876))
endfunction
function TM takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
if((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))then
if((shengwang[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]>=$7D0)and(fuyuan[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]>=18))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(zg))
call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
else
call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cffff0000进入高昌迷宫条件：\n福缘18，江湖声望2000")
endif
else
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00只能由主角亲自前往")
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
function VM takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function WM takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(dg))
call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call FlushChildHashtable(YDHT,id*cx)
endfunction
function YM takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function ZM takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(fg))
call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call FlushChildHashtable(YDHT,id*cx)
endfunction
function eN takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function fN takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(hg))
call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call FlushChildHashtable(YDHT,id*cx)
endfunction
function hN takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function iN takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(kg))
call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call FlushChildHashtable(YDHT,id*cx)
endfunction
function kN takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function mN takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(mg))
call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call FlushChildHashtable(YDHT,id*cx)
endfunction
function oN takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function pN takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(og))
call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call FlushChildHashtable(YDHT,id*cx)
endfunction
function rN takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function sN takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(rg))
call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call FlushChildHashtable(YDHT,id*cx)
endfunction
function uN takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function vN takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(tg))
call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call FlushChildHashtable(YDHT,id*cx)
endfunction
function xN takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function yN takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(vg))
call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call FlushChildHashtable(YDHT,id*cx)
endfunction
function AN takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function aN takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(tg))
call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call FlushChildHashtable(YDHT,id*cx)
endfunction
function bN takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function CN takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(vg))
call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call FlushChildHashtable(YDHT,id*cx)
endfunction
function DN takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function EN takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(og))
call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//藏经阁
function GN takes nothing returns boolean
return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895880))
endfunction
function HN takes nothing returns boolean
return((GetUnitTypeId(GetFilterUnit())=='nsrh'))
endfunction
function IN takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
if((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)==false))then
call AdjustPlayerStateBJ($4E20,Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),PLAYER_STATE_RESOURCE_GOLD)
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00只能由主角亲自前往")
else
if((CountUnitsInGroup(wv(cg,Condition(function HN)))==0))then
call AdjustPlayerStateBJ($4E20,Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),PLAYER_STATE_RESOURCE_GOLD)
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00扫地神僧目前不在藏经阁，你稍作等待再来吧")
else
if((xiuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]<3))then
call AdjustPlayerStateBJ($4E20,Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),PLAYER_STATE_RESOURCE_GOLD)
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Bg))
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFF0000你尚未完成历练3之勇闯十恶不赦岛任务")
else
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Cg))
call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFADFF2F进入藏经阁")
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
endif
endif
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
//FB4稀有掉落
function MN takes nothing returns boolean
	return((RectContainsUnit(Gg,GetTriggerUnit())))
endfunction
function NN takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
if((GetRandomInt(1,100)>=98)and(q8[4]!='crys'))then
call createitemloc(q8[4],LoadLocationHandle(YDHT,id*cx,$1769D332))
endif
set N7=N7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//绝情谷底买丹
function PN takes nothing returns boolean
return((GetItemTypeId(GetManipulatedItem())==1227895885))
endfunction
function QN takes nothing returns nothing
if((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))then
call unitadditembyidswapped(1227895371,GetTriggerUnit())
else
call AdjustPlayerStateBJ(20,GetOwningPlayer(GetTriggerUnit()),PLAYER_STATE_RESOURCE_LUMBER)
call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,10.,"|CFFFF0000该道具只能由主角亲自购买")
endif
endfunction
function SN takes nothing returns boolean
return((GetItemTypeId(GetManipulatedItem())==1227895884))
endfunction
function TN takes nothing returns nothing
if((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))then
call unitadditembyidswapped(1227895372,GetTriggerUnit())
else
call AdjustPlayerStateBJ(20,GetOwningPlayer(GetTriggerUnit()),PLAYER_STATE_RESOURCE_LUMBER)
call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,10.,"|CFFFF0000该道具只能由主角亲自购买")
endif
endfunction
function VN takes nothing returns boolean
return((GetItemTypeId(GetManipulatedItem())==1227895883))
endfunction
function WN takes nothing returns nothing
if((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))then
call unitadditembyidswapped('I02N',GetTriggerUnit())
else
call AdjustPlayerStateBJ(20,GetOwningPlayer(GetTriggerUnit()),PLAYER_STATE_RESOURCE_LUMBER)
call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,10.,"|CFFFF0000该道具只能由主角亲自购买")
endif
endfunction
//绝情谷底异种
function YN takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())=='nmpg'))
endfunction
function ZN takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetKillingUnit()))
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))))
set u9=(u9+1)
if((u9>=7))then
set u9=0
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
if((GetRandomInt(1,100)<=25))then
call createitemloc('I04Q',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,60)<=20))then
call createitemloc('I04O',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
if((GetRandomInt(1,50)<=25))then
call createitemloc('I04N',LoadLocationHandle(YDHT,id*cx,$1769D332))
else
call createitemloc('I04P',LoadLocationHandle(YDHT,id*cx,$1769D332))
endif
endif
endif
set N7=N7+1
endloop
else
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,("下次出现灵丹："+(I2S(u9)+" / 7")))
endif
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//进入绝情谷底
function eO takes nothing returns boolean
return((GetItemTypeId(GetManipulatedItem())==1227895882))
endfunction
function fO takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
if((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))then
if((shengwang[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]>=$BB8)and(danpo[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]>=20))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Ig))
call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
else
call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cffff0000进入绝情谷底条件：\n胆魄20，江湖声望3000")
endif
else
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00只能由主角亲自前往")
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
//FB5稀有掉落
function kO takes nothing returns boolean
return((RectContainsUnit(Mg,GetTriggerUnit())))
endfunction
function mO takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
if((GetRandomInt(1,100)>=98)and(q8[5]!='crys'))then
call createitemloc(q8[5],LoadLocationHandle(YDHT,id*cx,$1769D332))
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,0)
call SaveInteger(YDHT,id*cx,$648579A8,GetRandomInt(1,5))
call SaveInteger(YDHT,id*cx,-$180E5D51,GetRandomInt(1,7))
call SaveInteger(YDHT,id*cx,-$77543A28,GetRandomInt(1,5))
call SaveInteger(YDHT,id*cx,-$2D2EBEF5,GetRandomInt(1,7))
call SaveInteger(YDHT,id*cx,1732931645,GetRandomInt(0,2))
call SaveInteger(YDHT,id*cx,-$4E51D54A,0)
call SaveInteger(YDHT,id*cx,$44078039,0)
call SaveInteger(YDHT,id*cx,-$6F9D2AE1,0)
call SetItemUserData(bj_lastCreatedItem,(((((((((LoadInteger(YDHT,id*cx,-$5E9EB4B3)*$5F5E100)+(LoadInteger(YDHT,id*cx,$648579A8)*$989680))+(LoadInteger(YDHT,id*cx,-$180E5D51)*$F4240))+(LoadInteger(YDHT,id*cx,-$77543A28)*$186A0))+(LoadInteger(YDHT,id*cx,-$2D2EBEF5)*$2710))+(LoadInteger(YDHT,id*cx,1732931645)*$3E8))+(LoadInteger(YDHT,id*cx,-$4E51D54A)*100))+(LoadInteger(YDHT,id*cx,$44078039)*$A))+LoadInteger(YDHT,id*cx,-$6F9D2AE1)))
endif
set N7=N7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//探索琅环玉洞
function oO takes nothing returns boolean
return((GetItemTypeId(GetManipulatedItem())==1227895895))
endfunction
function pO takes nothing returns nothing
if((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))then
if((GetRandomInt(1,60)<=35))then
call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,10.,"|CFFFF0000经过一番探索，竟然什么都没有得到，看来你的诚意还不够哦~")
else
if((GetRandomInt(1,40)<=$A))then
call unitadditembyidswapped(1227895865,GetTriggerUnit())
else
if((GetRandomInt(1,30)<=$A))then
call unitadditembyidswapped(1227895864,GetTriggerUnit())
else
if((GetRandomInt(1,20)<=$A))then
call unitadditembyidswapped(1227895863,GetTriggerUnit())
else
call unitadditembyidswapped(1227895862,GetTriggerUnit())
endif
endif
endif
call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,(GetPlayerName(GetOwningPlayer(GetTriggerUnit()))+("在探索琅环玉洞时，无意中竟然得到了"+GetItemName(bj_lastCreatedItem))))
endif
else
call AdjustPlayerStateBJ($7530,GetOwningPlayer(GetTriggerUnit()),PLAYER_STATE_RESOURCE_GOLD)
call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,10.,"|CFFFF0000只能有主角亲自探索")
endif
endfunction
//梦回前朝
function rO takes nothing returns boolean
return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896133))
endfunction
function sO takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
if((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)==false))then
call AdjustPlayerStateBJ($9C40,Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),PLAYER_STATE_RESOURCE_GOLD)
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00只能由主角亲自前往")
else
if(((xiuxing[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]<5)or(shengwang[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]<5500)))then
call AdjustPlayerStateBJ($9C40,Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),PLAYER_STATE_RESOURCE_GOLD)
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00条件不足")
else
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Vg))
call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFADFF2F回到了前朝")
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
endif
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
//FB6稀有掉落
function xO takes nothing returns boolean
return((RectContainsUnit(Yg,GetTriggerUnit())))
endfunction
function yO takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
if((GetRandomInt(1,1000)<=fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]) or (GetRandomInt(1, 100)<=30 and Ce[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]==6))then
set MM7=2
else
set MM7=1
endif
set N7=1
loop
exitwhen N7>MM7
if((GetRandomInt(1,100)>=98)and(q8[6]!='crys'))then
call createitemloc(q8[6],LoadLocationHandle(YDHT,id*cx,$1769D332))
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,GetRandomInt(1,4))
call SaveInteger(YDHT,id*cx,$648579A8,GetRandomInt(1,5))
call SaveInteger(YDHT,id*cx,-$180E5D51,GetRandomInt(1,8))
call SaveInteger(YDHT,id*cx,-$77543A28,GetRandomInt(1,5))
call SaveInteger(YDHT,id*cx,-$2D2EBEF5,GetRandomInt(1,8))
call SaveInteger(YDHT,id*cx,1732931645,GetRandomInt(0,3))
call SaveInteger(YDHT,id*cx,-$4E51D54A,0)
call SaveInteger(YDHT,id*cx,$44078039,0)
call SaveInteger(YDHT,id*cx,-$6F9D2AE1,0)
call SetItemUserData(bj_lastCreatedItem,(((((((((LoadInteger(YDHT,id*cx,-$5E9EB4B3)*$5F5E100)+(LoadInteger(YDHT,id*cx,$648579A8)*$989680))+(LoadInteger(YDHT,id*cx,-$180E5D51)*$F4240))+(LoadInteger(YDHT,id*cx,-$77543A28)*$186A0))+(LoadInteger(YDHT,id*cx,-$2D2EBEF5)*$2710))+(LoadInteger(YDHT,id*cx,1732931645)*$3E8))+(LoadInteger(YDHT,id*cx,-$4E51D54A)*100))+(LoadInteger(YDHT,id*cx,$44078039)*$A))+LoadInteger(YDHT,id*cx,-$6F9D2AE1)))
endif
set N7=N7+1
endloop
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
call FlushChildHashtable(YDHT,id*cx)
endfunction
//大辽国
function AO takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function aO takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	call SetUnitPosition(udg_hero[i],-13000,-15500)
   	call PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()),-13000,-15500,0)
	call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|CFF00ff33传送至大辽国")
endfunction
//聚贤山庄
function bO takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function CO takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	call SetUnitPosition(udg_hero[i],-9000,-14000)
   	call PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()),-9000,-14000,0)
	call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|CFF00ff33传送至聚贤庄")
//call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cffff0000聚贤山庄（当前版本暂未开放此地图）")
endfunction
//大清藏宝洞
function DO takes nothing returns boolean
return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function EO takes nothing returns nothing
local integer i=1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
//call SetUnitPosition(udg_hero[i],2091,-13158)
//call PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()),2091,-13158,0)
//call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cffff0000你已进入到大清藏宝洞，看看有什么发现吧")
call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cffff0000大清藏宝洞（当前版本暂未开放此地图）")
endfunction
//琉球岛
function GO takes nothing returns boolean
	return (UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO) and GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)
endfunction
function HO takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	if xiuxing[i]<=5 then
		call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cFFFFCC00修行达到6才可以进入,你的修行不足，请前往地图指示点修行去吧")
	else
		call SetUnitPosition(udg_hero[i],10943,6760)
		call PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()),10943,6760,0)
		call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cffff0000你已深入到海外琉球岛，看看有什么发现吧")
		//call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cffff0000琉球岛（当前版本暂未开放此地图）")
	endif
endfunction
//一品居
function lO takes nothing returns boolean
return((GetItemTypeId(GetManipulatedItem())==1227897137))
endfunction
function JO takes nothing returns nothing
local integer id=GetHandleId(GetTriggeringTrigger())
local integer cx=LoadInteger(YDHT,id,-$3021938A)
set cx=cx+3
call SaveInteger(YDHT,id,-$3021938A,cx)
call SaveInteger(YDHT,id,-$1317DA19,cx)
call SaveInteger(YDHT,id*cx,-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
if((xiuxing[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]<=5))then
call AdjustPlayerStateBJ($C350,Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),PLAYER_STATE_RESOURCE_GOLD)
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00修行达到6才可以进入,你的修行不足，请前往地图指示点修行去吧")
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(Zg))
call PingMinimapLocForForce(ov(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3)))),LoadLocationHandle(YDHT,id*cx,$5E83114F),5.)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
else
if((UnitHaveItem(GetTriggerUnit(),1227897138)==false))then
call AdjustPlayerStateBJ($C350,Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),PLAYER_STATE_RESOURCE_GOLD)
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00需要一品居请帖才可以进入")
else
if((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))then
call SaveLocationHandle(YDHT,id*cx,$5E83114F,GetRectCenter(vh))
call SetUnitPositionLoc(LoadUnitHandle(YDHT,id*cx,-$2EC5CBA0),LoadLocationHandle(YDHT,id*cx,$5E83114F))
call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()),LoadLocationHandle(YDHT,id*cx,$5E83114F),0)
call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$5E83114F))
call RemoveItem(YDWEGetItemOfTypeFromUnitBJNull(GetTriggerUnit(),1227897138))
else
call AdjustPlayerStateBJ($C350,Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),PLAYER_STATE_RESOURCE_GOLD)
call DisplayTextToPlayer(Player(-1+(LoadInteger(YDHT,id*cx,-$5E9EB4B3))),0,0,"|cFFFFCC00只能由主角亲自购买前往")
endif
endif
endif
call FlushChildHashtable(YDHT,id*cx)
endfunction
//------------------九阳真经系统----------------------------

//特殊事件：九阳真经系统
//事件1：1~30分钟内的随机时间少林藏经阁出现尹克西和潇湘子（夜间隐身）   击杀尹克西和潇湘子: 两本奇武——潇湘子的《寿木长生功》或尹克西的《黄沙万里鞭法》 全击杀事件结束
//事件2：事件1后10~25分钟内的随机时间，若尹克西和潇湘子未全死，九阳真经被二人偷走，觉远大师和张君宝去追  击杀觉远大师和张君宝：几率获得奇武《九阳真经散篇》 不击杀事件结束，少林高价卖《九阳真经残卷》
//事件3：事件2后10~25分钟内的随机时间，如果觉远大师和张君宝都被击杀，则尹克西和潇湘子逃走并将经书藏入白猿腹中，二人斗殴而死   击杀白猿——得到伴侣白猿 事件结束
//事件4：事件3后20~50分钟内的随机时， 若白猿存活，发生曾阿牛剖腹取书事件，白猿死亡，FB BOSS 替换为曾阿牛——此后可以重复刷新，击杀后获得《九阳真经残卷》



//尹克西和潇湘子在藏经阁偷取九阳神功
//尹克西坐标：6100,-1900
//潇湘子坐标：6100,-2500

globals
	timer jiuyangTimer1 = null
	timer jiuyangTimer2 = null
	timer jiuyangTimer3 = null
	timerdialog jiuyangTimerDialog1 = null
	timerdialog jiuyangTimerDialog2 = null
	timerdialog jiuyangTimerDialog3 = null

	quest defeatStealer = null
	quest defeatSeeker = null
endglobals

//偷书成功
function stealSuccess takes nothing returns nothing
	local unit ykx = LoadUnitHandle(YDHT, GetHandleId(jiuyangTimer1), 0)
	local unit xxz = LoadUnitHandle(YDHT, GetHandleId(jiuyangTimer1), 1)
	if(IsUnitAliveBJ(ykx) or IsUnitAliveBJ(xxz)) then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFCC00江湖小报：潇湘子和尹克西将九阳真经从少林寺藏经阁中窃出，震惊武林！！少林寺已派出觉远和张君宝缉拿潇湘子和尹克西！")
		call ExecuteFunc("seekStealers")
	else
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFCC00江湖小报：由于潇湘子和尹克西被江湖英雄击杀，九阳真经未从少林寺藏经阁中窃出！")
	endif
	call RemoveUnit(ykx)
	call RemoveUnit(xxz)
	call DestroyQuest(defeatStealer)
	call PauseTimer(jiuyangTimer1)
	call DestroyTimer(jiuyangTimer1)
	call DestroyTimerDialog(jiuyangTimerDialog1)

endfunction
function stealJiuYang takes nothing returns nothing
	local unit ykx = null
	local unit xxz = null
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFCC00江湖小报：小道消息称潇湘子和尹克西潜入少林寺藏经阁窃取九阳神功秘籍，目前还无法证实消息的真实性")
	set defeatStealer = CreateQuestBJ( bj_QUESTTYPE_OPT_DISCOVERED, "击杀潇湘子和尹克西", "传闻潇湘子和尹克西正在少林寺藏经阁窃取九阳真经，目前尚不知真实性如何。少侠们可以前往藏经阁一探究竟。（提示：不一定要击杀潇湘子和尹克西）", "ReplaceableTextures\\CommandButtons\\BTNAmbush.blp" )
	//尹克西
	call CreateNUnitsAtLoc(1,'nrog',Player(12),Location(6100,-1900),bj_UNIT_FACING)
	set ykx = bj_lastCreatedUnit
	//潇湘子
	call CreateNUnitsAtLoc(1,'nban',Player(12),Location(6100,-2500),bj_UNIT_FACING)
	set xxz = bj_lastCreatedUnit
	set jiuyangTimer1 = CreateTimer()
	call SaveUnitHandle(YDHT, GetHandleId(jiuyangTimer1), 0, ykx)
	call SaveUnitHandle(YDHT, GetHandleId(jiuyangTimer1), 1, xxz)
	call TimerStart(jiuyangTimer1, GetRandomInt(600, 1500),false, function stealSuccess)
	//call TimerStart(jiuyangTimer1, 60,false, function stealSuccess)
	set jiuyangTimerDialog1 = createTimerDialog(jiuyangTimer1, "二杰盗经书")
endfunction
//击杀尹克西和潇湘子后几率获得奇武：潇湘子的《寿木长生功》或尹克西的《黄沙万里鞭法》，江湖声望+1000
function isKillStealer takes nothing returns boolean
	return GetUnitTypeId(GetTriggerUnit())=='nrog' or GetUnitTypeId(GetTriggerUnit())=='nban'
endfunction
function killStealer takes nothing returns nothing
	call dropItem(GetKillingUnit(), 'I0CT', 'I0CU', 50)
endfunction
//随后张无忌将经书从白猿腹中取出，白猿死亡，副本7BOSS变为张无忌，击杀后得到《九阳真经残卷》
function baiYuanDeath takes nothing returns nothing
	if(IsUnitAliveBJ(gg_unit_n00M_0131)) then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFCC00江湖小报：传闻有一名叫曾阿牛的武林新秀从百年古猿腹中得到了《九阳神功残卷》！")
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFCC00江湖小报：百年古猿死去，曾阿牛出现在地图上！")
		call RemoveUnit(gg_unit_n00M_0131)
		call ShowUnit( gg_unit_n00N_0132, true )
	endif
	call PauseTimer(jiuyangTimer3)
	call DestroyTimer(jiuyangTimer3)
	call DestroyTimerDialog(jiuyangTimerDialog3)
endfunction
//不击杀尹克西和潇湘子的话二人将经书偷走，觉远大师和张君宝去追经书，若不打败觉远大师和张君宝，经书将被二人追回，经书重回少林寺藏经阁中
function seekSuccess takes nothing returns nothing
	local unit jyds = LoadUnitHandle(YDHT, GetHandleId(jiuyangTimer1), 0)
	local unit zjb = LoadUnitHandle(YDHT, GetHandleId(jiuyangTimer1), 1)
	local integer i = GetRandomInt(1200, 3000)
	if(IsUnitAliveBJ(jyds) or IsUnitAliveBJ(zjb)) then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFCC00江湖小报：觉远和张君宝已成功缉拿潇湘子和尹克西并夺回九阳真经，九阳真经现已归还藏经阁！")
	else
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFCC00江湖小报：觉远和张君宝被不知名江湖人士打败，潇湘子和尹克西逃跑！")
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFCC00江湖小报：潇湘子和尹克西互殴而死，九阳真经不知所终！传闻潇湘子和尹克西将窃走的九阳真经藏入白猿腹中！")
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFCC00江湖小报：白猿在地图上出现！！！")
		call ShowUnit( gg_unit_n00M_0131, true )
		set jiuyangTimer3 = CreateTimer()
		call TimerStart(jiuyangTimer3, i,false, function baiYuanDeath)
		set jiuyangTimerDialog3 = createTimerDialog(jiuyangTimer3, "曾阿牛取腹中书")
	endif
	call PauseTimer(jiuyangTimer2)
	call DestroyTimer(jiuyangTimer2)
	call DestroyTimerDialog(jiuyangTimerDialog2)
	call RemoveUnit(jyds)
	call RemoveUnit(zjb)
	call DestroyQuest(defeatSeeker)



endfunction


//觉远大师坐标：-1000 -14300
//张君宝坐标：-1000 -13300
//尹克西坐标：-2000 -14300 中立无敌NPC
//潇湘子坐标：-2000 -13300 中立无敌NPC
function seekStealers takes nothing returns nothing
	local unit ykx = null
	local unit xxz = null
	local unit jyds = null
	local unit zjb = null
	local integer i = GetRandomInt(600, 1500)
	call CreateNUnitsAtLoc(1,'nrog',Player(12),Location(-2000, -14300),bj_UNIT_FACING)
	set ykx = bj_lastCreatedUnit
	call CreateNUnitsAtLoc(1,'nban',Player(12),Location(-2000, -13300),bj_UNIT_FACING)
	set xxz = bj_lastCreatedUnit
	call CreateNUnitsAtLoc(1,'n00K',Player(12),Location(-1000, -14300),bj_UNIT_FACING)
	set jyds = bj_lastCreatedUnit
	call CreateNUnitsAtLoc(1,'n00L',Player(12),Location(-1000, -13300),bj_UNIT_FACING)
	set zjb = bj_lastCreatedUnit
	call UnitAddAbility(ykx, 'Avul')
	call UnitAddAbility(xxz, 'Avul')
	set defeatSeeker =CreateQuestBJ(bj_QUESTTYPE_OPT_DISCOVERED, "打败觉远大师和张君宝", "传闻潇湘子和尹克西已将九阳真经从少林寺藏经阁窃出，觉远大师和张君宝正在追赶。少侠们对九阳真经感兴趣吗？（提示：可以打败觉远大师和张君宝帮助潇湘子和尹克西逃跑，否则九阳真经将被追回藏经阁）", "ReplaceableTextures\\CommandButtons\\BTNAmbush.blp" )
	set jiuyangTimer2 = CreateTimer()
	call SaveUnitHandle(YDHT, GetHandleId(jiuyangTimer2), 0, jyds)
	call SaveUnitHandle(YDHT, GetHandleId(jiuyangTimer2), 1, zjb)
	call TimerStart(jiuyangTimer2, GetRandomInt(600, 1500),false, function seekSuccess)
	//call TimerStart(jiuyangTimer2, 60,false, function seekSuccess)
	set jiuyangTimerDialog2 = createTimerDialog(jiuyangTimer2, "追回经书")

endfunction
//若打败觉远大师和张君宝，可几率获得奇武《九阳真经散篇》，江湖声望-1000
function isKillSeeker takes nothing returns boolean
	return GetUnitTypeId(GetTriggerUnit())=='n00K' or GetUnitTypeId(GetTriggerUnit())=='n00L'
endfunction
function killSeeker takes nothing returns nothing
	//击杀者声望-500
	set shengwang[1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))] = IMaxBJ(0, shengwang[1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))] - 500)
	call dropItem(GetKillingUnit(), 'I0CV', 0, 50)

endfunction
//并且在地图上出现副本7——白猿，击杀后得到伴侣——白猿
function isKillBaiYuan takes nothing returns boolean
	return GetUnitTypeId(GetTriggerUnit())=='n00M'
endfunction
function killBaiYuan takes nothing returns nothing
	call dropItem(GetKillingUnit(), 'I0CS', 0, 100)
endfunction
//击杀曾阿牛后得到九阳残卷
function isKillANiu takes nothing returns boolean
	return GetUnitTypeId(GetTriggerUnit())=='n00N'
endfunction
function killANiu takes nothing returns nothing
	call dropItem(GetKillingUnit(), 'I0CW', 'I08V', 50)
endfunction
//------------------九阳真经系统结束----------------------------
//-------各种副本结束-------//
function Instances_Trigger takes nothing returns nothing
	local trigger t = CreateTrigger()
	set Kn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Kn,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Kn,Condition(function WI))
	call TriggerAddAction(Kn,function XI)
	set Ln=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Ln,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Ln,Condition(function ZI))
	call TriggerAddAction(Ln,function dl)
	set Mn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Mn,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Mn,Condition(function fl))
	call TriggerAddAction(Mn,function gl)
	set Nn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Nn,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Nn,Condition(function il))
	call TriggerAddAction(Nn,function jl)
	set Tn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Tn,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Tn,Condition(function al))
	call TriggerAddAction(Tn,function Bl)
	set Un=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Un,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Un,Condition(function cl))
	call TriggerAddAction(Un,function KillTangWenLiang)
	set Vn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Vn,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Vn,Condition(function Fl))
	call TriggerAddAction(Vn,function Gl)
	set Wn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Wn,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Wn,Condition(function Il))
	call TriggerAddAction(Wn,function ll)
	set Xn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Xn,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Xn,Condition(function Kl))
	call TriggerAddAction(Xn,function Ll)
	set Yn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Yn,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Yn,Condition(function Nl))
	call TriggerAddAction(Yn,function Ol)
	set Zn=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Zn,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Zn,Condition(function Ql))
	call TriggerAddAction(Zn,function Rl)
	set do=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(do,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(do,Condition(function Tl))
	call TriggerAddAction(do,function Ul)
	set eo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(eo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(eo,Condition(function Wl))
	call TriggerAddAction(eo,function Xl)
	set fo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(fo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(fo,Condition(function Zl))
	call TriggerAddAction(fo,function dd1)
	set go=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(go,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(go,Condition(function f1))
	call TriggerAddAction(go,function g1)
	set ho=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ho,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(ho,Condition(function i1))
	call TriggerAddAction(ho,function j1)
	set io=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(io,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(io,Condition(function m1))
	call TriggerAddAction(io,function nn1)
	set jo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(jo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(jo,Condition(function p1))
	call TriggerAddAction(jo,function q1)
	set ko=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ko,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(ko,Condition(function t1))
	call TriggerAddAction(ko,function u1)
	set mo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(mo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(mo,Condition(function ww1))
	call TriggerAddAction(mo,function z1)
	set no=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(no,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(no,Condition(function a1))
	call TriggerAddAction(no,function B1)
	set oo=CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(oo,500.)
	call TriggerAddAction(oo,function C1)
	set po=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(po,Player(12),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(po,Condition(function D1))
	call TriggerAddAction(po,function E1)
	set qo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(qo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(qo,Condition(function G1))
	call TriggerAddAction(qo,function H1)
	set ro=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ro,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(ro,Condition(function l1))
	call TriggerAddAction(ro,function J1)
	set so=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(so,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(so,Condition(function L1))
	call TriggerAddAction(so,function MM1)
	set to=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(to,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(to,Condition(function O1))
	call TriggerAddAction(to,function P1)
	set uo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(uo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(uo,Condition(function R1))
	call TriggerAddAction(uo,function S1)
	set vo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(vo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(vo,Condition(function U1))
	call TriggerAddAction(vo,function V1)
	set wo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(wo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(wo,Condition(function X1))
	call TriggerAddAction(wo,function Y1)
	set xo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(xo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(xo,Condition(function dJ))
	call TriggerAddAction(xo,function eJ)
	set yo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(yo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(yo,Condition(function gJ))
	call TriggerAddAction(yo,function hJ)
	set zo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(zo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(zo,Condition(function jJ))
	call TriggerAddAction(zo,function kJ)
	set Ao=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Ao,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Ao,Condition(function nJ))
	call TriggerAddAction(Ao,function oJ)
	set ao=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ao,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(ao,Condition(function qJ))
	call TriggerAddAction(ao,function rJ)
	set Bo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Bo,Condition(function tJ))
	call TriggerAddAction(Bo,function uJ)
	set bo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(bo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(bo,Condition(function wJ))
	call TriggerAddAction(bo,function xJ)
	set Co=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Co,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Co,Condition(function zJ))
	call TriggerAddAction(Co,function AJ)
	set co=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(co,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(co,Condition(function BJ))
	call TriggerAddAction(co,function bJ)
	set Do=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Do,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Do,Condition(function cJ))
	call TriggerAddAction(Do,function DJ)
	set Do=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Do,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Do,Condition(function IsAiRen))
	call TriggerAddAction(Do,function KillAiRen)
	set Eo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Eo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Eo,Condition(function FJ))
	call TriggerAddAction(Eo,function GJ)
	set Wo=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Wo,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Wo,Condition(function JK))
	call TriggerAddAction(Wo,function KK)
	set sp=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(sp,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(sp,Condition(function IL))
	call TriggerAddAction(sp,function lL)
	set tp=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(tp,Player(12),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(tp,Condition(function KL))
	call TriggerAddAction(tp,function LL)
	set vp=CreateTrigger()
	call TriggerRegisterPlayerSelectionEventBJ(vp,Player(0),true)
	call TriggerRegisterPlayerSelectionEventBJ(vp,Player(1),true)
	call TriggerRegisterPlayerSelectionEventBJ(vp,Player(2),true)
	call TriggerRegisterPlayerSelectionEventBJ(vp,Player(3),true)
	call TriggerRegisterPlayerSelectionEventBJ(vp,Player(4),true)
	call TriggerRegisterPlayerSelectionEventBJ(vp,Player(5),true)

	call TriggerAddCondition(vp,Condition(function NL))
	call TriggerAddAction(vp,function OL)
	set wp=CreateTrigger()
	call TriggerRegisterPlayerKeyEventBJ(wp,Player(0),0,3)
	call TriggerRegisterPlayerKeyEventBJ(wp,Player(1),0,3)
	call TriggerRegisterPlayerKeyEventBJ(wp,Player(2),0,3)
	call TriggerRegisterPlayerKeyEventBJ(wp,Player(3),0,3)
	call TriggerRegisterPlayerKeyEventBJ(wp,Player(4),0,3)
	call TriggerRegisterPlayerKeyEventBJ(wp,Player(5),0,3)

	call TriggerAddCondition(wp,Condition(function QL))
	call TriggerAddAction(wp,function RL)
	set xp=CreateTrigger()
	call TriggerRegisterPlayerKeyEventBJ(xp,Player(0),0,0)
	call TriggerRegisterPlayerKeyEventBJ(xp,Player(1),0,0)
	call TriggerRegisterPlayerKeyEventBJ(xp,Player(2),0,0)
	call TriggerRegisterPlayerKeyEventBJ(xp,Player(3),0,0)
	call TriggerRegisterPlayerKeyEventBJ(xp,Player(4),0,0)
	call TriggerRegisterPlayerKeyEventBJ(xp,Player(5),0,0)

	call TriggerAddCondition(xp,Condition(function TL))
	call TriggerAddAction(xp,function UL)
	set yp=CreateTrigger()
	call TriggerRegisterPlayerKeyEventBJ(yp,Player(0),0,1)
	call TriggerRegisterPlayerKeyEventBJ(yp,Player(1),0,1)
	call TriggerRegisterPlayerKeyEventBJ(yp,Player(2),0,1)
	call TriggerRegisterPlayerKeyEventBJ(yp,Player(3),0,1)
	call TriggerRegisterPlayerKeyEventBJ(yp,Player(4),0,1)
	call TriggerRegisterPlayerKeyEventBJ(yp,Player(5),0,1)

	call TriggerAddCondition(yp,Condition(function WL))
	call TriggerAddAction(yp,function XL)
	set zp=CreateTrigger()
	call TriggerRegisterPlayerKeyEventBJ(zp,Player(0),0,2)
	call TriggerRegisterPlayerKeyEventBJ(zp,Player(1),0,2)
	call TriggerRegisterPlayerKeyEventBJ(zp,Player(2),0,2)
	call TriggerRegisterPlayerKeyEventBJ(zp,Player(3),0,2)
	call TriggerRegisterPlayerKeyEventBJ(zp,Player(4),0,2)
	call TriggerRegisterPlayerKeyEventBJ(zp,Player(5),0,2)

	call TriggerAddCondition(zp,Condition(function ZL))
	call TriggerAddAction(zp,function dM)
	set ap=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(ap,Player(12),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(ap,Condition(function iM))
	call TriggerAddAction(ap,function jM)
	set Bp=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bp,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Bp,Condition(function mM))
	call TriggerAddAction(Bp,function nM)
	set bp=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(bp,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(bp,Condition(function pM))
	call TriggerAddAction(bp,function qM)
	set Cp=CreateTrigger()
	call TriggerAddRect(Cp,Ff)
	call TriggerAddCondition(Cp,Condition(function sM))
	call TriggerAddAction(Cp,function tM)
	set cp=CreateTrigger()
	call TriggerAddRect(cp,Hf)
	call TriggerAddCondition(cp,Condition(function vM))
	call TriggerAddAction(cp,function wM)
	set Dp=CreateTrigger()
	call TriggerAddRect(Dp,lf)
	call TriggerAddCondition(Dp,Condition(function yM))
	call TriggerAddAction(Dp,function zM)
	set Ep=CreateTrigger()
	call TriggerAddRect(Ep,Kf)
	call TriggerAddCondition(Ep,Condition(function aM))
	call TriggerAddAction(Ep,function BM)
	set Fp=CreateTrigger()
	call TriggerAddRect(Fp,Of)
	call TriggerAddCondition(Fp,Condition(function CM))
	call TriggerAddAction(Fp,function cM)
	set Gp=CreateTrigger()
	call TriggerAddRect(Gp,Qf)
	call TriggerAddCondition(Gp,Condition(function EM))
	call TriggerAddAction(Gp,function FM)
	set Hp=CreateTrigger()
	call TriggerAddRect(Hp,Tf)
	call TriggerAddCondition(Hp,Condition(function HM))
	call TriggerAddAction(Hp,function IM)
	set Ip=CreateTrigger()
	call TriggerAddRect(Ip,Vf)
	call TriggerAddCondition(Ip,Condition(function JM))
	call TriggerAddAction(Ip,function KM)
	set Jp=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(Jp,Player(12),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Jp,Condition(function PM))
	call TriggerAddAction(Jp,function QM)
	set Kp=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Kp,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Kp,Condition(function SM))
	call TriggerAddAction(Kp,function TM)
	set Lp=CreateTrigger()
	call TriggerAddRect(Lp,eg)
	call TriggerAddCondition(Lp,Condition(function VM))
	call TriggerAddAction(Lp,function WM)
	set Mp=CreateTrigger()
	call TriggerAddRect(Mp,gg)
	call TriggerAddCondition(Mp,Condition(function YM))
	call TriggerAddAction(Mp,function ZM)
	set Np=CreateTrigger()
	call TriggerAddRect(Np,ig)
	call TriggerAddCondition(Np,Condition(function eN))
	call TriggerAddAction(Np,function fN)
	set Op=CreateTrigger()
	call TriggerAddRect(Op,jg)
	call TriggerAddCondition(Op,Condition(function hN))
	call TriggerAddAction(Op,function iN)
	set Pp=CreateTrigger()
	call TriggerAddRect(Pp,ng)
	call TriggerAddCondition(Pp,Condition(function kN))
	call TriggerAddAction(Pp,function mN)
	set Qp=CreateTrigger()
	call TriggerAddRect(Qp,pg)
	call TriggerAddCondition(Qp,Condition(function oN))
	call TriggerAddAction(Qp,function pN)
	set Rp=CreateTrigger()
	call TriggerAddRect(Rp,qg)
	call TriggerAddCondition(Rp,Condition(function rN))
	call TriggerAddAction(Rp,function sN)
	set Sp=CreateTrigger()
	call TriggerAddRect(Sp,sg)
	call TriggerAddCondition(Sp,Condition(function uN))
	call TriggerAddAction(Sp,function vN)
	set Tp=CreateTrigger()
	call TriggerAddRect(Tp,ug)
	call TriggerAddCondition(Tp,Condition(function xN))
	call TriggerAddAction(Tp,function yN)
	set Up=CreateTrigger()
	call TriggerAddRect(Up,wg)
	call TriggerAddCondition(Up,Condition(function AN))
	call TriggerAddAction(Up,function aN)
	set Vp=CreateTrigger()
	call TriggerAddRect(Vp,xg)
	call TriggerAddCondition(Vp,Condition(function bN))
	call TriggerAddAction(Vp,function CN)
	set Wp=CreateTrigger()
	call TriggerAddRect(Wp,yg)
	call TriggerAddCondition(Wp,Condition(function DN))
	call TriggerAddAction(Wp,function EN)
	set Xp=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Xp,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Xp,Condition(function GN))
	call TriggerAddAction(Xp,function IN)
	set Zp=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(Zp,Player(12),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Zp,Condition(function MN))
	call TriggerAddAction(Zp,function NN)
	set dq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(dq,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(dq,Condition(function PN))
	call TriggerAddAction(dq,function QN)
	set eq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(eq,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(eq,Condition(function SN))
	call TriggerAddAction(eq,function TN)
	set fq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(fq,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(fq,Condition(function VN))
	call TriggerAddAction(fq,function WN)
	set gq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(gq,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(gq,Condition(function YN))
	call TriggerAddAction(gq,function ZN)
	set hq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(hq,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(hq,Condition(function eO))
	call TriggerAddAction(hq,function fO)
	set jq=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(jq,Player(12),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(jq,Condition(function kO))
	call TriggerAddAction(jq,function mO)
	set kq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(kq,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(kq,Condition(function oO))
	call TriggerAddAction(kq,function pO)
	set mq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(mq,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(mq,Condition(function rO))
	call TriggerAddAction(mq,function sO)
	set oq=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(oq,Player(12),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(oq,Condition(function xO))
	call TriggerAddAction(oq,function yO)
	set pq=CreateTrigger()
	call TriggerAddRect(pq,gh)
	call TriggerAddCondition(pq,Condition(function AO))
	call TriggerAddAction(pq,function aO)
	set qq=CreateTrigger()
	call TriggerAddRect(qq,fh)
	call TriggerAddCondition(qq,Condition(function bO))
	call TriggerAddAction(qq,function CO)
	set rq=CreateTrigger()
	call TriggerAddRect(rq,jh)
	call TriggerAddCondition(rq,Condition(function DO))
	call TriggerAddAction(rq,function EO)
	set sq=CreateTrigger()
	call TriggerAddRect(sq,udg_liuqiu)
	call TriggerAddCondition(sq,Condition(function GO))
	call TriggerAddAction(sq,function HO)
	set tq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(tq,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(tq,Condition(function lO))
	call TriggerAddAction(tq,function JO)
	//特殊事件：潇湘子和尹克西到藏经阁盗取九阳神功经书
	set t = CreateTrigger()
	call TriggerRegisterTimerEventSingle(t, GetRandomInt(60, 1800))
	//call TriggerRegisterTimerEventSingle(t, 10)
	call TriggerAddAction(t, function stealJiuYang)
	//击杀潇湘子和尹克西，获得奇武，事件结束
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(t,Condition(function isKillStealer))
	call TriggerAddAction(t,function killStealer)
	//击杀觉远大师和张君宝，获得奇武，事件结束
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(t,Condition(function isKillSeeker))
	call TriggerAddAction(t,function killSeeker)
	//击杀白猿，获得伴侣白猿
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(t,Condition(function isKillBaiYuan))
	call TriggerAddAction(t,function killBaiYuan)
	//击杀曾阿牛，获得九阳残卷
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(t,Condition(function isKillANiu))
	call TriggerAddAction(t,function killANiu)
	set t = null
endfunction
