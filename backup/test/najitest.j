#ifndef NajitestIncluded
#define NajitestIncluded

globals
//===============najitest===============
	integer unitnumber_lh=0
	integer createdunitnumber_lh=0
	string StringList_naji
	string array Sdummy_naji
	trigger array Ttest_naji
	player Ptest_naji
	integer Ihandle_naji
	integer Ibm_naji
	integer Itrigger_naji
	integer Iquest_naji
	integer Iweather_naji
	boolean Bfog_naji
	boolean Bpause_naji
	boolean Bxy_naji
	boolean Bid_naji
	boolean Bir_naji
	boolean array Bcamera_naji
	boolean Bpn_naji
	boolean Bddm_naji
	dialog array Dnaji_naji
	button array Button_naji
	real Rhandle_naji
	real Rdummy_naji
	real array Rcamera_naji
	region Rworld_naji
	group array Gcd_naji
	group Guw_naji
	group Gms_naji
	quest array Q_naji
	timer Tcamera_naji
	texttag array Tbm_naji
	weathereffect array Weather_naji
	//===============najitest===============
endglobals
//===============najitest===============
//=====================================@共用函数开始=====================================
function ID2S_naji takes integer i_naji returns string
    local integer z_naji
    local integer n_naji=0
    set Sdummy_naji[100]=""
    if Bid_naji==false then
        return Sdummy_naji[100]
    endif
    if i_naji!=0 then
        loop
            set z_naji=i_naji-(i_naji/256)*256
            set i_naji=i_naji/256
            set Sdummy_naji[100]=SubString(StringList_naji,z_naji,z_naji+1)+Sdummy_naji[100]
            set n_naji=n_naji+1
            exitwhen n_naji==4
        endloop
        set Sdummy_naji[100]="'"+Sdummy_naji[100]+"'"
    else
        set Sdummy_naji[100]="null"
    endif
    return Sdummy_naji[100]
endfunction
function S2ID_naji takes string s_naji returns integer
    local integer l_naji=StringLength(s_naji)
    local integer i_naji=0
    local integer z_naji=0
    local integer n_naji=1
    local integer result_naji=0
    loop
        exitwhen z_naji>l_naji-1
        set n_naji=R2I(Pow(256,l_naji-1-z_naji))
        set i_naji=1
        loop
            exitwhen i_naji>255
            if SubString(s_naji,z_naji,z_naji+1)==SubString(StringList_naji,i_naji,i_naji+1) then
                set result_naji=result_naji+i_naji*n_naji
                set i_naji=256
            endif
            set i_naji=i_naji+1
        endloop
        set z_naji=z_naji+1
    endloop
    return result_naji
endfunction
function IDidentify_naji takes integer i_naji returns string
    local integer l_naji
    local integer a_naji=0
    local integer z_naji
    local integer n_naji=0
    local integer result=0
    set Sdummy_naji[100]=""
    if i_naji!=0 then
        loop
            set z_naji=i_naji-(i_naji/256)*256
            set i_naji=i_naji/256
            set Sdummy_naji[100]=SubString(StringList_naji,z_naji,z_naji+1)+Sdummy_naji[100]
            set n_naji=n_naji+1
            exitwhen n_naji==4
        endloop
    else
        set Sdummy_naji[100]="null"
        return Sdummy_naji[100]
    endif
    set l_naji=StringLength(Sdummy_naji[100])
    set n_naji=1
    set z_naji=0
    loop
        exitwhen z_naji>l_naji-1
        set n_naji=R2I(Pow(256,l_naji-1-z_naji))
        set a_naji=1
        loop
            exitwhen a_naji>255
            if SubString(Sdummy_naji[100],z_naji,z_naji+1)==SubString(StringList_naji,a_naji,a_naji+1) then
                set result=result+a_naji*n_naji
                set a_naji=256
            endif
            set a_naji=a_naji+1
        endloop
        set z_naji=z_naji+1
    endloop
    return GetObjectName(result)
endfunction
function Distance_naji takes real x1_naji,real y1_naji,real x2_naji,real y2_naji returns real
    return SquareRoot((y2_naji-y1_naji)*(y2_naji-y1_naji)+(x2_naji-x1_naji)*(x2_naji-x1_naji))
endfunction
function Angle_naji takes real x1_naji,real y1_naji,real x2_naji,real y2_naji returns real
    local real r_naji
    set r_naji=57.29582*Atan2(y2_naji-y1_naji,x2_naji-x1_naji)
    if r_naji<0 then
        return 360+r_naji
    endif
    return r_naji
endfunction
function DialogResetA3_naji takes nothing returns nothing
    call DialogClear(Dnaji_naji[2])
    if IsMapFlagSet(MAP_OBSERVERS_ON_DEATH) then
        set Button_naji[1]=DialogAddButton(Dnaji_naji[2],"|cff00FFFF失败时作为观看者|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F1）|r",768)
    else
        set Button_naji[1]=DialogAddButton(Dnaji_naji[2],"|cff00FFFF失败时作为观看者|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F1）|r",768)
    endif
    if IsMapFlagSet(MAP_LOCK_RESOURCE_TRADING) then
        set Button_naji[2]=DialogAddButton(Dnaji_naji[2],"|cff00FFFF锁定资源交易|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F2）|r",769)
    else
        set Button_naji[2]=DialogAddButton(Dnaji_naji[2],"|cff00FFFF锁定资源交易|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F2）|r",769)
    endif
    if IsMapFlagSet(MAP_RESOURCE_TRADING_ALLIES_ONLY) then
        set Button_naji[3]=DialogAddButton(Dnaji_naji[2],"|cff00FFFF限定盟友资源交易|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F3）|r",770)
    else
        set Button_naji[3]=DialogAddButton(Dnaji_naji[2],"|cff00FFFF限定盟友资源交易|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F3）|r",770)
    endif
    if IsMapFlagSet(MAP_LOCK_ALLIANCE_CHANGES) then
        set Button_naji[4]=DialogAddButton(Dnaji_naji[2],"|cff00FFFF锁定联盟设置|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F4）|r",771)
    else
        set Button_naji[4]=DialogAddButton(Dnaji_naji[2],"|cff00FFFF锁定联盟设置|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F4）|r",771)
    endif
    if IsMapFlagSet(MAP_ALLIANCE_CHANGES_HIDDEN) then
        set Button_naji[5]=DialogAddButton(Dnaji_naji[2],"|cff00FFFF隐藏联盟设置|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F5）|r",772)
    else
        set Button_naji[5]=DialogAddButton(Dnaji_naji[2],"|cff00FFFF隐藏联盟设置|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F5）|r",772)
    endif
    set Button_naji[100]=DialogAddButton(Dnaji_naji[2],"|cff00FFFF取消|cff00FF00（Esc）|r",512)
endfunction
function DialogResetA2_naji takes nothing returns nothing
    call DialogClear(Dnaji_naji[1])
    if Bxy_naji then
        set Button_naji[1]=DialogAddButton(Dnaji_naji[1],"|cff00FFFF坐标参数|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F1）|r",768)
    else
        set Button_naji[1]=DialogAddButton(Dnaji_naji[1],"|cff00FFFF坐标参数|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F1）|r",768)
    endif
    if Bid_naji then
        set Button_naji[2]=DialogAddButton(Dnaji_naji[1],"|cff00FFFFID参数|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F2）|r",769)
    else
        set Button_naji[2]=DialogAddButton(Dnaji_naji[1],"|cff00FFFFID参数|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F2）|r",769)
    endif
    if Bpn_naji then
        set Button_naji[3]=DialogAddButton(Dnaji_naji[1],"|cff00FFFF玩家名参数|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F3）|r",770)
    else
        set Button_naji[3]=DialogAddButton(Dnaji_naji[1],"|cff00FFFF玩家名参数|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F3）|r",770)
    endif
    if Bir_naji then
        set Button_naji[4]=DialogAddButton(Dnaji_naji[1],"|cff00FFFF数值显示|cffFFFF00（当前状态：|cffFF0000整数|cffFFFF00）|cff00FF00（F4）|r",771)
    else
        set Button_naji[4]=DialogAddButton(Dnaji_naji[1],"|cff00FFFF数值显示|cffFFFF00（当前状态：|cffFF0000实数|cffFFFF00）|cff00FF00（F4）|r",771)
    endif
    if Bddm_naji then
        set Button_naji[5]=DialogAddButton(Dnaji_naji[1],"|cff00FFFF伤害显示类型|cffFFFF00（当前状态：|cffFF0000游戏文本|cffFFFF00）|cff00FF00（F5）|r",772)
    else
        set Button_naji[5]=DialogAddButton(Dnaji_naji[1],"|cff00FFFF伤害显示类型|cffFFFF00（当前状态：|cffFF0000飘浮文字|cffFFFF00）|cff00FF00（F5）|r",772)
    endif
    set Button_naji[0]=DialogAddButton(Dnaji_naji[1],"|cff00FFFF返回上一层|cff00FF00（space）|r",32)
    set Button_naji[100]=DialogAddButton(Dnaji_naji[1],"|cff00FFFF取消|cff00FF00（Esc）|r",512)
endfunction
function DialogResetA_naji takes nothing returns nothing
    call DialogClear(Dnaji_naji[0])
    if IsTriggerEnabled(Ttest_naji[2]) then
        set Button_naji[1]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF技能信息|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F1）|r",768)
    else
        set Button_naji[1]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF技能信息|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F1）|r",768)
    endif
    if IsTriggerEnabled(Ttest_naji[15]) then
        set Button_naji[2]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF命令信息|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F2）|r",769)
    else
        set Button_naji[2]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF命令信息|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F2）|r",769)
    endif
    if IsTriggerEnabled(Ttest_naji[17]) then
        set Button_naji[3]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF寿命信息|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F3）|r",770)
    else
        set Button_naji[3]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF寿命信息|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F3）|r",770)
    endif
    if IsTriggerEnabled(Ttest_naji[26]) then
        set Button_naji[4]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF伤害信息|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F4）|r",771)
    else
        set Button_naji[4]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF伤害信息|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F4）|r",771)
    endif
    if IsTriggerEnabled(Ttest_naji[4]) then
        set Button_naji[5]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF技能无冷却不耗魔|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F5）|r",772)
    else
        set Button_naji[5]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF技能无冷却不耗魔|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F5）|r",772)
    endif
    if IsTriggerEnabled(Ttest_naji[71]) then
        set Button_naji[8]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF群体施法|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F6）|r",773)
    else
        set Button_naji[8]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF群体施法|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F6）|r",773)
    endif
    //=========================以下部分1.24以下的版本需删除==============================
    if IsTriggerEnabled(Ttest_naji[7]) then
        set Button_naji[6]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF句柄信息|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F7）|r",774)
    else
        set Button_naji[6]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF句柄信息|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F7）|r",774)
    endif
    //=========================以上部分1.24以下的版本需删除==============================
    if IsTriggerEnabled(Ttest_naji[61]) then
        set Button_naji[7]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF公共聊天系统|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F8）|r",775)
    else
        set Button_naji[7]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF公共聊天系统|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F8）|r",775)
    endif
    set Button_naji[0]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF系统信息调整|cff00FF00（space）|r",32)
    set Button_naji[100]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF取消|cff00FF00（Esc）|r",512)
endfunction
//=====================================@共用函数结束=====================================
//=====================================#功能函数开始=====================================
function TestA82_naji takes nothing returns nothing
    call ExecuteFunc(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
endfunction
function TestA81_naji takes nothing returns nothing
    local integer i_naji
    if StringLength(GetEventPlayerChatString())<=6 then
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000参数输入错误！位数不足无法判断进制类型|r")
    elseif StringLength(GetEventPlayerChatString())==7 then
        set i_naji=S2ID_naji(SubString(GetEventPlayerChatString(),3,7))
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0"+SubString(GetEventPlayerChatString(),3,7)+"|r→|cffFFFF00"+I2S(i_naji)+"|r")
    else
        set i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0"+SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString()))+"|r→|cffFFFF00"+ID2S_naji(i_naji)+"|r")
    endif
endfunction
function TestA80_naji takes nothing returns nothing
    local group g_naji
    local unit u_naji
    local real x_naji
    local real y_naji
    local integer z_naji=StringLength(GetEventPlayerChatString())-1
    set g_naji=CreateGroup()
    call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
    if FirstOfGroup(g_naji)!=null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji==null
            call GroupRemoveUnit(g_naji,u_naji)
            loop
                set Sdummy_naji[1]=SubString(GetEventPlayerChatString(),z_naji,z_naji+1)
                if Sdummy_naji[1]=="," then
                    if z_naji==4 then
                        set x_naji=GetUnitX(u_naji)
                    else
                        set x_naji=S2R(SubString(GetEventPlayerChatString(),4,StringLength(GetEventPlayerChatString())))
                    endif
                    if z_naji==StringLength(GetEventPlayerChatString())-1 then
                        set y_naji=GetUnitY(u_naji)
                    else
                        set y_naji=S2R(SubString(GetEventPlayerChatString(),z_naji+1,StringLength(GetEventPlayerChatString())))
                    endif
                    exitwhen true
                endif
                set z_naji=z_naji-1
                if z_naji<=0 then
                    call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000参数不足！请输入|cffFFFF002|cffFF0000位参数|r")
                    call DestroyGroup(g_naji)
                    set g_naji=null
                    set u_naji=null
                    return
                endif
            endloop
            call SetUnitX(u_naji,x_naji)
            call SetUnitY(u_naji,y_naji)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00玩家选择单位的所有单位的坐标更改为|cffFF0000("+R2S(x_naji)+","+R2S(y_naji)+")|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA79_naji takes nothing returns nothing
    local group g_naji
    local unit u_naji
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(),4,StringLength(GetEventPlayerChatString())))
    local item it_naji
    if i_naji<0 or i_naji>=7 then
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000参数输入错误！请输入|cffFFFF001~6|cffFF0000间的整数|r")
        return
    elseif i_naji==0 then
        set i_naji=1
    endif
    set g_naji=CreateGroup()
    call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
    set u_naji=FirstOfGroup(g_naji)
    if u_naji!=null then
        if UnitItemInSlot(u_naji,i_naji-1)!=null then
            set it_naji=UnitItemInSlot(u_naji,i_naji-1)
            if GetItemType(it_naji)==ITEM_TYPE_PERMANENT then
                set Sdummy_naji[0]="永久"
            endif
            if GetItemType(it_naji)==ITEM_TYPE_CHARGED then
                set Sdummy_naji[0]="可允"
            endif
            if GetItemType(it_naji)==ITEM_TYPE_POWERUP then
                set Sdummy_naji[0]="能量提升"
            endif
            if GetItemType(it_naji)==ITEM_TYPE_ARTIFACT then
                set Sdummy_naji[0]="人造"
            endif
            if GetItemType(it_naji)==ITEM_TYPE_PURCHASABLE then
                set Sdummy_naji[0]="可购买"
            endif
            if GetItemType(it_naji)==ITEM_TYPE_CAMPAIGN then
                set Sdummy_naji[0]="战役"
            endif
            if GetItemType(it_naji)==ITEM_TYPE_MISCELLANEOUS then
                set Sdummy_naji[0]="混杂"
            endif
            if GetItemType(it_naji)==ITEM_TYPE_UNKNOWN then
                set Sdummy_naji[0]="未知"
            endif
            call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"===============*****===============")
            call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0物品名称：|cffFFFF00"+GetItemName(it_naji)+"|r")
            call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0ID256进制/10进制：|cffFFFF00"+ID2S_naji(GetItemTypeId(it_naji))+"/"+I2S(GetItemTypeId(it_naji))+"|r")
            //=========================以下部分1.24以下的版本需删除==============================
            call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0存储地址：|cffFFFF00"+I2S(GetHandleId(it_naji))+"|r")
            //=========================以上部分1.24以下的版本需删除==============================
            call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0所属玩家/cj索引：|cffFFFF00"+GetPlayerName(GetItemPlayer(it_naji))+"/"+I2S(GetPlayerId(GetItemPlayer(it_naji)))+"|r")
            call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0坐标：|cffFFFF00("+R2S(GetItemX(it_naji))+","+R2S(GetItemY(it_naji))+")|r")
            call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0物品分类：|cffFFFF00"+Sdummy_naji[0]+"|r")
            call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0物品等级：|cffFFFF00"+I2S(GetItemLevel(it_naji))+"|r")
            call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0自定义值：|cffFFFF00"+I2S(GetItemUserData(it_naji))+"|r")
            set Sdummy_naji[0]=" "
            if IsItemPowerup(it_naji) then
                set Sdummy_naji[0]=Sdummy_naji[0]+"拾取自动使用，"
            endif
            if IsItemSellable(it_naji) then
                set Sdummy_naji[0]=Sdummy_naji[0]+"可出售，"
            endif
            if IsItemPawnable(it_naji) then
                set Sdummy_naji[0]=Sdummy_naji[0]+"可抵押，"
            endif
            if IsItemVisible(it_naji) then
                set Sdummy_naji[0]=Sdummy_naji[0]+"可见，"
            endif
            if IsItemInvulnerable(it_naji) then
                set Sdummy_naji[0]=Sdummy_naji[0]+"无敌的，"
            endif
            set Sdummy_naji[0]=SubString(Sdummy_naji[0],1,StringLength(Sdummy_naji[0])-2)
            call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0可识别状态：|cffFFFF00"+Sdummy_naji[0]+"||r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000该单位|cffFFFF00第"+I2S(i_naji)+"格物品栏|cffFF0000不存在物品|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
