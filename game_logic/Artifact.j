//=====================================
//
//         神   器   系   统
//
//=====================================
globals
	dialog array jingyao_dialog
	button array jingyao_button1
	button array jingyao_button2
	button array jingyao_button3
	button array jingyao_button4
	button array jingyao_button5
	button array jingyao_button6
	button array jingyao_button7
	button array jingyao_button8
	button array jingyao_button9
	button array jingyao_button10
	button array jingyao_button11
	button array jingyao_button_cancel
endglobals

/*
 * 是否杀掉爆神器的怪
 */
function isKillArtifactCreature takes nothing returns boolean
	return GetUnitTypeId(GetTriggerUnit())=='h00N' or GetUnitTypeId(GetTriggerUnit())=='n00S' or GetUnitTypeId(GetTriggerUnit())=='n00T' or GetUnitTypeId(GetTriggerUnit())=='n00U'
endfunction

/*
 * 杀掉爆神器的怪的动作
 */
function killArtifactCreature takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local integer i = 1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))
	local unit ut = udg_hero[i]
	if (GetUnitTypeId(u) == 'h00N') then //七绝圣手
		set shengwang[1]=shengwang[1]+100
		set shengwang[2]=shengwang[2]+100
		set shengwang[3]=shengwang[3]+100
		set shengwang[4]=shengwang[4]+100
		set shengwang[5]=shengwang[5]+100
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00ff00击杀七绝圣手，全员获得江湖声望+100")
		call dropItem(ut, 'I01J', 'I0D3', 50) //七绝护符或武学精要
	elseif (GetUnitTypeId(u) == 'n00S') then //璇玑道长
		set shengwang[1]=shengwang[1]+200
		set shengwang[2]=shengwang[2]+200
		set shengwang[3]=shengwang[3]+200
		set shengwang[4]=shengwang[4]+200
		set shengwang[5]=shengwang[5]+200
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00ff00击杀璇玑道长，全员获得江湖声望+200")
		call dropItem(ut, 'I01D', 'I0D3', 50) //天璇护腕或武学精要
	elseif (GetUnitTypeId(u) == 'n00T') then //木桑道人
		set shengwang[1]=shengwang[1]+300
		set shengwang[2]=shengwang[2]+300
		set shengwang[3]=shengwang[3]+300
		set shengwang[4]=shengwang[4]+300
		set shengwang[5]=shengwang[5]+300
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00ff00击杀七绝圣手，全员获得江湖声望+300")
		call dropItem(ut, 'I00T', 'I0D3', 50) //神行鞋或武学精要
	elseif (GetUnitTypeId(u) == 'n00U') then //天王老子
		set shengwang[1]=shengwang[1]+400
		set shengwang[2]=shengwang[2]+400
		set shengwang[3]=shengwang[3]+400
		set shengwang[4]=shengwang[4]+400
		set shengwang[5]=shengwang[5]+400
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00ff00击杀七绝圣手，全员获得江湖声望+400")
		call dropItem(ut, 'I00J', 'I0D3', 50) //神迹戒或武学精要
	endif
	set u = null
	set ut = null
endfunction

//是否传送到爆神器怪所在区域
function isTransportToFindArtifact takes nothing returns boolean
	return UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)and GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER \
	and (GetItemTypeId(GetManipulatedItem())=='I0CZ' or GetItemTypeId(GetManipulatedItem())=='I0D0' or GetItemTypeId(GetManipulatedItem())=='I0D1' \
	or GetItemTypeId(GetManipulatedItem())=='I0D2')
endfunction

