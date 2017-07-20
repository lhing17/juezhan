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
	//call CunVIP(1, "特攻帝王攻",	"000948")
	//call CunVIP(2, "苍穹而降",		"161119")
	//call CunVIP(3, "非我莫属xq",	"666666")
	//call CunVIP(4, "晓窗临风",		"000895")
	//call CunVIP(5, "沌沌沌",		"288001")
	//call CunVIP(6, "LL龙岩",		"002021")
	//call CunVIP(7, "逍遥甜甜",		"552521")
	//call CunVIP(8, "cyg819",		"254711")
	//call CunVIP(9, "缘起丶凯",		"177157")
	//call CunVIP(10, "panzihao0708",	"363663")
	//call CunVIP(11, "fugh",			"757557")
	//call CunVIP(12, "Sero",			"868668")
	//call CunVIP(13, "秋凝水",		"181881")
	//call CunVIP(14, "ooped",		"696996")
	//call CunVIP(15, "shen zhi shou","654321")
	//call CunVIP(16, "圈哥Qgg",		"765432")
	//call CunVIP(17, "rudongzzx",	"876543")
	//call CunVIP(18, "空佛灵魂冢",	"345678")
	//call CunVIP(19, "liao239919",	"456783")
	//call CunVIP(20, "sss",			"555689")
	//call CunVIP(21, "希嘉兒",		"456123")
	//call CunVIP(22, "寡言的三藏",	"520995")
	//call CunVIP(23, "逗比小号还",	"520995")
	//call CunVIP(24, "风陵夜梦长",	"584250")
	//call CunVIP(25, "影帝耿鬼",		"285286")
	//call CunVIP(26, "大wangWAI",	"121314")
	//call CunVIP(27, "金牛牛儿",		"336337")
	//call CunVIP(28, "Copy杜",		"776767")
	//call CunVIP(29, "凌尘凤",		"685968")
	//call CunVIP(30, "Copy杜",		"596859")
	//call CunVIP(31, "海棠花无香",	"596877")
	//call CunVIP(32, "zs",			"796382")
	//call CunVIP(33, "射一天",		"567894")
	//call CunVIP(34, "小贼鬼",		"888888")
	//call CunVIP(35, "fengxiong007",	"777556")
	//call CunVIP(36, "ii时间",		"958598")
	//call CunVIP(37, "LCH",			"688668")
	//call CunVIP(38, "阿莘",			"686886")
	//call CunVIP(39, "五城",			"353283")
	//call CunVIP(40, "鹤归人不归",	"600607")
	//call CunVIP(41, "s450629790",	"500607")
	//call CunVIP(42, "维丶一",		"998998")
	//call CunVIP(43, "年不及弱冠",	"987654")
	//call CunVIP(44, "灵风孤云",		"791026")
	//call CunVIP(45, "电竞爱伦坡",	"654321")
	//call CunVIP(46, "胆小萌新",		"666666")
	//call CunVIP(47, "卡雷尔",		"666666")
	//call CunVIP(48, "七小苏",		"678678")
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
globals
	string array udg_viplib
endglobals
function InitVIPLib takes nothing returns nothing
	set udg_viplib[1] = I2S(R2I(Pow(2, 17))+1)
	set udg_viplib[2] = I2S(R2I(Pow(2, 18))+2)
	set udg_viplib[3] = I2S(R2I(Pow(2, 19))+3)
	set udg_viplib[4] = I2S(R2I(Pow(3, 11))+4)
	set udg_viplib[5] = I2S(R2I(Pow(3, 12))+5)
	set udg_viplib[6] = I2S(R2I(Pow(5, 8))+6)
	set udg_viplib[7] = I2S(R2I(Pow(6, 7))+7)
	set udg_viplib[8] = I2S(R2I(Pow(7, 6))+8)
	set udg_viplib[9] = I2S(R2I(Pow(8, 6))+9)
	set udg_viplib[10] = I2S(R2I(Pow(9, 6))+10)
	set udg_viplib[11] = "A"+I2S(R2I(Pow(10, 4))+11)
	set udg_viplib[12] = "A"+I2S(R2I(Pow(11, 4))+12)
	set udg_viplib[13] = "A"+I2S(R2I(Pow(12, 4))+13)
	set udg_viplib[14] = "A"+I2S(R2I(Pow(13, 4))+14)
	set udg_viplib[15] = "A"+I2S(R2I(Pow(14, 4))+15)
	set udg_viplib[16] = "A"+I2S(R2I(Pow(15, 4))+16)
	set udg_viplib[17] = "A"+I2S(R2I(Pow(16, 4))+17)
	set udg_viplib[18] = "A"+I2S(R2I(Pow(17, 4))+18)
	set udg_viplib[19] = "AA"+I2S(R2I(Pow(18, 3))+19)
	set udg_viplib[20] = "AA"+I2S(R2I(Pow(19, 3))+20)
endfunction
function VIPLib takes string s returns boolean
	local integer i = 1
	set i = 1
	loop
		exitwhen i >= 50
		if s == udg_viplib[i] then
			return true
		endif
		set i = i + 1
	endloop
	return false
endfunction
function ChooseVIP takes nothing returns nothing
	local player p = GetOwningPlayer(GetTriggerUnit())
	local integer i = 1 + GetPlayerId(p)
	local string str = null
	call DisplayTextToPlayer(p, 0, 0, "|CFF00FF00点击六位正确的激活码可激活相应礼包")
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
	
	set t =CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t,Condition(function IsVIPItem))
	call TriggerAddAction(t,function ChooseVIP)
	set t = null
endfunction
