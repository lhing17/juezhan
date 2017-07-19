//----------------------------
// VIP系统
//----------------------------
function NewSave takes player p returns nothing
	call YDWE_PreloadSL_Set( p, "ID", 1, StringHash(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) )
	call YDWE_PreloadSL_Set( p, "高V", 2, 100 )
	call YDWE_PreloadSL_Set( p, "VIP", 3, 100 )
	call YDWE_PreloadSL_Set( p, "11VIP", 4, 100 )
	call YDWE_PreloadSL_Set( p, "换VIP", 5, 100 )
	call YDWE_PreloadSL_Set( p, "青龙", 6, 100 )
	call YDWE_PreloadSL_Set( p, "招式伤害", 7, 0 )
	call YDWE_PreloadSL_Set( p, "内力", 8, 0 )
	call YDWE_PreloadSL_Set( p, "真实伤害", 9, 0 )
	call YDWE_PreloadSL_Set( p, "暴击伤害", 10, 0 )
	call YDWE_PreloadSL_Set( p, "绝学领悟", 11, 0 )
	call YDWE_PreloadSL_Set( p, "根骨", 12, 0 )
	call YDWE_PreloadSL_Set( p, "胆魄", 13, 0 )
	call YDWE_PreloadSL_Set( p, "医术", 14, 0 )
	call YDWE_PreloadSL_Set( p, "经脉", 15, 0 )
	call YDWE_PreloadSL_Set( p, "悟性", 16, 0 )
	call YDWE_PreloadSL_Set( p, "福缘", 17, 0 )
	call YDWE_PreloadSL_Set( p, "杀人数", 18, 0 )
	call YDWE_PreloadSL_Save( p, "JueZhan", "VIP", SAV_NUM)
	call DisplayTextToPlayer(p, 0, 0, "|CFFff9933创建新存档")
endfunction
globals
	constant integer SAV_NUM = 18
endglobals
function Trig_______VIPActions takes nothing returns nothing
    local player p = null
    local integer  i = 1
    loop
        exitwhen i > 6
        //call BJDebugMsg(I2S(i))
        set p = Player(i-1)
        call YDWE_PreloadSL_Load( p, "JueZhan", "VIP", SAV_NUM  )
        //call BJDebugMsg(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2))
        //call BJDebugMsg(I2S(StringHash(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2))))
        //call BJDebugMsg(I2S(YDWE_PreloadSL_Get(p, "ID", 1)))
        if ((bj_lastLoadPreloadSLResult == true)) then
        	if YDWE_PreloadSL_Get(p, "ID", 1) == StringHash(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) then
	        	//call BJDebugMsg(I2S(YDWE_PreloadSL_Get(p, "高V", 2)))
	        	//call BJDebugMsg(I2S(YDWE_PreloadSL_Get(p, "VIP", 3)))
	        	//call BJDebugMsg(I2S(YDWE_PreloadSL_Get(p, "11VIP", 4)))
	        	//call BJDebugMsg(I2S(YDWE_PreloadSL_Get(p, "换VIP", 5)))
	        	//call BJDebugMsg(I2S(YDWE_PreloadSL_Get(p, "青龙", 6)))
        	    if YDWE_PreloadSL_Get(p, "VIP", 3) == 120 then
        	        set udg_vip[i] = 1
        	        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了角色兰馨和门派明教|r")
        	    endif
        	    if YDWE_PreloadSL_Get(p, "11VIP", 4) == 120 then
        	        set udg_elevenvip[i] = 1
        	        set wugongshu[i] = 11
        	        call UnitRemoveAbility(udg_hero[i],'A040')
        	        call UnitRemoveAbility(udg_hero[i],'A041')
        	        call UnitRemoveAbility(udg_hero[i],'A042')
        	        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了11格武功|r")
        	    endif
        	    if YDWE_PreloadSL_Get(p, "换VIP", 5) == 120 then
        	        set udg_changevip[i] = 1
        	        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了角色瑾轩|r")
        	    endif
        	    if YDWE_PreloadSL_Get(p, "高V", 2) == 120 then
        	        set udg_vip[i] = 2
        	        set wugongshu[i] = 11
        	        call UnitRemoveAbility(udg_hero[i],'A040')
        	        call UnitRemoveAbility(udg_hero[i],'A041')
        	        call UnitRemoveAbility(udg_hero[i],'A042')
        	        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933感谢玩家"+GetPlayerName(p)+"对决战江湖的杰出贡献|r")
        	    endif
        	endif
        //else
        //	call NewSave(p)
    	endif

        set i = i + 1
    endloop