endfunction
function TestA78_naji takes nothing returns nothing
    local group g_naji=CreateGroup()
    call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
    if FirstOfGroup(g_naji)!=null then
        if IsUnitInGroup(FirstOfGroup(g_naji),Gcd_naji[1]) then
            call GroupRemoveUnit(Gcd_naji[1],FirstOfGroup(g_naji))
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00已取消玩家选择单位的|cffFF0000技能无冷却不耗蓝判定|r")
        else
            call SetUnitState(FirstOfGroup(g_naji),UNIT_STATE_MANA,GetUnitState(FirstOfGroup(g_naji),UNIT_STATE_MAX_MANA))
            call UnitResetCooldown(FirstOfGroup(g_naji))
            call GroupAddUnit(Gcd_naji[1],FirstOfGroup(g_naji))
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00已启动玩家选择单位的|cffFF0000技能无冷却不耗蓝判定|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA77_naji takes nothing returns nothing
    local group g_naji=CreateGroup()
    call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
    if FirstOfGroup(g_naji)!=null then
        if IsUnitInGroup(FirstOfGroup(g_naji),Gms_naji) then
            call GroupRemoveUnit(Gms_naji,FirstOfGroup(g_naji))
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00已取消玩家选择单位的|cffFF0000群体施法判定|r")
        else
            call GroupAddUnit(Gms_naji,FirstOfGroup(g_naji))
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00已启动玩家选择单位的|cffFF0000群体施法判定|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA76_naji takes nothing returns nothing
    local unit u_naji
    local group g_naji
    local integer i_naji
    local integer z_naji
    local integer n_naji
    local real r_naji
    local boolean b_naji
    local location p_naji=GetSpellTargetLoc()
    if IsUnitInGroup(GetTriggerUnit(),Gms_naji) and (GetSpellTargetUnit()!=null or p_naji!=null) then
        set i_naji=GetUnitCurrentOrder(GetTriggerUnit())
        set z_naji=GetSpellAbilityId()
        set n_naji=GetUnitAbilityLevel(GetTriggerUnit(),z_naji)
        if GetSpellTargetUnit()!=null then
            set g_naji=CreateGroup()
            set b_naji=IsUnitEnemy(GetSpellTargetUnit(),GetTriggerPlayer())
            call GroupEnumUnitsInRange(g_naji,GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),Distance_naji(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),GetUnitX(GetSpellTargetUnit()),GetUnitY(GetSpellTargetUnit())),null)
            loop
                exitwhen FirstOfGroup(g_naji)==null
                if IsUnitType(FirstOfGroup(g_naji),UNIT_TYPE_DEAD)==false and FirstOfGroup(g_naji)!=GetSpellTargetUnit() and b_naji==IsUnitEnemy(FirstOfGroup(g_naji),GetTriggerPlayer()) then
                    set u_naji=CreateUnit(GetTriggerPlayer(),'nvul',GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),Angle_naji(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),GetUnitX(FirstOfGroup(g_naji)),GetUnitY(FirstOfGroup(g_naji))))
                    call UnitAddAbility(u_naji,'Aloc')
                    call UnitAddAbility(u_naji,'Abun')
                    call UnitAddAbility(u_naji,'AIbm')
                    call UnitAddAbility(u_naji,'AI2m')
                    call UnitAddAbility(u_naji,'AImb')
                    call UnitAddAbility(u_naji,'AImz')
                    call UnitAddAbility(u_naji,'AImv')
                    call UnitRemoveAbility(u_naji,'Awan')
                    if UnitAddAbility(u_naji,'Arav') then
                        call UnitRemoveAbility(u_naji,'Arav')
                    endif
                    call SetUnitState(u_naji,UNIT_STATE_MANA,GetUnitState(u_naji,UNIT_STATE_MAX_MANA))
                    call ShowUnit(u_naji,false)
                    call UnitApplyTimedLife(u_naji,'BTLF',10)
                    call SetUnitUseFood(u_naji,false)
                    call SetUnitPathing(u_naji,false)
                    call SetUnitMoveSpeed(u_naji,522)
                    call SetUnitTurnSpeed(u_naji,1)
                    call SetUnitFlyHeight(u_naji,GetUnitFlyHeight(GetTriggerUnit()),0)
                    call UnitAddType(u_naji,UNIT_TYPE_ANCIENT)
                    call UnitAddType(u_naji,UNIT_TYPE_PEON)
                    call UnitAddAbility(u_naji,z_naji)
                    call SetUnitAbilityLevel(u_naji,z_naji,n_naji)
                    call IssueTargetOrderById(u_naji,i_naji,FirstOfGroup(g_naji))
                endif
                call GroupRemoveUnit(g_naji,FirstOfGroup(g_naji))
            endloop
            call DestroyGroup(g_naji)
            set g_naji=null
        else
            set r_naji=0
            loop
                exitwhen r_naji>=2
                set u_naji=CreateUnit(GetTriggerPlayer(),'nvul',GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),Angle_naji(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),GetLocationX(p_naji),GetLocationY(p_naji))-30+60*r_naji)
                call UnitAddAbility(u_naji,'Aloc')
                call UnitAddAbility(u_naji,'Abun')
                call UnitAddAbility(u_naji,'AIbm')
                call UnitAddAbility(u_naji,'AI2m')
                call UnitAddAbility(u_naji,'AImb')
                call UnitAddAbility(u_naji,'AImz')
                call UnitAddAbility(u_naji,'AImv')
                call UnitRemoveAbility(u_naji,'Awan')
                if UnitAddAbility(u_naji,'Arav') then
                    call UnitRemoveAbility(u_naji,'Arav')
                endif
                call SetUnitState(u_naji,UNIT_STATE_MANA,GetUnitState(u_naji,UNIT_STATE_MAX_MANA))
                call ShowUnit(u_naji,false)
                call UnitApplyTimedLife(u_naji,'BTLF',10)
                call SetUnitUseFood(u_naji,false)
                call SetUnitPathing(u_naji,false)
                call SetUnitMoveSpeed(u_naji,522)
                call SetUnitTurnSpeed(u_naji,1)
                call SetUnitFlyHeight(u_naji,GetUnitFlyHeight(GetTriggerUnit()),0)
                call UnitAddType(u_naji,UNIT_TYPE_ANCIENT)
                call UnitAddType(u_naji,UNIT_TYPE_PEON)
                call UnitAddAbility(u_naji,z_naji)
                call SetUnitAbilityLevel(u_naji,z_naji,n_naji)
                call IssuePointOrderById(u_naji,i_naji,GetUnitX(GetTriggerUnit())+Cos(0.01745*(Angle_naji(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),GetLocationX(p_naji),GetLocationY(p_naji))-30+60*r_naji))*Distance_naji(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),GetLocationX(p_naji),GetLocationY(p_naji)),GetUnitY(GetTriggerUnit())+Sin(0.01745*(Angle_naji(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),GetLocationX(p_naji),GetLocationY(p_naji))-30+60*r_naji))*Distance_naji(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),GetLocationX(p_naji),GetLocationY(p_naji)))
                set r_naji=r_naji+1
            endloop
        endif
    endif
    call RemoveLocation(p_naji)
    set p_naji=null
endfunction
function TestA75_naji takes nothing returns nothing
    call RestartGame(true)
endfunction
function TestA74_naji takes nothing returns nothing
    local integer array i_naji
    local integer a_naji=2
    local integer b_naji=8
    local integer c_naji=8
    set i_naji[1]=S2ID_naji(SubString(GetEventPlayerChatString(),3,7))
    set i_naji[2]=0
    set i_naji[3]=GetPlayerId(GetTriggerPlayer())+1
    loop
        set Sdummy_naji[1]=SubString(GetEventPlayerChatString(),b_naji,b_naji+1)
        if Sdummy_naji[1]=="," then
            set i_naji[a_naji]=S2I(SubString(GetEventPlayerChatString(),c_naji,b_naji))
            set a_naji=a_naji+1
            set c_naji=b_naji+1
            if a_naji>=3 then
                set i_naji[3]=S2I(SubString(GetEventPlayerChatString(),c_naji,StringLength(GetEventPlayerChatString())))
                exitwhen true
            endif
        endif
        set b_naji=b_naji+1
        if b_naji>=StringLength(GetEventPlayerChatString()) then
            set i_naji[a_naji]=S2I(SubString(GetEventPlayerChatString(),c_naji,StringLength(GetEventPlayerChatString())))
            exitwhen true
        endif
    endloop
    if i_naji[3]>=1 and i_naji[3]<=16 then
        call SetPlayerTechResearched(Player(i_naji[3]-1),i_naji[1],i_naji[2])
        call SetPlayerTechMaxAllowed(Player(i_naji[3]-1),i_naji[1],i_naji[2])
        call SetPlayerTechMaxAllowed(Player(i_naji[3]-1),i_naji[1],i_naji[2])
        if i_naji[2]==0 then
            call SetPlayerAbilityAvailable(Player(i_naji[3]-1),i_naji[1],false)
        else
            call SetPlayerAbilityAvailable(Player(i_naji[3]-1),i_naji[1],true)
        endif
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000已对|cff00FFFF"+GetPlayerName(Player(i_naji[3]-1))+"|cffFF0000执行对应行为，若没有效果，请确认你是否输入了|cffFFFF00正确的物编ID|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000玩家参数输入数值错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
    endif
endfunction
function TestA73_naji takes nothing returns nothing
    local integer i_naji=S2ID_naji(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
    if StringLength(GetEventPlayerChatString())<=6 then
        if Iweather_naji>=1 then
            loop
                call RemoveWeatherEffect(Weather_naji[Iweather_naji])
                set Iweather_naji=Iweather_naji-1
                exitwhen Iweather_naji<=0
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000删除|cffFFFF00所有已创建的全图天气|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00请输入|cffFF0000合法的天气ID|cffFFFF00，可点击|cffFF0000F9|cffFFFF00查看所有天气ID|r")
        endif
    else
        set Iweather_naji=Iweather_naji+1
        set Weather_naji[Iweather_naji]=AddWeatherEffect(GetWorldBounds(),i_naji)
        call EnableWeatherEffect(Weather_naji[Iweather_naji],true)
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00已创建对应的天气。目前已有|cffFF0000"+I2S(Iweather_naji)+"|cffFFFF00个全图天气|r")
    endif
endfunction
function TestA72_naji takes nothing returns nothing
    call EnableUserControl(true)
    call ShowInterface(true,0.01)
    call EnableOcclusion(true)
endfunction
function TestA71_naji takes nothing returns nothing
    if GetClickedButton()!=Button_naji[100] then
        if GetClickedButton()==Button_naji[1] then
            if IsMapFlagSet(MAP_OBSERVERS_ON_DEATH) then
                call SetMapFlag(MAP_OBSERVERS_ON_DEATH,false)
            else
                call SetMapFlag(MAP_OBSERVERS_ON_DEATH,true)
            endif
        elseif GetClickedButton()==Button_naji[2] then
            if IsMapFlagSet(MAP_LOCK_RESOURCE_TRADING) then
                call SetMapFlag(MAP_LOCK_RESOURCE_TRADING,false)
            else
                call SetMapFlag(MAP_LOCK_RESOURCE_TRADING,true)
            endif
        elseif GetClickedButton()==Button_naji[3] then
            if IsMapFlagSet(MAP_RESOURCE_TRADING_ALLIES_ONLY) then
                call SetMapFlag(MAP_RESOURCE_TRADING_ALLIES_ONLY,false)
            else
                call SetMapFlag(MAP_RESOURCE_TRADING_ALLIES_ONLY,true)
            endif
        elseif GetClickedButton()==Button_naji[4] then
            if IsMapFlagSet(MAP_LOCK_ALLIANCE_CHANGES) then
                call SetMapFlag(MAP_LOCK_ALLIANCE_CHANGES,false)
            else
                call SetMapFlag(MAP_LOCK_ALLIANCE_CHANGES,true)
            endif
        elseif GetClickedButton()==Button_naji[5] then
            if IsMapFlagSet(MAP_ALLIANCE_CHANGES_HIDDEN) then
                call SetMapFlag(MAP_ALLIANCE_CHANGES_HIDDEN,false)
            else
                call SetMapFlag(MAP_ALLIANCE_CHANGES_HIDDEN,true)
            endif
        endif
        call DialogResetA3_naji()
        call DialogDisplay(GetTriggerPlayer(),Dnaji_naji[2],true)
    endif
endfunction
function TestA70_naji takes nothing returns nothing
    call DialogResetA3_naji()
    call DialogDisplay(GetTriggerPlayer(),Dnaji_naji[2],true)
endfunction
function TestA69_naji takes nothing returns nothing
    local real i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
    if i_naji>=1 and i_naji<=5 then
        call SetMapFlag(MAP_LOCK_SPEED,false)
        if i_naji==1 then
            call SetGameSpeed(MAP_SPEED_SLOWEST)
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00当前的游戏速度为|cffFF0000极慢|r")
        elseif i_naji==2 then
            call SetGameSpeed(MAP_SPEED_SLOW)
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00当前的游戏速度为|cffFF0000慢|r")
        elseif i_naji==3 then
            call SetGameSpeed(MAP_SPEED_NORMAL)
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00当前的游戏速度为|cffFF0000普通|r")
        elseif i_naji==4 then
            call SetGameSpeed(MAP_SPEED_FAST)
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00当前的游戏速度为|cffFF0000快|r")
        elseif i_naji==5 then
            call SetGameSpeed(MAP_SPEED_FASTEST)
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00当前的游戏速度为|cffFF0000极快|r")
        endif
    else
        call DisplayTextToPlayer(Ptest_naji,0,0,"|cffFF0000输入错误！请输入|cffFFFF001~5|cffFF0000之间的整数|r")
    endif
endfunction
function TestA68_naji takes nothing returns nothing
    call EndGame(true)
endfunction
function TestA67_naji takes nothing returns nothing
    local group g_naji=CreateGroup()
    local unit u_naji
    local real r_naji=S2R(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
    call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
    if FirstOfGroup(g_naji)!=null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji==null
            call GroupRemoveUnit(g_naji,u_naji)
            call SetUnitScale(u_naji,r_naji,r_naji,r_naji)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00玩家选择的所有单位的缩放更改为原模型默认的|cffFF0000"+R2S(r_naji)+"|cffFFFF00倍|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA66_naji takes nothing returns nothing
    local integer i_naji
    set i_naji=0
    loop
        call DisplayTimedTextToPlayer(Player(i_naji),0,0,15,"                              |cff00FFFF"+GetPlayerName(GetTriggerPlayer())+"：|r"+GetEventPlayerChatString())
        set i_naji=i_naji+1
        exitwhen i_naji>=16
    endloop
endfunction
function TestA65_naji takes nothing returns nothing
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"===============*****===============")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0目标坐标：|cffFFFF00("+R2S(GetCameraTargetPositionX())+","+R2S(GetCameraTargetPositionY())+","+R2S(GetCameraTargetPositionZ())+")|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0源坐标：|cffFFFF00("+R2S(GetCameraEyePositionX())+","+R2S(GetCameraEyePositionY())+","+R2S(GetCameraEyePositionZ())+")|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0X轴旋转角度/弧度：|cffFFFF00"+R2S(57.295*GetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK))+"/"+R2S(GetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK))+"|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0Y轴旋转角度/弧度：|cffFFFF00"+R2S(57.295*GetCameraField(CAMERA_FIELD_ROLL))+"/"+R2S(GetCameraField(CAMERA_FIELD_ROLL))+"|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0Z轴旋转角度/弧度：|cffFFFF00"+R2S(57.295*GetCameraField(CAMERA_FIELD_ROTATION))+"/"+R2S(GetCameraField(CAMERA_FIELD_ROTATION))+"|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0Z轴偏移：|cffFFFF00"+R2S(GetCameraField(CAMERA_FIELD_ZOFFSET))+"|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0镜头距离：|cffFFFF00"+R2S(GetCameraField(CAMERA_FIELD_TARGET_DISTANCE))+"|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0远景截断距离：|cffFFFF00"+R2S(GetCameraField(CAMERA_FIELD_FARZ))+"|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0镜头区域：|cffFFFF00"+R2S(GetCameraField(CAMERA_FIELD_FIELD_OF_VIEW))+"|r")
endfunction
function TestA64_naji takes nothing returns nothing
    if GetLocalPlayer()==Ptest_naji then
        set Rcamera_naji[2]=57.29582*GetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK)
        set Rcamera_naji[3]=57.29582*GetCameraField(CAMERA_FIELD_ROTATION)
        if Bcamera_naji[1] then
            set Rcamera_naji[2]=Rcamera_naji[2]-1
        endif
        if Bcamera_naji[2] then
            set Rcamera_naji[2]=Rcamera_naji[2]+1
        endif
        if Bcamera_naji[3] then
            set Rcamera_naji[3]=Rcamera_naji[3]-1
        endif
        if Bcamera_naji[4] then
            set Rcamera_naji[3]=Rcamera_naji[3]+1
        endif
        call SetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK,Rcamera_naji[2],0.01)
        call SetCameraField(CAMERA_FIELD_ROTATION,Rcamera_naji[3],0.01)
        call PanCameraToTimed(Rcamera_naji[0],Rcamera_naji[1],0)
    endif