//传送到爆神器怪所在区域
function transportToFindArtifact takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	if GetItemTypeId(GetManipulatedItem())=='I0CZ' then
		if (xiuxing[i]<2) then
			call SetUnitPosition(udg_hero[i],-4864,-11137)
			call PanCameraToTimedForPlayer(GetTriggerPlayer(),-4864,-11137,0)
			call DisplayTextToPlayer(p,0,0,"|CFF00ff33前往挑战七绝圣手")
		else
			call DisplayTextToPlayer(p,0,0,"|CFF00ff33历练2后不能进行挑战")
		endif
    endif
    if GetItemTypeId(GetManipulatedItem())=='I0D0' then
		if (xiuxing[i]<3) then
			call SetUnitPosition(udg_hero[i],-4106,-12123)
			call PanCameraToTimedForPlayer(GetTriggerPlayer(),-4106,-12123,0)
			call DisplayTextToPlayer(p,0,0,"|CFF00ff33前往挑战璇玑道长")
		else
			call DisplayTextToPlayer(p,0,0,"|CFF00ff33历练3后不能进行挑战")
		endif
    endif
    if GetItemTypeId(GetManipulatedItem())=='I0D1' then
		if (xiuxing[i]<5) then
			call SetUnitPosition(udg_hero[i],-3267,-11156)
			call PanCameraToTimedForPlayer(GetTriggerPlayer(),-3267,-11156,0)
			call DisplayTextToPlayer(p,0,0,"|CFF00ff33前往挑战木桑道人")
		else
			call DisplayTextToPlayer(p,0,0,"|CFF00ff33历练5后不能进行挑战")
		endif
    endif
    if GetItemTypeId(GetManipulatedItem())=='I0D2' then
		if (xiuxing[i]<6) then
			call SetUnitPosition(udg_hero[i],-2319,-12132)
			call PanCameraToTimedForPlayer(GetTriggerPlayer(),-2319,-12132,0)
			call DisplayTextToPlayer(p,0,0,"|CFF00ff33前往挑战天王老子")
		else
			call DisplayTextToPlayer(p,0,0,"|CFF00ff33历练6后不能进行挑战")
		endif
    endif
    set p = null
    set u = null
endfunction

// 是否使用武学精要
function isUseWuXueJingYao takes nothing returns boolean
	return GetItemTypeId(GetManipulatedItem())=='I0D3'
endfunction
function useWuXueJingYao takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	local integer j = 1
	if not(UnitTypeNotNull(u, UNIT_TYPE_HERO)) then
		call DisplayTextToPlayer(p,0,0,"|CFF00ff33只能由英雄使用！")
		call UnitAddItemById(u, 'I0D3')
		return
	endif
	
	if (jingyao_dialog[i] == null) then
		set jingyao_dialog[i] = DialogCreate() // 初始化对话框
	endif
	call DialogSetMessage(jingyao_dialog[i],"请选择要精修的武学！")
	if((I7[(i-1)*20+1]!='AEfk'))then
		call DialogAddButtonBJ(jingyao_dialog[i],GetObjectName(I7[(i-1)*20+1]))
		set jingyao_button1[i]=bj_lastCreatedButton
	endif
	if((I7[(i-1)*20+2]!='AEfk'))then
		call DialogAddButtonBJ(jingyao_dialog[i],GetObjectName(I7[(i-1)*20+2]))
		set jingyao_button2[i]=bj_lastCreatedButton
	endif
	if((I7[(i-1)*20+3]!='AEfk'))then
		call DialogAddButtonBJ(jingyao_dialog[i],GetObjectName(I7[(i-1)*20+3]))
		set jingyao_button3[i]=bj_lastCreatedButton
	endif
	if((I7[(i-1)*20+4]!='AEfk'))then
		call DialogAddButtonBJ(jingyao_dialog[i],GetObjectName(I7[(i-1)*20+4]))
		set jingyao_button4[i]=bj_lastCreatedButton
	endif
	if((I7[(i-1)*20+5]!='AEfk'))then
		call DialogAddButtonBJ(jingyao_dialog[i],GetObjectName(I7[(i-1)*20+5]))
		set jingyao_button5[i]=bj_lastCreatedButton
	endif
	if((I7[(i-1)*20+6]!='AEfk'))then
		call DialogAddButtonBJ(jingyao_dialog[i],GetObjectName(I7[(i-1)*20+6]))
		set jingyao_button6[i]=bj_lastCreatedButton
	endif
	if((I7[(i-1)*20+7]!='AEfk'))then
		call DialogAddButtonBJ(jingyao_dialog[i],GetObjectName(I7[(i-1)*20+7]))
		set jingyao_button7[i]=bj_lastCreatedButton
	endif
	if((I7[(i-1)*20+8]!='AEfk'))then
		call DialogAddButtonBJ(jingyao_dialog[i],GetObjectName(I7[(i-1)*20+8]))
		set jingyao_button8[i]=bj_lastCreatedButton
	endif
	if((I7[(i-1)*20+9]!='AEfk'))then
		call DialogAddButtonBJ(jingyao_dialog[i],GetObjectName(I7[(i-1)*20+9]))
		set jingyao_button9[i]=bj_lastCreatedButton
	endif
	if((I7[(i-1)*20+10]!='AEfk'))then
		call DialogAddButtonBJ(jingyao_dialog[i],GetObjectName(I7[(i-1)*20+10]))
		set jingyao_button10[i]=bj_lastCreatedButton
	endif
	if((I7[(i-1)*20+11]!='AEfk'))then
		call DialogAddButtonBJ(jingyao_dialog[i],GetObjectName(I7[(i-1)*20+11]))
		set jingyao_button11[i]=bj_lastCreatedButton
	endif
	call DialogAddButtonBJ(jingyao_dialog[i],"取消")
	set jingyao_button_cancel[i]=bj_lastCreatedButton
	call DialogDisplay(p,jingyao_dialog[i],true)
	set u = null
	set p = null
