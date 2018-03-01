//----------------------------
// VIP系统
//----------------------------
//==================VIP码系统开始==================//
function CunVIP takes integer num, string s1, string s2 returns nothing
	local integer i = StringHash("VIP")
	call SaveStr(YDHT, i+num, 0, s1)
	call SaveStr(YDHT, i+num, 1, s2)
endfunction
function CunVIPNum takes nothing returns nothing
	call CunVIP(0, "WorldEdit", 	"288001")
endfunction
function GetVIPNum_1 takes string s returns string
	local string str
	local integer i = StringHash("VIP")
	local integer j = 0
	loop
		exitwhen j >= 50
		if LoadStr(YDHT, i+j, 0) == s then
			return LoadStr(YDHT, i+j, 1)
		endif
		set j = j + 1
	endloop
	return null
endfunction
//VIP码
function GetVIPNum takes string s returns string
	local string str
	set str = I2S(IAbsBJ(StringHash(s)))
	if StringLength(str) >= 6 then
		if StringLength(str) == 10 then
			return SubStringBJ(str, 5, 10)
		else
			return SubStringBJ(str, 1, 6)
		endif
	else
		return SubStringBJ(str+"013478", 1, 6)
	endif
	return null
endfunction
//换装码
function GetChangePreNum takes string s returns string
	local string str
	set str = I2S(IAbsBJ(StringHash(s)))
	set str = I2S(IAbsBJ(StringHash(str)))
	if StringLength(str) >= 6 then
		if StringLength(str) == 10 then
			return SubStringBJ(str, 5, 10)
		else
			return SubStringBJ(str, 1, 6)
		endif
	else
		return SubStringBJ(str+"013478", 1, 6)
	endif
	return null
endfunction
//11格码
function GetElevenNum takes string s returns string
	local string str
	set str = I2S(IAbsBJ(StringHash(s)))
	set str = I2S(IAbsBJ(StringHash(str)))
	set str = I2S(IAbsBJ(StringHash(str)))
	if StringLength(str) >= 6 then
		if StringLength(str) == 10 then
			return SubStringBJ(str, 5, 10)
		else
			return SubStringBJ(str, 1, 6)
		endif
	else
		return SubStringBJ(str+"013478", 1, 6)
	endif
	return null
endfunction
//由玩家名生成的激活码
function NameProdVIP takes string s,integer cycle_count returns integer
	local integer i = 0
	local integer udl_vip = IAbsBJ(StringHash(s))
	loop
		exitwhen i >= cycle_count
		set udl_vip =IAbsBJ(StringHash(I2S(udl_vip)))
		set i = i + 1
	endloop
	if udl_vip < 1000000000 then
		set udl_vip = udl_vip + 1000000000
	endif
	return udl_vip
endfunction
globals
	string array vipnum_1
	string array vipnum_2
	string array vipnum_3
	string array vipnum_4
	string array vipnum_5
	string array vipnum_6
	unit array vipbanlv
	boolean array vipbanlvbool
endglobals

function IsVIPItem takes nothing returns boolean
	return (GetItemTypeId(GetManipulatedItem())=='I0AA' or GetItemTypeId(GetManipulatedItem())=='I0AB' or GetItemTypeId(GetManipulatedItem())=='I0AC' or GetItemTypeId(GetManipulatedItem())=='I0AD' or GetItemTypeId(GetManipulatedItem())=='I0AE' or GetItemTypeId(GetManipulatedItem())=='I0AF' or GetItemTypeId(GetManipulatedItem())=='I0AG' or GetItemTypeId(GetManipulatedItem())=='I0AH' or GetItemTypeId(GetManipulatedItem())=='I0AI' or GetItemTypeId(GetManipulatedItem())=='I0AJ' or GetItemTypeId(GetManipulatedItem())=='I0AK')
endfunction