endfunction
function TestA63_naji takes nothing returns nothing
    local integer i_naji=0
    if GetTriggerEventId()==EVENT_PLAYER_ARROW_UP_UP then
        set Bcamera_naji[1]=false
    elseif GetTriggerEventId()==EVENT_PLAYER_ARROW_DOWN_UP then
        set Bcamera_naji[2]=false
    elseif GetTriggerEventId()==EVENT_PLAYER_ARROW_LEFT_UP then
        set Bcamera_naji[3]=false
    elseif GetTriggerEventId()==EVENT_PLAYER_ARROW_RIGHT_UP then
        set Bcamera_naji[4]=false
    endif
    loop
        set i_naji=i_naji+1
        if i_naji>=5 then
            call DestroyTimer(Tcamera_naji)
            set Tcamera_naji=null
            exitwhen true
        endif
        if Bcamera_naji[i_naji] then
            exitwhen true
        endif
    endloop
endfunction
function TestA62_naji takes nothing returns nothing
    if Tcamera_naji==null then
        set Tcamera_naji=CreateTimer()
        call TimerStart(Tcamera_naji,0.01,true,function TestA64_naji)
    endif
    set Rcamera_naji[0]=GetCameraTargetPositionX()
    set Rcamera_naji[1]=GetCameraTargetPositionY()
    if GetTriggerEventId()==EVENT_PLAYER_ARROW_UP_DOWN then
        set Bcamera_naji[1]=true
    elseif GetTriggerEventId()==EVENT_PLAYER_ARROW_DOWN_DOWN then
        set Bcamera_naji[2]=true
    elseif GetTriggerEventId()==EVENT_PLAYER_ARROW_LEFT_DOWN then
        set Bcamera_naji[3]=true
    elseif GetTriggerEventId()==EVENT_PLAYER_ARROW_RIGHT_DOWN then
        set Bcamera_naji[4]=true
    endif
endfunction
function TestA61_naji takes nothing returns nothing
    if Bcamera_naji[0] then
        set Bcamera_naji[0]=false
        call DestroyTimer(Tcamera_naji)
        call DisableTrigger(Ttest_naji[58])
        call DisableTrigger(Ttest_naji[59])
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000关闭|cffFFFF00镜头模式|r")
    else
        set Bcamera_naji[0]=true
        call EnableTrigger(Ttest_naji[58])
        call EnableTrigger(Ttest_naji[59])
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,"|cffFF0000开启|cffFFFF00镜头模式|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,"|cffFF0000用上下左右对镜头进行调整，镜头距离请用|cffFFFF00'cd|cffFF0000代码，重置镜头请用|cffFFFF00'cr|cffFF0000代码|r")
    endif
endfunction
function TestA60_naji takes nothing returns nothing
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
    if FirstOfGroup(g_naji)!=null then
        if GetLocalPlayer()==GetTriggerPlayer() then
            call SetCameraTargetController(FirstOfGroup(g_naji),0,0,false)
        endif
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00已锁定|cffFF0000玩家选择的第一个单位|cffFFFF00的镜头，按下|cffFF0000Ctrl+C|cffFFFF00可解锁|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA59_naji takes nothing returns nothing
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
    if FirstOfGroup(g_naji)!=null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji==null
            call GroupRemoveUnit(g_naji,u_naji)
            call UnitRemoveBuffs(u_naji,true,true)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00已清除玩家选择的所有单位的|cffFF0000魔法效果|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA58_naji takes nothing returns nothing
    local integer i_naji=0
    call ClearTextMessages()
    loop
        call DisplayTextToPlayer(Player(i_naji),0,0,"|cffFFFF00你已经被|cffFF0000踢出游戏|r")
        set i_naji=i_naji+1
        exitwhen i_naji>=16
    endloop
endfunction
function TestA57_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))-1
    if i_naji>=0 and i_naji<=15 then
        if GetPlayerSlotState(Player(i_naji))==PLAYER_SLOT_STATE_PLAYING then
            if GetLocalPlayer()==Player(i_naji) then
                call TimerStart(CreateTimer(),0,true,function TestA58_naji)
            endif
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00已将|cffFF0000"+GetPlayerName(Player(i_naji))+"|cffFFFF00踢出游戏！|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00这个玩家位|cffFF0000并不存在玩家|r")
        endif
    else
        call DisplayTextToPlayer(Ptest_naji,0,0,"|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
    endif
endfunction
function TestA56_naji takes nothing returns nothing
    local integer i_naji=S2ID_naji(SubString(GetEventPlayerChatString(),3,7))
    local group g_naji
    local item tt
    local integer z_naji=1
    if StringLength(GetEventPlayerChatString())>=8 then
        set z_naji=S2I(SubString(GetEventPlayerChatString(),8,StringLength(GetEventPlayerChatString())))
        if z_naji<=0 then
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000数值部分请输入|cffFFFF00大于0|cffFF0000的整数|r")
            return
        endif
    endif
    set g_naji=CreateGroup()
    call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
    if FirstOfGroup(g_naji)!=null then
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00已执行对应行为，若没有效果，请确定你输入了正确的|cffFF0000物体编辑器ID|r")
        if UnitAddAbility(FirstOfGroup(g_naji),i_naji)==false then
            if StringLength(GetEventPlayerChatString())>=8 then
                call SetUnitAbilityLevel(FirstOfGroup(g_naji),i_naji,z_naji)
            else
                call UnitRemoveAbility(FirstOfGroup(g_naji),i_naji)
                call UnitMakeAbilityPermanent(FirstOfGroup(g_naji),false,i_naji)
            endif
        else
            call UnitMakeAbilityPermanent(FirstOfGroup(g_naji),true,i_naji)
            call SetUnitAbilityLevel(FirstOfGroup(g_naji),i_naji,z_naji)
        endif
        loop
            call CreateUnit(GetTriggerPlayer(),i_naji,GetUnitX(FirstOfGroup(g_naji)),GetUnitY(FirstOfGroup(g_naji)),0)
            set tt=CreateItem(i_naji,GetUnitX(FirstOfGroup(g_naji)),GetUnitY(FirstOfGroup(g_naji)))
            if tt!=null then
                call SetItemPlayer(tt,GetTriggerPlayer(),false)
                set tt=null
            endif
            call CreateDestructable(i_naji,GetUnitX(FirstOfGroup(g_naji)),GetUnitY(FirstOfGroup(g_naji)),0,1,0)
            set z_naji=z_naji-1
            exitwhen z_naji<=0
        endloop
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA55_naji takes nothing returns nothing
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
    if FirstOfGroup(g_naji)!=null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji==null
            call GroupRemoveUnit(g_naji,u_naji)
            if IsUnitInGroup(u_naji,Guw_naji) then
                call SetUnitPathing(u_naji,true)
                call GroupRemoveUnit(Guw_naji,u_naji)
            else
                call SetUnitPathing(u_naji,false)
                call GroupAddUnit(Guw_naji,u_naji)
            endif
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000已切换玩家选择的所有单位的|cffFFFF00触碰|cffFF0000状态|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA54_naji takes nothing returns nothing
    local real r_naji=S2R(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
    if GetLocalPlayer()==GetTriggerPlayer() then
        if r_naji>0 then
            call SetCameraField(CAMERA_FIELD_FARZ,r_naji,0)
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000玩家当前镜头的远景截断距离为|cffFFFF00"+R2S(r_naji)+"|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000数值错误！|cffFFFF00请输入|cffFF0000大于0|cffFFFF00的实数|r")
        endif
    endif
endfunction
function TestA53_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))-1
    local group g_naji=CreateGroup()
    local unit u_naji
    if i_naji>=0 and i_naji<=15 then
        call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
        if FirstOfGroup(g_naji)!=null then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji==null
                call GroupRemoveUnit(g_naji,u_naji)
                call SetUnitOwner(u_naji,Player(i_naji),true)
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000玩家选择的所有单位|cffFFFF00的所有者已改变为|cffFF0000"+GetPlayerName(Player(i_naji))+"|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
        endif
    else
        call DisplayTextToPlayer(Ptest_naji,0,0,"|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA52_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))-1
    local integer z_naji=StringLength(GetEventPlayerChatString())-1
    loop
        set Sdummy_naji[1]=SubString(GetEventPlayerChatString(),z_naji,z_naji+1)
        if Sdummy_naji[1]=="," then
            set z_naji=S2I(SubString(GetEventPlayerChatString(),z_naji+1,StringLength(GetEventPlayerChatString())))
            exitwhen true
        endif
        set z_naji=z_naji-1
        if z_naji<=0 then
            set z_naji=GetPlayerId(GetTriggerPlayer())+1
            exitwhen true
        endif
    endloop
    if z_naji<=0 or z_naji>=17 then
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
        return
    endif
    if i_naji>=0 and i_naji<=15 then
        if IsPlayerAlly(Player(i_naji),GetTriggerPlayer()) then
            call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_PASSIVE,false)
            call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_XP,false)
            call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_VISION,false)
            call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_SPELLS,false)
            call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_HELP_REQUEST,false)
            call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_HELP_RESPONSE,false)
            call SetPlayerAlliance(Player(z_naji-1),Player(i_naji),ALLIANCE_PASSIVE,false)
            call SetPlayerAlliance(Player(z_naji-1),Player(i_naji),ALLIANCE_SHARED_XP,false)
            call SetPlayerAlliance(Player(z_naji-1),Player(i_naji),ALLIANCE_SHARED_VISION,false)
            call SetPlayerAlliance(Player(z_naji-1),Player(i_naji),ALLIANCE_SHARED_SPELLS,false)
            call SetPlayerAlliance(Player(z_naji-1),Player(i_naji),ALLIANCE_HELP_REQUEST,false)
            call SetPlayerAlliance(Player(z_naji-1),Player(i_naji),ALLIANCE_HELP_RESPONSE,false)
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000"+GetPlayerName(Player(z_naji-1))+"|cffFFFF00和|cffFF0000"+GetPlayerName(Player(i_naji))+"|cffFFFF00成为|cffFF0000敌人|r")
        else
            call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_PASSIVE,true)
            call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_XP,true)
            call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_VISION,true)
            call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_SPELLS,true)
            call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_HELP_REQUEST,true)
            call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_HELP_RESPONSE,true)
            call SetPlayerAlliance(Player(z_naji-1),Player(i_naji),ALLIANCE_PASSIVE,true)
            call SetPlayerAlliance(Player(z_naji-1),Player(i_naji),ALLIANCE_SHARED_XP,true)
            call SetPlayerAlliance(Player(z_naji-1),Player(i_naji),ALLIANCE_SHARED_VISION,true)
            call SetPlayerAlliance(Player(z_naji-1),Player(i_naji),ALLIANCE_SHARED_SPELLS,true)
            call SetPlayerAlliance(Player(z_naji-1),Player(i_naji),ALLIANCE_HELP_REQUEST,true)
            call SetPlayerAlliance(Player(z_naji-1),Player(i_naji),ALLIANCE_HELP_RESPONSE,true)
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000"+GetPlayerName(Player(z_naji-1))+"|cffFFFF00和|cffFF0000"+GetPlayerName(Player(i_naji))+"|cffFFFF00成为|cffFF0000同盟|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
    endif
endfunction
function TestA51_naji takes nothing returns nothing
    if GetLocalPlayer()==Ptest_naji then
        call ClearTextMessages()
        call ResetToGameCamera(0)
        loop
            call DestroyQuest(Q_naji[Iquest_naji])
            set Iquest_naji=Iquest_naji-1
            exitwhen Iquest_naji==0
        endloop
    endif
    loop
        call DestroyTrigger(Ttest_naji[Itrigger_naji])
        set Itrigger_naji=Itrigger_naji-1
        exitwhen Itrigger_naji==0
    endloop
    if Ttest_naji[0]!=null then
        call DestroyTrigger(Ttest_naji[0])
    endif
    if Ibm_naji>=1 then
        loop
            set Ibm_naji=Ibm_naji-1
            call DestroyTextTag(Tbm_naji[Ibm_naji])
            set Tbm_naji[Ibm_naji]=null
            exitwhen Ibm_naji<=0
        endloop
    endif
    loop
        call RemoveWeatherEffect(Weather_naji[Iweather_naji])
        set Iweather_naji=Iweather_naji-1
        exitwhen Iweather_naji<=0
    endloop
    call DialogDestroy(Dnaji_naji[0])
    call DialogDestroy(Dnaji_naji[1])
    call DialogDestroy(Dnaji_naji[2])
    call DestroyGroup(Gcd_naji[0])
    call DestroyGroup(Gcd_naji[1])
    call DestroyGroup(Gms_naji)
    call DestroyGroup(Guw_naji)
    call RemoveRegion(Rworld_naji)
    call DisplayTextToPlayer(GetLocalPlayer(),0,0,"|cffFF0000已移除|cffFFFF00najitest|cffFF0000测试系统")
endfunction
function TestA50_naji takes nothing returns nothing
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
    if FirstOfGroup(g_naji)!=null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji==null
            call GroupRemoveUnit(g_naji,u_naji)
            call KillUnit(u_naji)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00杀死|cffFF0000玩家选择的所有单位|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA49_naji takes nothing returns nothing
    local real array r_naji
    local integer a_naji=1
    local integer b_naji=3
    local integer c_naji=3
    set r_naji[1]=1
    set r_naji[2]=GetPlayerId(GetTriggerPlayer())+1
    loop
        set Sdummy_naji[1]=SubString(GetEventPlayerChatString(),b_naji,b_naji+1)
        if Sdummy_naji[1]=="," then
            set r_naji[a_naji]=S2R(SubString(GetEventPlayerChatString(),c_naji,b_naji))
            set a_naji=a_naji+1
            set c_naji=b_naji+1
            if a_naji>=2 and c_naji<StringLength(GetEventPlayerChatString()) then
                set r_naji[2]=S2R(SubString(GetEventPlayerChatString(),c_naji,StringLength(GetEventPlayerChatString())))
                exitwhen true
            endif
        endif
        set b_naji=b_naji+1
        if b_naji>=StringLength(GetEventPlayerChatString()) then
            set r_naji[a_naji]=S2I(SubString(GetEventPlayerChatString(),c_naji,StringLength(GetEventPlayerChatString())))
            exitwhen true
        endif
    endloop
    if R2I(r_naji[2])>=1 and R2I(r_naji[2])<=16 then
        call SetMapFlag(MAP_USE_HANDICAPS,true)
        call SetPlayerHandicap(Player(R2I(r_naji[2])-1),r_naji[1])
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000已设置|cff00FFFF"+GetPlayerName(Player(R2I(r_naji[2])-1))+"|cffFF0000的生命障碍为|cffFFFF00"+R2S(r_naji[1])+"|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000玩家参数输入数值错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
    endif
