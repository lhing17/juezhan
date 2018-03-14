
/*
 * 13. 剑意系统
 */
 
//剑意系统
function c5 takes nothing returns boolean
	return (UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO) and GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)
endfunction
function D5 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	if (GetItemType(UnitItemInSlotBJ(u,1))!=ITEM_TYPE_ARTIFACT and GetItemType(UnitItemInSlotBJ(u,2))!=ITEM_TYPE_ARTIFACT and GetItemType(UnitItemInSlotBJ(u,3))!=ITEM_TYPE_ARTIFACT and GetItemType(UnitItemInSlotBJ(u,4))!=ITEM_TYPE_ARTIFACT and GetItemType(UnitItemInSlotBJ(u,5))!=ITEM_TYPE_ARTIFACT and GetItemType(UnitItemInSlotBJ(u,6))!=ITEM_TYPE_ARTIFACT) then
		call SetUnitPosition(u,-10510,-9660)
		call PanCameraToTimedForPlayer(p, -10510, -9660, 0)
	else
		call DisplayTextToPlayer(p,0,0,"|CFF34FF00独孤求败：年轻人，你的杀气太重了，看来你我无缘啊")
	endif
	set u = null
	set p = null
endfunction
function XiuWei takes unit u, integer num, integer id, string s returns nothing
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	if (wugongxiuwei[i]>=num) then
		call DisplayTextToPlayer(p,0,0,"|cFFFF0000你已经完成这个修为了")
	elseif (wugongxiuwei[i]<num-1) then
		call DisplayTextToPlayer(p,0,0,"|cFFFF0000你还需要完成上一层修为")
	elseif(((xiuxing[i]<num)or(UnitHaveItem(u,id)==false)))then
		call DisplayTextToPlayer(p,0,0,"|cFFFF0000条件不足")
	else
		call RemoveItem(FetchUnitItem(u,id))
		set udg_shanghaijiacheng[i]=udg_shanghaijiacheng[i]+0.05
		set wugongxiuwei[i]=num
		call DisplayTextToPlayer(p,0,0,"|cFF00FF00修行成功，武学修为达到第"+s+"层，武功提升5%")
	endif
	set p = null
endfunction
function F5 takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896136))
endfunction
function G5 takes nothing returns nothing
	call XiuWei(GetTriggerUnit(), 1, 'I01L', "一")
endfunction
function I5 takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896137))
endfunction
function l5 takes nothing returns nothing
	call XiuWei(GetTriggerUnit(), 2, 1227895094, "二")
endfunction
function K5 takes nothing returns boolean
		return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())=='I05G'))
endfunction
function L5 takes nothing returns nothing
	call XiuWei(GetTriggerUnit(), 3, 1227895091, "三")
endfunction
function N5 takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896134))
endfunction
function O5 takes nothing returns nothing
	call XiuWei(GetTriggerUnit(), 4, 'I02S', "四")
endfunction
function Q5 takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896138))
endfunction
function R5 takes nothing returns nothing
	call XiuWei(GetTriggerUnit(), 5, 'I00P', "五")
endfunction
function LingWuJY_Conditions takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896914))
endfunction
function LingWuJY takes nothing returns nothing
	local trigger t=GetTriggeringTrigger()
	local integer id=GetHandleId(t)
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$5E9EB4B3,i)
	call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,u)
	if((UnitTypeNotNull(u,UNIT_TYPE_HERO)==false))then
	call AdjustPlayerStateBJ(5,p,PLAYER_STATE_RESOURCE_LUMBER)
	call DisplayTextToPlayer(Player(-1+i),0,0,"|cFFFF0000需要主角才能领悟")
	else
	if((wugongxiuwei[i]<1))then
	call AdjustPlayerStateBJ(5,p,PLAYER_STATE_RESOURCE_LUMBER)
	call DisplayTextToPlayer(Player(-1+i),0,0,"|cFFFF0000你的武功修为不足")
	else
	if((yd[i]==1))then
	set wuxing[i]=(wuxing[i]-xd[i])
	elseif((yd[i]==2))then
	set gengu[i]=(gengu[i]-xd[i])
	elseif((yd[i]==3))then
	set danpo[i]=(danpo[i]-xd[i])
	elseif((yd[i]==4))then
	set yishu[i]=(yishu[i]-xd[i])
	elseif((yd[i]==5))then
	set fuyuan[i]=(fuyuan[i]-xd[i])
	elseif((yd[i]==6))then
	set jingmai[i]=(jingmai[i]-xd[i])
	endif
	if((wugongxiuwei[i]==1))then
	set xd[i]=GetRandomInt(xd[i],2)
	elseif((wugongxiuwei[i]==2))then
	set xd[i]=GetRandomInt(xd[i],4)
	elseif((wugongxiuwei[i]==3))then
	set xd[i]=GetRandomInt(xd[i],6)
	elseif((wugongxiuwei[i]==4))then
	set xd[i]=GetRandomInt(xd[i],8)
	elseif((wugongxiuwei[i]==5))then
	set xd[i]=GetRandomInt(xd[i],10)
	endif
	set yd[i]=0
	call DisplayTimedTextToPlayer(Player(-1+i),0,0,20.,("|cff00ff00恭喜领悟到第"+(I2S(xd[i])+"层剑意")))
	call DisplayTimedTextToPlayer(Player(-1+i),0,0,20.,"|cffffff00输入聊天信息“jy”可以把剑意转化为一种性格属性，但是每次转化需要消耗5个珍稀币")
	if((xd[i]==2))then
	call DestroyEffect(vd[i])
	call AddSpecialEffectTargetUnitBJ("chest",u,"war3mapImported\\fairywing.MDX")
	set vd[i]=bj_lastCreatedEffect
	elseif((xd[i]==4))then
	call DestroyEffect(vd[i])
	call AddSpecialEffectTargetUnitBJ("chest",u,"war3mapImported\\fenlie.MDX")
	set vd[i]=bj_lastCreatedEffect
	elseif((xd[i]==6))then
	call DestroyEffect(vd[i])
	call AddSpecialEffectTargetUnitBJ("chest",u,"war3mapImported\\HeroByakuyaWing.MDX")
	set vd[i]=bj_lastCreatedEffect
	elseif((xd[i]==8))then
	call DestroyEffect(vd[i])
	call AddSpecialEffectTargetUnitBJ("chest",u,"war3mapImported\\AWING.MDX")
	set vd[i]=bj_lastCreatedEffect
	elseif((xd[i]==10))then
	call DestroyEffect(vd[i])
	call AddSpecialEffectTargetUnitBJ("chest",u,"war3mapImported\\FWIND.MDX")
	set vd[i]=bj_lastCreatedEffect
	endif
	endif
	endif
	call FlushChildHashtable(YDHT,id*cx)
	set t=null
	set u=null
	set p=null
