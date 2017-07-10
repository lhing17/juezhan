library TiaoZhan initializer init
	globals
		integer array tiaozhanduixiang
		integer array menpaiwuqi
		boolean array udg_tiaoxuedao
		boolean array udg_tiaodugu
		boolean array udg_tiaodamo
		dialog tiaozhanwho=DialogCreate()
		button b_dugu=null
		button b_xuedaozu=null
		button b_ronglianlaozu=null
		button b_zhucong=null
		button b_damozushi=null
		button b_cancel=null
		unit udg_tiaozhanguai=null

	endglobals
	private function IsTiaoZhan takes nothing returns boolean
		local player p=GetOwningPlayer(GetTriggerUnit())
		local integer i=1+GetPlayerId(p)
		if GetItemTypeId(GetManipulatedItem())=='I09O' and (IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)) then
			return true
		endif
        return	false
	endfunction
    private function TiaoZhan takes nothing returns nothing
        local unit u=GetTriggerUnit()
        local player p=GetOwningPlayer(u)
        local integer i=1+GetPlayerId(p)
        if udg_tiaozhanguai!=null then
	        call DisplayTimedTextToPlayer(p,0,0,15,"|cFFFFFF00挑战场正在使用中，请耐心等待")
	        call AdjustPlayerStateBJ(100000,p,PLAYER_STATE_RESOURCE_GOLD)
	    else
            if (GetPlayerController(p)==MAP_CONTROL_USER)and(GetPlayerSlotState(p)==PLAYER_SLOT_STATE_PLAYING) then
                call DialogClear(tiaozhanwho)
                call DialogSetMessage(tiaozhanwho,"请选择要挑战的对象")
                if udg_tiaodugu[i]==false and GetUnitLevel(u)>=90 then
                    set b_dugu=DialogAddButtonBJ(tiaozhanwho,"|cFF00CC00独孤求败")
                endif
                if udg_tiaoxuedao[i]==false and GetUnitLevel(u)>=90 then
                    set b_xuedaozu=DialogAddButtonBJ(tiaozhanwho,"|cFFCC0066血刀老祖")
                endif
                if udg_tiaodamo[i]==false and GetUnitLevel(u)>=90 then
                    set b_damozushi=DialogAddButtonBJ(tiaozhanwho,"|cFFCC0066达摩祖师")
                endif
                set b_ronglianlaozu=DialogAddButtonBJ(tiaozhanwho,"|cFFFF6600冯默风")
                if GetUnitLevel(u)>=90 then
                	set b_zhucong=DialogAddButtonBJ(tiaozhanwho,"|cFFFF0000朱聪")
            	endif
                set b_cancel=DialogAddButtonBJ(tiaozhanwho,"|cFFFFFF00取消")
                call DialogDisplayBJ(true,tiaozhanwho,p)
            endif
        endif
        set u=null
        set p=null
    endfunction
    private function TiaoZhan_Action takes nothing returns nothing
        local location loc=Location(12156,-12021)
        local player p=GetTriggerPlayer()
        local unit u=udg_hero[1+GetPlayerId(p)]
        if GetClickedButton()==b_dugu then
	        call CreateNUnitsAtLoc(1,'n005',Player(12),loc,bj_UNIT_FACING)
            set udg_tiaozhanguai=bj_lastCreatedUnit
	        call SetUnitPosition(u,11459,-12021)
            call PanCameraToTimedForPlayer(p,11459,-12021,0)
        endif
        if GetClickedButton()==b_xuedaozu then
	        call CreateNUnitsAtLoc(1,'o01W',Player(12),loc,bj_UNIT_FACING)
	        set udg_tiaozhanguai=bj_lastCreatedUnit
	        call SetUnitPosition(u,11459,-12021)
            call PanCameraToTimedForPlayer(p,11459,-12021,0)
        endif
        if GetClickedButton()==b_damozushi then
	        call CreateNUnitsAtLoc(1,'o024',Player(12),loc,bj_UNIT_FACING)
	        set udg_tiaozhanguai=bj_lastCreatedUnit
	        call SetUnitPosition(u,11459,-12021)
            call PanCameraToTimedForPlayer(p,11459,-12021,0)
        endif
        if GetClickedButton()==b_ronglianlaozu then
	        call CreateNUnitsAtLoc(1,'o01V',Player(12),loc,bj_UNIT_FACING)
	        set udg_tiaozhanguai=bj_lastCreatedUnit
	        call SetUnitPosition(u,11459,-12021)
            call PanCameraToTimedForPlayer(p,11459,-12021,0)
        endif
        if GetClickedButton()==b_zhucong then
	        call CreateNUnitsAtLoc(1,'n006',Player(12),loc,bj_UNIT_FACING)
	        set udg_tiaozhanguai=bj_lastCreatedUnit
	        call SetUnitPosition(u,11459,-12021)
            call PanCameraToTimedForPlayer(p,11459,-12021,0)
        endif
        if GetClickedButton()==b_cancel then
            call AdjustPlayerStateBJ(100000,p,PLAYER_STATE_RESOURCE_GOLD)
        endif
        call RemoveLocation(loc)
        set loc=null
        set u=null
        set p=null
    endfunction
    private function DiaoLuo takes nothing returns boolean
    	return IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())) and (GetUnitTypeId(GetTriggerUnit())=='n005' or GetUnitTypeId(GetTriggerUnit())=='o01W' or GetUnitTypeId(GetTriggerUnit())=='o01V' or GetUnitTypeId(GetTriggerUnit())=='n006' or GetUnitTypeId(GetTriggerUnit())=='o024')
    endfunction
    private function DiaoLuo_Action takes nothing returns nothing
        local location loc = GetUnitLoc(GetTriggerUnit())
        local integer i = 0
    	if GetUnitTypeId(GetTriggerUnit())=='n005' then
	    	call CreateItemLoc('I09Q',loc)
	    	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFF00CC00" + GetPlayerName(GetOwningPlayer(GetKillingUnit())) + "杀死了独孤求败，获得了武魂石")
	    	//call SaveInteger(YDHT,GetHandleId(bj_lastCreatedItem),0,25000)
	    	set i = 1
	    	loop
	    		exitwhen i >= 6
	    		set udg_tiaodugu[i]=true
	    		set i = i + 1
	    	endloop

	    	set udg_tiaozhanguai=null
	    elseif GetUnitTypeId(GetTriggerUnit())=='o01W' then
	        call CreateItemLoc('I098',loc)
	        call SaveInteger(YDHT,GetHandleId(bj_lastCreatedItem),0,25000)
	        set udg_tiaoxuedao[1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=true
	        set udg_tiaozhanguai=null
	    elseif GetUnitTypeId(GetTriggerUnit())=='o024' then
	        call CreateItemLoc('I0AL',loc)
	        set udg_tiaodamo[1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=true
	        set udg_tiaozhanguai=null
	    elseif GetUnitTypeId(GetTriggerUnit())=='o01V' then
	        call CreateItemLoc('I09P',loc)
	        set udg_tiaozhanguai=null
	    elseif GetUnitTypeId(GetTriggerUnit())=='n006' then
	        if GetRandomInt(0,100)<=30 then
	            call CreateItemLoc('I09Z',loc)
	        else
	            call CreateItemLoc('I06K',loc)
            endif
	        set udg_tiaozhanguai=null
        endif
        call RemoveLocation(loc)
        set loc=null
    endfunction
    private function init takes nothing returns nothing
        local trigger t=CreateTrigger()
        local integer i=0
        set i = 1
        loop
        	exitwhen i >= 6
        	set udg_tiaoxuedao[i]=false
        	set udg_tiaodugu[i]=false
        	set udg_tiaodamo[i]=false
        	set i = i + 1
        endloop
        call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
        call TriggerAddCondition(t,function IsTiaoZhan)
        call TriggerAddAction(t,function TiaoZhan)
        set t=CreateTrigger()
        call TriggerRegisterDialogEvent(t,tiaozhanwho)
        call TriggerAddAction(t,function TiaoZhan_Action)
        set t=CreateTrigger()
        call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
        call TriggerAddCondition(t,function DiaoLuo)
        call TriggerAddAction(t,function DiaoLuo_Action)


        //峨眉挑战灭绝师太得倚天剑
        //set tiaozhanduixiang[1]='o00W'
        //set menpaiwuqi[1]='I00B'
        //丐帮挑战洪七公得打狗棒
        //set tiaozhanduixiang[2]='nwnr'
        //set menpaiwuqi[2]='I097'
        //全真挑战周伯通
        //set tiaozhanduixiang[3]='o00Y'
        //set menpaiwuqi[3]='I098'
        //血刀挑战血刀老祖得血刀
        //set tiaozhanduixiang[4]='o01U'
        //set menpaiwuqi[4]='I09A'
        //古墓挑战林朝英得淑女剑
        //set tiaozhanduixiang[5]='ndqs'
        //set menpaiwuqi[5]=''
        //少林挑战觉远大师
        //set tiaozhanduixiang[6]='o00O'
        //set menpaiwuqi[6]=''
        //武当挑战张三丰
        //set tiaozhanduixiang[7]=''.
        //set menpaiwuqi[7]=''
        //星宿挑战
        //set tiaozhanduixiang[8]=''
        //set menpaiwuqi[8]=''
        //华山挑战
        //set tiaozhanduixiang[9]=''
        //set menpaiwuqi[9]=''
        //恒山挑战
        //set tiaozhanduixiang[10]=''
        //set menpaiwuqi[10]=''
        set t=null
    endfunction
endlibrary