endfunction
function TestA48_naji takes nothing returns nothing
    local real r_naji=S2R(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
    call SetTimeOfDayScale(r_naji/100)
    call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000设置时间流逝速度为|cffFFFF00"+R2S(r_naji)+"%|r")
endfunction
function TestA47_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
    if FirstOfGroup(g_naji)!=null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji==null
            call GroupRemoveUnit(g_naji,u_naji)
            call SetUnitUserData(u_naji,i_naji)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000设置玩家选择的所有单位的自定义值为|cffFFFF00"+I2S(i_naji)+"|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA46_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
    if FirstOfGroup(g_naji)!=null then
        if i_naji>=1 then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji==null
                call GroupRemoveUnit(g_naji,u_naji)
                if IsUnitType(u_naji,UNIT_TYPE_HERO) then
                    call SetHeroInt(u_naji,i_naji,true)
                    call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000设置玩家选择的所有英雄的智力为|cffFFFF00"+I2S(i_naji)+"|r")
                endif
            endloop
        else
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入错误！请输入|cffFFFF00大于等于1|cffFF0000的整数|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA45_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
    if FirstOfGroup(g_naji)!=null then
       if i_naji>=1 then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji==null
                call GroupRemoveUnit(g_naji,u_naji)
                if IsUnitType(u_naji,UNIT_TYPE_HERO) then
                    call SetHeroAgi(u_naji,i_naji,true)
                    call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000设置玩家选择的所有英雄的敏捷为|cffFFFF00"+I2S(i_naji)+"|r")
                endif
            endloop
        else
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入错误！请输入|cffFFFF00大于等于1|cffFF0000的整数|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA44_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
    if FirstOfGroup(g_naji)!=null then
        if i_naji>=1 then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji==null
                call GroupRemoveUnit(g_naji,u_naji)
                if IsUnitType(u_naji,UNIT_TYPE_HERO) then
                    call SetHeroStr(u_naji,i_naji,true)
                    call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000设置玩家选择的所有英雄的力量为|cffFFFF00"+I2S(i_naji)+"|r")
                endif
            endloop
        else
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入错误！请输入|cffFFFF00大于等于1|cffFF0000的整数|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA43_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
    if FirstOfGroup(g_naji)!=null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji==null
            call GroupRemoveUnit(g_naji,u_naji)
            if IsUnitType(u_naji,UNIT_TYPE_HERO) then
                if GetHeroSkillPoints(u_naji)+i_naji>=0 then
                    call UnitModifySkillPoints(u_naji,i_naji)
                else
                    call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF80C0"+GetUnitName(u_naji)+"|cffFF0000的剩余技能点不能|cffFFFF00低于0|cffFF0000！|r")
                endif
            endif
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000增加玩家选择的所有英雄的技能点数：|cffFFFF00"+I2S(i_naji)+"|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA42_naji takes nothing returns nothing
    local real r_naji=S2R(SubString(GetEventPlayerChatString(),4,StringLength(GetEventPlayerChatString())))
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
    if FirstOfGroup(g_naji)!=null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji==null
            call GroupRemoveUnit(g_naji,u_naji)
            if UnitAddAbility(u_naji,'Arav') then
                call UnitRemoveAbility(u_naji,'Arav')
            endif
            call SetUnitFlyHeight(u_naji,r_naji,0)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000设置玩家选择的所有单位的飞行高度为|cffFFFF00"+R2S(r_naji)+"|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA41_naji takes nothing returns nothing
    local real r_naji=S2R(SubString(GetEventPlayerChatString(),4,StringLength(GetEventPlayerChatString())))
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
    if FirstOfGroup(g_naji)!=null then
        if r_naji>0 then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji==null
                call GroupRemoveUnit(g_naji,u_naji)
                call SetUnitAcquireRange(u_naji,r_naji)
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000设置玩家选择的所有单位的主动攻击范围为|cffFFFF00"+R2S(r_naji)+"|r")
        else
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji==null
                call GroupRemoveUnit(g_naji,u_naji)
                call SetUnitAcquireRange(u_naji,GetUnitDefaultAcquireRange(u_naji))
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入数值错误！已还原玩家选择的所有单位的|cffFFFF00默认主动攻击范围|cffFF0000。请输入|cffFFFF00大于0|cffFF0000的实数|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA40_naji takes nothing returns nothing
    local real r_naji=S2R(SubString(GetEventPlayerChatString(),4,StringLength(GetEventPlayerChatString())))
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
    if FirstOfGroup(g_naji)!=null then
        if r_naji>=0 and r_naji<=1 then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji==null
                call GroupRemoveUnit(g_naji,u_naji)
                call SetUnitTurnSpeed(u_naji,r_naji)
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000设置玩家选择的所有单位的转身速率为|cffFFFF00"+R2S(r_naji)+"|r")
        else
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji==null
                call GroupRemoveUnit(g_naji,u_naji)
                call SetUnitTurnSpeed(u_naji,GetUnitDefaultTurnSpeed(u_naji))
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入数值错误！已还原玩家选择的所有单位的|cffFFFF00默认转身速率|cffFF0000。请输入|cffFFFF000~1|cffFF0000之间的实数|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA39_naji takes nothing returns nothing
    local real r_naji=S2R(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
    if FirstOfGroup(g_naji)!=null then
        if r_naji>=0 and r_naji<=522 then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji==null
                call GroupRemoveUnit(g_naji,u_naji)
                call SetUnitMoveSpeed(u_naji,r_naji)
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000设置玩家选择的所有单位的移动速度为|cffFFFF00"+R2S(r_naji)+"|r")
        else
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji==null
                call GroupRemoveUnit(g_naji,u_naji)
                call SetUnitMoveSpeed(u_naji,GetUnitDefaultMoveSpeed(u_naji))
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入数值错误！已还原玩家选择的所有单位的|cffFFFF00默认移动速度|cffFF0000。请输入|cffFFFF000~522|cffFF0000之间的实数|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA38_naji takes nothing returns nothing
    local real r_naji=S2R(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
    if r_naji>=0 and r_naji<=24 then
        call SetFloatGameState(GAME_STATE_TIME_OF_DAY,r_naji)
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000当前时间设置为|cffFFFF00"+R2S(r_naji)+"|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000请输入|cffFFFF000~24|cffFF0000之间的实数|r")
    endif
endfunction
function TestA37_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
    call SetRandomSeed(i_naji)
    call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000随机种子设置为|cffFFFF00"+I2S(i_naji)+"|r")
endfunction
function TestA36_naji takes nothing returns nothing
    local group g_naji
    local unit u_naji
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(),4,StringLength(GetEventPlayerChatString())))
    local integer z_naji=StringLength(GetEventPlayerChatString())-1
    loop
        set Sdummy_naji[1]=SubString(GetEventPlayerChatString(),z_naji,z_naji+1)
        if Sdummy_naji[1]=="," then
            set z_naji=S2I(SubString(GetEventPlayerChatString(),z_naji+1,StringLength(GetEventPlayerChatString())))
            exitwhen true
        endif
        set z_naji=z_naji-1
        if z_naji<=0 then
            set z_naji=1
            exitwhen true
        endif
    endloop
    if z_naji<=0 or z_naji>=7 then
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000第二参数输入错误！请输入|cffFFFF001~6|cffFF0000间的整数|r")
        return
    endif
    set g_naji=CreateGroup()
    call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
    set u_naji=FirstOfGroup(g_naji)
    if u_naji!=null then
        if UnitItemInSlot(u_naji,z_naji-1)!=null then
            if i_naji<=0 then
                set i_naji=0
            endif
            call SetItemCharges(UnitItemInSlot(u_naji,z_naji-1),i_naji)
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000该单位|cffFFFF00第"+I2S(z_naji)+"格物品栏|cffFF0000的可允次数设置为|cffFFFF00"+I2S(i_naji)+"|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000该单位|cffFFFF00第"+I2S(z_naji)+"格物品栏|cffFF0000不存在物品|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA35_naji takes nothing returns nothing
    loop
        set Ibm_naji=Ibm_naji-1
        call DestroyTextTag(Tbm_naji[Ibm_naji])
        set Tbm_naji[Ibm_naji]=null
        exitwhen Ibm_naji<=0
    endloop
    call DisplayTextToPlayer(GetLocalPlayer(),0,0,"|cffFF0000已清除所有|cffFFFF00备忘文字|r")
endfunction
function TestA34_naji takes nothing returns nothing
    set Tbm_naji[Ibm_naji]=CreateTextTag()
    call SetTextTagText(Tbm_naji[Ibm_naji],SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())),20*0.023/10)
    call SetTextTagPos(Tbm_naji[Ibm_naji],GetCameraTargetPositionX(),GetCameraTargetPositionY(),0)
    call SetTextTagColor(Tbm_naji[Ibm_naji],0,255,0,255)
    set Ibm_naji=Ibm_naji+1
endfunction
function TestA33_naji takes nothing returns nothing
    local real r_naji=S2R(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
    if r_naji>100 then
        set r_naji=1
    endif
    if r_naji<0 then
        set r_naji=0
    endif
    set r_naji=r_naji/100
    if GetLocalPlayer()==GetTriggerPlayer() then
        call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_AMBIENTSOUNDS,r_naji)
        call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_SPELLS,r_naji)
        call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_COMBAT,r_naji)
        call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_FIRE,r_naji)
        call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UNITMOVEMENT,r_naji)
        call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UNITSOUNDS,r_naji)
        call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UI,r_naji)
    endif
    call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000你当前的音效音量为：|cffFFFF00"+I2S(R2I(r_naji*100))+"%|r")
endfunction
function TestA32_naji takes nothing returns nothing
    call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000骰得点数：|cffFFFF00"+I2S(GetRandomInt(1,100))+"|r")
endfunction
function TestA31_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
    if i_naji>100 then
        set i_naji=100
    endif
    if i_naji<0 then
        set i_naji=0
    endif
    if GetLocalPlayer()==GetTriggerPlayer() then
        call SetMusicVolume(R2I(I2R(i_naji)*1.27))
    endif
    call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000你当前的音乐音量为：|cffFFFF00"+I2S(i_naji)+"%|r")
endfunction
function TestA30_naji takes nothing returns nothing
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
    if FirstOfGroup(g_naji)!=null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji==null
            call GroupRemoveUnit(g_naji,u_naji)
            if IsUnitPaused(u_naji) then
                call PauseUnit(u_naji,false)
            else
                call PauseUnit(u_naji,true)
            endif
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000已切换玩家选择的所有单位的|cffFFFF00暂停状态|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA29_naji takes nothing returns nothing
    local texttag tt
    if Bir_naji then
        set Sdummy_naji[0]=I2S(R2I(GetEventDamage()))
    else
        set Sdummy_naji[0]=R2S(GetEventDamage())
    endif
    if Bddm_naji then
        if Bpn_naji then
            set Sdummy_naji[3]=GetPlayerName(GetTriggerPlayer())+"（玩家"+I2S(GetPlayerId(GetTriggerPlayer())+1)+"）"
            set Sdummy_naji[4]=GetPlayerName(GetOwningPlayer(GetEventDamageSource()))+"（玩家"+I2S(GetPlayerId(GetOwningPlayer(GetEventDamageSource()))+1)+"）"
        else
            set Sdummy_naji[3]=""
            set Sdummy_naji[4]=""
        endif
        if Bxy_naji then
            set Sdummy_naji[1]="（"+R2S(GetUnitX(GetTriggerUnit()))+","+R2S(GetUnitY(GetTriggerUnit()))+"）"
            set Sdummy_naji[2]="（"+R2S(GetWidgetX(GetEventDamageSource()))+","+R2S(GetWidgetY(GetEventDamageSource()))+"）"
        else
            set Sdummy_naji[1]=""
            set Sdummy_naji[2]=""
        endif
        call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF8000受到了|cffFFFF00"+Sdummy_naji[0]+"|cffFF8000点伤害！"+"|cff00FFFF伤害来源为|r"+Sdummy_naji[4]+"|cffFFFF00"+GetUnitName(GetEventDamageSource())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetEventDamageSource()))+"|cffFFFF00"+Sdummy_naji[2]+"|r")
    else
        if GetLocalPlayer()==Ptest_naji then
            set tt=CreateTextTag()
            call SetTextTagText(tt,Sdummy_naji[0],13*0.023/10)
            call SetTextTagPosUnit(tt,GetTriggerUnit(),0)
            call SetTextTagColor(tt,255,0,0,255)
            call SetTextTagVelocity(tt,150*0.071/128*Cos(Rdummy_naji*0.01745),150*0.071/128*Sin(Rdummy_naji*0.01745))
            call SetTextTagPermanent(tt,false)
            call SetTextTagLifespan(tt,1)
            call SetTextTagFadepoint(tt,0.8)
            set tt=null
            set Rdummy_naji=Rdummy_naji+30
            if Rdummy_naji>=360 then
                set Rdummy_naji=Rdummy_naji-360
            endif
        endif
    endif
endfunction
function TestA28_naji takes nothing returns nothing
    if GetUnitAbilityLevel(GetTriggerUnit(),'Aloc')==0 then
        call TriggerRegisterUnitEvent(Ttest_naji[0],GetTriggerUnit(),EVENT_UNIT_DAMAGED)
    endif
endfunction
function TestA27_naji takes nothing returns nothing
    local group g_naji=CreateGroup()
    local integer i_naji=0
    local integer z_naji
    loop
        call GroupEnumUnitsOfPlayer(g_naji,Player(i_naji),null)
        set z_naji=0
        loop
            exitwhen FirstOfGroup(g_naji)==null
            call GroupRemoveUnit(g_naji,FirstOfGroup(g_naji))
            set z_naji=z_naji+1
        endloop
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15,"|cff00FFFF("+I2S(i_naji+1)+")|cffFF0000"+GetPlayerName(Player(i_naji))+"|r：|cffFF80C0总单位数|cffFFFF00"+I2S(z_naji)+"|r：|cffFF80C0金钱|cffFFFF00"+I2S(GetPlayerState(Player(i_naji),PLAYER_STATE_RESOURCE_GOLD))+"|r：|cffFF80C0木头|cffFFFF00"+I2S(GetPlayerState(Player(i_naji),PLAYER_STATE_RESOURCE_LUMBER))+"|r：|cffFF80C0已用/可用人口|cffFFFF00"+I2S(GetPlayerState(Player(i_naji),PLAYER_STATE_RESOURCE_FOOD_USED))+"|r/|cffFFFF00"+I2S(GetPlayerState(Player(i_naji),PLAYER_STATE_RESOURCE_FOOD_CAP)))
        set i_naji=i_naji+1
        exitwhen i_naji>=16
    endloop
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA26_naji takes nothing returns nothing
    if Bpause_naji then
        call PauseGame(false)
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000继续游戏|r")
        set Bpause_naji=false
    else
        call PauseGame(true)
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000暂停游戏|r")
        set Bpause_naji=true
    endif
endfunction
function TestA25_naji takes nothing returns nothing
    local real r_naji=S2R(SubString(GetEventPlayerChatString(),4,StringLength(GetEventPlayerChatString())))
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
    if FirstOfGroup(g_naji)!=null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji==null
            call GroupRemoveUnit(g_naji,u_naji)
            call SetUnitTimeScale(u_naji,r_naji)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000设置玩家选择的所有单位的动画播放速率为|cffFFFF00"+R2S(r_naji)+"|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA24_naji takes nothing returns nothing
    local integer array i_naji
    local integer a_naji=1
    local integer b_naji=4
    local integer c_naji=4
    local group g_naji
    local unit u_naji
    set i_naji[1]=0
    set i_naji[2]=0
    set i_naji[3]=0
    set i_naji[4]=0
    loop
        set Sdummy_naji[1]=SubString(GetEventPlayerChatString(),b_naji,b_naji+1)
        if Sdummy_naji[1]=="," then
            set i_naji[a_naji]=S2I(SubString(GetEventPlayerChatString(),c_naji,b_naji))
            set a_naji=a_naji+1
            set c_naji=b_naji+1
            if a_naji>=4 then
                set i_naji[4]=S2I(SubString(GetEventPlayerChatString(),c_naji,StringLength(GetEventPlayerChatString())))
                exitwhen true
            endif
        endif
        set b_naji=b_naji+1
        if b_naji>=StringLength(GetEventPlayerChatString()) then
            set i_naji[a_naji]=S2I(SubString(GetEventPlayerChatString(),c_naji,StringLength(GetEventPlayerChatString())))
            exitwhen true
        endif
    endloop
    if i_naji[1]>=0 and i_naji[1]<=255 and i_naji[2]>=0 and i_naji[2]<=255 and i_naji[3]>=0 and i_naji[3]<=255 and i_naji[4]>=0 and i_naji[4]<=255 then
        set g_naji=CreateGroup()
        call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
        if FirstOfGroup(g_naji)!=null then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji==null
                call GroupRemoveUnit(g_naji,u_naji)
                call SetUnitVertexColor(u_naji,i_naji[1],i_naji[2],i_naji[3],i_naji[4])
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000设置玩家选择的所有单位的染色为|cffFFFF00"+I2S(i_naji[1])+"|cffFF0000,|cffFFFF00"+I2S(i_naji[2])+"|cffFF0000,|cffFFFF00"+I2S(i_naji[3])+"|cffFF0000,|cffFFFF00"+I2S(i_naji[4])+"|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
        endif
        call DestroyGroup(g_naji)
        set g_naji=null
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入数值错误！请输入|cffFFFF000~255|cffFF0000之间的整数|r")
    endif
endfunction
function TestA23_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))-1
    local integer z_naji=StringLength(GetEventPlayerChatString())-1
    loop
        set Sdummy_naji[1]=SubString(GetEventPlayerChatString(),z_naji,z_naji+1)
        if Sdummy_naji[1]=="," then
            set z_naji=S2I(SubString(GetEventPlayerChatString(),z_naji+1,StringLength(GetEventPlayerChatString())))
            exitwhen true
        endif
        set z_naji=z_naji-1
        if z_naji<=0 then
            set z_naji=GetPlayerId(GetTriggerPlayer())+1
            exitwhen true
        endif
    endloop
    if z_naji<=0 or z_naji>=17 then
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
        return
    endif
    if i_naji>=0 and i_naji<=15 then
        if GetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_ADVANCED_CONTROL) then
            call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_VISION,false)
            call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_CONTROL,false)
            call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_ADVANCED_CONTROL,false)
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000"+GetPlayerName(Player(z_naji-1))+"|cffFFFF00失去了|cffFF0000"+GetPlayerName(Player(i_naji))+"|cffFFFF00的|cffFF0000控制权|r")
        else
            call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_VISION,true)
            call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_CONTROL,true)
            call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_ADVANCED_CONTROL,true)
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000"+GetPlayerName(Player(z_naji-1))+"|cffFFFF00获得了|cffFF0000"+GetPlayerName(Player(i_naji))+"|cffFFFF00的|cffFF0000控制权|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
    endif