function ChooseVIP takes nothing returns nothing
	local player p = GetOwningPlayer(GetTriggerUnit())
	local integer i = 1 + GetPlayerId(p)
	local string str = null
	call DisplayTextToPlayer(p, 0, 0, "|CFF00FF00点击六位正确的数字可解锁相应功能")
	//if udg_vip[i] == 0  then
		if GetItemTypeId(GetManipulatedItem())=='I0AA' then
			set vipnum_1[i] = vipnum_1[i] + "1"
			set vipnum_2[i] = vipnum_2[i] + "1"
			set vipnum_3[i] = vipnum_3[i] + "1"
			set vipnum_4[i] = vipnum_4[i] + "1"
			set vipnum_5[i] = vipnum_5[i] + "1"
			set vipnum_6[i] = vipnum_6[i] + "1"
		elseif GetItemTypeId(GetManipulatedItem())=='I0AB' then
			set vipnum_1[i] = vipnum_1[i] + "2"
			set vipnum_2[i] = vipnum_2[i] + "2"
			set vipnum_3[i] = vipnum_3[i] + "2"
			set vipnum_4[i] = vipnum_4[i] + "2"
			set vipnum_5[i] = vipnum_5[i] + "2"
			set vipnum_6[i] = vipnum_6[i] + "2"
		elseif GetItemTypeId(GetManipulatedItem())=='I0AC' then
			set vipnum_1[i] = vipnum_1[i] + "3"
			set vipnum_2[i] = vipnum_2[i] + "3"
			set vipnum_3[i] = vipnum_3[i] + "3"
			set vipnum_4[i] = vipnum_4[i] + "3"
			set vipnum_5[i] = vipnum_5[i] + "3"
			set vipnum_6[i] = vipnum_6[i] + "3"
		elseif GetItemTypeId(GetManipulatedItem())=='I0AD' then
			set vipnum_1[i] = vipnum_1[i] + "4"
			set vipnum_2[i] = vipnum_2[i] + "4"
			set vipnum_3[i] = vipnum_3[i] + "4"
			set vipnum_4[i] = vipnum_4[i] + "4"
			set vipnum_5[i] = vipnum_5[i] + "4"
			set vipnum_6[i] = vipnum_6[i] + "4"
		elseif GetItemTypeId(GetManipulatedItem())=='I0AE' then
			set vipnum_1[i] = vipnum_1[i] + "5"
			set vipnum_2[i] = vipnum_2[i] + "5"
			set vipnum_3[i] = vipnum_3[i] + "5"
			set vipnum_4[i] = vipnum_4[i] + "5"
			set vipnum_5[i] = vipnum_5[i] + "5"
			set vipnum_6[i] = vipnum_6[i] + "5"
		elseif GetItemTypeId(GetManipulatedItem())=='I0AF' then
			set vipnum_1[i] = vipnum_1[i] + "6"
			set vipnum_2[i] = vipnum_2[i] + "6"
			set vipnum_3[i] = vipnum_3[i] + "6"
			set vipnum_4[i] = vipnum_4[i] + "6"
			set vipnum_5[i] = vipnum_5[i] + "6"
			set vipnum_6[i] = vipnum_6[i] + "6"
		elseif GetItemTypeId(GetManipulatedItem())=='I0AG' then
			set vipnum_1[i] = vipnum_1[i] + "7"
			set vipnum_2[i] = vipnum_2[i] + "7"
			set vipnum_3[i] = vipnum_3[i] + "7"
			set vipnum_4[i] = vipnum_4[i] + "7"
			set vipnum_5[i] = vipnum_5[i] + "7"
			set vipnum_6[i] = vipnum_6[i] + "7"
		elseif GetItemTypeId(GetManipulatedItem())=='I0AH' then
			set vipnum_1[i] = vipnum_1[i] + "8"
			set vipnum_2[i] = vipnum_2[i] + "8"
			set vipnum_3[i] = vipnum_3[i] + "8"
			set vipnum_4[i] = vipnum_4[i] + "8"
			set vipnum_5[i] = vipnum_5[i] + "8"
			set vipnum_6[i] = vipnum_6[i] + "8"
		elseif GetItemTypeId(GetManipulatedItem())=='I0AI' then
			set vipnum_1[i] = vipnum_1[i] + "9"
			set vipnum_2[i] = vipnum_2[i] + "9"
			set vipnum_3[i] = vipnum_3[i] + "9"
			set vipnum_4[i] = vipnum_4[i] + "9"
			set vipnum_5[i] = vipnum_5[i] + "9"
			set vipnum_6[i] = vipnum_6[i] + "9"
		elseif GetItemTypeId(GetManipulatedItem())=='I0AJ' then
			set vipnum_1[i] = vipnum_1[i] + "0"
			set vipnum_2[i] = vipnum_2[i] + "0"
			set vipnum_3[i] = vipnum_3[i] + "0"
			set vipnum_4[i] = vipnum_4[i] + "0"
			set vipnum_5[i] = vipnum_5[i] + "0"
			set vipnum_6[i] = vipnum_6[i] + "0"
		elseif GetItemTypeId(GetManipulatedItem())=='I0AK' then
			set vipnum_1[i] = vipnum_1[i] + "A"
			set vipnum_2[i] = vipnum_2[i] + "A"
			set vipnum_3[i] = vipnum_3[i] + "A"
			set vipnum_4[i] = vipnum_4[i] + "A"
			set vipnum_5[i] = vipnum_5[i] + "A"
			set vipnum_6[i] = vipnum_6[i] + "A"
		endif
		//call BJDebugMsg(GetVIPNum(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)))
		//call BJDebugMsg(GetChangePreNum(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)))
		//call BJDebugMsg(GetElevenNum(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)))
		if vipnum_1[i]==GetVIPNum(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) then
			set udg_vip[i] = 1
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了角色兰馨和门派明教|r")
		endif
		if vipnum_2[i]==GetVIPNum(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) then
			set udg_vip[i] = 1
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了角色兰馨和门派明教|r")
		endif
		if vipnum_3[i]==GetVIPNum(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) then
			set udg_vip[i] = 1
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了角色兰馨和门派明教|r")
		endif
		if vipnum_4[i]==GetVIPNum(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) then
			set udg_vip[i] = 1
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了角色兰馨和门派明教|r")
		endif
		if vipnum_5[i]==GetVIPNum(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) then
			set udg_vip[i] = 1
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了角色兰馨和门派明教|r")
		endif
		if vipnum_6[i]==GetVIPNum(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) then
			set udg_vip[i] = 1
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了角色兰馨和门派明教|r")
		endif
		if vipnum_1[i]==GetChangePreNum(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) then
			set udg_changevip[i] = 1
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了角色瑾轩|r")
		endif
		if vipnum_2[i]==GetChangePreNum(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) then
			set udg_changevip[i] = 1
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了角色瑾轩|r")
		endif
		if vipnum_3[i]==GetChangePreNum(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) then
			set udg_changevip[i] = 1
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了角色瑾轩|r")
		endif
		if vipnum_4[i]==GetChangePreNum(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) then
			set udg_changevip[i] = 1
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了角色瑾轩|r")
		endif
		if vipnum_5[i]==GetChangePreNum(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) then
			set udg_changevip[i] = 1
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了角色瑾轩|r")
		endif
		if vipnum_6[i]==GetChangePreNum(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) then
			set udg_changevip[i] = 1
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了角色瑾轩|r")
		endif
		if vipnum_1[i]==GetElevenNum(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) then
			set udg_elevenvip[i] = 1
			set wugongshu[i] = 11
			call UnitRemoveAbility(udg_hero[i],'A040')
    		call UnitRemoveAbility(udg_hero[i],'A041')
    		call UnitRemoveAbility(udg_hero[i],'A042')
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了11格武功|r")
		endif
		if vipnum_2[i]==GetElevenNum(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) then
			set udg_elevenvip[i] = 1
			set wugongshu[i] = 11
			call UnitRemoveAbility(udg_hero[i],'A040')
    		call UnitRemoveAbility(udg_hero[i],'A041')
    		call UnitRemoveAbility(udg_hero[i],'A042')
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了11格武功|r")
		endif
		if vipnum_3[i]==GetElevenNum(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) then
			set udg_elevenvip[i] = 1
			set wugongshu[i] = 11
			call UnitRemoveAbility(udg_hero[i],'A040')
    		call UnitRemoveAbility(udg_hero[i],'A041')
    		call UnitRemoveAbility(udg_hero[i],'A042')
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了11格武功|r")
		endif
		if vipnum_4[i]==GetElevenNum(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) then
			set udg_elevenvip[i] = 1
			set wugongshu[i] = 11
			call UnitRemoveAbility(udg_hero[i],'A040')
    		call UnitRemoveAbility(udg_hero[i],'A041')
    		call UnitRemoveAbility(udg_hero[i],'A042')
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了11格武功|r")
		endif
		if vipnum_5[i]==GetElevenNum(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) then
			set udg_elevenvip[i] = 1
			set wugongshu[i] = 11
			call UnitRemoveAbility(udg_hero[i],'A040')
    		call UnitRemoveAbility(udg_hero[i],'A041')
    		call UnitRemoveAbility(udg_hero[i],'A042')
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了11格武功|r")
		endif
		if vipnum_6[i]==GetElevenNum(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) then
			set udg_elevenvip[i] = 1
			set wugongshu[i] = 11
			call UnitRemoveAbility(udg_hero[i],'A040')
    		call UnitRemoveAbility(udg_hero[i],'A041')
    		call UnitRemoveAbility(udg_hero[i],'A042')
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了11格武功|r")
		endif
		if vipnum_1[i]==GetVIPNum_1(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) or vipnum_1[i]==I2S(NameProdVIP(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2), 3)/10000) then
			set udg_vip[i] = 2
			set wugongshu[i] = 11
			call UnitRemoveAbility(udg_hero[i],'A040')
    		call UnitRemoveAbility(udg_hero[i],'A041')
    		call UnitRemoveAbility(udg_hero[i],'A042')
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933感谢玩家"+GetPlayerName(p)+"对决战江湖的杰出贡献|r")
		endif
		if vipnum_2[i]==GetVIPNum_1(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) or vipnum_2[i]==I2S(NameProdVIP(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2), 3)/10000) then
			set udg_vip[i] = 2
			set wugongshu[i] = 11
			call UnitRemoveAbility(udg_hero[i],'A040')
    		call UnitRemoveAbility(udg_hero[i],'A041')
    		call UnitRemoveAbility(udg_hero[i],'A042')
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933感谢玩家"+GetPlayerName(p)+"对决战江湖的杰出贡献|r")
		endif
		if vipnum_3[i]==GetVIPNum_1(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) or vipnum_3[i]==I2S(NameProdVIP(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2), 3)/10000) then
			set udg_vip[i] = 2
			set wugongshu[i] = 11
			call UnitRemoveAbility(udg_hero[i],'A040')
    		call UnitRemoveAbility(udg_hero[i],'A041')
    		call UnitRemoveAbility(udg_hero[i],'A042')
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933感谢玩家"+GetPlayerName(p)+"对决战江湖的杰出贡献|r")
		endif
		if vipnum_4[i]==GetVIPNum_1(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) or vipnum_4[i]==I2S(NameProdVIP(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2), 3)/10000) then
			set udg_vip[i] = 2
			set wugongshu[i] = 11
			call UnitRemoveAbility(udg_hero[i],'A040')
    		call UnitRemoveAbility(udg_hero[i],'A041')
    		call UnitRemoveAbility(udg_hero[i],'A042')
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933感谢玩家"+GetPlayerName(p)+"对决战江湖的杰出贡献|r")
		endif
		if vipnum_5[i]==GetVIPNum_1(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) or vipnum_5[i]==I2S(NameProdVIP(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2), 3)/10000) then
			set udg_vip[i] = 2
			set wugongshu[i] = 11
			call UnitRemoveAbility(udg_hero[i],'A040')
    		call UnitRemoveAbility(udg_hero[i],'A041')
    		call UnitRemoveAbility(udg_hero[i],'A042')
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933感谢玩家"+GetPlayerName(p)+"对决战江湖的杰出贡献|r")
		endif
		if vipnum_6[i]==GetVIPNum_1(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) or vipnum_6[i]==I2S(NameProdVIP(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2), 3)/10000) then
			set udg_vip[i] = 2
			set wugongshu[i] = 11
			call UnitRemoveAbility(udg_hero[i],'A040')
    		call UnitRemoveAbility(udg_hero[i],'A041')
    		call UnitRemoveAbility(udg_hero[i],'A042')
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933感谢玩家"+GetPlayerName(p)+"对决战江湖的杰出贡献|r")
		endif
		if vipnum_1[i] == "000000" or vipnum_2[i] == "000000" or vipnum_3[i] == "000000" or vipnum_4[i] == "000000" or vipnum_5[i] == "000000" or vipnum_6[i] == "000000" then
			set str = GetPlayerName(p)
			call SetPlayerName(p, LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2))
			call YDWE_PreloadSL_Set( p, "ID", 1, StringHash(LoadStr(YDHT, GetHandleId(p), GetHandleId(p)*2)) )
			if udg_vip[i] == 2 then
				call YDWE_PreloadSL_Set( p, "高V", 2, 120 )
			else
				call YDWE_PreloadSL_Set( p, "高V", 2, 100 )
			endif
			if udg_vip[i] == 1 then
				call YDWE_PreloadSL_Set( p, "VIP", 3, 120 )
			else
				call YDWE_PreloadSL_Set( p, "VIP", 3, 100 )
			endif
			if udg_elevenvip[i] == 1 then
				call YDWE_PreloadSL_Set( p, "11VIP", 4, 120 )
			else
				call YDWE_PreloadSL_Set( p, "11VIP", 4, 100 )
			endif
			if udg_changevip[i] == 1 then
				call YDWE_PreloadSL_Set( p, "换VIP", 5, 120 )
			else
				call YDWE_PreloadSL_Set( p, "换VIP", 5, 100 )
			endif
			//if UnitHaveItem(udg_hero[i], 'I0CQ') then
			//	call YDWE_PreloadSL_Set( p, "青龙", 6, 120 )
			//else
			//	call YDWE_PreloadSL_Set( p, "青龙", 6, 100 )
			//endif

			call YDWE_PreloadSL_Save( p, "JueZhan", "VIP", SAV_NUM  )
			call DisplayTextToPlayer(p, 0, 0, "|CFFff9933VIP状态已保存")
			call SetPlayerName(p, str)
		endif



		if StringLength(vipnum_1[i])>=6 then
			set vipnum_1[i] = ""
		endif
		if StringLength(vipnum_2[i])>=6 then
			set vipnum_2[i] = ""
		endif
		if StringLength(vipnum_3[i])>=6 then
			set vipnum_3[i] = ""
		endif
		if StringLength(vipnum_4[i])>=6 then
			set vipnum_4[i] = ""
		endif
		if StringLength(vipnum_5[i])>=6 then
			set vipnum_5[i] = ""
		endif
		if StringLength(vipnum_6[i])>=6 then
			set vipnum_6[i] = ""
		endif
	//endif
	set p = null