endfunction

//转化剑意
function ZhuanHuaJY_Conditions takes nothing returns boolean
	return((Ad[(1+GetPlayerId(GetTriggerPlayer()))]))
endfunction
function ZhuanHuaJY takes nothing returns nothing
	local player p = GetTriggerPlayer()
	local integer i = 1 + GetPlayerId(p)
	set Ad[i]=false
	if((GetClickedButton()==B8[i]))then
		call DialogClear(v8[i])
	else
		if((yd[i]==1))then
			set wuxing[i]=(wuxing[i]-xd[i])
		elseif((yd[i]==2))then
			set gengu[i]=(gengu[i]-xd[i])
		elseif((yd[i]==3))then
			set danpo[i]=(danpo[i]-xd[i])
		elseif((yd[i]==4))then
			set yishu[i]=(yishu[i]-xd[i])
		elseif((yd[i]==5))then
			set fuyuan[i]=(fuyuan[i]-xd[i])
		elseif((yd[i]==6))then
			set jingmai[i]=(jingmai[i]-xd[i])
		endif
		if((GetClickedButton()==w8[i]))then
			set gengu[i]=(gengu[i]+xd[i])
			set yd[i]=2
		elseif((GetClickedButton()==y8[i]))then
			set wuxing[i]=(wuxing[i]+xd[i])
			set yd[i]=1
		elseif((GetClickedButton()==z8[i]))then
			set fuyuan[i]=(fuyuan[i]+xd[i])
			set yd[i]=5
		elseif((GetClickedButton()==A8[i]))then
			set danpo[i]=(danpo[i]+xd[i])
			set yd[i]=3
		elseif((GetClickedButton()==a8[i]))then
			set yishu[i]=(yishu[i]+xd[i])
			set yd[i]=4
		elseif((GetClickedButton()==x8[i]))then
			set jingmai[i]=(jingmai[i]+xd[i])
			set yd[i]=6
		endif
		call AdjustPlayerStateBJ(-5,p,PLAYER_STATE_RESOURCE_LUMBER)
		call DisplayTextToPlayer(p,0,0,"|cFF99FFCC转化成功|r")
		call DialogClear(v8[i])
	endif
	set p=null
endfunction


function JianYi_Trigger takes nothing returns nothing
	local trigger t = null
	// 进入剑意系统
	set t=CreateTrigger()
	call TriggerAddRect(t,Sg)
	call TriggerAddCondition(t,Condition(function c5))
	call TriggerAddAction(t,function D5)
	
	// 达到第几层修为
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t,Condition(function F5))
	call TriggerAddAction(t,function G5)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t,Condition(function I5))
	call TriggerAddAction(t,function l5)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t,Condition(function K5))
	call TriggerAddAction(t,function L5)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t,Condition(function N5))
	call TriggerAddAction(t,function O5)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t,Condition(function Q5))
	call TriggerAddAction(t,function R5)
	// 领悟剑意
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t,Condition(function LingWuJY_Conditions))
	call TriggerAddAction(t,function LingWuJY)
	// 选择转化剑意
	set t=CreateTrigger()
	call TriggerRegisterDialogEvent(t,v8[1])
	call TriggerRegisterDialogEvent(t,v8[2])
	call TriggerRegisterDialogEvent(t,v8[3])
	call TriggerRegisterDialogEvent(t,v8[4])
	call TriggerRegisterDialogEvent(t,v8[5])
	call TriggerAddCondition(t,Condition(function ZhuanHuaJY_Conditions))
	call TriggerAddAction(t,function ZhuanHuaJY)
	set t = null
endfunction