endfunction
function TestA22_naji takes nothing returns nothing
    local group g_naji=CreateGroup()
    local unit u_naji
    local integer i_naji
    call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
    set u_naji=FirstOfGroup(g_naji)
    if u_naji!=null then
        set i_naji=GetUnitTypeId(u_naji)
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"===============*****===============")
        if IsUnitType(u_naji,UNIT_TYPE_HERO) then
            set Sdummy_naji[0]=GetHeroProperName(u_naji)
        else
            set Sdummy_naji[0]="无"
        endif
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0单位名称/称谓：|cffFFFF00"+GetUnitName(u_naji)+"/"+Sdummy_naji[0]+"|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0ID256进制/10进制：|cffFFFF00"+ID2S_naji(GetUnitTypeId(u_naji))+"/"+I2S(GetUnitTypeId(u_naji))+"|r")
        //=========================以下部分1.24以下的版本需删除==============================
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0存储地址：|cffFFFF00"+I2S(GetHandleId(u_naji))+"|r")
        //=========================以上部分1.24以下的版本需删除==============================
        if IsUnitRace(u_naji,RACE_HUMAN) then
            set Sdummy_naji[0]="人族"
        endif
        if IsUnitRace(u_naji,RACE_ORC) then
            set Sdummy_naji[0]="兽族"
        endif
        if IsUnitRace(u_naji,RACE_UNDEAD) then
            set Sdummy_naji[0]="不死族"
        endif
        if IsUnitRace(u_naji,RACE_NIGHTELF) then
            set Sdummy_naji[0]="暗夜精灵族"
        endif
        if IsUnitRace(u_naji,RACE_DEMON) then
            set Sdummy_naji[0]="恶魔"
        endif
        if IsUnitRace(u_naji,ConvertRace(0)) then
            set Sdummy_naji[0]="没有"
        endif
        if IsUnitRace(u_naji,ConvertRace(7)) then
            set Sdummy_naji[0]="其它"
        endif
        if IsUnitRace(u_naji,ConvertRace(8)) then
            set Sdummy_naji[0]="野外生物"
        endif
        if IsUnitRace(u_naji,ConvertRace(9)) then
            set Sdummy_naji[0]="平民"
        endif
        if IsUnitRace(u_naji,RACE_HUMAN) then
            set Sdummy_naji[0]="人族"
        endif
        if IsUnitRace(u_naji,ConvertRace(10)) then
            set Sdummy_naji[0]="动物"
        endif
        if IsUnitRace(u_naji,ConvertRace(11)) then
            set Sdummy_naji[0]="娜迦族"
        endif
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0种族/等级：|cffFFFF00"+Sdummy_naji[0]+"/"+I2S(GetUnitLevel(u_naji))+"|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0所属玩家/cj索引：|cffFFFF00"+GetPlayerName(GetOwningPlayer(u_naji))+"/"+I2S(GetPlayerId(GetOwningPlayer(u_naji)))+"|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0坐标：|cffFFFF00("+R2S(GetUnitX(u_naji))+","+R2S(GetUnitY(u_naji))+")|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0面向角度/弧度：|cffFFFF00"+R2S(GetUnitFacing(u_naji))+"/"+R2S(0.017*GetUnitFacing(u_naji))+"|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0自定义值：|cffFFFF00"+I2S(GetUnitUserData(u_naji))+"|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0附加值：|cffFFFF00"+I2S(GetUnitPointValue(u_naji))+"|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0主动攻击范围当前/默认：|cffFFFF00"+R2S(GetUnitAcquireRange(u_naji))+"/"+R2S(GetUnitDefaultAcquireRange(u_naji))+"|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0移动速度当前/默认：|cffFFFF00"+R2S(GetUnitMoveSpeed(u_naji))+"/"+R2S(GetUnitDefaultMoveSpeed(u_naji))+"|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0转身速率当前/默认：|cffFFFF00"+R2S(GetUnitTurnSpeed(u_naji))+"/"+R2S(GetUnitDefaultTurnSpeed(u_naji))+"|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0飞行高度当前/默认：|cffFFFF00"+R2S(GetUnitFlyHeight(u_naji))+"/"+R2S(GetUnitDefaultFlyHeight(u_naji))+"|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0拥有buff数量全部/正面/负面：|cffFFFF00"+I2S(UnitCountBuffsEx(u_naji,true,true,false,false,true,true,false))+"/"+I2S(UnitCountBuffsEx(u_naji,true,false,false,false,true,true,false))+"/"+I2S(UnitCountBuffsEx(u_naji,false,true,false,false,true,true,false))+"|r")
        set Sdummy_naji[0]=" "
        if IsUnitIdType(i_naji,UNIT_TYPE_MELEE_ATTACKER) then
            set Sdummy_naji[0]=Sdummy_naji[0]+"近战，"
        endif
        if IsUnitIdType(i_naji,UNIT_TYPE_RANGED_ATTACKER) then
            set Sdummy_naji[0]=Sdummy_naji[0]+"远程，"
        endif
        if IsUnitIdType(i_naji,UNIT_TYPE_STRUCTURE) then
            set Sdummy_naji[0]=Sdummy_naji[0]+"建筑，"
        endif
        if IsUnitIdType(i_naji,UNIT_TYPE_HERO) then
            set Sdummy_naji[0]=Sdummy_naji[0]+"英雄，"
        endif
        if IsUnitIdType(i_naji,UNIT_TYPE_GROUND) then
            set Sdummy_naji[0]=Sdummy_naji[0]+"地面，"
        endif
        if IsUnitIdType(i_naji,UNIT_TYPE_FLYING) then
            set Sdummy_naji[0]=Sdummy_naji[0]+"飞行，"
        endif
        if IsUnitIdType(i_naji,UNIT_TYPE_SUMMONED) then
            set Sdummy_naji[0]=Sdummy_naji[0]+"召唤单位，"
        endif
        if IsUnitIdType(i_naji,UNIT_TYPE_PLAGUED) then
            set Sdummy_naji[0]=Sdummy_naji[0]+"附带瘟疫，"
        endif
        if IsUnitIdType(i_naji,UNIT_TYPE_SNARED) then
            set Sdummy_naji[0]=Sdummy_naji[0]+"被束缚的，"
        endif
        if IsUnitIdType(i_naji,UNIT_TYPE_STUNNED) then
            set Sdummy_naji[0]=Sdummy_naji[0]+"被眩晕的，"
        endif
        if IsUnitIdType(i_naji,UNIT_TYPE_GIANT) then
            set Sdummy_naji[0]=Sdummy_naji[0]+"泰坦，"
        endif
        if IsUnitIdType(i_naji,UNIT_TYPE_TAUREN) then
            set Sdummy_naji[0]=Sdummy_naji[0]+"牛头人，"
        endif
        if IsUnitIdType(i_naji,UNIT_TYPE_UNDEAD) then
            set Sdummy_naji[0]=Sdummy_naji[0]+"不死族，"
        endif
        if IsUnitIdType(i_naji,UNIT_TYPE_MECHANICAL) then
            set Sdummy_naji[0]=Sdummy_naji[0]+"机械，"
        endif
        if IsUnitIdType(i_naji,UNIT_TYPE_ANCIENT) then
            set Sdummy_naji[0]=Sdummy_naji[0]+"古树，"
        endif
        if IsUnitIdType(i_naji,UNIT_TYPE_PEON) then
            set Sdummy_naji[0]=Sdummy_naji[0]+"工人，"
        endif
        if IsUnitIdType(i_naji,UNIT_TYPE_TOWNHALL) then
            set Sdummy_naji[0]=Sdummy_naji[0]+"城镇大厅，"
        endif
        if IsUnitIdType(i_naji,UNIT_TYPE_SAPPER) then
            set Sdummy_naji[0]=Sdummy_naji[0]+"地精工兵，"
        endif
        if IsUnitIdType(i_naji,UNIT_TYPE_POISONED) then
            set Sdummy_naji[0]=Sdummy_naji[0]+"中毒的，"
        endif
        if IsUnitIdType(i_naji,UNIT_TYPE_POLYMORPHED) then
            set Sdummy_naji[0]=Sdummy_naji[0]+"被变形的，"
        endif
        if IsUnitIdType(i_naji,UNIT_TYPE_SLEEPING) then
            set Sdummy_naji[0]=Sdummy_naji[0]+"被催眠的，"
        endif
        if IsUnitIdType(i_naji,UNIT_TYPE_RESISTANT) then
            set Sdummy_naji[0]=Sdummy_naji[0]+"有抗性皮肤的，"
        endif
        if IsUnitIdType(i_naji,UNIT_TYPE_ETHEREAL) then
            set Sdummy_naji[0]=Sdummy_naji[0]+"处于虚无状态，"
        endif
        if IsUnitIdType(i_naji,UNIT_TYPE_MAGIC_IMMUNE) then
            set Sdummy_naji[0]=Sdummy_naji[0]+"魔法免疫，"
        endif
        set Sdummy_naji[0]=SubString(Sdummy_naji[0],1,StringLength(Sdummy_naji[0])-2)
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0可识别类型：|cffFFFF00"+Sdummy_naji[0]+"||r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
endfunction
function TestA21_naji takes nothing returns nothing
    if GetLocalPlayer()==GetTriggerPlayer() then
        call ResetToGameCamera(0)
    endif
    call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000重置镜头|r")
endfunction
function TestA20_naji takes nothing returns nothing
    if GetLocalPlayer()==GetTriggerPlayer() then
        call ClearTextMessages()
    endif
endfunction
function TestA19_naji takes nothing returns nothing
    if Bpn_naji then
        set Sdummy_naji[3]=GetPlayerName(GetOwningPlayer(GetTriggerUnit()))+"（玩家"+I2S(GetPlayerId(GetOwningPlayer(GetTriggerUnit()))+1)+"）"
    else
        set Sdummy_naji[3]=""
    endif
    if Bxy_naji then
        set Sdummy_naji[1]="（"+R2S(GetUnitX(GetTriggerUnit()))+","+R2S(GetUnitY(GetTriggerUnit()))+"）"
        set Sdummy_naji[2]="（"+R2S(GetWidgetX(GetKillingUnit()))+","+R2S(GetWidgetY(GetKillingUnit()))+"）"
    else
        set Sdummy_naji[1]=""
        set Sdummy_naji[2]=""
    endif
    if GetTriggerPlayer()==null then
	    set unitnumber_lh=unitnumber_lh+1
	    set createdunitnumber_lh=createdunitnumber_lh+1
        call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF80C0第一次进入地图,当前单位数："+I2S(unitnumber_lh)+",创建单位总数："+I2S(createdunitnumber_lh)+"|r")
    else
        if Bpn_naji then
            set Sdummy_naji[4]=GetPlayerName(GetOwningPlayer(GetKillingUnit()))+"（玩家"+I2S(GetPlayerId(GetOwningPlayer(GetKillingUnit()))+1)+"）"
        else
            set Sdummy_naji[4]=""
        endif
        set unitnumber_lh=unitnumber_lh-1
        call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF80C0死亡！凶手是：|r"+Sdummy_naji[4]+"|cffFFFF00"+GetUnitName(GetKillingUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetKillingUnit()))+"|cffFFFF00"+Sdummy_naji[2]+",当前单位数："+I2S(unitnumber_lh)+",创建单位总数："+I2S(createdunitnumber_lh)+"|r")
    endif