endfunction
//VIP码计算
function Qskc_GetL takes player pl,string str,integer hashs, integer which_number returns boolean
	local string OOl1= SubStringBJ(str,1,10)
	local string O01l= SubStringBJ(str,11,163)
	local string I1l1= SubStringBJ(str,164,218)
	local string Ill1= SubStringBJ(str,219,245)
	local integer OOll= StringLength(O01l)
	local integer Il0O = StringHash(LoadStr(YDHT, GetHandleId(pl), GetHandleId(pl)*2))
	local integer OO11= 0
	local integer OO1l= 0
	local integer O0O0= 0
	local integer OO0O= 0
	local integer O0ll= 0
	local integer O011 = 0
	local integer O1lO = 0
	local integer Ol1O = 0
	local integer lO01 = 0
	local integer lI0O = 0
	local integer l0O1 = 0
	local integer O0l1 = IAbsBJ(Il0O)
	loop
		exitwhen O011 >= which_number
		set O0l1 =IAbsBJ(StringHash(I2S(O0l1)))
		set OO1l =IAbsBJ(StringHash(I2S(O0l1)))
		set O0O0 =IAbsBJ(StringHash(I2S(O0l1)))
		set O011 = O011 + 1
		set OO0O = OO0O + 1
		set O1lO = O1lO + 1
	endloop
	if O0l1 < $3B9ACA00 then
		set Ol1O = O0l1 + $1A4CCA00
		set O0l1 = O0l1 + $3B9ACA00
		set lO01 = O0l1 + $3C6BAB00
	endif
		set O0ll=StringHash(O01l)
		set lI0O=O0ll + StringHash(I2S(O0l1))
		set O0ll=O0ll + StringHash(I2S(OOll))
		set l0O1=O0ll + StringHash(I2S(OOll))
	loop
		exitwhen OO11 >= OOll
		set O0ll=O0ll + StringHash(SubString(O01l, OO11, OO11 + 1))
		set OO11 = OO11 + 1
	endloop
	return O0ll==hashs and I2S(O0l1)==OOl1
endfunction
function activationCode takes nothing returns nothing
    // 1号
    if ((Qskc_GetL(GetTriggerPlayer(),GetEventPlayerChatString(),-1418175828,4))) then
        if ((udg_vip[GetConvertedPlayerId(GetTriggerPlayer())] == 0)) then
            call DisplayTimedTextToPlayer( GetTriggerPlayer(), 0, 0, 30, ( "恭喜 " + ( ( "|CFFFF8000" + GetPlayerName(GetTriggerPlayer()) ) + " |r解锁了角色兰馨和门派明教" ) ) )
            set udg_vip[GetConvertedPlayerId(GetTriggerPlayer())] = 1
        else
            call DisplayTimedTextToPlayer( GetTriggerPlayer(), 0, 0, 30, ( "你已经解锁了角色兰馨和门派明教，不能重复解锁" ) )
        endif
    else
    endif
    // 2号
    if ((Qskc_GetL(GetTriggerPlayer(),GetEventPlayerChatString(),366685871,5))) then
        if ((udg_elevenvip[GetConvertedPlayerId(GetTriggerPlayer())] == 0)) then
            call DisplayTimedTextToPlayer( GetTriggerPlayer(), 0, 0, 30, ( "恭喜 " + ( ( "|CFFFF8000" + GetPlayerName(GetTriggerPlayer()) ) + " |r解锁了11格武功" ) ) )
            set udg_elevenvip[GetConvertedPlayerId(GetTriggerPlayer())] = 1
            set wugongshu[GetConvertedPlayerId(GetTriggerPlayer())] = 11
        	call UnitRemoveAbility(udg_hero[GetConvertedPlayerId(GetTriggerPlayer())],'A040')
        	call UnitRemoveAbility(udg_hero[GetConvertedPlayerId(GetTriggerPlayer())],'A041')
        	call UnitRemoveAbility(udg_hero[GetConvertedPlayerId(GetTriggerPlayer())],'A042')
        else
            call DisplayTimedTextToPlayer( GetTriggerPlayer(), 0, 0, 30, ( "你已经解锁了11格武功，不能重复解锁" ) )
        endif
    else
    endif
    // 3号
    if ((Qskc_GetL(GetTriggerPlayer(),GetEventPlayerChatString(),141150855,6))) then
        if ((udg_changevip[GetConvertedPlayerId(GetTriggerPlayer())] == 0)) then
            call DisplayTimedTextToPlayer( GetTriggerPlayer(), 0, 0, 30, ( "恭喜 " + ( ( "|CFFFF8000" + GetPlayerName(GetTriggerPlayer()) ) + " |r解锁了角色瑾轩" ) ) )
            set udg_changevip[GetConvertedPlayerId(GetTriggerPlayer())] = 1
        else
            call DisplayTimedTextToPlayer( GetTriggerPlayer(), 0, 0, 30, ( "你已经解锁了角色瑾轩，不能重复解锁" ) )
        endif
    else
    endif
endfunction

//===========================================================================
function initActivationCode takes nothing returns nothing
    local trigger t = CreateTrigger()
	local integer i = 0
	loop
		exitwhen i > 6
		call TriggerRegisterPlayerChatEvent(t,Player(i),"",true)
		set i = i + 1
	endloop
	call TriggerAddAction(t,function activationCode)
	set t = null
endfunction


function VIP_trigger takes nothing returns nothing
	local trigger t = CreateTrigger()
	call initActivationCode()
    call TriggerRegisterTimerEventSingle( t, 2.00 )
    call TriggerAddAction(t, function Trig_______VIPActions)
	set t = null
endfunction