endfunction

// 精修武学
function deepLearnSkill takes player p, integer num returns nothing
	local integer i = 1 + GetPlayerId(p)
	call SaveReal(YDHT, GetHandleId(p), I7[(i-1)*20+num]*12, LoadReal(YDHT, GetHandleId(p), I7[(i-1)*20+num]*12)+0.5)
	call DisplayTimedTextToPlayer(p,0,0,10.,"|CFFFF9933成功精修武学："+GetObjectName(I7[(i-1)*20+num]))
endfunction

// 选择要精修的武学
function chooseDeepLearnSkill takes nothing returns nothing
	local player p = GetTriggerPlayer()
	local integer i = 1 + GetPlayerId(p)
	if((GetClickedButton()==jingyao_button1[i]))then
		call deepLearnSkill(p, 1)
	elseif((GetClickedButton()==jingyao_button2[i]))then
		call deepLearnSkill(p, 2)
	elseif((GetClickedButton()==jingyao_button3[i]))then
		call deepLearnSkill(p, 3)
	elseif((GetClickedButton()==jingyao_button4[i]))then
		call deepLearnSkill(p, 4)
	elseif((GetClickedButton()==jingyao_button5[i]))then
		call deepLearnSkill(p, 5)
	elseif((GetClickedButton()==jingyao_button6[i]))then
		call deepLearnSkill(p, 6)
	elseif((GetClickedButton()==jingyao_button7[i]))then
		call deepLearnSkill(p, 7)
	elseif((GetClickedButton()==jingyao_button8[i]))then
		call deepLearnSkill(p, 8)
	elseif((GetClickedButton()==jingyao_button9[i]))then
		call deepLearnSkill(p, 9)
	elseif((GetClickedButton()==jingyao_button10[i]))then
		call deepLearnSkill(p, 10)
	elseif((GetClickedButton()==jingyao_button11[i]))then
		call deepLearnSkill(p, 11)
	elseif((GetClickedButton()==jingyao_button_cancel[i]))then
		call UnitAddItemById(udg_hero[i], 'I0D3')
	endif
	call DialogClear(jingyao_dialog[i])
	set p = null
endfunction
/*
 * 神器触发器
 */
function ArtifactTrigger takes nothing returns nothing
	// 击杀爆神器的怪
	local trigger t = CreateTrigger()
	set jingyao_dialog[1] = DialogCreate()
	set jingyao_dialog[2] = DialogCreate()
	set jingyao_dialog[3] = DialogCreate()
	set jingyao_dialog[4] = DialogCreate()
	set jingyao_dialog[5] = DialogCreate()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(t,Condition(function isKillArtifactCreature))
	call TriggerAddAction(t,function killArtifactCreature)
	
	// 传送到爆神器怪所在区域
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t,Condition(function isTransportToFindArtifact))
	call TriggerAddAction(t,function transportToFindArtifact)
	
	// 使用武学精要
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(t,Condition(function isUseWuXueJingYao))
	call TriggerAddAction(t,function useWuXueJingYao)
	
	// 选择要精修的武学
	set t=CreateTrigger()
	call TriggerRegisterDialogEvent(t,jingyao_dialog[1])
	call TriggerRegisterDialogEvent(t,jingyao_dialog[2])
	call TriggerRegisterDialogEvent(t,jingyao_dialog[3])
	call TriggerRegisterDialogEvent(t,jingyao_dialog[4])
	call TriggerRegisterDialogEvent(t,jingyao_dialog[5])
	call TriggerAddAction(t,function chooseDeepLearnSkill)
	set t = null

endfunction