endfunction
function TestA18_naji takes nothing returns nothing
    call SetPlayerName(GetTriggerPlayer(),SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
    call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000你当前的名称为：|cffFFFF00"+GetPlayerName(GetTriggerPlayer())+"|r")
endfunction
function TestA17_naji takes nothing returns nothing
    local location p_naji
    if Bpn_naji then
        set Sdummy_naji[3]=GetPlayerName(GetTriggerPlayer())+"（玩家"+I2S(GetPlayerId(GetTriggerPlayer())+1)+"）"
    else
        set Sdummy_naji[3]=""
    endif
    if Bxy_naji then
        set Sdummy_naji[1]="（"+R2S(GetUnitX(GetTriggerUnit()))+","+R2S(GetUnitY(GetTriggerUnit()))+"）"
        set Sdummy_naji[2]="（"+R2S(GetWidgetX(GetOrderTarget()))+","+R2S(GetWidgetY(GetOrderTarget()))+"）"
    else
        set Sdummy_naji[1]=""
        set Sdummy_naji[2]=""
    endif
    set Sdummy_naji[0]=OrderId2String(GetIssuedOrderId())
    if Sdummy_naji[0]==null then
        set Sdummy_naji[0]=UnitId2String(GetIssuedOrderId())
        if Sdummy_naji[0]==null then
            set Sdummy_naji[0]=IDidentify_naji(GetIssuedOrderId())
            if Sdummy_naji[0]==null or Sdummy_naji[0]=="Default string" then
                set Sdummy_naji[0]="null"
            else
                set Sdummy_naji[0]=Sdummy_naji[0]+"|cff00FF00"+ID2S_naji(GetIssuedOrderId())
            endif
        endif
    endif
    if GetOrderTargetUnit()==null then
        if GetOrderTargetDestructable()==null then
            if GetOrderTargetItem()==null then
                set p_naji=GetOrderPointLoc()
                if p_naji==null then
                    call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF80C0发布了|cffFFFF00"+Sdummy_naji[0]+"|cffFF0000（"+I2S(GetIssuedOrderId())+"）|r")
                else
                    call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF80C0发布了|cffFFFF00"+Sdummy_naji[0]+"|cffFF0000（"+I2S(GetIssuedOrderId())+"）"+"|cff00FFFF目标点为|cffFFFF00"+"（"+R2S(GetOrderPointX())+","+R2S(GetOrderPointY())+"）|r")
                endif
                call RemoveLocation(p_naji)
                set p_naji=null
            else
                call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF80C0发布了|cffFFFF00"+Sdummy_naji[0]+"|cffFF0000（"+I2S(GetIssuedOrderId())+"）"+"|cff00FFFF目标为|cffFFFF00"+GetItemName(GetOrderTargetItem())+"|cffFF0000"+ID2S_naji(GetItemTypeId(GetOrderTargetItem()))+"|cffFFFF00"+Sdummy_naji[2]+"|r")
            endif
        else
            call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF80C0发布了|cffFFFF00"+Sdummy_naji[0]+"|cffFF0000（"+I2S(GetIssuedOrderId())+"）"+"|cff00FFFF目标为|cffFFFF00"+GetDestructableName(GetOrderTargetDestructable())+"|cffFF0000"+ID2S_naji(GetDestructableTypeId(GetOrderTargetDestructable()))+"|cffFFFF00"+Sdummy_naji[2]+"|r")
        endif
    else
        if Bpn_naji then
            set Sdummy_naji[4]=GetPlayerName(GetOwningPlayer(GetOrderTargetUnit()))+"（玩家"+I2S(GetPlayerId(GetOwningPlayer(GetOrderTargetUnit()))+1)+"）"
        else
            set Sdummy_naji[4]=""
        endif
        call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF80C0发布了|cffFFFF00"+Sdummy_naji[0]+"|cffFF0000（"+I2S(GetIssuedOrderId())+"）"+"|cff00FFFF目标为|r"+Sdummy_naji[4]+"|cffFFFF00"+GetUnitName(GetOrderTargetUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetOrderTargetUnit()))+"|cffFFFF00"+Sdummy_naji[2]+"|r")
    endif
endfunction
function TestA16_naji takes nothing returns nothing
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
    if FirstOfGroup(g_naji)!=null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji==null
            call GroupRemoveUnit(g_naji,u_naji)
            call RemoveUnit(u_naji)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00删除|cffFF0000玩家选择的所有单位|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA15_naji takes nothing returns nothing
    local real r_naji=S2R(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
    if GetLocalPlayer()==GetTriggerPlayer() then
        if r_naji>0 then
            call SetCameraField(CAMERA_FIELD_TARGET_DISTANCE,r_naji,0)
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000玩家当前镜头的镜头距离为|cffFFFF00"+R2S(r_naji)+"|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000数值错误！|cffFFFF00请输入|cffFF0000大于0|cffFFFF00的实数|r")
        endif
    endif
endfunction
function TestA14_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
    local group g_naji
    local unit u_naji
    if i_naji>=0 then
        set g_naji=CreateGroup()
        call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
        if FirstOfGroup(g_naji)!=null then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji==null
                call GroupRemoveUnit(g_naji,u_naji)
                call SetUnitAnimationByIndex(u_naji,i_naji)
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000播放玩家选择的所有单位的第|cffFFFF00"+I2S(i_naji)+"|cffFF0000号动作|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
        endif
        call DestroyGroup(g_naji)
        set g_naji=null
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入数值错误！请输入|cffFFFF00大于0|cffFF0000的数值|r")
    endif
endfunction
function TestA13_naji takes nothing returns nothing
    if Bfog_naji then
        call FogEnable(false)
        call FogMaskEnable(false)
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000关闭|cffFFFF00阴影及战争迷雾|r")
        set Bfog_naji=false
    else
        call FogEnable(true)
        call FogMaskEnable(true)
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000开启|cffFFFF00阴影及战争迷雾|r")
        set Bfog_naji=true
    endif
endfunction
function TestA12_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
    local group g_naji
    local unit u_naji
    if i_naji>=1 then
        set g_naji=CreateGroup()
        call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
        if FirstOfGroup(g_naji)!=null then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji==null
                call GroupRemoveUnit(g_naji,u_naji)
                if IsUnitType(u_naji,UNIT_TYPE_HERO) then
                    if GetUnitLevel(u_naji)<=i_naji then
                        call SetHeroLevel(u_naji,i_naji,true)
                    else
                        call UnitStripHeroLevel(u_naji,GetUnitLevel(u_naji)-i_naji)
                    endif
                endif
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000将玩家选择的所有英雄等级设置为|cffFFFF00"+I2S(i_naji)+"|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
        endif
        call DestroyGroup(g_naji)
        set g_naji=null
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入数值错误！请输入|cffFFFF00大于1|cffFF0000的数值|r")
    endif
endfunction
function TestA11_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
    local integer z_naji=StringLength(GetEventPlayerChatString())-1
    loop
        set Sdummy_naji[1]=SubString(GetEventPlayerChatString(),z_naji,z_naji+1)
        if Sdummy_naji[1]=="," then
            set z_naji=S2I(SubString(GetEventPlayerChatString(),z_naji+1,StringLength(GetEventPlayerChatString())))
            exitwhen true
        endif
        set z_naji=z_naji-1
        if z_naji<=0 then
            set z_naji=GetPlayerId(GetTriggerPlayer())+1
            exitwhen true
        endif
    endloop
    if z_naji<=0 or z_naji>=17 then
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000第二参数输入错误！请输入|cffFFFF001~16|cffFF0000间的整数|r")
        return
    endif
    call SetPlayerState(Player(z_naji-1),PLAYER_STATE_RESOURCE_LUMBER,GetPlayerState(Player(z_naji-1),PLAYER_STATE_RESOURCE_LUMBER)+i_naji)
    if i_naji>0 then
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000为|cff00FFFF"+GetPlayerName(Player(z_naji-1))+"|cffFF0000增加了|cffFFFF00"+I2S(i_naji)+"|cffFF0000木头|r")
    elseif i_naji<0 then
        set i_naji=i_naji*-1
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000为|cff00FFFF"+GetPlayerName(Player(z_naji-1))+"|cffFF0000减少了|cffFFFF00"+I2S(i_naji)+"|cffFF0000木头|r")
    endif
endfunction
function TestA10_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
    local integer z_naji=StringLength(GetEventPlayerChatString())-1
    loop
        set Sdummy_naji[1]=SubString(GetEventPlayerChatString(),z_naji,z_naji+1)
        if Sdummy_naji[1]=="," then
            set z_naji=S2I(SubString(GetEventPlayerChatString(),z_naji+1,StringLength(GetEventPlayerChatString())))
            exitwhen true
        endif
        set z_naji=z_naji-1
        if z_naji<=0 then
            set z_naji=GetPlayerId(GetTriggerPlayer())+1
            exitwhen true
        endif
    endloop
    if z_naji<=0 or z_naji>=17 then
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000第二参数输入错误！请输入|cffFFFF001~16|cffFF0000间的整数|r")
        return
    endif
    call SetPlayerState(Player(z_naji-1),PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(Player(z_naji-1),PLAYER_STATE_RESOURCE_GOLD)+i_naji)
    if i_naji>0 then
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000为|cff00FFFF"+GetPlayerName(Player(z_naji-1))+"|cffFF0000增加了|cffFFFF00"+I2S(i_naji)+"|cffFF0000黄金|r")
    elseif i_naji<0 then
        set i_naji=i_naji*-1
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000为|cff00FFFF"+GetPlayerName(Player(z_naji-1))+"|cffFF0000减少了|cffFFFF00"+I2S(i_naji)+"|cffFF0000黄金|r")
    endif
endfunction
//=========================以下部分1.24以下的版本需删除==============================
function TestA9_naji takes nothing returns nothing
    local location p_naji=Location(0,0)
    set Rhandle_naji=Rhandle_naji+0.1
    if Rhandle_naji>=60 then
        set Sdummy_naji[2]=R2S(Rhandle_naji-I2R(R2I(Rhandle_naji/60))*60)
        if S2R(Sdummy_naji[2])==60 then
            set Sdummy_naji[2]="0.0"
        else
            set Sdummy_naji[2]=SubString(" "+Sdummy_naji[2],1,StringLength(Sdummy_naji[2])-1)
        endif
        set Sdummy_naji[1]=" "+R2S(Rhandle_naji/60)
        set Sdummy_naji[1]=SubString(Sdummy_naji[1],1,StringLength(Sdummy_naji[1])-4)+"分"+Sdummy_naji[2]+"秒"
    else
        set Sdummy_naji[1]=" "+R2S(Rhandle_naji)
        set Sdummy_naji[1]=SubString(Sdummy_naji[1],1,StringLength(Sdummy_naji[1])-2)+"秒"
    endif
    call DisplayTextToPlayer(Ptest_naji,0,0,"|cffFFFF00基准值：|r"+I2S(Ihandle_naji)+"|cffFFFF00——当前值：|r"+I2S(GetHandleId(p_naji))+"|cffFFFF00——差值：|r"+I2S(GetHandleId(p_naji)-Ihandle_naji)+"|cffFFFF00——开启时间：|r"+Sdummy_naji[1])
    call RemoveLocation(p_naji)
    set p_naji=null
endfunction
//=========================以上部分1.24以下的版本需删除==============================
function TestA7_naji takes nothing returns nothing
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
    if FirstOfGroup(g_naji)!=null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji==null
            call GroupRemoveUnit(g_naji,u_naji)
            call SetUnitState(u_naji,UNIT_STATE_LIFE,GetUnitState(u_naji,UNIT_STATE_MAX_LIFE))
            call SetUnitState(u_naji,UNIT_STATE_MANA,GetUnitState(u_naji,UNIT_STATE_MAX_MANA))
            call UnitResetCooldown(u_naji)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000恢复了所有玩家选择单位的|cffFFFF00生命/魔法/冷却|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA6_naji takes nothing returns nothing
    local timer t_naji=GetExpiredTimer()
    local unit u_naji
    loop
        set u_naji=FirstOfGroup(Gcd_naji[0])
        exitwhen u_naji==null
        call GroupRemoveUnit(Gcd_naji[0],u_naji)
        call SetUnitState(u_naji,UNIT_STATE_MANA,GetUnitState(u_naji,UNIT_STATE_MAX_MANA))
        call UnitResetCooldown(u_naji)
    endloop
    call DestroyTimer(t_naji)
    set t_naji=null
    set u_naji=null
endfunction
function TestA5_naji takes nothing returns nothing
    local timer t_naji
    if IsUnitInGroup(GetTriggerUnit(),Gcd_naji[1]) then
        set t_naji=CreateTimer()
        call GroupAddUnit(Gcd_naji[0],GetTriggerUnit())
        call TimerStart(t_naji,0,false,function TestA6_naji)
        set t_naji=null
    endif
endfunction
function TestA3_naji takes nothing returns nothing
    local location p_naji
    if Bpn_naji then
        set Sdummy_naji[3]=GetPlayerName(GetTriggerPlayer())+"（玩家"+I2S(GetPlayerId(GetTriggerPlayer())+1)+"）"
    else
        set Sdummy_naji[3]=""
    endif
    if GetSpellTargetUnit()==null then
        if GetSpellTargetDestructable()==null then
            if GetSpellTargetItem()==null then
                set p_naji=GetSpellTargetLoc()
                if p_naji==null then
                    call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF8000施放了|cffFFFF00"+GetObjectName(GetSpellAbilityId())+"|cffFF0000"+ID2S_naji(GetSpellAbilityId())+"|r")
                else
                    call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF8000施放了|cffFFFF00"+GetObjectName(GetSpellAbilityId())+"|cffFF0000"+ID2S_naji(GetSpellAbilityId())+"|cff00FFFF目标点为|cffFFFF00"+"（"+R2S(GetLocationX(p_naji))+","+R2S(GetLocationY(p_naji))+"）|r")
                endif
                call RemoveLocation(p_naji)
                set p_naji=null
            else
                if Bxy_naji then
                    set Sdummy_naji[1]="（"+R2S(GetUnitX(GetTriggerUnit()))+","+R2S(GetUnitY(GetTriggerUnit()))+"）"
                    set Sdummy_naji[2]="（"+R2S(GetWidgetX(GetSpellTargetItem()))+","+R2S(GetWidgetY(GetSpellTargetItem()))+"）"
                else
                    set Sdummy_naji[1]=""
                    set Sdummy_naji[2]=""
                endif
                call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF8000施放了|cffFFFF00"+GetObjectName(GetSpellAbilityId())+"|cffFF0000"+ID2S_naji(GetSpellAbilityId())+"|cff00FFFF目标为|cffFFFF00"+GetItemName(GetSpellTargetItem())+"|cffFF0000"+ID2S_naji(GetItemTypeId(GetSpellTargetItem()))+"|cffFFFF00"+Sdummy_naji[2]+"|r")
            endif
        else
            if Bxy_naji then
                set Sdummy_naji[1]="（"+R2S(GetUnitX(GetTriggerUnit()))+","+R2S(GetUnitY(GetTriggerUnit()))+"）"
                set Sdummy_naji[2]="（"+R2S(GetWidgetX(GetSpellTargetDestructable()))+","+R2S(GetWidgetY(GetSpellTargetDestructable()))+"）"
            else
                set Sdummy_naji[1]=""
                set Sdummy_naji[2]=""
            endif
            call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF8000施放了|cffFFFF00"+GetObjectName(GetSpellAbilityId())+"|cffFF0000"+ID2S_naji(GetSpellAbilityId())+"|cff00FFFF目标为|cffFFFF00"+GetDestructableName(GetSpellTargetDestructable())+"|cffFF0000"+ID2S_naji(GetDestructableTypeId(GetSpellTargetDestructable()))+"|cffFFFF00"+Sdummy_naji[2]+"|r")
        endif
    else
        if Bpn_naji then
            set Sdummy_naji[4]=GetPlayerName(GetOwningPlayer(GetSpellTargetUnit()))+"（玩家"+I2S(GetPlayerId(GetOwningPlayer(GetSpellTargetUnit()))+1)+"）"
        else
            set Sdummy_naji[4]=""
        endif
        if Bxy_naji then
            set Sdummy_naji[1]="（"+R2S(GetUnitX(GetTriggerUnit()))+","+R2S(GetUnitY(GetTriggerUnit()))+"）"
            set Sdummy_naji[2]="（"+R2S(GetWidgetX(GetSpellTargetUnit()))+","+R2S(GetWidgetY(GetSpellTargetUnit()))+"）"
        else
            set Sdummy_naji[1]=""
            set Sdummy_naji[2]=""
        endif
        call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF8000施放了|cffFFFF00"+GetObjectName(GetSpellAbilityId())+"|cffFF0000"+ID2S_naji(GetSpellAbilityId())+"|cff00FFFF目标为|r"+Sdummy_naji[4]+"|cffFFFF00"+GetUnitName(GetSpellTargetUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetSpellTargetUnit()))+"|cffFFFF00"+Sdummy_naji[2]+"|r")
    endif
endfunction
function TestA8_naji takes nothing returns nothing
    if GetClickedButton()!=Button_naji[0] and GetClickedButton()!=Button_naji[100] then
        if GetClickedButton()==Button_naji[1] then
            if Bxy_naji then
                set Bxy_naji=false
            else
                set Bxy_naji=true
            endif
        elseif GetClickedButton()==Button_naji[2] then
            if Bid_naji then
                set Bid_naji=false
            else
                set Bid_naji=true
            endif
        elseif GetClickedButton()==Button_naji[3] then
            if Bpn_naji then
                set Bpn_naji=false
            else
                set Bpn_naji=true
            endif
        elseif GetClickedButton()==Button_naji[4] then
            if Bir_naji then
                set Bir_naji=false
            else
                set Bir_naji=true
            endif
        elseif GetClickedButton()==Button_naji[5] then
            if Bddm_naji then
                set Bddm_naji=false
            else
                set Bddm_naji=true
            endif
        endif
        call DialogResetA2_naji()
        call DialogDisplay(GetTriggerPlayer(),Dnaji_naji[1],true)
    elseif GetClickedButton()==Button_naji[0] then
        call DialogResetA_naji()
        call DialogDisplay(GetTriggerPlayer(),Dnaji_naji[0],true)
    endif
endfunction
function TestA4_naji takes nothing returns nothing
    local location p_naji
    local group g_naji
    local integer i_naji
    local unit u_naji
    if GetClickedButton()!=Button_naji[0] and GetClickedButton()!=Button_naji[100] then
        if GetClickedButton()==Button_naji[1] then
            if IsTriggerEnabled(Ttest_naji[2]) then
                call DisableTrigger(Ttest_naji[2])
            else
                call EnableTrigger(Ttest_naji[2])
            endif
        elseif GetClickedButton()==Button_naji[2] then
            if IsTriggerEnabled(Ttest_naji[15]) then
                call DisableTrigger(Ttest_naji[15])
            else
                call EnableTrigger(Ttest_naji[15])
            endif
        elseif GetClickedButton()==Button_naji[3] then
            if IsTriggerEnabled(Ttest_naji[17]) then
                call DisableTrigger(Ttest_naji[17])
            else
                call EnableTrigger(Ttest_naji[17])
            endif
        elseif GetClickedButton()==Button_naji[4] then
            if IsTriggerEnabled(Ttest_naji[26]) then
                call DestroyTrigger(Ttest_naji[0])
                call DisableTrigger(Ttest_naji[26])
                set Rdummy_naji=0
            else
                set Ttest_naji[0]=CreateTrigger()
                call TriggerAddCondition(Ttest_naji[0],Condition(function TestA29_naji))
                call EnableTrigger(Ttest_naji[26])
                set g_naji=CreateGroup()
                set i_naji=0
                loop
                    call GroupEnumUnitsOfPlayer(g_naji,Player(i_naji),null)
                    loop
                        set u_naji=FirstOfGroup(g_naji)
                        exitwhen u_naji==null
                        call GroupRemoveUnit(g_naji,u_naji)
                        if GetUnitAbilityLevel(u_naji,'Aloc')==0 then
                            call TriggerRegisterUnitEvent(Ttest_naji[0],u_naji,EVENT_UNIT_DAMAGED)
                        endif
                    endloop
                    set i_naji=i_naji+1
                    exitwhen i_naji>=16
                endloop
                set Rdummy_naji=0
                call DestroyGroup(g_naji)
                set g_naji=null
            endif
        elseif GetClickedButton()==Button_naji[5] then
            if IsTriggerEnabled(Ttest_naji[4]) then
                call DestroyGroup(Gcd_naji[1])
                call DisableTrigger(Ttest_naji[4])
            else
                set Gcd_naji[1]=CreateGroup()
                call EnableTrigger(Ttest_naji[4])
            endif
    //=========================以下部分1.24以下的版本需删除==============================
        elseif GetClickedButton()==Button_naji[6] then
            if IsTriggerEnabled(Ttest_naji[7]) then
                call DisableTrigger(Ttest_naji[7])
            else
                call EnableTrigger(Ttest_naji[7])
                set Ihandle_naji=0
                set Rhandle_naji=0
                set p_naji=Location(0,0)
                set Ihandle_naji=GetHandleId(p_naji)
                call EnableTrigger(Ttest_naji[7])
                call RemoveLocation(p_naji)
                set p_naji=null
            endif
    //=========================以上部分1.24以下的版本需删除==============================
        elseif GetClickedButton()==Button_naji[7] then
            if IsTriggerEnabled(Ttest_naji[61]) then
                call DisableTrigger(Ttest_naji[61])
            else
                call EnableTrigger(Ttest_naji[61])
            endif
        elseif GetClickedButton()==Button_naji[8] then
            if IsTriggerEnabled(Ttest_naji[71]) then
                call DestroyGroup(Gms_naji)
                call DisableTrigger(Ttest_naji[71])
            else
                set Gms_naji=CreateGroup()
                call EnableTrigger(Ttest_naji[71])
            endif
        endif
        call DialogResetA_naji()
        call DialogDisplay(GetTriggerPlayer(),Dnaji_naji[0],true)
    elseif GetClickedButton()==Button_naji[0] then
        call DialogResetA2_naji()
        call DialogDisplay(GetTriggerPlayer(),Dnaji_naji[1],true)
    endif
endfunction
function TestA2_naji takes nothing returns nothing
    call DialogResetA_naji()
    call DialogDisplay(GetTriggerPlayer(),Dnaji_naji[0],true)
endfunction
//=====================================#功能函数结束=====================================
//=====================================$初始化函数开始=====================================
function TestA_naji takes nothing returns nothing
    local integer i_naji
    local integer row_naji=2769
    set Sdummy_naji[1]="2013/11/04"
    call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,30,"|cff00FF00===============*****===============|r")
    call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,30,"|cffFF8000         开始初始化|cff00FFFFnajitest|cffFF8000测试代码|r")
    call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,30,"|cffFF80C0                代码版本：|cffFF0000V2.4|r")
    call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,30,"|cff00FF00              更新日期：|cffFF0000"+Sdummy_naji[1]+"|r")
    call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,30,"|cffFFFF00       需要查看所有可用代码请按下|cffFF0000F9|r")
    call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,30,"|cffFFFF00     任意玩家输入|cffFF0000'remove|cffFFFF00可清除该系统|r")
    call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,30,"|cff00FF00===============*****===============|r")
    set Ptest_naji=GetTriggerPlayer()
    set StringList_naji=".................................!.#$%&'()*+,-./0123456789:;<=>.@ABCDEFGHIJKLMNOPQRSTUVWXYZ[.]^_`abcdefghijklmnopqrstuvwxyz{|}~................................................................................................................................"
    set Rworld_naji=CreateRegion()
    call RegionAddRect(Rworld_naji,GetWorldBounds())
    set Itrigger_naji=0
    loop
        set Itrigger_naji=Itrigger_naji+1
        set Ttest_naji[Itrigger_naji]=CreateTrigger()
        exitwhen Itrigger_naji>=77
    endloop
    set Iquest_naji=0
    loop
        set Iquest_naji=Iquest_naji+1
        set Q_naji[Iquest_naji]=CreateQuest()
        call QuestSetIconPath(Q_naji[Iquest_naji],"Buildings\\Other\\TempArtB\\BTNTempB.blp")
        call QuestSetRequired(Q_naji[Iquest_naji],false)
        call QuestSetDiscovered(Q_naji[Iquest_naji],true)
        call QuestSetCompleted(Q_naji[Iquest_naji],false)
        exitwhen Iquest_naji>=13
    endloop
    set i_naji=61
    call QuestSetTitle(Q_naji[1],"|cffFF0000najitest帮助信息")
    call QuestSetDescription(Q_naji[1],"|cff00FFFF注意：|r|n|cff00FFFF1、|cffFF0000*|cffFFFF00代表需要输入|cffFF80C0数字/文字，且其数量代表要输入多少个参数，参数之间用英文逗号隔开。多参数命令的第1参数必需输入，其它参数若空缺则系统会自动填补|r|n|cff00FFFF2、|cffFF0000(s)|cffFFFF00代表该代码功能可以同时作用|cffFF80C0玩家选择的所有单位|r|n|cff00FFFF3、|cffFFFF00很多功能都可以通过|cffFF80C0反复输入代码|cffFFFF00来切换|cffFF0000开/关|r|n|cff00FFFF4、|cffFFFF00为保持稳定，判定|cffFF80C0玩家选择单位|cffFFFF00没有同步系统数据，请确保在使用相关代码前|cffFF0000重新框选|cffFFFF00合适的单位|r|n|cff00FFFF5、|cffFFFF00大部分功能支持|cffFF0000负数|cffFFFF00，不支持负数的功能输入负值会|cffFF80C0还原默认设定|r|n|cff00FFFF6、|cffFFFF00使用者可以在任何时候|cffFF0000按下Esc|cffFFFF00重新获得用户控制权及关闭电影模式|r")
    call QuestSetTitle(Q_naji[2],"|cffFF0000独立系统")
    call QuestSetDescription(Q_naji[2],"|cffFFFF00'feini|cffFF0000(|rnajitest system|cffFF0000)|r|cffFFFF00'gms|cffFF0000(|r(Group Multiple Spell)|cffFF0000)|r|cffFFFF00'gcd|cffFF0000(|r(Group Cool Down)|cffFF0000)|r|n|n|cff00FFFF该系统包含众多测试功能，输入后会打开一个对话框")
    call QuestSetTitle(Q_naji[3],"|cffFF0000单位-英雄（必须选择英雄）")
    call QuestSetDescription(Q_naji[3],"|cffFFFF00'hl*|cffFF0000(|rset Hero(s) Level|cffFF0000)|r|cffFFFF00'hp*|cffFF0000(|radd Hero(s) skill Point|cffFF0000)|r|cffFFFF00'hs*|cffFF0000(|rset Hero(s) Str|cffFF0000)|r|cffFFFF00'ha*|cffFF0000(|rset Hero(s) Agi|cffFF0000)|r|cffFFFF00'hi*|cffFF0000(|rset Hero(s) Int|cffFF0000)|r")
    call QuestSetTitle(Q_naji[4],"|cffFF0000单位-数值（必须选择单位）")
    call QuestSetDescription(Q_naji[4],"|cffFFFF00'uts*|cffFF0000(|rUnit(s) Time Scale|cffFF0000)|r|cffFFFF00'uic**|cffFF0000(|rset Unit's Item Charge|cffFF0000)|r|cffFFFF00'um*|cffFF0000(|rset Unit(s) Move speed|cffFF0000)|r|cffFFFF00'uus*|cffFF0000(|rset Unit(s) tUrn Speed|cffFF0000)|r|cffFFFF00'uar*|cffFF0000(|rset Unit(s) Acquire Range|cffFF0000)|r|cffFFFF00'ufh*|cffFF0000(|rset Unit(s) Fly Height|cffFF0000)|r|cffFFFF00'ud*|cffFF0000(|rset Unit(s) user Data|cffFF0000)|r|cffFFFF00'us*|cffFF0000(|rset Unit(s) Scale|cffFF0000)|r|cffFFFF00'uvc****|cffFF0000(|rset Unit(s) Vertax Color|cffFF0000)|r|cffFFFF00'uxy**|cffFF0000(|rset Unit(s) XY|cffFF0000)|r")
    call QuestSetTitle(Q_naji[5],"|cffFF0000单位-状态（必须选择单位）")
    call QuestSetDescription(Q_naji[5],"|cffFFFF00'uh|cffFF0000(|rUnit(s) Healing|cffFF0000)|r|cffFFFF00'up|cffFF0000(|rUnit(s) Pause|cffFF0000)|r|cffFFFF00'ub|cffFF0000(|rUnit(s) Buff clear|cffFF0000)|r|cffFFFF00'uw|cffFF0000(|rUnit(s) Windwalk|cffFF0000)|r")
    call QuestSetTitle(Q_naji[6],"|cffFF0000单位-特殊（必须选择单位）")
    call QuestSetDescription(Q_naji[6],"|cffFFFF00'ua*|cffFF0000(|rplay Unit(s) Animation by index|cffFF0000)|r|cffFFFF00'ui|cffFF0000(|rUnit Information|cffFF0000)|r|cffFFFF00'uo*|cffFF0000(|rset Unit(s) Owner|cffFF0000)|r|cffFFFF00'uk|cffFF0000(|rUnit(s) Killed|cffFF0000)|r|cffFFFF00'co**|cffFF0000(|rCreate Object|cffFF0000)|r|cffFFFF00'ul|cffFF0000(|rUnit camera Lock|cffFF0000)|r|cffFFFF00'ur|cffFF0000(|rUnit(s) Remove|cffFF0000)|r|cffFFFF00'uii*|cffFF0000(|rUnit's Item Information|cffFF0000)|r")
    call QuestSetTitle(Q_naji[7],"|cffFF0000玩家相关")
    call QuestSetDescription(Q_naji[7],"|cffFFFF00'ag**/al**|cffFF0000(|rAdd Gold/Lumber|cffFF0000)|r|cffFFFF00'pc**|cffFF0000(|rPlayer Control|cffFF0000)|r|cffFFFF00'pa**|cffFF0000(|rset Player Alliance|cffFF0000)|r|cffFFFF00'pk*|cffFF0000(|rPlayer Kicked|cffFF0000)|r|cffFFFF00'ph**|cffFF0000(|rset Player Handicap|cffFF0000)|r|cffFFFF00'pn*|cffFF0000(|rPlayer Name|cffFF0000)|r|cffFFFF00'pt***|cffFF0000(|rPlayer Tech|cffFF0000)|r|cffFFFF00'psl|cffFF0000(|rPlayer Statistics List|cffFF0000)|r")
    call QuestSetTitle(Q_naji[8],"|cffFF0000镜头相关")
    call QuestSetDescription(Q_naji[8],"|cffFFFF00'cm|cffFF0000(|rCamera Mode|cffFF0000)|r|cffFFFF00'cd*|cffFF0000(|rCamera Distance|cffFF0000)|r|cffFFFF00'cr|cffFF0000(|rCamera Reset|cffFF0000)|r|cffFFFF00'ci|cffFF0000(|rCamera Information|cffFF0000)|r|cffFFFF00'cz*|cffFF0000(|rset Camera farZ|cffFF0000)|r")
    call QuestSetTitle(Q_naji[9],"|cffFF0000其它")
    call QuestSetDescription(Q_naji[9],"|cffFFFF00'fog|cffFF0000(|rFog|cffFF0000)|r|cffFFFF00'sc|cffFF0000(|rScreen Clear|cffFF0000)|r|cffFFFF00'rd|cffFF0000(|rRoll Dice|cffFF0000)|r|cffFFFF00'bm*|cffFF0000(|rBackup Message|cffFF0000)|r|cffFFFF00'cbm|cffFF0000(|rClear Backup Message|cffFF0000)|r|cffFFFF00'td*|cffFF0000(|rset Time of Day|cffFF0000)|r|cffFFFF00'ts*|cffFF0000(|rset Time of day Scale|cffFF0000)|r|cffFFFF00'we*|cffFF0000(|rWeather Effect|cffFF0000)|r|cffFFFF00'se*|cffFF0000(|rSystem Exchange|cffFF0000)|r|cffFFFF00'ef*|cffFF0000(|rExecute Function|cffFF0000)|r")
    call QuestSetTitle(Q_naji[10],"|cffFF0000游戏设置")
    call QuestSetDescription(Q_naji[10],"|cffFFFF00'mv*|cffFF0000(|rMusic Volume|cffFF0000)|r|cffFFFF00'sv*|cffFF0000(|rSound Volume|cffFF0000)|r|cffFFFF00'pg|cffFF0000(|rPause Game|cffFF0000)|r|cffFFFF00'rs*|cffFF0000(|rset Random Seed|cffFF0000)|r|cffFFFF00'gg|cffFF0000(|rGood Game|cffFF0000)|r|cffFFFF00'gs*|cffFF0000(|rset Game Speed|cffFF0000)|r|cffFFFF00'mf|cffFF0000(|rset Map Flag|cffFF0000)|r|cffFFFF00're|cffFF0000(|rRestart|cffFF0000)|r")
    call QuestSetTitle(Q_naji[11],"|cffFF0000co命令帮助信息")
    call QuestSetDescription(Q_naji[11],"|cffFF0000co命令可以创建单位、物品、可破坏物、添加删除技能、设置技能等级、删除buff。输入格式为'co+id+,+数值，数值对应创建物体的数量或技能等级，当没有输入数值时，默认为1。当单位已经拥有该技能，带有数值的'co命令会改变等级，不带数值的则会删除技能。|n|n|cffFFFF00Amov|cffFF0000(|r移动|cffFF0000)|r|cffFFFF00Abun|cffFF0000(|r货物保持|cffFF0000)|r|cffFFFF00Avul|cffFF0000(|r无敌|cffFF0000)|r|cffFFFF00AInv|cffFF0000(|r英雄物品栏|cffFF0000)|r|cffFFFF00ARal|cffFF0000(|r集结|cffFF0000)|r|cffFFFF00Arng|cffFF0000(|r复仇|cffFF0000)|r|cffFFFF00Awan|cffFF0000(|r游荡者|cffFF0000)|r|cffFFFF00Ane2|cffFF0000(|r选择单位|cffFF0000)|r|cffFFFF00Apiv|cffFF0000(|r永久隐形|cffFF0000)|r|cffFFFF00Adtg|cffFF0000(|r真实视域|cffFF0000)|r|cffFFFF00Aeth|cffFF0000(|r可见幽灵|cffFF0000)|r|cffFFFF00Arsk|cffFF0000(|r抗性皮肤|cffFF0000)|r|cffFFFF00Acmi|cffFF0000(|r魔法免疫|cffFF0000)|r")
    call QuestSetTitle(Q_naji[12],"|cffFF0000we命令帮助信息")
    call QuestSetDescription(Q_naji[12],"|cffFF0000注意乱输4位ID会游戏崩溃！输入的ID未满4位时会清除所有已创建的全图天气。|r|n|n|cffFFFF00RA(h/l)r|cffFF0000(|r白杨谷(大/小)雨|cffFF0000)|r|cffFFFF00MEds|cffFF0000(|r达拉然之盾|cffFF0000)|r|cffFFFF00FD(b/g/r/w)(h/l)|cffFF0000(|r地下城(蓝/绿/红/白)(浓/薄)雾|cffFF0000)|r|cffFFFF00RL(h/l)r|cffFF0000(|r洛丹伦(大/小)雨|cffFF0000)|r|cffFFFF00SN(b/h/l)s|cffFF0000(|r诺森德(暴/大/小)雪|cffFF0000)|r|cffFFFF00WO(c/l)w|cffFF0000(|r边缘之地(大/小)风|cffFF0000)|r|cffFFFF00Lr(a/m)a|cffFF0000(|r(日/月)光|cffFF0000)|r|cffFFFF00WNcw|cffFF0000(|r大风|cffFF0000)|r")
    call QuestSetTitle(Q_naji[13],"|cffFF0000najitest基本信息")
    call QuestSetDescription(Q_naji[13],"|cffFFFF00脚本作者：|cffFF0000najizhimo|r"+"|n|cffFFFF00当前使用者：|cffFF0000"+GetPlayerName(Ptest_naji)+"|r"+"|n|cffFFFF00更新日期：|cffFF0000"+Sdummy_naji[1]+"|n|cffFFFF00可用代码数量：|cffFF0000"+I2S(i_naji)+"|r"+"|n|cffFFFF00注册触发数量：|cffFF0000"+I2S(Itrigger_naji)+"|r"+"|n|cffFFFF00创建任务数量：|cffFF0000"+I2S(Iquest_naji)+"|r"+"|n|cffFFFF00脚本行数：|cffFF0000"+I2S(row_naji)+"|n|cffFFFF00对此系统有任何提议请到|cffFF80C0百度魔兽地图编辑器贴吧|cffFFFF00发贴|r"+"|n|cffFFFF00任意玩家输入|cffFF0000'remove|cffFFFF00可清除该系统|r")
    call FlashQuestDialogButton()
    //=========================naji system开始==============================
        //'feini(najitest system)
    set Dnaji_naji[0]=DialogCreate()
    call TriggerRegisterPlayerChatEvent(Ttest_naji[1],GetTriggerPlayer(),"'feini",true)
    call TriggerAddCondition(Ttest_naji[1],Condition(function TestA2_naji))
    call TriggerRegisterDialogEvent(Ttest_naji[3],Dnaji_naji[0])
    call TriggerAddCondition(Ttest_naji[3],Condition(function TestA4_naji))
        //Display Ability
    set i_naji=0
    loop
        call TriggerRegisterPlayerUnitEvent(Ttest_naji[2],Player(i_naji),EVENT_PLAYER_UNIT_SPELL_EFFECT,null)
        set i_naji=i_naji+1
        exitwhen i_naji>=16
    endloop
    call TriggerAddCondition(Ttest_naji[2],Condition(function TestA3_naji))
    call DisableTrigger(Ttest_naji[2])
        //Display Order
    set i_naji=0
    loop
        call TriggerRegisterPlayerUnitEvent(Ttest_naji[15],Player(i_naji),EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER,null)
        call TriggerRegisterPlayerUnitEvent(Ttest_naji[15],Player(i_naji),EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER,null)
        call TriggerRegisterPlayerUnitEvent(Ttest_naji[15],Player(i_naji),EVENT_PLAYER_UNIT_ISSUED_ORDER,null)
        set i_naji=i_naji+1
        exitwhen i_naji>=16
    endloop
    call TriggerAddCondition(Ttest_naji[15],Condition(function TestA17_naji))
    call DisableTrigger(Ttest_naji[15])
        //Display Life
    call TriggerRegisterEnterRegion(Ttest_naji[17],Rworld_naji,null)
    set i_naji=0
    loop
        call TriggerRegisterPlayerUnitEvent(Ttest_naji[17],Player(i_naji),EVENT_PLAYER_UNIT_DEATH,null)
        set i_naji=i_naji+1
        exitwhen i_naji>=16
    endloop
    call TriggerAddCondition(Ttest_naji[17],Condition(function TestA19_naji))
    call DisableTrigger(Ttest_naji[17])
        //Display Damage
    call TriggerRegisterEnterRegion(Ttest_naji[26],Rworld_naji,null)
    call TriggerAddCondition(Ttest_naji[26],Condition(function TestA28_naji))
    call DisableTrigger(Ttest_naji[26])
        //No cd mana Cost
    set i_naji=0
    loop
        call TriggerRegisterPlayerUnitEvent(Ttest_naji[4],Player(i_naji),EVENT_PLAYER_UNIT_SPELL_EFFECT,null)
        set i_naji=i_naji+1
        exitwhen i_naji>=16
    endloop
    call TriggerAddCondition(Ttest_naji[4],Condition(function TestA5_naji))
    call DisableTrigger(Ttest_naji[4])
    set Gcd_naji[0]=CreateGroup()
    set Gcd_naji[1]=null
    //=========================以下部分1.24以下的版本需删除==============================
        //Display Handle
    call TriggerRegisterTimerEvent(Ttest_naji[7],0.1,true)
    call TriggerAddCondition(Ttest_naji[7],Condition(function TestA9_naji))
    call DisableTrigger(Ttest_naji[7])
    //=========================以上部分1.24以下的版本需删除==============================
        //Observer
    set i_naji=0
    loop
        call TriggerRegisterPlayerChatEvent(Ttest_naji[61],Player(i_naji),"",false)
        set i_naji=i_naji+1
        exitwhen i_naji>=16
    endloop
    call DisableTrigger(Ttest_naji[61])
    call TriggerAddCondition(Ttest_naji[61],Condition(function TestA66_naji))
        //Multiple Spell
    set i_naji=0
    loop
        call TriggerRegisterPlayerUnitEvent(Ttest_naji[71],Player(i_naji),EVENT_PLAYER_UNIT_SPELL_EFFECT,null)
        set i_naji=i_naji+1
        exitwhen i_naji>=16
    endloop
    call TriggerAddCondition(Ttest_naji[71],Condition(function TestA76_naji))
    call DisableTrigger(Ttest_naji[71])
    set Gms_naji=null
        //系统信息调整
    set Dnaji_naji[1]=DialogCreate()
    call TriggerRegisterDialogEvent(Ttest_naji[6],Dnaji_naji[1])
    call TriggerAddCondition(Ttest_naji[6],Condition(function TestA8_naji))
            //whether display widget XY
    set Bxy_naji=true
            //whether display widget ID
    set Bid_naji=true
            //whether display Player Name
    set Bpn_naji=false
            //whether display Int or Real
    set Bir_naji=true
            //change Display Damage Mode
    set Bddm_naji=false
    //=========================naji system结束==============================
    //’uh(Unit(s) Healing)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[5],GetTriggerPlayer(),"'uh",true)
    call TriggerAddCondition(Ttest_naji[5],Condition(function TestA7_naji))
    //’ag**/al**(Add Gold/Lumber)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[8],GetTriggerPlayer(),"'ag",false)
    call TriggerAddCondition(Ttest_naji[8],Condition(function TestA10_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[9],GetTriggerPlayer(),"'al",false)
    call TriggerAddCondition(Ttest_naji[9],Condition(function TestA11_naji))
    //’hl*(set Hero(s) Level)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[10],GetTriggerPlayer(),"'hl",false)
    call TriggerAddCondition(Ttest_naji[10],Condition(function TestA12_naji))
    //’fog(Fog)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[11],GetTriggerPlayer(),"'fog",true)
    call TriggerAddCondition(Ttest_naji[11],Condition(function TestA13_naji))
    if IsMapFlagSet(MAP_FOG_ALWAYS_VISIBLE) then
        set Bfog_naji=false
    else
        set Bfog_naji=true
    endif
    //’ua*(play Unit(s) Animation by index)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[12],GetTriggerPlayer(),"'ua",false)
    call TriggerAddCondition(Ttest_naji[12],Condition(function TestA14_naji))
    //’cd(Camera Distance)
    set i_naji=0
    loop
        call TriggerRegisterPlayerChatEvent(Ttest_naji[13],Player(i_naji),"'cd",false)
        set i_naji=i_naji+1
        exitwhen i_naji>=16
    endloop
    call TriggerAddCondition(Ttest_naji[13],Condition(function TestA15_naji))
    //'ur(Unit(s) Remove)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[14],GetTriggerPlayer(),"'ur",true)
    call TriggerAddCondition(Ttest_naji[14],Condition(function TestA16_naji))
    //'pn(Player Name)
    set i_naji=0
    loop
        call TriggerRegisterPlayerChatEvent(Ttest_naji[16],Player(i_naji),"'pn",false)
        set i_naji=i_naji+1
        exitwhen i_naji>=16
    endloop
    call TriggerAddCondition(Ttest_naji[16],Condition(function TestA18_naji))
    //'sc(Screen Clear)
    set i_naji=0
    loop
        call TriggerRegisterPlayerChatEvent(Ttest_naji[18],Player(i_naji),"'sc",true)
        set i_naji=i_naji+1
        exitwhen i_naji>=16
    endloop
    call TriggerAddCondition(Ttest_naji[18],Condition(function TestA20_naji))
    //'cr(Camera Reset)
    set i_naji=0
    loop
        call TriggerRegisterPlayerChatEvent(Ttest_naji[19],Player(i_naji),"'cr",true)
        set i_naji=i_naji+1
        exitwhen i_naji>=16
    endloop
    call TriggerAddCondition(Ttest_naji[19],Condition(function TestA21_naji))
    //’ui(Unit Information)
    set i_naji=0
    loop
        call TriggerRegisterPlayerChatEvent(Ttest_naji[20],Player(i_naji),"'ui",true)
        set i_naji=i_naji+1
        exitwhen i_naji>=16
    endloop
    call TriggerAddCondition(Ttest_naji[20],Condition(function TestA22_naji))
    //’pc**(Player Control)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[21],GetTriggerPlayer(),"'pc",false)
    call TriggerAddCondition(Ttest_naji[21],Condition(function TestA23_naji))
    //'uvc****(set Unit(s) Vertex Color)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[22],GetTriggerPlayer(),"'uvc",false)
    call TriggerAddCondition(Ttest_naji[22],Condition(function TestA24_naji))
    //’uts*(Unit(s) Time Scale)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[23],GetTriggerPlayer(),"'uts",false)
    call TriggerAddCondition(Ttest_naji[23],Condition(function TestA25_naji))
    //’pg(Pause Game)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[24],GetTriggerPlayer(),"'pg",true)
    call TriggerAddCondition(Ttest_naji[24],Condition(function TestA26_naji))
    set Bpause_naji=false
    //'psl(Player Statistics List)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[25],GetTriggerPlayer(),"'psl",true)
    call TriggerAddCondition(Ttest_naji[25],Condition(function TestA27_naji))
    //'up(Unit(s) Pause)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[27],GetTriggerPlayer(),"'up",true)
    call TriggerAddCondition(Ttest_naji[27],Condition(function TestA30_naji))
    //'mv*(Music Volume)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[28],GetTriggerPlayer(),"'mv",false)
    call TriggerAddCondition(Ttest_naji[28],Condition(function TestA31_naji))
    //'rd(Roll Dice)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[29],GetTriggerPlayer(),"'rd",true)
    call TriggerAddCondition(Ttest_naji[29],Condition(function TestA32_naji))
    //'sv*(Sound Volume)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[30],GetTriggerPlayer(),"'sv",false)
    call TriggerAddCondition(Ttest_naji[30],Condition(function TestA33_naji))
    //'bm*(Backup Message)
    set i_naji=0
    loop
        call TriggerRegisterPlayerChatEvent(Ttest_naji[31],Player(i_naji),"'bm",false)
        set i_naji=i_naji+1
        exitwhen i_naji>=16
    endloop
    call TriggerAddCondition(Ttest_naji[31],Condition(function TestA34_naji))
    set Ibm_naji=0
    //'cbm(Clear Backup Message)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[32],GetTriggerPlayer(),"'cbm",true)
    call TriggerAddCondition(Ttest_naji[32],Condition(function TestA35_naji))
    //'uic**(set Unit's Item Charge)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[33],GetTriggerPlayer(),"'uic",false)
    call TriggerAddCondition(Ttest_naji[33],Condition(function TestA36_naji))
    //'rs*(set Random Seed)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[34],GetTriggerPlayer(),"'rs",false)
    call TriggerAddCondition(Ttest_naji[34],Condition(function TestA37_naji))
    //'td*(set Time of Day)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[35],GetTriggerPlayer(),"'td",false)
    call TriggerAddCondition(Ttest_naji[35],Condition(function TestA38_naji))
    //'um*(set Unit(s) Move speed)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[36],GetTriggerPlayer(),"'um",false)
    call TriggerAddCondition(Ttest_naji[36],Condition(function TestA39_naji))
    //'uus*(set Unit(s) tUrn Speed)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[37],GetTriggerPlayer(),"'uus",false)
    call TriggerAddCondition(Ttest_naji[37],Condition(function TestA40_naji))
    //'uar*(set Unit(s) Acquire Range)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[38],GetTriggerPlayer(),"'uar",false)
    call TriggerAddCondition(Ttest_naji[38],Condition(function TestA41_naji))
    //'ufh*(set Unit(s) Fly Height)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[39],GetTriggerPlayer(),"'ufh",false)
    call TriggerAddCondition(Ttest_naji[39],Condition(function TestA42_naji))
    //'hp*(add Hero(s) skill Point)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[40],GetTriggerPlayer(),"'hp",false)
    call TriggerAddCondition(Ttest_naji[40],Condition(function TestA43_naji))
    //'hs*(set Hero(s) Str)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[41],GetTriggerPlayer(),"'hs",false)
    call TriggerAddCondition(Ttest_naji[41],Condition(function TestA44_naji))
    //'ha*(set Hero(s) Agi)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[42],GetTriggerPlayer(),"'ha",false)
    call TriggerAddCondition(Ttest_naji[42],Condition(function TestA45_naji))
    //'hi*(set Hero(s) Int)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[43],GetTriggerPlayer(),"'hi",false)
    call TriggerAddCondition(Ttest_naji[43],Condition(function TestA46_naji))
    //'ud*(set Unit(s) user Data)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[44],GetTriggerPlayer(),"'ud",false)
    call TriggerAddCondition(Ttest_naji[44],Condition(function TestA47_naji))
    //'ts*(set Time of day Scale)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[45],GetTriggerPlayer(),"'ts",false)
    call TriggerAddCondition(Ttest_naji[45],Condition(function TestA48_naji))
    //'ph**(set Player Handicap)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[46],GetTriggerPlayer(),"'ph",false)
    call TriggerAddCondition(Ttest_naji[46],Condition(function TestA49_naji))
    //'uk(Unit(s) killed)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[47],GetTriggerPlayer(),"'uk",true)
    call TriggerAddCondition(Ttest_naji[47],Condition(function TestA50_naji))
    //'remove(remove najitest)
    set i_naji=0
    loop
        call TriggerRegisterPlayerChatEvent(Ttest_naji[48],Player(i_naji),"'remove",true)
        set i_naji=i_naji+1
        exitwhen i_naji>=16
    endloop
    call TriggerAddCondition(Ttest_naji[48],Condition(function TestA51_naji))
    //’pa**(set Player Alliance)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[49],GetTriggerPlayer(),"'pa",false)
    call TriggerAddCondition(Ttest_naji[49],Condition(function TestA52_naji))
    //'uo*(set Unit(s) Owner)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[50],GetTriggerPlayer(),"'uo",false)
    call TriggerAddCondition(Ttest_naji[50],Condition(function TestA53_naji))
    //'cz*(set Camera farZ)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[51],GetTriggerPlayer(),"'cz",false)
    call TriggerAddCondition(Ttest_naji[51],Condition(function TestA54_naji))
    //'uw(Unit(s) Windwalk)
    set Guw_naji=CreateGroup()
    call TriggerRegisterPlayerChatEvent(Ttest_naji[52],GetTriggerPlayer(),"'uw",true)
    call TriggerAddCondition(Ttest_naji[52],Condition(function TestA55_naji))
    //'co**(Create Object)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[53],GetTriggerPlayer(),"'co",false)
    call TriggerAddCondition(Ttest_naji[53],Condition(function TestA56_naji))
    //'pk*(Player Kicked)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[54],GetTriggerPlayer(),"'pk",false)
    call TriggerAddCondition(Ttest_naji[54],Condition(function TestA57_naji))
    //'ub(Unit(s) Buff clear)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[55],GetTriggerPlayer(),"'ub",true)
    call TriggerAddCondition(Ttest_naji[55],Condition(function TestA59_naji))
    //'ul(Unit camera Lock)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[56],GetTriggerPlayer(),"'ul",true)
    call TriggerAddCondition(Ttest_naji[56],Condition(function TestA60_naji))
    //'cm(Camera Mode)
    set Tcamera_naji=null
    set Bcamera_naji[0]=false
    set Bcamera_naji[1]=false
    set Bcamera_naji[2]=false
    set Bcamera_naji[3]=false
    set Bcamera_naji[4]=false
    call TriggerRegisterPlayerChatEvent(Ttest_naji[57],GetTriggerPlayer(),"'cm",true)
    call TriggerAddCondition(Ttest_naji[57],Condition(function TestA61_naji))
    call DisableTrigger(Ttest_naji[58])
    call TriggerRegisterPlayerEvent(Ttest_naji[58],GetTriggerPlayer(),EVENT_PLAYER_ARROW_UP_DOWN)
    call TriggerRegisterPlayerEvent(Ttest_naji[58],GetTriggerPlayer(),EVENT_PLAYER_ARROW_DOWN_DOWN)
    call TriggerRegisterPlayerEvent(Ttest_naji[58],GetTriggerPlayer(),EVENT_PLAYER_ARROW_LEFT_DOWN)
    call TriggerRegisterPlayerEvent(Ttest_naji[58],GetTriggerPlayer(),EVENT_PLAYER_ARROW_RIGHT_DOWN)
    call TriggerAddCondition(Ttest_naji[58],Condition(function TestA62_naji))
    call DisableTrigger(Ttest_naji[59])
    call TriggerRegisterPlayerEvent(Ttest_naji[59],GetTriggerPlayer(),EVENT_PLAYER_ARROW_UP_UP)
    call TriggerRegisterPlayerEvent(Ttest_naji[59],GetTriggerPlayer(),EVENT_PLAYER_ARROW_DOWN_UP)
    call TriggerRegisterPlayerEvent(Ttest_naji[59],GetTriggerPlayer(),EVENT_PLAYER_ARROW_LEFT_UP)
    call TriggerRegisterPlayerEvent(Ttest_naji[59],GetTriggerPlayer(),EVENT_PLAYER_ARROW_RIGHT_UP)
    call TriggerAddCondition(Ttest_naji[59],Condition(function TestA63_naji))
    //'ci(Camera Information)
    set i_naji=0
    loop
        call TriggerRegisterPlayerChatEvent(Ttest_naji[60],Player(i_naji),"'ci",true)
        set i_naji=i_naji+1
        exitwhen i_naji>=16
    endloop
    call TriggerAddCondition(Ttest_naji[60],Condition(function TestA65_naji))
    //'us*(Unit(s) Scale)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[62],GetTriggerPlayer(),"'us",false)
    call TriggerAddCondition(Ttest_naji[62],Condition(function TestA67_naji))
    //'gg(Good Game)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[63],GetTriggerPlayer(),"'gg",true)
    call TriggerAddCondition(Ttest_naji[63],Condition(function TestA68_naji))
    //'gs*(set Game Speed)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[64],GetTriggerPlayer(),"'gs",false)
    call TriggerAddCondition(Ttest_naji[64],Condition(function TestA69_naji))
    //'mf(set Map Flag)
    set Dnaji_naji[2]=DialogCreate()
    call TriggerRegisterPlayerChatEvent(Ttest_naji[65],GetTriggerPlayer(),"'mf",true)
    call TriggerAddCondition(Ttest_naji[65],Condition(function TestA70_naji))
    call TriggerRegisterDialogEvent(Ttest_naji[66],Dnaji_naji[2])
    call TriggerAddCondition(Ttest_naji[66],Condition(function TestA71_naji))
    //Esc
    call TriggerRegisterPlayerEvent(Ttest_naji[67],GetTriggerPlayer(),EVENT_PLAYER_END_CINEMATIC)
    call TriggerAddCondition(Ttest_naji[67],Condition(function TestA72_naji))
    //'we(Weather Effect)
    set Iweather_naji=0
    set Weather_naji[0]=null
    call TriggerRegisterPlayerChatEvent(Ttest_naji[68],GetTriggerPlayer(),"'we",false)
    call TriggerAddCondition(Ttest_naji[68],Condition(function TestA73_naji))
    //'pt***(set Player Tech)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[69],GetTriggerPlayer(),"'pt",false)
    call TriggerAddCondition(Ttest_naji[69],Condition(function TestA74_naji))
    //'re(Restart)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[70],GetTriggerPlayer(),"'re",true)
    call TriggerAddCondition(Ttest_naji[70],Condition(function TestA75_naji))
    //'gms(Group Multiple Spell)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[72],GetTriggerPlayer(),"'gms",true)
    call TriggerAddCondition(Ttest_naji[72],Condition(function TestA77_naji))
    //'gcd(Group Cool Down)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[73],GetTriggerPlayer(),"'gcd",true)
    call TriggerAddCondition(Ttest_naji[73],Condition(function TestA78_naji))
    //'uii*(Unit's Item Information)
    set i_naji=0
    loop
        call TriggerRegisterPlayerChatEvent(Ttest_naji[74],Player(i_naji),"'uii",false)
        set i_naji=i_naji+1
        exitwhen i_naji>=16
    endloop
    call TriggerAddCondition(Ttest_naji[74],Condition(function TestA79_naji))
    //'uxy**(set Unit(s) XY)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[75],GetTriggerPlayer(),"'uxy",false)
    call TriggerAddCondition(Ttest_naji[75],Condition(function TestA80_naji))
    //'se*(System Exchange)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[76],GetTriggerPlayer(),"'se",false)
    call TriggerAddCondition(Ttest_naji[76],Condition(function TestA81_naji))
    //'ef*(Execute Function)
    call TriggerRegisterPlayerChatEvent(Ttest_naji[77],GetTriggerPlayer(),"'ef",false)
    call TriggerAddCondition(Ttest_naji[77],Condition(function TestA82_naji))
    call DestroyTrigger(GetTriggeringTrigger())
endfunction
function najitest takes nothing returns nothing
    local trigger t_naji=CreateTrigger()
    local integer i_naji=0
    loop
        call TriggerRegisterPlayerChatEvent(t_naji,Player(i_naji),"'feini",true)
        set i_naji=i_naji+1
        exitwhen i_naji>=16
    endloop
    call TriggerAddCondition(t_naji,Condition(function TestA_naji))
    set t_naji=null
endfunction
//=====================================$初始化函数结束=====================================
//===============najitest===============

#endif /// NajitestIncluded