endfunction
//==================VIP码系统结束==================//

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
		if DzAPI_Map_HasMallItem(p, "E187FCD7Z2") == true then
			set udg_vip[i] = 1
        	call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了角色兰馨和门派明教|r")
		endif
		if DzAPI_Map_HasMallItem(p, "FY9723UM4D") == true then
			set udg_elevenvip[i] = 1
        	set wugongshu[i] = 11
        	call UnitRemoveAbility(udg_hero[i],'A040')
        	call UnitRemoveAbility(udg_hero[i],'A041')
        	call UnitRemoveAbility(udg_hero[i],'A042')
        	call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了11格武功|r")
		endif
		if DzAPI_Map_HasMallItem(p, "YY79FF7F5H") == true then
			set udg_changevip[i] = 1
        	call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了角色瑾轩|r")
		endif
		if DzAPI_Map_HasMallItem(p, "QS8K6F5NV2") == true then
			set udg_vip[i] = 2
        	set wugongshu[i] = 11
        	call UnitRemoveAbility(udg_hero[i],'A040')
        	call UnitRemoveAbility(udg_hero[i],'A041')
        	call UnitRemoveAbility(udg_hero[i],'A042')
        	call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了角色兰馨和门派明教|r")
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了11格武功|r")
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933恭喜玩家"+GetPlayerName(p)+"解锁了角色瑾轩|r")
		endif
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

// DzAPI_Map_HasMallItem(Player(0), "ABC") == true



function VIP_Trigger takes nothing returns nothing
	local trigger t = CreateTrigger()
	call initActivationCode()
    call TriggerRegisterTimerEventSingle( t, 2.00 )
    call TriggerAddAction(t, function Trig_______VIPActions)
	
	set t =CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t,Condition(function IsVIPItem))
	call TriggerAddAction(t,function ChooseVIP)
	
	
	set t = null
endfunction
