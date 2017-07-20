#ifndef CommonFuncIncluded
#define CommonFuncIncluded
globals
	/*
	 * 常量定义
	 */
	// 江湖、绝学、绝内的最大武功种类数
	constant integer MAX_WU_GONG_NUM = 56
	constant integer MAX_BAN_LV_NUM = 14
endglobals
//==================武器契合度系统开始==================//
library WuQiQiHeSystem initializer init
    //武器类别
    function WeaponType takes integer itemid returns string
        if itemid=='I04F' then
	        return "特"
	    elseif itemid=='I00P' then
	        return "特"
	    elseif itemid=='I00Q' then
	        return "刀"
	    elseif itemid=='I01L' then
	        return "剑"
	    elseif itemid=='I01N' then
	        return "特"
	    elseif itemid=='I00X' then
	        return "刀"
	    elseif itemid=='I00C' then
	        return "剑"
	    elseif itemid=='I00D' then
	        return "刀"
	    elseif itemid=='I00B' then
	        return "剑"
	    elseif itemid=='I01F' then
	        return "特"
	    elseif itemid=='I01S' then
	        return "棍"
	    elseif itemid=='I020' then
	        return "刀"
	    elseif itemid=='I01E' then
	        return "刀"
	    elseif itemid=='I021' then
	        return "棍"
	    elseif itemid=='I016' then
	        return "棍"
	    elseif itemid=='I013' then
	        return "棍"
	    elseif itemid=='I097' then
	        return "棍"
	    elseif itemid=='I098' then
	        return "刀"
	    elseif itemid=='I099' then
	        return "剑"
	    elseif itemid=='I09A' then
	        return "剑"
	    elseif itemid=='I09B' then
	        return "棍"
	    elseif itemid=='I09C' then
	        return "剑"
	    elseif itemid=='I09D' then
	        return "棍"
        elseif itemid=='I08V' then
	        return "特"
        endif
        return "无"

	endfunction
    //武器等级
    function WeaponLevel takes integer itemid returns integer
	    //call BJDebugMsg("什么情况3")
        if itemid=='I04F' then
	        return 3
	    elseif itemid=='I00P' then
	        return 5
	    elseif itemid=='I00Q' then
	        return 5
	    elseif itemid=='I01L' then
	        return 2
	    elseif itemid=='I01N' then
	        return 2
	    elseif itemid=='I00X' then
	        return 4
	    elseif itemid=='I00C' then
	        return 6
	    elseif itemid=='I00D' then
	        return 6
	    elseif itemid=='I00B' then
	        return 6
	    elseif itemid=='I01F' then
	        return 1
	    elseif itemid=='I01S' then
	        return 1
	    elseif itemid=='I020' then
	        return 0
	    elseif itemid=='I01E' then
	        return 2
	    elseif itemid=='I021' then
	        return 0
	    elseif itemid=='I016' then
	        return 2
	    elseif itemid=='I013' then
	        return 4
	    elseif itemid=='I08V' then
	        return 7
	    elseif itemid=='I097' then
	        return 7
	    elseif itemid=='I098' then
	        return 7
	    elseif itemid=='I099' then
	        return 5
	    elseif itemid=='I09A' then
	        return 5
	    elseif itemid=='I09B' then
	        return 7
	    elseif itemid=='I09C' then
	        return 7
	    elseif itemid=='I09D' then
	        return 7
        endif
        return -1
    endfunction
    //武器熟练度
    function WeaponQiHe takes  unit u, unit uc, integer itemid returns nothing
        local real r=0.
        local integer level=WeaponLevel(itemid)
        //call BJDebugMsg("什么情况4，"+I2S(level))
	    if level==0 then
            set r=7.0
        elseif level==1 then
            set r=6.0
        elseif level==2 then
            set r=5.0
        elseif level==3 then
            set r=4.5
        elseif level==4 then
            set r=4.0
        elseif level==5 then
            set r=3.0
        elseif level==6 then
            set r=2.5
        elseif level==7 then
            set r=2.0
        endif
        if LoadReal(YDHT,GetHandleId(GetOwningPlayer(u)),itemid)<3000. * (1+WeaponLevel(itemid)) or (LoadReal(YDHT,GetHandleId(GetOwningPlayer(u)),itemid)<5000. * (1+WeaponLevel(itemid)) and Ce[1+GetPlayerId(GetOwningPlayer(u))]==3) then
            if(ModuloInteger(GetUnitPointValue(uc),50)!=0) and (GetUnitPointValue(uc)/100==1 or GetUnitPointValue(uc)/100>=5)  then
                call SaveReal(YDHT,GetHandleId(GetOwningPlayer(u)),itemid,LoadReal(YDHT,GetHandleId(GetOwningPlayer(u)),itemid)+r*200*udg_lilianxishu[1+GetPlayerId(GetOwningPlayer(u))]*wugongxiuwei[1+GetPlayerId(GetOwningPlayer(u))])
            else
                call SaveReal(YDHT,GetHandleId(GetOwningPlayer(u)),itemid,LoadReal(YDHT,GetHandleId(GetOwningPlayer(u)),itemid)+r*2*udg_lilianxishu[1+GetPlayerId(GetOwningPlayer(u))]*wugongxiuwei[1+GetPlayerId(GetOwningPlayer(u))])
            endif
        endif
        if udg_bqdsbool[1+GetPlayerId(GetOwningPlayer(u))]==true and LoadReal(YDHT,GetHandleId(GetOwningPlayer(u)),itemid)<10000. * (1+WeaponLevel(itemid))  then
	        call SaveReal(YDHT,GetHandleId(GetOwningPlayer(u)),itemid,LoadReal(YDHT,GetHandleId(GetOwningPlayer(u)),itemid)+r*6*udg_lilianxishu[1+GetPlayerId(GetOwningPlayer(u))]*wugongxiuwei[1+GetPlayerId(GetOwningPlayer(u))])
        endif
        //call BJDebugMsg("什么情况2，"+R2S(r)+","+R2S(LoadReal(YDHT,GetHandleId(GetOwningPlayer(u)),itemid)))
	endfunction
	//初始化武器耐久度
	function WeaponNaiJiu takes item it returns integer
        local integer level=WeaponLevel(GetItemTypeId(it))
        local integer i=0
        if level==0 then
            set i=400
        elseif level==1 then
            set i=800
        elseif level==2 then
            set i=1600
        elseif level==3 then
            set i=2400
        elseif level==4 then
            set i=3200
        elseif level==5 then
            set i=4400
        elseif level==6 then
            set i=5400
        elseif level==7 then
            set i=10000
        endif
        return i
	endfunction
	function WeaponPoSun_Condition takes nothing returns boolean
		return IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())) and GetPlayerController(GetOwningPlayer(GetKillingUnit()))==MAP_CONTROL_USER and GetPlayerSlotState(GetOwningPlayer(GetKillingUnit()))==PLAYER_SLOT_STATE_PLAYING
	endfunction
    //武器耐久度
    function WeaponPoSun takes nothing returns nothing
	    local unit u=GetKillingUnit()
	    local player p = GetOwningPlayer(u)
	    local integer j = 1 + GetPlayerId(p)
	    local integer i=0
	    local item it=null
	    set i = 1
	    loop
	    	exitwhen i > 6
	    	if(GetItemType(UnitItemInSlotBJ(GetKillingUnit(),i))==ITEM_TYPE_ARTIFACT)then
		    	set it= UnitItemInSlotBJ(GetKillingUnit(),i)
		    	if GetItemTypeId(it)=='I02S' then
			        call SaveReal(YDHT,GetHandleId(GetOwningPlayer(u)),GetItemTypeId(it),2000)
			    elseif GetItemTypeId(it)=='I02M' then
			        call SaveReal(YDHT,GetHandleId(GetOwningPlayer(u)),GetItemTypeId(it),6000)
			    elseif GetItemTypeId(it)=='I02Q' then
			        call SaveReal(YDHT,GetHandleId(GetOwningPlayer(u)),GetItemTypeId(it),10000)
			    elseif GetItemTypeId(it)=='I02R' then
			        call SaveReal(YDHT,GetHandleId(GetOwningPlayer(u)),GetItemTypeId(it),14000)
			    elseif GetItemTypeId(it)=='I02P' then
			        call SaveReal(YDHT,GetHandleId(GetOwningPlayer(u)),GetItemTypeId(it),20000)
    		    endif
		    	//非镇妖
		    	if GetItemTypeId(it)!='I02S' and GetItemTypeId(it)!='I02M' and GetItemTypeId(it)!='I02Q' and GetItemTypeId(it)!='I02R' and GetItemTypeId(it)!='I02P'  then
			        call WeaponQiHe(u,GetTriggerUnit(),GetItemTypeId(it))
			        if udg_bqdsbool[j]==false and Ce[j]==3 then
			        	if LoadBoolean(YDHT, GetHandleId(GetOwningPlayer(u)), GetItemTypeId(it))==false and LoadReal(YDHT, GetHandleId(GetOwningPlayer(u)), GetItemTypeId(it))>=5000. * (1+WeaponLevel(GetItemTypeId(it)))  then
				    	    //set udg_bqds[j] = udg_bqds[j] + 1
				    	    call SaveBoolean(YDHT, GetHandleId(GetOwningPlayer(u)), GetItemTypeId(it), true)
				    	    call DisplayTextToPlayer(p, 0, 0, "|CFF66FF00恭喜您炼成了第"+I2S(udg_bqds[j])+"把武器，您需要炼成3把武器才能获得兵器大师哦")
			        	endif
		        	endif
			   //     if udg_bqds[j]>=3 and udg_bqdsbool[j]==false and Ce[j]==3 then
				  //      set udg_bqdsbool[j]=true
				  //      if udg_zhangmen[j]==true then
						//else
						//	call SaveStr(YDHT, GetHandleId(p), GetHandleId(p),"〓兵器大师〓"+LoadStr(YDHT, GetHandleId(p), GetHandleId(p)))
						//endif
						//call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜"+GetPlayerName(p)+"获得兵器大师")
						//call SetPlayerName(p, "〓兵器大师〓"+GetPlayerName(p))
			   //     endif
		    	    if LoadInteger(YDHT,GetHandleId(it),0)>0 then
			    	    if  Ce[1+GetPlayerId(GetOwningPlayer(u))]!=3 then
			        	    call SaveInteger(YDHT,GetHandleId(it),0,LoadInteger(YDHT,GetHandleId(it),0)-1)
		        	    endif
		    	    endif
		    	    //if LoadInteger(YDHT,GetHandleId(it),0)<=0 then
			        //	call FlushChildHashtable(YDHT,GetHandleId(it))
			        //	call RemoveItem(it)
			        //	call DisplayTextToPlayer(GetOwningPlayer(u),0,0,"|cFFFF0000你的武器已损坏，请及时更换武器")
		    	    //endif
	    	    endif
	    	endif
	    	set i = i + 1
	    endloop
	    //call BJDebugMsg(GetItemName(it))

        set u=null
        set it=null
	endfunction
	//商店购买武器减耐久度
	function BuyWeapon_Condition takes nothing returns boolean
        return GetItemTypeId(GetManipulatedItem())=='I01F' or GetItemTypeId(GetManipulatedItem())=='I016' or GetItemTypeId(GetManipulatedItem())=='I013'
	endfunction
	function BuyWeapon takes nothing returns nothing
        if LoadInteger(YDHT,GetHandleId(GetManipulatedItem()),0)==0 then
	        call SaveInteger(YDHT,GetHandleId(GetManipulatedItem()),0,WeaponNaiJiu(GetManipulatedItem())/2)
        endif
	endfunction
    function init takes nothing returns nothing
    	local trigger t=CreateTrigger()
    	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
    	call TriggerAddCondition(t,Condition(function WeaponPoSun_Condition))
    	call TriggerAddAction(t,function WeaponPoSun)
    	set t=CreateTrigger()
        call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
        call TriggerAddCondition(t,Condition(function BuyWeapon_Condition))
        call TriggerAddAction(t,function BuyWeapon)
    	set t=null
    endfunction
    //重写创造物品的函数
    function createitemloc takes integer id, location loc returns item
	    local item it=null
        set it=CreateItemLoc(id,loc)
        if GetItemType(it)==ITEM_TYPE_ARTIFACT then
	        call SaveInteger(YDHT,GetHandleId(it),0,WeaponNaiJiu(it))
        endif
        set it=null
        return bj_lastCreatedItem
    endfunction
    function createitem takes integer id, real x, real y returns item
    	local item it=null
        set it=CreateItem(id,x,y)
        if GetItemType(it)==ITEM_TYPE_ARTIFACT then
	        call SaveInteger(YDHT,GetHandleId(it),0,WeaponNaiJiu(it))
        endif
        set it=null
        return bj_lastCreatedItem
    endfunction
    function unitadditembyidswapped takes integer itemId, unit whichHero returns item
    	local item it=null
        set it=UnitAddItemByIdSwapped(itemId,whichHero)
        if GetItemType(it)==ITEM_TYPE_ARTIFACT then
	        call SaveInteger(YDHT,GetHandleId(it),0,WeaponNaiJiu(it))
        endif
        set it=null
        return bj_lastCreatedItem
    endfunction
endlibrary
//==================武器契合度系统结束==================//
//判断单位是否为神兽
function IsUnitMonster takes unit u returns boolean
	if GetUnitTypeId(u) == 'o01D' or GetUnitTypeId(u) == 'o01E' or GetUnitTypeId(u) == 'o01F' or GetUnitTypeId(u) == 'o01G' then
		return true
	endif
	return false
endfunction
//A项和B项性格
function AddCharacterABuff takes unit u, integer characterA returns nothing
	call UnitAddAbilityBJ( 'A066', u )
    call SetPlayerAbilityAvailableBJ( false, 'A066', GetOwningPlayer(u) )
    call SetUnitAbilityLevel(u,'A068',characterA)
endfunction
function AddCharacterBBuff takes unit u, integer characterB returns nothing
	call UnitAddAbilityBJ( 'A067', u )
    call SetPlayerAbilityAvailableBJ( false, 'A067', GetOwningPlayer(u) )
    call SetUnitAbilityLevel(u,'A069',characterB)
endfunction
function XingGeA takes integer xingge returns string
    local string s=null
	if xingge==1 then
		set s="愚钝"
	elseif xingge==2 then
	    set s="笨拙"
	elseif xingge==3 then
	    set s="平平"
	elseif xingge==4 then
	    set s="聪明"
	elseif xingge==5 then
	    set s="聪慧"
    endif
    return s
endfunction
function XingGeB takes integer xingge returns string
    local string s=null
	if xingge==1 then
		set s="浮躁"
	elseif xingge==2 then
	    set s="轻浮"
	elseif xingge==3 then
	    set s="耐心"
	elseif xingge==4 then
	    set s="稳重"
	elseif xingge==5 then
	    set s="沉稳"
    endif
    return s
endfunction
//副本倒计时
function FBdaojishi takes nothing returns nothing
    local player p=GetTriggerPlayer()
	call DisplayTimedTextToPlayer(p,0,0,30,("|cFFFF00331号副本重置倒计时：|cFF33FFFF"+(I2S(R2I(TimerGetRemaining(Hd[1])))+"秒")))
	call DisplayTimedTextToPlayer(p,0,0,30,("|cFFFF00332号副本重置倒计时：|cFF33FFFF"+(I2S(R2I(TimerGetRemaining(Hd[2])))+"秒")))
	call DisplayTimedTextToPlayer(p,0,0,30,("|cFFFF00333号副本重置倒计时：|cFF33FFFF"+(I2S(R2I(TimerGetRemaining(Hd[3])))+"秒")))
	call DisplayTimedTextToPlayer(p,0,0,30,("|cFFFF00334号副本重置倒计时：|cFF33FFFF"+(I2S(R2I(TimerGetRemaining(Hd[4])))+"秒")))
	call DisplayTimedTextToPlayer(p,0,0,30,("|cFFFF00335号副本重置倒计时：|cFF33FFFF"+(I2S(R2I(TimerGetRemaining(Hd[5])))+"秒")))
	call DisplayTimedTextToPlayer(p,0,0,30,("|cFFFF00336号副本重置倒计时：|cFF33FFFF"+(I2S(R2I(TimerGetRemaining(Hd[6])))+"秒")))
	set p=null
endfunction
//伴侣属性
function BanLvShuXing takes nothing returns nothing
	local trigger t=GetTriggeringTrigger()
	local player p=GetTriggerPlayer()
	local integer i=1+GetPlayerId(p)
	set bj_forLoopBIndex=1
	set bj_forLoopBIndexEnd=MAX_BAN_LV_NUM
	loop
		exitwhen bj_forLoopBIndex>bj_forLoopBIndexEnd
		if((GetUnitTypeId(k8[i])==R8[bj_forLoopBIndex]))then
			call DisplayTextToPlayer(p,0,0,("|cFFFFFF00伴侣："+GetUnitName(k8[i])))
			if((udg_blgg[bj_forLoopBIndex]>0))then
				call DisplayTextToPlayer(p,0,0,("|cFF00FFFF根骨 ：   "+I2S(udg_blgg[bj_forLoopBIndex])))
			endif
			if((udg_blwx[bj_forLoopBIndex]>0))then
				call DisplayTextToPlayer(p,0,0,("|cFF00FFFF悟性 ：   "+I2S(udg_blwx[bj_forLoopBIndex])))
			endif
			if((udg_bljm[bj_forLoopBIndex]>0))then
				call DisplayTextToPlayer(p,0,0,("|cFF00FFFF经脉 ：   "+I2S(udg_bljm[bj_forLoopBIndex])))
			endif
			if((udg_blfy[bj_forLoopBIndex]>0))then
				call DisplayTextToPlayer(p,0,0,("|cFF00FFFF福缘 ：   "+I2S(udg_blfy[bj_forLoopBIndex])))
			endif
			if((udg_bldp[bj_forLoopBIndex]>0))then
				call DisplayTextToPlayer(p,0,0,("|cFF00FFFF胆魄 ：   "+I2S(udg_bldp[bj_forLoopBIndex])))
			endif
			if((udg_blys[bj_forLoopBIndex]>0))then
				call DisplayTextToPlayer(p,0,0,("|cFF00FFFF医术 ：   "+I2S(udg_blys[bj_forLoopBIndex])))
			endif
		endif
		set bj_forLoopBIndex=bj_forLoopBIndex+1
	endloop
	set t=null
	set p=null
endfunction
function IsYaoCao takes integer id returns boolean
	local integer i = 1
	loop
		exitwhen i > 12
		if id == YaoCao[i] then
			return true
		endif
		set i = i + 1
	endloop
	return false
endfunction
//宝物掉落函数
function BaoWuDiaoLuo takes unit u, unit ut, integer baolv1, integer id1, integer id2, integer id3, integer id4, integer baolv2, integer id5 returns nothing
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	local location loc = GetUnitLoc(ut)
	local integer array idn
	local integer j = 4
	set idn[1] = id1
	set idn[2] = id2
	set idn[3] = id3
	set idn[4] = id4
	if id4==0 then
		set j = 3
	endif
	if id3==0 then
		set j = 2
	endif
	if id2==0 then
		set j = 1
	endif
	if id1==0 then
		set j = 0
	endif
	if (GetRandomInt(1,1000)<=fuyuan[i] or (GetRandomInt(1, 100)<=35 and Ce[i]==6)) then
		set MM7=2
	else
		set MM7=1
	endif
	set N7=1
	loop
		exitwhen N7>MM7
		//第一类宝物
		if (j>0) then
			if(GetRandomInt(1,100)<=baolv1)then
				call createitemloc(idn[GetRandomInt(1,j)],loc)
			endif
		endif
		//第二类宝物（药物或古董）
		if (baolv2!=0) then
			if((GetRandomInt(1,100)<=baolv2))then
				call createitemloc(id5,loc)
				if IsYaoCao(id5) and udg_lddsbool[i]==true then
					call createitemloc(id5,loc)
				endif
			endif
		endif
		set N7=N7+1
	endloop
	call RemoveLocation(loc)
	set p = null
	set loc = null
endfunction
//击杀怪物后百分比概率掉落宝物的函数
//如果副职为寻宝师或者1-1000间取随机数小于福缘成立的话，双倍掉落宝物

//unit是击杀者
//possibility:第一种宝物掉落的概率
//itemId:第一种宝物的id
//itemId2:第二种宝物掉落的id，如果没有第二种宝物可以为0
function dropItem takes unit u, integer itemId, integer itemId2, integer possibility returns nothing
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
		if (GetRandomInt(0, 100)<=possibility) then
			call createitemloc(itemId,loc)
		else
			call createitemloc(itemId2,loc)
		endif
			set N7=N7+1

	endloop
	call RemoveLocation(loc)
	set u = null
	set p = null
	set loc = null
endfunction
//查询药性
function YaoXing takes nothing returns nothing
	local player p=GetTriggerPlayer()
	local integer i=1+GetPlayerId(p)
	local integer yin=0
	local integer yang=0
	set bj_forLoopAIndex=1
	set bj_forLoopAIndexEnd=6
	loop
		exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
		if((GetItemTypeId(UnitItemInSlotBJ(P4[i],bj_forLoopAIndex))==YaoCao[11]))then
			set yin=yin+5
			set yang=yang+1
		elseif((GetItemTypeId(UnitItemInSlotBJ(P4[i],bj_forLoopAIndex))==YaoCao[9]))then
			set yin=yin+0
			set yang=yang+4
		elseif((GetItemTypeId(UnitItemInSlotBJ(P4[i],bj_forLoopAIndex))==YaoCao[10]))then
			set yin=yin+3
			set yang=yang+4
		elseif((GetItemTypeId(UnitItemInSlotBJ(P4[i],bj_forLoopAIndex))==YaoCao[8]))then
			set yin=yin+4
			set yang=yang+3
		elseif((GetItemTypeId(UnitItemInSlotBJ(P4[i],bj_forLoopAIndex))==YaoCao[7]))then
			set yin=yin+4
			set yang=yang+0
		elseif((GetItemTypeId(UnitItemInSlotBJ(P4[i],bj_forLoopAIndex))==YaoCao[12]))then
			set yin=yin+1
			set yang=yang+5
		elseif((GetItemTypeId(UnitItemInSlotBJ(P4[i],bj_forLoopAIndex))==YaoCao[6]))then
			set yin=yin+2
			set yang=yang+3
		elseif((GetItemTypeId(UnitItemInSlotBJ(P4[i],bj_forLoopAIndex))==YaoCao[1]))then
			set yin=yin+2
			set yang=yang+1
		elseif((GetItemTypeId(UnitItemInSlotBJ(P4[i],bj_forLoopAIndex))==YaoCao[2]))then
			set yin=yin+1
			set yang=yang+2
		elseif((GetItemTypeId(UnitItemInSlotBJ(P4[i],bj_forLoopAIndex))==YaoCao[3]))then
			set yin=yin+3
			set yang=yang-1
		elseif((GetItemTypeId(UnitItemInSlotBJ(P4[i],bj_forLoopAIndex))==YaoCao[4]))then
			set yin=yin-1
			set yang=yang+3
		elseif((GetItemTypeId(UnitItemInSlotBJ(P4[i],bj_forLoopAIndex))==YaoCao[5]))then
			set yin=yin+3
			set yang=yang+2
		endif
		set bj_forLoopAIndex=bj_forLoopAIndex+1
	endloop
	call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10.,("|cff00ff33总药性（阴）："+I2S(yin)))
	call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10.,("|cff00ff33总药性（阳）："+I2S(yang)))
endfunction
//转化剑意
function TransferJY takes nothing returns nothing
	local player p=GetTriggerPlayer()
	local integer i=1+GetPlayerId(p)
	if((xd[i]==0))then
		call DisplayTimedTextToPlayer(p,0,0,30,"|cffff0000英雄，你的剑意不够哦")
	else
		if((yd[i]==1))then
			call DisplayTextToPlayer(p,0,0,("|cff00ff00当前已将"+(I2S(xd[i])+"点剑意转化成了悟性")))
		elseif((yd[i]==2))then
			call DisplayTextToPlayer(p,0,0,("|cff00ff00当前已将"+(I2S(xd[i])+"点剑意转化成了根骨")))
		elseif((yd[i]==3))then
			call DisplayTextToPlayer(p,0,0,("|cff00ff00当前已将"+(I2S(xd[i])+"点剑意转化成了胆魄")))
		elseif((yd[i]==4))then
			call DisplayTextToPlayer(p,0,0,("|cff00ff00当前已将"+(I2S(xd[i])+"点剑意转化成了医术")))
		elseif((yd[i]==5))then
			call DisplayTextToPlayer(p,0,0,("|cff00ff00当前已将"+(I2S(xd[i])+"点剑意转化成了福缘")))
		elseif((yd[i]==6))then
			call DisplayTextToPlayer(p,0,0,("|cff00ff00当前已将"+(I2S(xd[i])+"点剑意转化成了经脉")))
		endif
		if((GetPlayerState(p,PLAYER_STATE_RESOURCE_LUMBER)<5))then
			call DisplayTimedTextToPlayer(p,0,0,30,"|cffff0000转化剑意需要至少5个黄金")
		else
			call DialogSetMessage(v8[i],("你拥有"+(I2S(xd[i])+"点剑意，请选择要转化的属性")))
			call DialogAddButtonBJ(v8[i],"根骨")
			set w8[i]=bj_lastCreatedButton
			call DialogAddButtonBJ(v8[i],"悟性")
			set y8[i]=bj_lastCreatedButton
			call DialogAddButtonBJ(v8[i],"福缘")
			set z8[i]=bj_lastCreatedButton
			call DialogAddButtonBJ(v8[i],"胆魄")
			set A8[i]=bj_lastCreatedButton
			call DialogAddButtonBJ(v8[i],"医术")
			set a8[i]=bj_lastCreatedButton
			call DialogAddButtonBJ(v8[i],"经脉")
			set x8[i]=bj_lastCreatedButton
			call DialogAddButtonBJ(v8[i],"取消")
			set B8[i]=bj_lastCreatedButton
			call DialogDisplay(p,v8[i],true)
			set Ad[i]=true
		endif
	endif
endfunction
//辽国进攻
function LiaoGuoJinGong_1 takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local integer j = LoadInteger(YDHT, GetHandleId(t), 0)
	local integer jmax = 40
	if j < jmax then
		call CreateNUnitsAtLocFacingLocBJ(1,'hkni',Player(6),Location(-5600, 100),v7[4])
		call GroupAddUnit(w7,bj_lastCreatedUnit)
		call IssueTargetOrderById(bj_lastCreatedUnit, $D000F, udg_ZhengPaiWL )
        call SaveInteger(YDHT, GetHandleId(t), 0, j + 1)
	else
		call PauseTimer(t)
		call DestroyTimer(t)
		call FlushChildHashtable(YDHT, GetHandleId(t))
	endif
	set t = null
endfunction
function LiaoGuoJinGong takes nothing returns nothing
	local timer t
	if Sd[1]!=2 and Sd[2]!=2 and Sd[3]!=2 and Sd[4]!=2 and Sd[5]!=2 and udg_teshushijian then
		set t = CreateTimer()
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033激活特殊事件|cFFDDA0DD※边境入侵※")
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033由于激活特殊事件，辽国派出骑兵前来进攻，请准备防御")
		call TimerStart(t, 2., true, function LiaoGuoJinGong_1)
	endif
	set t = null
endfunction
//灵鹫宫进攻：触发条件，有玩家选择了灵鹫宫
function LingJiuGongJinGong takes nothing returns nothing
	if (udg_runamen[1]==12 or udg_runamen[2]==12 or udg_runamen[3]==12 or udg_runamen[4]==12 or udg_runamen[5]==12) and udg_teshushijian then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033激活特殊事件|cFFDDA0DD※灵鹫宫劫※")
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033由于激活特殊事件，灵鹫宫派出高手前来进攻，请准备防御")
		call CreateNUnitsAtLocFacingLocBJ(1,'ngh2',Player(6),Location(1800, -100),v7[4])
		call GroupAddUnit(w7,bj_lastCreatedUnit)
		call IssueTargetOrderById(bj_lastCreatedUnit, $D000F, udg_ZhengPaiWL )
		call CreateNUnitsAtLocFacingLocBJ(1,'nfsp',Player(6),Location(1800, -100),v7[4])
		call GroupAddUnit(w7,bj_lastCreatedUnit)
		call IssueTargetOrderById(bj_lastCreatedUnit, $D000F, udg_ZhengPaiWL )
		call CreateNUnitsAtLocFacingLocBJ(1,'nmgd',Player(6),Location(1800, -100),v7[4])
		call GroupAddUnit(w7,bj_lastCreatedUnit)
		call IssueTargetOrderById(bj_lastCreatedUnit, $D000F, udg_ZhengPaiWL )
	endif
endfunction
function GetGeoNormRandomReal takes real r1, real r2 returns real
	local real rr1 = YDWELogarithmLg(r1)
	local real rr2 = YDWELogarithmLg(r2)
	local real rr3 = GetRandomReal(rr1, rr2)
	local real rr4 = GetRandomReal(rr1, rr2)
	local real rr5 = GetRandomReal(rr1, rr2)
	local real rr6 = GetRandomReal(rr1, rr2)
	local real rr7 = GetRandomReal(rr1, rr2)
	local real rr8 = GetRandomReal(rr1, rr2)
	local real rr9 = (rr3 + rr4 + rr5 + rr6 + rr7 + rr8) / 6.0
	return Pow(10., rr9)
endfunction

//返回玩家数
function GetNumPlayer takes nothing returns integer
    local integer i=0
    local player p=null
    local integer n=0
    loop
        exitwhen i>11
        set p=Player(i)
        if GetPlayerController(p)==MAP_CONTROL_USER and GetPlayerSlotState(p)==PLAYER_SLOT_STATE_PLAYING then
            set n=n+1
        endif
        set i=i+1
    endloop
    set p=null
    return n
endfunction

function UnitTypeNotNull takes unit u,unittype i returns boolean
    return(IsUnitType(u,i)!=null)
endfunction
//距离loc r1距离r2角度的点
function pu takes location loc,real r1,real r2 returns location
    return Location(GetLocationX(loc)+r1*Cos(r2*bj_DEGTORAD),GetLocationY(loc)+r1*Sin(r2*bj_DEGTORAD))
endfunction
function tu takes nothing returns boolean
	local real dx=GetDestructableX(GetFilterDestructable())-fu
	local real dy=GetDestructableY(GetFilterDestructable())-gu
	return(dx*dx+dy*dy<=bj_enumDestructableRadius)
endfunction
function uu takes itemtype vu,integer wu returns nothing
	local group g = null
	set bj_stockPickedItemType=vu
	set bj_stockPickedItemLevel=wu
	set g=CreateGroup()
	call GroupEnumUnitsOfType(g,"marketplace",ju)
	call ForGroup(g,function UpdateEachStockBuildingEnum)
	call DestroyGroup(g)
	set g=null
endfunction
function xu takes nothing returns nothing
	local integer pickedItemId
	local itemtype yu
	local integer zu=0
	local integer Au=0
	local integer wu
	set wu=1
	loop
		if(bj_stockAllowedPermanent[wu])then
			set Au=Au+1
			if(GetRandomInt(1,Au)==1)then
				set yu=ITEM_TYPE_PERMANENT
				set zu=wu
			endif
		endif
		if(bj_stockAllowedCharged[wu])then
			set Au=Au+1
			if(GetRandomInt(1,Au)==1)then
				set yu=ITEM_TYPE_CHARGED
				set zu=wu
			endif
		endif
		if(bj_stockAllowedArtifact[wu])then
			set Au=Au+1
			if(GetRandomInt(1,Au)==1)then
				set yu=ITEM_TYPE_ARTIFACT
				set zu=wu
			endif
		endif
		set wu=wu+1
		exitwhen wu>10
	endloop
	if(Au==0)then
		set yu=null
		return
	endif
	call uu(yu,zu)
	set yu=null
endfunction
function au takes nothing returns nothing
	call xu()
	call TimerStart(bj_stockUpdateTimer,bj_STOCK_RESTOCK_INTERVAL,true,function xu)
endfunction
function bu takes nothing returns boolean
	return true
endfunction
function Eu takes nothing returns integer
	local integer Fu=Kt
	if(Fu!=0)then
		set Kt=Mt[Fu]
	else
		set Lt=Lt+1
		set Fu=Lt
	endif
	if(Fu>8190)then
		return 0
	endif
	set Pt[Fu]=null
	set Qt[Fu]=null
	set Rt[Fu]=.0
	set St[Fu]=.0
	set Tt[Fu]=.0
	set Ut[Fu]=.0
	set Vt[Fu]=.0
	set Wt[Fu]=.0
	set Xt[Fu]=.0
	set Yt[Fu]=.0
	set Zt[Fu]=0
	set Mt[Fu]=-1
	return Fu
endfunction
function Gu takes integer Fu returns nothing
	if Fu==null then
		return
	elseif(Mt[Fu]!=-1)then
		return
	endif
	set Mt[Fu]=Kt
	set Kt=Fu
endfunction
function Hu takes nothing returns nothing
	set YDHT=InitHashtable()
endfunction
function Nu takes unit Ou,integer cu returns nothing
	local integer i=0
	loop
		exitwhen i>=M
		if L[i]==cu then
			set w=Ou
			if K[i]!=null and TriggerEvaluate(K[i])and IsTriggerEnabled(K[i])then
				call TriggerExecute(K[i])
			endif
		endif
		set i=i+1
	endloop
	endfunction
function Pu takes nothing returns boolean
	call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,30,"|cFF1E90FF当前编辑器版本为： |r|cFF00FF00YDWE 1.24.5.1710")
	return false
endfunction
function Qu takes nothing returns nothing
	local trigger t=CreateTrigger()
	local integer i=0
	loop
		exitwhen i==12
		call TriggerRegisterPlayerChatEvent(t,Player(i),"YDWE Version",true)
		set i=i+1
	endloop
	call TriggerAddCondition(t,Condition(function Pu))
	set t=null
endfunction
function SetCamera takes nothing returns nothing
	set I=GetCameraBoundMinX()-GetCameraMargin(CAMERA_MARGIN_LEFT)
	set J=GetCameraBoundMinY()-GetCameraMargin(CAMERA_MARGIN_BOTTOM)
	set H=GetCameraBoundMaxX()+GetCameraMargin(CAMERA_MARGIN_RIGHT)
	set l=GetCameraBoundMaxY()+GetCameraMargin(CAMERA_MARGIN_TOP)
	call Qu()
endfunction
//万能属性系统
//以下函数仅仅是让技能ID出现在代码里，不然SLK优化器会删除这些技能
function DisplayAllAbilityId takes nothing returns nothing
    local integer aid=0
    set aid='YDl0'
    set aid='YDl1'
    set aid='YDl2'
    set aid='YDl3'
    set aid='YDl4'
    set aid='YDl5'
    set aid='YDl6'
    set aid='YDl7'
    set aid='YDl8'
    set aid='YDl9'
    set aid='YDla'
    set aid='YDlb'
    set aid='YDlc'
    set aid='YDld'
    set aid='YDle'
    set aid='YDlf'
    set aid='YDm0'
    set aid='YDm1'
    set aid='YDm2'
    set aid='YDm3'
    set aid='YDm4'
    set aid='YDm5'
    set aid='YDm6'
    set aid='YDm7'
    set aid='YDm8'
    set aid='YDm9'
    set aid='YDma'
    set aid='YDmb'
    set aid='YDmc'
    set aid='YDmd'
    set aid='YDme'
    set aid='YDmf'
    set aid='YDc0'
    set aid='YDc1'
    set aid='YDc2'
    set aid='YDc3'
    set aid='YDc4'
    set aid='YDc5'
    set aid='YDc6'
    set aid='YDc7'
    set aid='YDc8'
    set aid='YDc9'
    set aid='YDca'
    set aid='YDcb'
    set aid='YDcc'
    set aid='YDb0'
    set aid='YDb1'
    set aid='YDb2'
    set aid='YDb3'
    set aid='YDb4'
    set aid='YDb5'
    set aid='YDb6'
    set aid='YDb7'
    set aid='YDb8'
    set aid='YDb9'
    set aid='YDba'
    set aid='YDbb'
    set aid='YDbc'
    set aid='YDbd'
    set aid='YDbe'
    set aid='YDbg'
    set aid='YDbh'
    set aid='YDbi'
    set aid='YDbj'
    set aid='YDbk'
    set aid='YDbl'
    set aid='YDbm'
    set aid='YDbn'
endfunction
function kv takes nothing returns nothing
	local integer i=0
	local integer m=0
	set P[0]=0
	set P[1]=15
	set P[2]=30
	set P[3]=43
	set P[4]=67
	set Q[0]=15
	set Q[1]=15
	set Q[2]=$D
	set Q[3]=24
	loop
		exitwhen i>9
		set V[i]=48+m
		set m=m+1
		set i=i+1
	endloop
	set m=0
	loop
		exitwhen i>26
		set V[i]=97+m
		set m=m+1
		set i=i+1
	endloop
	set i=0
	set m=0
	loop
		exitwhen m>(Q[0]-1)
		set S[i]=1497656368-48+V[m]
		set i=i+1
		set m=m+1
	endloop
	set m=0
	loop
		exitwhen m>(Q[1]-1)
		set S[i]=1497656624-48+V[m]
		set i=i+1
		set m=m+1
	endloop
	set m=0
	loop
		exitwhen m>(Q[2]-1)
		set S[i]=1497654064-48+V[m]
		set i=i+1
		set m=m+1
	endloop
	set m=0
	loop
		exitwhen m>(Q[3]-1)
		set S[i]=1497653808-48+V[m]
		set i=i+1
		set m=m+1
	endloop
endfunction
function mv takes nothing returns nothing
	local integer i=1
	local unit u
	local integer n=0
	local integer nv=0
	call kv()
	loop
		set i=1
		set T[nv]=1
		loop
			set T[nv+1]=T[nv]*2
			set nv=nv+1
			set i=i+1
			exitwhen i==Q[n]
		endloop
		set X[n]=T[nv]-1
		set Y[n]=-T[nv]
		set nv=nv+1
		set n=n+1
		exitwhen n>=4
	endloop
	if W then
		set u=CreateUnit(Player(15),U,0,0,0)
		set i=0
		loop
			exitwhen i==P[5]
			call UnitAddAbility(u,S[i])
			set i=i+1
		endloop
		call RemoveUnit(u)
		set u=null
	endif
endfunction
function ov takes player pv returns force
	local force f=CreateForce()
	call ForceAddPlayer(f,pv)
	set Z=f
	set f=null
	return Z
endfunction
function FetchUnitItem takes unit u,integer j returns item
	local integer i=0
	loop
		set d4=UnitItemInSlot(u,i)
		if GetItemTypeId(d4)==j then
			return d4
		endif
		set i=i+1
		exitwhen i>=6
	endloop
	return null
endfunction
//function YDWEGetUnitsInRangeOfLocMatchingNull takes real radius,location whichLocation,boolexpr filter returns group
//    local group g= CreateGroup()
//    call GroupEnumUnitsInRangeOfLoc(g, whichLocation, radius, filter)
//    call DestroyBoolExpr(filter)
//    set yd_NullTempGroup=g
//    set g=null
//    return yd_NullTempGroup
//endfunction
function YDWEGetUnitsInRectOfPlayerNull takes rect r,player whichPlayer returns group
    local group g= CreateGroup()
    set bj_groupEnumOwningPlayer=whichPlayer
    call GroupEnumUnitsInRect(g, r, filterGetUnitsInRectOfPlayer)
    set yd_NullTempGroup=g
    set g=null
    return yd_NullTempGroup
endfunction
function YDWEGetRandomSubGroupEnumNull takes nothing returns nothing
    if ( bj_randomSubGroupWant > 0 ) then
        if ( bj_randomSubGroupWant >= bj_randomSubGroupTotal ) or ( GetRandomInt(1, bj_randomSubGroupTotal) <= bj_randomSubGroupWant ) then
            // We either need every remaining unit, or the unit passed its chance check.
            call GroupAddUnit(bj_randomSubGroupGroup, GetEnumUnit())
            set bj_randomSubGroupWant=bj_randomSubGroupWant - 1
        endif
    endif
    set bj_randomSubGroupTotal=bj_randomSubGroupTotal - 1
endfunction
function YDWEGetRandomSubGroupNull takes integer count,group sourceGroup returns group
    set bj_randomSubGroupGroup=CreateGroup()
    set bj_randomSubGroupWant=count
    set bj_randomSubGroupTotal=CountUnitsInGroup(sourceGroup)
    if ( bj_randomSubGroupWant <= 0 or bj_randomSubGroupTotal <= 0 ) then
        return bj_randomSubGroupGroup
    endif
    call ForGroup(sourceGroup, function YDWEGetRandomSubGroupEnumNull)
    return bj_randomSubGroupGroup
endfunction
function YDWEGetItemOfTypeFromUnitBJNull takes unit whichUnit,integer itemId returns item
    local integer index= 0
    loop
        set yd_NullTempItem=UnitItemInSlot(whichUnit, index)
        if GetItemTypeId(yd_NullTempItem) == itemId then
            return yd_NullTempItem
        endif
        set index=index + 1
        exitwhen index >= bj_MAX_INVENTORY
    endloop
    return null
endfunction
function YDWETriggerActionUnitRescuedBJNull takes nothing returns nothing
    local unit theUnit= GetTriggerUnit()
    if IsUnitType(theUnit, UNIT_TYPE_STRUCTURE) then
        call RescueUnitBJ(theUnit, GetOwningPlayer(GetRescuer()), bj_rescueChangeColorBldg)
    else
        call RescueUnitBJ(theUnit, GetOwningPlayer(GetRescuer()), bj_rescueChangeColorUnit)
    endif
    set theUnit=null
endfunction
function YDWETryInitRescuableTriggersBJNull takes nothing returns nothing
    local integer index
    if ( bj_rescueUnitBehavior == null ) then
        set bj_rescueUnitBehavior=CreateTrigger()
        set index=0
        loop
            call TriggerRegisterPlayerUnitEvent(bj_rescueUnitBehavior, Player(index), EVENT_PLAYER_UNIT_RESCUED, null)
            set index=index + 1
            exitwhen index == bj_MAX_PLAYER_SLOTS
        endloop
        call TriggerAddAction(bj_rescueUnitBehavior, function YDWETriggerActionUnitRescuedBJNull)
    endif
endfunction
function YDWEInitRescuableBehaviorBJNull takes nothing returns nothing
    local integer index
    set index=0
    loop
        // If at least one player slot is "Rescuable"-controlled, init the
        // rescue behavior triggers.
        if ( GetPlayerController(Player(index)) == MAP_CONTROL_RESCUABLE ) then
            call YDWETryInitRescuableTriggersBJNull()
            return
        endif
        set index=index + 1
        exitwhen index == bj_MAX_PLAYERS
    endloop
endfunction
function wv takes rect r,boolexpr vv returns group
	local group g=CreateGroup()
	call GroupEnumUnitsInRect(g,r,vv)
	call DestroyBoolExpr(vv)
	set e4=g
	set g=null
	return e4
endfunction
function AddPlayerUnitIntoGroup takes player pv,boolexpr vv returns group
	local group g=CreateGroup()
	call GroupEnumUnitsOfPlayer(g,pv,vv)
	call DestroyBoolExpr(vv)
	set e4=g
	set g=null
	return e4
endfunction
function yv takes multiboard mb,integer zv,integer Av,real av,real Bv,real bv,real Cv returns nothing
	local integer cv=0
	local integer Dv=0
	local integer Ev=MultiboardGetRowCount(mb)
	local integer Fv=MultiboardGetColumnCount(mb)
	local multiboarditem Gv=null
	loop
		set cv=cv+1
		exitwhen cv>Ev
		if(Av==0 or Av==cv)then
			set Dv=0
			loop
				set Dv=Dv+1
				exitwhen Dv>Fv
				if(zv==0 or zv==Dv)then
					set Gv=MultiboardGetItem(mb,cv-1,Dv-1)
					call MultiboardSetItemValueColor(Gv,PercentTo255(av),PercentTo255(Bv),PercentTo255(bv),PercentTo255(100.-Cv))
					call MultiboardReleaseItem(Gv)
				endif
			endloop
		endif
	endloop
	set Gv=null
endfunction
function DuoMianBan takes multiboard mb,integer zv,integer Av,string Iv returns nothing
	local integer cv=0
	local integer Dv=0
	local integer Ev=MultiboardGetRowCount(mb)
	local integer Fv=MultiboardGetColumnCount(mb)
	local multiboarditem Gv=null
	loop
		set cv=cv+1
		exitwhen cv>Ev
		if(Av==0 or Av==cv)then
			set Dv=0
			loop
				set Dv=Dv+1
				exitwhen Dv>Fv
				if(zv==0 or zv==Dv)then
					set Gv=MultiboardGetItem(mb,cv-1,Dv-1)
					call MultiboardSetItemValue(Gv,Iv)
					call MultiboardReleaseItem(Gv)
				endif
			endloop
		endif
	endloop
	set Gv=null
endfunction
//function YDWEPolledWaitNull takes real duration returns nothing
//    local timer t
//    local real timeRemaining
//    if ( duration > 0 ) then
//        set t=CreateTimer()
//        call TimerStart(t, duration, false, null)
//        loop
//            set timeRemaining=TimerGetRemaining(t)
//            exitwhen timeRemaining <= 0
//            // If we have a bit of time left, skip past 10% of the remaining
//            // duration instead of checking every interval, to minimize the
//            // polling on long waits.
//            if ( timeRemaining > bj_POLLED_WAIT_SKIP_THRESHOLD ) then
//                call TriggerSleepAction(0.1 * timeRemaining)
//            else
//                call TriggerSleepAction(bj_POLLED_WAIT_INTERVAL)
//            endif
//        endloop
//        call DestroyTimer(t)
//    endif
//    set t=null
//endfunction
//符合条件执行g4[i]触发
function Lv takes nothing returns nothing
	local integer i=0
	loop
		exitwhen i>=h4
		if g4[i]!=null and IsTriggerEnabled(g4[i])and TriggerEvaluate(g4[i])then
			call TriggerExecute(g4[i])
		endif
		set i=i+1
	endloop
endfunction
//单位没有蝗虫技能，则注册单位伤害信息
function Mv takes nothing returns boolean
	if GetUnitAbilityLevel(GetFilterUnit(),'Aloc')<=0 then
	    call TriggerRegisterUnitEvent(f4,GetFilterUnit(),EVENT_UNIT_DAMAGED)
	endif
	return false
endfunction
//任意单位受伤害事件
function Nv takes nothing returns nothing
	local trigger t=CreateTrigger()
	local region r=CreateRegion()
	local group g=CreateGroup()
	call RegionAddRect(r,GetWorldBounds())
	//新进入地图的单位受伤害
	call TriggerRegisterEnterRegion(t,r,Condition(function Mv))
	//地图上已有的单位受伤害
	call GroupEnumUnitsInRect(g,GetWorldBounds(),Condition(function Mv))
	call DestroyGroup(g)
	set r=null
	set t=null
	set g=null
endfunction
function Ov takes trigger Pv returns nothing
	if Pv==null then
		return
	endif
	if h4==0 then
		set f4=CreateTrigger()
		call TriggerAddAction(f4,function Lv)
		call Nv()
	endif
	set g4[h4]=Pv
	set h4=h4+1
endfunction
function Qv takes nothing returns nothing
	local integer i=0
	if GetIssuedOrderId()>=$D0022 and GetIssuedOrderId()<=$D0027 then
		set i4=GetOrderTargetItem()
		loop
			exitwhen i>=m4
			if k4[i]!=null and IsTriggerEnabled(k4[i])and TriggerEvaluate(k4[i])then
				call TriggerExecute(k4[i])
			endif
			set i=i+1
		endloop
	endif
endfunction
function TriggerAddRect takes trigger Sv,rect r returns event
	local region Tv=CreateRegion()
	call RegionAddRect(Tv,r)
	set nn4=Tv
	set Tv=null
	return TriggerRegisterEnterRegion(Sv,nn4,null)
endfunction
function UnitHaveItem takes unit u,integer j returns boolean
	local integer i=0
	if j!=0 then
		loop
			if GetItemTypeId(UnitItemInSlot(u,i))==j then
				return true
			endif
			set i=i+1
			exitwhen i>=6
		endloop
	endif
	return false
endfunction
function Vv takes player pv returns nothing
	local group g=CreateGroup()
	call GroupEnumUnitsOfPlayer(g,pv,null)
	call ForGroup(g,function WakePlayerUnitsEnum)
	call DestroyGroup(g)
	set g=null
endfunction
function CheckX takes real x returns real
    local real E2=GetRectMinX(bj_mapInitialPlayableArea)+50
    if(x<E2)then
        return E2
    endif
    set E2=GetRectMaxX(bj_mapInitialPlayableArea)-50
    if(x>E2)then
        return E2
    endif
    return x
endfunction
function CheckY takes real y returns real
    local real E2=GetRectMinY(bj_mapInitialPlayableArea)+50
    if(y<E2)then
        return E2
    endif
    set E2=GetRectMaxY(bj_mapInitialPlayableArea)-50
    if(y>E2)then
        return E2
    endif
    return y

endfunction
function Wv takes nothing returns nothing
	local integer d=0
	local real x=.0
	local real y=.0
	local integer Xv=0
	loop
		exitwhen(Xv==Ot)
		set d=Nt[Xv]
		if(Rt[d]>0)and(GetUnitState(Pt[d],UNIT_STATE_LIFE)>0)and(GetUnitState(Qt[d],UNIT_STATE_LIFE)>0)then
			set Tt[d]=Tt[d]+.01
			if(Tt[d]>=St[d])then
				set Xt[d]=Xt[d]+Ut[d]
				set Yt[d]=Yt[d]+Vt[d]
				set Zt[d]=Zt[d]+Wt[d]
				set x=GetUnitX(Pt[d])+Yt[d]*Cos(Xt[d])
				set y=GetUnitY(Pt[d])+Yt[d]*Sin(Xt[d])
				set x=(RMinBJ(RMaxBJ(((x)*1.),I),H))
				set y=(RMinBJ(RMaxBJ(((y)*1.),J),l))
				call SetUnitX(Qt[d],CheckX(x))
				call SetUnitY(Qt[d],CheckY(y))
				call SetUnitFlyHeight(Qt[d],Zt[d],.0)
				set Tt[d]=.0
			endif
			set Rt[d]=Rt[d]-.01
		else
			set z=Pt[d]
			call Nu(Qt[d],$A)
			set Pt[d]=null
			set Qt[d]=null
			call Gu(d)
			set Ot=Ot-1
			set Nt[Xv]=Nt[Ot]
			set Xv=Xv-1
		endif
		set Xv=Xv+1
	endloop
	if(Ot==0)then
		call PauseTimer(o4)
	endif
endfunction
//转圈函数
function Yv takes unit Zv,unit dw,real ew,real fw,real gw,real hw,real iw returns nothing
	local integer d=Eu()
	local real x1=GetUnitX(dw)
	local real y1=GetUnitY(dw)
	local real x2=GetUnitX(Zv)
	local real y2=GetUnitY(Zv)
	set Pt[d]=dw
	set Qt[d]=Zv
	set Rt[d]=hw
	set St[d]=iw
	set Ut[d]=ew*(3.14159/180.)
	set Vt[d]=fw
	set Wt[d]=gw
	set Xt[d]=Atan2(y2-y1,x2-x1)
	set Yt[d]=SquareRoot((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1))
	set Zt[d]=GetUnitFlyHeight(Qt[d])
	set Nt[Ot]=(d)
	set Ot=Ot+1
	if(Ot-1==0)then
		call TimerStart(o4,.01,true,function Wv)
	endif
endfunction
function jw takes boolean kw returns nothing
	call SetPlayerState(Player(12),PLAYER_STATE_NO_CREEP_SLEEP,IntegerTertiaryOp(kw,0,1))
	if(not kw)then
		call Vv(Player(12))
	endif
endfunction
function vw takes unit ww returns nothing
	local integer tm=(LoadInteger(YDHT,StringHash((I2S((GetHandleId((ww)))))),StringHash(("Timer"))))
	call FlushChildHashtable(YDHT,StringHash((I2S((GetHandleId((ww)))))))
	call FlushChildHashtable(YDHT,StringHash((I2S(tm))))
	call DestroyTimer((LoadTimerHandle(YDHT,StringHash((I2S((GetHandleId((ww)))))),StringHash(("Timer")))))
endfunction
function xw takes nothing returns nothing
	local timer tm=GetExpiredTimer()
	local unit ww=((LoadUnitHandle(YDHT,StringHash((I2S((GetHandleId((tm)))))),StringHash(("Pet")))))
	local unit yw=((LoadUnitHandle(YDHT,StringHash((I2S((GetHandleId((tm)))))),StringHash(("Captain")))))
	local real x=GetUnitX(yw)-GetUnitX(ww)
	local real y=GetUnitY(yw)-GetUnitY(ww)
	local real d=x*x+y*y
	local real v
	local real a
	local effect e=null
	local real life=(LoadReal(YDHT,StringHash((I2S((GetHandleId((tm)))))),StringHash(("Life"))))
	local integer p=(LoadInteger(YDHT,StringHash((I2S((GetHandleId((tm)))))),StringHash(("Percent"))))
	set v=(LoadReal(YDHT,StringHash((I2S((GetHandleId((tm)))))),StringHash(("GuardRanger"))))
	if GetUnitState(ww,UNIT_STATE_LIFE)>0 and GetUnitState(yw,UNIT_STATE_LIFE)>0 then
		if d<v*v then
			if(OrderId2String(GetUnitCurrentOrder((ww)))==null)and GetRandomInt(0,100)<p then
				set x=GetUnitX(yw)
				set y=GetUnitY(yw)
				set d=GetRandomReal(0,v)
				set a=GetRandomReal(0,360)
				call IssuePointOrderById(ww,$D0016,x+d*CosBJ(a),y+d*SinBJ(a))
			endif
		else
			set v=(LoadReal(YDHT,StringHash((I2S((GetHandleId((tm)))))),StringHash(("ReturnRanger"))))
			if d<v*v then
				if(OrderId2String(GetUnitCurrentOrder((ww)))==null)then
					call IssuePointOrderById(ww,$D0016,GetUnitX(yw),GetUnitY(yw))
				endif
			else
				set v=(LoadReal(YDHT,StringHash((I2S((GetHandleId((tm)))))),StringHash(("OutRanger"))))
				if d!=0 and d>v*v then
					call SetUnitPosition(ww,GetUnitX(yw),GetUnitY(yw))
					set e=AddSpecialEffectTarget("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl",yw,"chest")
					call DestroyEffect(e)
				else
					call IssuePointOrderById(ww,$D0012,GetUnitX(yw),GetUnitY(yw))
				endif
			endif
		endif
	else
		call IssuePointOrderById(ww,$D000F,GetUnitX(yw),GetUnitY(yw))
		call vw(ww)
	endif
	set tm=null
	set ww=null
	set yw=null
	set e=null
endfunction
function zw takes unit ww,unit yw,real hw,real Aw,real aw,real Bw,integer bw returns nothing
	local timer tm=CreateTimer()
	call SaveTimerHandle(YDHT,StringHash((I2S((GetHandleId((ww)))))),StringHash(("Timer")),(tm))
	call SaveUnitHandle(YDHT,StringHash((I2S((GetHandleId((tm)))))),StringHash(("pet")),(ww))
	call SaveUnitHandle(YDHT,StringHash((I2S((GetHandleId((tm)))))),StringHash(("Captain")),(yw))
	call SaveInteger(YDHT,StringHash((I2S((GetHandleId((tm)))))),StringHash(("Percent")),(bw))
	call SaveReal(YDHT,StringHash((I2S((GetHandleId((tm)))))),StringHash(("GuardRanger")),((Aw)*1.))
	call SaveReal(YDHT,StringHash((I2S((GetHandleId((tm)))))),StringHash(("ReturnRanger")),((aw)*1.))
	call SaveReal(YDHT,StringHash((I2S((GetHandleId((tm)))))),StringHash(("OutRanger")),((Bw)*1.))
	call TimerStart(tm,hw,true,function xw)
	set tm=null
endfunction
function Cw takes nothing returns integer
	local integer h=s4
	if s4<0 then
		if t4>=8000 then
			return 8100
		else
			set t4=t4+1
			return t4
		endif
	endif
	set s4=u4[h]
	return h
endfunction
function cw takes integer cu returns nothing
	set u4[cu]=s4
	set s4=cu
endfunction
function Dw takes real pw,trigger Ew returns integer
	local integer cu=Cw()
	local integer h=r4
	local integer t=R2I(100.*pw)+p4
	local integer p
	set x4[cu]=Ew
	set w4[cu]=t
	loop
		set p=v4[h]
		if p<0 or w4[p]>=t then
			set v4[h]=cu
			set v4[cu]=p
			return cu
		endif
		set h=p
	endloop
	return cu
endfunction
function Fw takes nothing returns nothing
	call RemoveUnit(LoadUnitHandle(YDHT,c4,q4))
	call RemoveSavedHandle(YDHT,c4,q4)
endfunction
function Gw takes real pw,unit u returns nothing
	call SaveUnitHandle(YDHT,c4,Dw(pw,y4),u)
endfunction
function Hw takes nothing returns nothing
	call DestroyTimer(LoadTimerHandle(YDHT,c4,q4))
	call RemoveSavedHandle(YDHT,c4,q4)
endfunction
function Iw takes nothing returns nothing
	call RemoveItem(LoadItemHandle(YDHT,c4,q4))
	call RemoveSavedHandle(YDHT,c4,q4)
endfunction
function lw takes nothing returns nothing
	call DestroyEffect(LoadEffectHandle(YDHT,c4,q4))
	call RemoveSavedHandle(YDHT,c4,q4)
endfunction
function Jw takes real pw,effect e returns nothing
	call SaveEffectHandle(YDHT,c4,Dw(pw,a4),e)
endfunction
function Kw takes nothing returns nothing
	call DestroyLightning(LoadLightningHandle(YDHT,c4,q4))
	call RemoveSavedHandle(YDHT,c4,q4)
endfunction
function Lw takes real pw,lightning lt returns nothing
	local integer i=Dw(pw,B4)
	call SaveLightningHandle(YDHT,c4,i,lt)
endfunction
function Mw takes nothing returns nothing
	call TriggerExecute(LoadTriggerHandle(YDHT,c4,q4))
	call RemoveSavedHandle(YDHT,c4,q4)
endfunction
function Nw takes real pw,texttag tt returns nothing
	local integer N=0
	local integer i=0
	if pw<=0 then
		set pw=.01
	endif
	call SetTextTagPermanent(tt,false)
	call SetTextTagLifespan(tt,pw)
	call SetTextTagFadepoint(tt,pw)
endfunction
function Ow takes nothing returns nothing
	local integer h=r4
	local integer p
	loop
		set q4=v4[h]
		exitwhen q4<0 or p4<w4[q4]
		call TriggerEvaluate(x4[q4])
		call cw(q4)
		set v4[h]=v4[q4]
	endloop
	set p4=p4+1
endfunction
function Pw takes nothing returns nothing
	set C4=CreateTimer()
	set c4=GetHandleId(C4)
	set p4=0
	set r4=0
	set v4[0]=-1
	set s4=1
	set t4=1
	set u4[1]=-1
	set y4=CreateTrigger()
	set z4=CreateTrigger()
	set A4=CreateTrigger()
	set a4=CreateTrigger()
	set B4=CreateTrigger()
	set b4=CreateTrigger()
	call TriggerAddCondition(y4,Condition(function Fw))
	call TriggerAddCondition(z4,Condition(function Hw))
	call TriggerAddCondition(A4,Condition(function Iw))
	call TriggerAddCondition(a4,Condition(function lw))
	call TriggerAddCondition(B4,Condition(function Kw))
	call TriggerAddCondition(b4,Condition(function Mw))
	call TimerStart(C4,.01,true,function Ow)
endfunction
function Qw takes nothing returns nothing
	local integer Rw=GetHandleId(GetExpiredTimer())
	local trigger Pv=LoadTriggerHandle(YDHT,Rw,$D0001)
	call SaveInteger(YDHT,StringHash(I2S(GetHandleId(Pv))),StringHash("RunIndex"),LoadInteger(YDHT,Rw,$D0002))
	if TriggerEvaluate(Pv)then
		call TriggerExecute(Pv)
	endif
	set Pv=null
endfunction
function Sw takes nothing returns nothing
	local integer Rw=GetHandleId(GetExpiredTimer())
	local trigger Pv=LoadTriggerHandle(YDHT,Rw,$D0001)
	local integer Tw=LoadInteger(YDHT,Rw,$D0003)
	call SaveInteger(YDHT,StringHash(I2S(GetHandleId(Pv))),StringHash("RunIndex"),LoadInteger(YDHT,Rw,$D0002))
	if TriggerEvaluate(Pv)then
		call TriggerExecute(Pv)
	endif
	set Tw=Tw-1
	if Tw>0 then
		call SaveInteger(YDHT,Rw,$D0003,Tw)
	else
		call DestroyTimer(GetExpiredTimer())
		call FlushChildHashtable(YDHT,Rw)
	endif
	set Pv=null
endfunction
//0秒无敌，用来抵消伤害
function WuDiQingChu takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	call SetUnitInvulnerable( u, false )
	call PauseTimer(t)
	call DestroyTimer(t)
	set t = null
	set u = null
endfunction
function WuDi takes unit u returns nothing
	local timer t = CreateTimer()
	call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	call SetUnitInvulnerable( u, true )
	call TimerStart(t,0,false,function WuDiQingChu)
	set t = null
endfunction
//使单位晕眩 先天功、铁布衫
function SetUnitDizzyDoc takes nothing returns nothing
    local timer tm =  GetExpiredTimer()
    local integer i = GetHandleId(tm)
    local unit Unit = LoadUnitHandle(YDHT,i,StringHash("unit"))
    local effect Eff = LoadEffectHandle(YDHT,i,StringHash("effect"))
    call DestroyEffect( Eff )
    call PauseUnit( Unit, false )
    call FlushChildHashtable(YDHT,i)
    call PauseTimer(tm)
    call DestroyTimer(tm)
    set tm=null
    set Unit=null
    set Eff=null
endfunction
function SetUnitDizzy takes unit Unit,real Size ,string ExFile returns nothing
    local timer tm =  CreateTimer()
    local integer i = GetHandleId(tm)
    local location loc=GetUnitLoc(Unit)
    //不无敌也不魔免
    if UnitHasBuffBJ(Unit,'BHds')==false and  IsUnitType(Unit,UNIT_TYPE_MAGIC_IMMUNE) ==false then
    	call SaveUnitHandle(YDHT,i,StringHash("unit"),Unit)
    	call SaveEffectHandle(YDHT,i,StringHash("effect"),AddSpecialEffectTargetUnitBJ( "overhead", Unit, ExFile ))
    	call PauseUnit( Unit, true )
    	call CreateTextTagLocBJ("封穴",loc,0,12.,65.,55.,42.,0)
    	call Nw(Size,bj_lastCreatedTextTag)
    	call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,90)
    	call TimerStart(tm,Size,false,function SetUnitDizzyDoc)
    endif
    call RemoveLocation(loc)
    set loc=null
    set tm=null
endfunction

//===========================================================================
//绝学伤害系数
//@id:A06S 九阳真经散篇
//@id:A0DN 九阳神功
function jueXueXiShu takes integer i returns real
	return (1.+I2R(juexuelingwu[i])/3)*(1+0.4*GetUnitAbilityLevel(udg_hero[i], 'A06S')*(1+GetUnitAbilityLevel(udg_hero[i], 'A0DN')))
endfunction

/*
 *  伤害公式
 */
function ShangHaiGongShi takes unit u, unit uc,real w1, real w2, real shxishu, integer id returns real
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	local item it=null
	local integer j=0
	local real shanghai
	local real attack //伤害因子
	local real target_def //敌方防御因子
	//local real critical //暴击因子
	local real dodge //闪避因子
	local real random //随机因子
	local real basic_damage //基础伤害
	if UnitTypeNotNull(u,UNIT_TYPE_HERO) then
		set attack = (2-0.2*I2R(udg_nandu))*(1+0.3*GetUnitAbilityLevel(u, 'A059'))*25*udg_lilianxishu[i]*(w1*(1+I2R(GetHeroStatBJ(0,u,true))/200)*(1+I2R(GetHeroStatBJ(1,u,true))/200)+w2*0.03*I2R(GetHeroStatBJ(2,u,true)))*(1.+GetUnitAbilityLevel(u,id))*(udg_shanghaijiacheng[i]+1.)*shxishu
		if GetUnitAbilityLevel(u, id)==9 then
			set attack = attack * 3
		endif
		//call BJDebugMsg(R2S(attack))
		set j = 1
		loop
			exitwhen j >= 7

	            if(GetItemType(UnitItemInSlotBJ(u,j))==ITEM_TYPE_ARTIFACT)then
			    	set it= UnitItemInSlotBJ(u,j)
	            endif
			set j = j + 1
		endloop
		//君子剑、淑女剑
	    if GetItemTypeId(it)=='I099' and (GetUnitTypeId(u)=='O000' or GetUnitTypeId(u)=='O001' or GetUnitTypeId(u)=='O004' or GetUnitTypeId(u)=='O02J') then
		     set attack = attack * 1.5
	    endif
	    if GetItemTypeId(it)=='I09A' and (GetUnitTypeId(u)=='O002' or GetUnitTypeId(u)=='O003' or GetUnitTypeId(u)=='O023' or GetUnitTypeId(u)=='O02H' or GetUnitTypeId(u)=='O02I') then
		     set attack = attack * 1.5
	    endif
	else
		set attack = 750*(w1+w2)*(1.+GetUnitAbilityLevel(u,id))*shxishu
	endif
	
	
	if uc == null then
		set target_def = 0.5
	else
		set target_def = 1/(1+0.1*GetUnitLevel(uc))
	endif
	//set critical = udg_baojishanghai[1+GetPlayerId(GetOwningPlayer(u))]
	if uc == null then
		set dodge = 25
	else
		set dodge = RMinBJ(I2R(GetUnitLevel(uc)) / 4, 95.)
		if UnitHasBuffBJ(uc, 'Bslo') then
			set dodge = 0.
		endif
	endif
	set random = GetRandomReal(0.95, 0.95+I2R(udg_xinggeB[i])/20)
	set basic_damage = attack * target_def * random
	if GetRandomReal(0, 100) < dodge then
		set shanghai = 0
	else
		set shanghai = basic_damage
	endif
	//==================原伤害公式==================//
	//local real factor1
	//local real factor2
	//local real factor3
	//local real factor4
	//local real factor5
	//local real factor6
	//local real factor7

    //if UnitTypeNotNull(u,UNIT_TYPE_HERO)==true then
	   // set j = 1
	   // loop
	   // 	exitwhen j >= 7

    //            if(GetItemType(UnitItemInSlotBJ(u,j))==ITEM_TYPE_ARTIFACT)then
	   // 	    	set it= UnitItemInSlotBJ(u,j)
    //            endif
	   // 	set j = j + 1
	   // endloop
	   // //招式伤害因子
	   // set factor1=udg_lilianxishu[i]*I2R(GetHeroStatBJ(0,u,true))/3/((1.+I2R(GetUnitLevel(uc))/10)*(1.+I2R(GetUnitLevel(uc))/10))
	   // //call BJDebugMsg("历练系数="+R2S(udg_lilianxishu[i])+" 招式伤害="+I2S(GetHeroStatBJ(0,u,true)))
    //    //内力因子
    //    set factor2=(150.+I2R(GetHeroStatBJ(1,u,true)))/150.
    //    //随机波动
    //    set factor3=GetRandomReal(10.,10.*(1+I2R(udg_xinggeB[i])/5))
    //    //真实伤害因子
    //    set factor4=I2R(GetHeroStatBJ(2,u,true))*1.2
    //    //暴击因子
    //    set factor5=1.
    //    //技能重数+伤害加成
    //    set factor6=(1.+GetUnitAbilityLevel(u,id))*(udg_shanghaijiacheng[i]+.6)/2
    //   //武器熟练度因子
    //    //if it!=null then
    //    //    set factor7=0.5+LoadReal(YDHT,GetHandleId(p),GetItemTypeId(it))/10000
    //    //else
    //        set factor7=1.0

    //    //endif
    //    //君子剑、淑女剑
    //    if GetItemTypeId(it)=='I099' and (GetUnitTypeId(u)=='O000' or GetUnitTypeId(u)=='O001' or GetUnitTypeId(u)=='O004') then
	   //     //if Ce[i]==3 then
	   //     //	set factor7=RMinBJ(factor7*2.5,5)
	   //     //else
	   //     //	set factor7=RMinBJ(factor7*2.5,3)
    //    	//endif
    //    	set factor7=1.5
    //    endif
    //    if GetItemTypeId(it)=='I09A' and (GetUnitTypeId(u)=='O002' or GetUnitTypeId(u)=='O003' or GetUnitTypeId(u)=='O023' or GetUnitTypeId(u)=='O02H' or GetUnitTypeId(u)=='O02I') then
	   //     //if Ce[i]==3 then
	   //     //	set factor7=RMinBJ(factor7*2.5,5)
	   //     //else
	   //     //	set factor7=RMinBJ(factor7*2.5,3)
    //    	//endif
    //    	set factor7=1.5
    //    endif
    //else
    //    set factor1=I2R(GetUnitLevel(u))*GetUnitAbilityLevel(u,id)
    //    set factor2=3.
    //    set factor3=GetRandomReal(3.,60.*udg_nandu)
    //    set factor4=300
    //    set factor5=2.
    //    set factor6=5.
    //    set factor7=1.
    //endif

    //if GetUnitAbilityLevel(u,id)==9 then
	   // set factor6=factor6*5.
    //endif
    ////call BJDebugMsg("factor1="+R2S(factor1)+"factor2="+R2S(factor2)+"factor3="+R2S(factor3)+"factor4="+R2S(factor4)+"factor5="+R2S(factor5)+"factor6="+R2S(factor6)+"factor7="+R2S(factor7))
    //if GetRandomReal(0.,100.)<=100.*udg_baojilv[i] then
    //    set shanghai=shxishu*(w1*factor6*factor1*factor2+w2*factor4)*factor5*factor3*factor7
    //    set udg_baoji[i]=true
    //else
    //    set shanghai=shxishu*(w1*factor6*factor1*factor2+w2*factor4)*factor3*factor7
    //    set udg_baoji[i]=false
    //endif
    //if IsUnitType(uc,UNIT_TYPE_STRUCTURE) then
	   // set shanghai=0
    //endif
    set p=null
    set it=null
    call SaveReal(YDHT,1+GetPlayerId(GetOwningPlayer(u)),id*3,basic_damage)
    return shanghai
endfunction
function WuGongShangHai takes unit u, unit uc, real shanghai returns nothing
	if shanghai == 0 then
		call CreateTextTagUnitBJ("MISS",uc,0.,11.,255.,0.,0.,30.)
	else
		if GetRandomReal(0.,100.)<=100.*udg_baojilv[1+GetPlayerId(GetOwningPlayer(u))] then
			call UnitDamageTarget(u,uc,udg_baojishanghai[1+GetPlayerId(GetOwningPlayer(u))] * shanghai,true,false,ATTACK_TYPE_MAGIC,DAMAGE_TYPE_NORMAL,WEAPON_TYPE_WHOKNOWS)
		    call CreateTextTagUnitBJ(I2S(R2I(shanghai)),uc,.0,14.,100.,100.,.0,30.)
		else
		 	call UnitDamageTarget(u,uc,shanghai,true,false,ATTACK_TYPE_MAGIC,DAMAGE_TYPE_NORMAL,WEAPON_TYPE_WHOKNOWS)
		    call CreateTextTagUnitBJ(I2S(R2I(shanghai)),uc,.0,11.,100.,100.,100.,30.)
    	endif
	endif
    call SetTextTagVelocityBJ(bj_lastCreatedTextTag,400.,(GetRandomReal(80.,100.)))
    call Nw(.65,bj_lastCreatedTextTag)
endfunction

//武功升重及掌门称号系统
function WuGongShengChong takes unit u, integer id, real r returns nothing
	local integer level=GetUnitAbilityLevel(u,id)
	local player p=GetOwningPlayer(u)
	local integer idd = 0
	local integer i=1+GetPlayerId(p)
	if level>0 and level<7 then
		if UnitHasBuffBJ(u, 'B010') then
			call SaveInteger(YDHT,GetHandleId(GetOwningPlayer(u)),id,LoadInteger(YDHT,GetHandleId(GetOwningPlayer(u)),id)+(3+udg_xinggeA[i])*(wuxing[i]+5+GetRandomInt(0,R2I(r/60)))*(5+GetUnitAbilityLevel(u,'A02V')/2+2*udg_jwjs[i])/20)
		else
			call SaveInteger(YDHT,GetHandleId(GetOwningPlayer(u)),id,LoadInteger(YDHT,GetHandleId(GetOwningPlayer(u)),id)+(3+udg_xinggeA[i])*(wuxing[i]+5+GetRandomInt(0,R2I(r/60)))*(4+2*udg_jwjs[i])/20)
		endif
		call SaveStr(YDHT,GetHandleId(GetOwningPlayer(u)),id*2,I2S(LoadInteger(YDHT,GetHandleId(GetOwningPlayer(u)),id))+"/"+I2S(R2I(r*level)))
		if LoadInteger(YDHT,GetHandleId(GetOwningPlayer(u)),id)>R2I(r)*level then
		    call SaveInteger(YDHT,GetHandleId(GetOwningPlayer(u)),id,0)
		    call IncUnitAbilityLevel(u,id)
		    call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id*5, GetUnitAbilityLevel(u, id))
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"领悟了武功："+GetObjectName(id)+"第"+I2S(level+1)+"重")
        endif
    elseif level >0 and level<9 then
        if (GetRandomReal(1.,r*I2R(level))<=I2R(wuxing[i])/2*(1+0.6*udg_jwjs[i])) or (UnitHasBuffBJ(u, 'B010') and GetRandomReal(1.,r*I2R(level))<=I2R(wuxing[i])/2*(2+0.3*GetUnitAbilityLevel(u,'A02V')+0.6*udg_jwjs[i])) then
       		if id!= 'A07W' then
	        	call IncUnitAbilityLevel(u,id)
	        	call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id*5, GetUnitAbilityLevel(u, id))
            	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"领悟了武功："+GetObjectName(id)+"第"+I2S(level+1)+"重")
            	if level+1==9 and Ce[i]==8 then
					set wuxuedian[i] = wuxuedian[i] + 2
					call DisplayTextToPlayer(p, 0, 0, "|cff66ff00精武师有技能升级到九重，获得两个自创武学点")

					if (udg_jwjs[i]<=2) and udg_jwjsbool[i] == false then
						set udg_jwjs[i] = udg_jwjs[i] + 1
						call DisplayTextToPlayer(p, 0, 0, "|CFF66FF00恭喜您练成第"+I2S(udg_jwjs[i])+"个九重武功，练成3个可获得宗师哦")
					endif
					if (udg_jwjs[i]==3) and udg_jwjsbool[i] == false then
						set udg_jwjsbool[i] = true
						if udg_zhangmen[i]==true then
						else
							call SaveStr(YDHT, GetHandleId(p), GetHandleId(p),"〓精武宗师〓"+LoadStr(YDHT, GetHandleId(p), GetHandleId(p)))
						endif
						call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜"+GetPlayerName(p)+"获得精武宗师")
						call SetPlayerName(p, "〓精武宗师〓"+GetPlayerName(p))
					endif
				endif
        	endif
        else
            if udg_xinggeB[i]>=4 then
	            if id!= 'A07W' then
	            	if UnitHasBuffBJ(u, 'B010') then
	            		call SaveInteger(YDHT,GetHandleId(GetOwningPlayer(u)),id,LoadInteger(YDHT,GetHandleId(GetOwningPlayer(u)),id)+(3+udg_xinggeA[i])*(wuxing[i]+5+GetRandomInt(0,R2I(r/60)))/10*(2+GetUnitAbilityLevel(u,'A02V')/4+udg_jwjs[i]/3*2))
	            	else
	            		call SaveInteger(YDHT,GetHandleId(GetOwningPlayer(u)),id,LoadInteger(YDHT,GetHandleId(GetOwningPlayer(u)),id)+(3+udg_xinggeA[i])*(wuxing[i]+5+GetRandomInt(0,R2I(r/60)))/10*(2+udg_jwjs[i])/3*2)
            		endif
        		endif
		        call SaveStr(YDHT,GetHandleId(GetOwningPlayer(u)),id*2,I2S(LoadInteger(YDHT,GetHandleId(GetOwningPlayer(u)),id))+"/"+I2S(R2I(r*level)))
		        if LoadInteger(YDHT,GetHandleId(GetOwningPlayer(u)),id)>R2I(r)*level then
		            call SaveInteger(YDHT,GetHandleId(GetOwningPlayer(u)),id,0)
		            call IncUnitAbilityLevel(u,id)
		            call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id*5, GetUnitAbilityLevel(u, id))
                    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"领悟了武功："+GetObjectName(id)+"第"+I2S(level+1)+"重")
                    if level+1==9 and Ce[i]==8 then
					set wuxuedian[i] = wuxuedian[i] + 2
					call DisplayTextToPlayer(p, 0, 0, "|cff66ff00精武师有技能升级到九重，获得两个自创武学点")
					if (udg_jwjs[i]<=2) and udg_jwjsbool[i] == false then
						set udg_jwjs[i] = udg_jwjs[i] + 1
						call DisplayTextToPlayer(p, 0, 0, "|CFF66FF00恭喜您练成第"+I2S(udg_jwjs[i])+"个九重武功，练成3个可获得宗师哦")
					endif
					if (udg_jwjs[i]==3) and udg_jwjsbool[i] == false then
						set udg_jwjsbool[i] = true
						if udg_zhangmen[i]==true then
						else
							call SaveStr(YDHT, GetHandleId(p), GetHandleId(p),"〓精武宗师〓"+LoadStr(YDHT, GetHandleId(p), GetHandleId(p)))
						endif
						call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜"+GetPlayerName(p)+"获得精武宗师")
						call SetPlayerName(p, "〓精武宗师〓"+GetPlayerName(p))
					endif
				endif
                endif
            endif
        endif
    endif
    //掌门系统
    if UnitTypeNotNull(u,UNIT_TYPE_HERO) and udg_zhangmen[i]==false then
        if GetUnitAbilityLevel(u,'A0C7')>=6 and GetUnitAbilityLevel(u,'A0C2')>=6  and GetUnitAbilityLevel(u,'A0C5')>=6 and (GetUnitAbilityLevel(u,'A0C4')>=6 or GetUnitAbilityLevel(u,'A0C6')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：峨眉掌门")
            call ModifyHeroStat(0,u,0,240)
            call ModifyHeroStat(1,u,0,170)
            call SetPlayerName(p,"〓峨眉掌门〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=1
            if GetUnitAbilityLevel(u,'A07N')>=1 and UnitHaveItem(u,'I00B')then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：芷若")
            	call ModifyHeroStat(0,u,0,480)
            	call SetPlayerName(p,"〓芷若〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        	if GetUnitAbilityLevel(u,'A0C6')>=1 and UnitHaveItem(u,'I09D')then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：小东邪")
            	call ModifyHeroStat(1,u,0,360)
            	call SetPlayerName(p,"〓小东邪〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        elseif GetUnitAbilityLevel(u,'A0C9')>=6 and GetUnitAbilityLevel(u,'A0CB')>=6  and GetUnitAbilityLevel(u,'A0C8')>=6 and (GetUnitAbilityLevel(u,'A0CA')>=6 or GetUnitAbilityLevel(u,'A0DI')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：丐帮帮主")
            call ModifyHeroStat(0,u,0,480)
            call SetPlayerName(p,"〓丐帮帮主〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=2
            if GetUnitAbilityLevel(u,'A07L')>=1 and GetUnitAbilityLevel(u,'A07E')>=1 and UnitHaveItem(u,'I097')then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：北丐")
            	call ModifyHeroStat(0,u,0,480)
            	call SetUnitAbilityLevel(u,'A07L',IMinBJ(GetUnitAbilityLevel(u,'A07L')+3,9))
            	call SetUnitAbilityLevel(u,'A07E',IMinBJ(GetUnitAbilityLevel(u,'A07E')+3,9))
            	call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A07L'*5, GetUnitAbilityLevel(u, 'A07L'))
            	call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A07E'*5, GetUnitAbilityLevel(u, 'A07E'))
            	call SetPlayerName(p,"〓北丐〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        elseif GetUnitAbilityLevel(u,'A0CF')>=6 and GetUnitAbilityLevel(u,'A0DA')>=6  and GetUnitAbilityLevel(u,'A0CM')>=6 and (GetUnitAbilityLevel(u,'A0CH')>=6 or GetUnitAbilityLevel(u,'A0DE')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：全真掌教")
            call ModifyHeroStat(1,u,0,360)
            call SetPlayerName(p,"〓全真掌教〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=3
            if GetUnitAbilityLevel(u,'A017')>=1 and GetUnitAbilityLevel(u,'A07U')>=1 and GetUnitAbilityLevel(u,'A0D1')>=1 then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：老顽童")
            	call ModifyHeroStat(1,u,0,360)
            	call SetUnitAbilityLevel(u,'A017',9)
            	call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A017'*5, GetUnitAbilityLevel(u, 'A017'))
            	call SetPlayerName(p,"〓老顽童〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        	if GetUnitAbilityLevel(u,'A06P')>=1 and GetUnitAbilityLevel(u,'A07S')>=1 and GetUnitAbilityLevel(u,'A0CH')>=1 then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：中神通")
            	call ModifyHeroStat(1,u,0,300)
            	call SetUnitAbilityLevel(u,'A0CH',9)
            	call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A0CH'*5, GetUnitAbilityLevel(u, 'A0CH'))
            	call SetPlayerName(p,"〓中神通〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        elseif GetUnitAbilityLevel(u,'A0CI')>=6 and GetUnitAbilityLevel(u,'A0CJ')>=6  and GetUnitAbilityLevel(u,'A0CN')>=6 and (GetUnitAbilityLevel(u,'A0CK')>=6 or GetUnitAbilityLevel(u,'A0DH')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：血刀掌门")
            call ModifyHeroStat(2,u,0,1200)
            call SetPlayerName(p,"〓血刀掌门〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=4
            if UnitHaveItem(u,'I098') then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：血刀老祖")
            	call ModifyHeroStat(0,u,0,480)
            	call SetPlayerName(p,"〓血刀老祖〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        	if GetUnitAbilityLevel(u,'A07X')>=1 and GetUnitAbilityLevel(u,'A06J')>=1 and GetUnitAbilityLevel(u,'A071')>=1 then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：空心菜")
            	call ModifyHeroStat(1,u,0,360)
            	call SetPlayerName(p,"〓空心菜〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        elseif GetUnitAbilityLevel(u,'A09E')>=6 and GetUnitAbilityLevel(u,'A09J')>=6  and GetUnitAbilityLevel(u,'A09M')>=6 and (GetUnitAbilityLevel(u,'A09T')>=6 or GetUnitAbilityLevel(u,'A09U')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：古墓掌门")
            call ModifyHeroStat(0,u,0,240)
            call ModifyHeroStat(1,u,0,240)
            call SetPlayerName(p,"〓古墓掌门〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=5
            if GetUnitAbilityLevel(u,'A07G')>=1 and UnitHaveItem(u,'I099') then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：神雕侠")
            	call ModifyHeroStat(0,u,0,480)
            	call SetUnitAbilityLevel(u,'A07G',IMinBJ(GetUnitAbilityLevel(u,'A07G')+3,9))
            	call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A07G'*5, GetUnitAbilityLevel(u, 'A07G'))
            	call SetPlayerName(p,"〓神雕侠〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        	if GetUnitAbilityLevel(u,'A07U')>=1 and UnitHaveItem(u,'I09A') then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：小龙女")
            	call ModifyHeroStat(2,u,0,600)
            	call SetPlayerName(p,"〓小龙女〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        	if GetUnitAbilityLevel(u,'A07G')>=1 and GetUnitAbilityLevel(u,'A07U')>=1 and UnitHaveItem(u,'I09C') then
	        	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：神雕侠侣")
	        	call ModifyHeroStat(0,u,0,480)
            	call ModifyHeroStat(2,u,0,600)
            	call SetUnitAbilityLevel(u,'A07G',IMinBJ(GetUnitAbilityLevel(u,'A07G')+6,9))
            	call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A07G'*5, GetUnitAbilityLevel(u, 'A07G'))
            	call SetPlayerName(p,"〓神雕侠侣〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        	if GetUnitAbilityLevel(u,'A07A')>=6 then
	        	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：赤炼仙子")
	        	call SetPlayerName(p,"〓赤炼仙子〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
	        	call SetUnitAbilityLevel(u,'A07A',IMinBJ(GetUnitAbilityLevel(u,'A07A')+6,9))
            	call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A07A'*5, GetUnitAbilityLevel(u, 'A07A'))
            	set chilian[i] = true
        	endif
        elseif GetUnitAbilityLevel(u,'A05G')>=6 and GetUnitAbilityLevel(u,'A000')>=6  and GetUnitAbilityLevel(u,'A05K')>=6 and (GetUnitAbilityLevel(u,'A05O')>=6 or GetUnitAbilityLevel(u,'S000')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：少林方丈")
            call ModifyHeroStat(0,u,0,170)
            call ModifyHeroStat(1,u,0,190)
            call ModifyHeroStat(2,u,0,480)
            call SetPlayerName(p,"〓少林方丈〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=6
            if GetUnitAbilityLevel(u,'A05O')>=1 and yishu[i]>=32 then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：扫地神僧")
            	call ModifyHeroStat(1,u,0,720)
            	call SetPlayerName(p,"〓扫地神僧〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        elseif GetUnitAbilityLevel(u,'A04D')>=6 and GetUnitAbilityLevel(u,'A08S')>=6  and GetUnitAbilityLevel(u,'A08R')>=6 and (GetUnitAbilityLevel(u,'A08Q')>=6 or GetUnitAbilityLevel(u,'A08V')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：武当掌门")
            call ModifyHeroStat(0,u,0,240)
            call ModifyHeroStat(2,u,0,600)
            call SetPlayerName(p,"〓武当掌门〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=7
            if GetUnitAbilityLevel(u,'A0DN')>=1 and GetUnitAbilityLevel(u,'A09D')>=1 then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：邋遢仙人")
            	call ModifyHeroStat(1,u,0,420)
            	call SetPlayerName(p,"〓邋遢仙人〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        elseif GetUnitAbilityLevel(u,'A0BP')>=6 and GetUnitAbilityLevel(u,'A0BS')>=6  and GetUnitAbilityLevel(u,'A0BQ')>=6 and (GetUnitAbilityLevel(u,'A0BT')>=6 or GetUnitAbilityLevel(u,'A0BV')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：星宿掌门")
            call ModifyHeroStat(0,u,0,360)
            call ModifyHeroStat(2,u,0,360)
            call SetPlayerName(p,"〓星宿掌门〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=8
            if GetUnitAbilityLevel(u,'A07P')>=1 and GetUnitAbilityLevel(u,'A083')>=1 then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：星宿老仙")
            	call ModifyHeroStat(1,u,0,600)
            	if (GetUnitAbilityLevel(u,'A0BT')>=6) then
            		call SetUnitAbilityLevel(u,'A0BT',9)
        		elseif (GetUnitAbilityLevel(u,'A0BV')>=6) then
            		call SetUnitAbilityLevel(u,'A0BV',9)
        		endif
            	call SetPlayerName(p,"〓星宿老仙〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        elseif GetUnitAbilityLevel(u,'A08W')>=6 and GetUnitAbilityLevel(u,'A08X')>=6  and GetUnitAbilityLevel(u,'A08Y')>=6 and (GetUnitAbilityLevel(u,'A037')>=6 or GetUnitAbilityLevel(u,'A091')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：华山掌门")
            call ModifyHeroStat(1,u,0,170)
            call ModifyHeroStat(2,u,0,290)
            call SetPlayerName(p,"〓华山掌门〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=9
            if GetUnitAbilityLevel(u,'A07T')>=1 and GetUnitAbilityLevel(u,'A07J')>=1 then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：君子剑")
            	call ModifyHeroStat(0,u,0,600)
            	call SetPlayerName(p,"〓君子剑〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        	endif
        elseif GetUnitAbilityLevel(u,'A01Z')>=6 and GetUnitAbilityLevel(u,'A021')>=6  and GetUnitAbilityLevel(u,'A0CD')>=6 and (GetUnitAbilityLevel(u,'A023')>=6 or GetUnitAbilityLevel(u,'A024')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：恒山掌门")
            call ModifyHeroStat(1,u,0,460)
            call SetPlayerName(p,"〓恒山掌门〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=10
        elseif GetUnitAbilityLevel(u,'A02B')>=6 and GetUnitAbilityLevel(u,'A02C')>=6  and GetUnitAbilityLevel(u,'A02F')>=6 and (GetUnitAbilityLevel(u,'A02G')>=6 or GetUnitAbilityLevel(u,'A02H')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：灵鹫宫主")
            call ModifyHeroStat(0,u,0,220)
            call ModifyHeroStat(1,u,0,220)
            call ModifyHeroStat(2,u,0,220)
            call SetPlayerName(p,"〓灵鹫宫主〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=12
		elseif GetUnitAbilityLevel(u,'A08A')>=6 and GetUnitAbilityLevel(u,'A08B')>=6  and GetUnitAbilityLevel(u,'A08E')>=6 and (GetUnitAbilityLevel(u,'A08G')>=6 or GetUnitAbilityLevel(u,'A08H')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：泰山掌门")
            call ModifyHeroStat(0,u,0,320)
            call ModifyHeroStat(1,u,0,220)
            call ModifyHeroStat(2,u,0,120)
            call SetPlayerName(p,"〓泰山掌门〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=24
        elseif GetUnitAbilityLevel(u,'A02K')>=6 and GetUnitAbilityLevel(u,'A0CC')>=6  and GetUnitAbilityLevel(u,'A02M')>=6 and (GetUnitAbilityLevel(u,'A02R')>=6 or GetUnitAbilityLevel(u,'A02V')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：慕容龙城")
            call ModifyHeroStat(0,u,0,100)
            call ModifyHeroStat(1,u,0,280)
            call ModifyHeroStat(2,u,0,300)
            call SetPlayerName(p,"〓慕容龙城〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=13
        elseif GetUnitAbilityLevel(u,'A04M')>=6 and GetUnitAbilityLevel(u,'A04N')>=6  and GetUnitAbilityLevel(u,'A04P')>=6 and (GetUnitAbilityLevel(u,'A026')>=6 or GetUnitAbilityLevel(u,'A04R')>=6) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：衡山掌门")
            call ModifyHeroStat(0,u,0,350)
            call ModifyHeroStat(1,u,0,260)
            call ModifyHeroStat(2,u,0,100)
            call SetPlayerName(p,"〓衡山掌门〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=15
            if GetUnitAbilityLevel(u,'A04M')>=7 and GetUnitAbilityLevel(u,'A04N')>=7  and GetUnitAbilityLevel(u,'A04P')>=7 then
				call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：莫大先生")
	            call SetPlayerName(p,"〓莫大先生〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
				set L7[i]=1
				loop
					exitwhen L7[i]>wugongshu[i]
					if (I7[20*(i-1)+L7[i]]!='AEfk')then
						if((L7[i]==wugongshu[i]))then
							call SetUnitAbilityLevel(u,'A04M',9)
							call SetUnitAbilityLevel(u,'A04N',9)
							call SetUnitAbilityLevel(u,'A04P',9)
            				call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A04M'*5, 9)
            				call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A04N'*5, 9)
            				call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A04P'*5, 9)
						endif
					else
						if GetUnitAbilityLevel(u, 'A026')>=6 then
							set idd = 'A04R'
						else
							set idd = 'A026'
						endif
						call UnitAddAbility(u, idd)
						call UnitMakeAbilityPermanent(u, true, idd)
						set I7[20*(i-1)+L7[i]] = idd
						exitwhen true
					endif
					set L7[i]=L7[i]+1
				endloop
            endif
        elseif GetUnitAbilityLevel(u,'A04W')>=6 and GetUnitAbilityLevel(u,'A04Z')>=6  and GetUnitAbilityLevel(u,'A051')>=6 and (GetUnitAbilityLevel(u,'A057')>=6 or GetUnitAbilityLevel(u,'A059')>=6) then
        	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：神龙教主")
            call ModifyHeroStat(0,u,0,350)
            call ModifyHeroStat(2,u,0,200)
            call SetPlayerName(p,"〓神龙教主〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=16
        elseif GetUnitAbilityLevel(u,'A056')>=6 and GetUnitAbilityLevel(u,'A054')>=6  and GetUnitAbilityLevel(u,'A04X')>=6 and (GetUnitAbilityLevel(u,'A057')>=6 or GetUnitAbilityLevel(u,'A059')>=6) then
        	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：教主夫人")
            call ModifyHeroStat(0,u,0,200)
            call ModifyHeroStat(1,u,0,350)
            call SetPlayerName(p,"〓教主夫人〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=17
        elseif GetUnitAbilityLevel(u,'A030')>=6 and GetUnitAbilityLevel(u,'A032')>=6  and GetUnitAbilityLevel(u,'A06R')>=6 and (GetUnitAbilityLevel(u,'A034')>=6 or GetUnitAbilityLevel(u,'A07W')>=4) then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：明教教主")
            call ModifyHeroStat(0,u,0,210)
            call ModifyHeroStat(1,u,0,310)
            call ModifyHeroStat(2,u,0,160)
            call SetPlayerName(p,"〓明教教主〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=14
            if GetUnitAbilityLevel(u,'A030')>=9 then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：白眉鹰王")
	            call SetPlayerName(p,"〓白眉鹰王〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
	            call ModifyHeroStat(2,u,0,500)
            endif
            if GetUnitAbilityLevel(u,'A032')>=9 then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：青翼幅王")
	            call SetPlayerName(p,"〓青翼幅王〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
	            call ModifyHeroStat(1,u,0,300)
            endif
            if GetUnitAbilityLevel(u,'A06R')>=9 and GetUnitAbilityLevel(u, 'A07M')>=3 and UnitHaveItem(u, 'I00D') then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：金毛狮王")
	            call SetPlayerName(p,"〓金毛狮王〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
	            call SetUnitAbilityLevel(u,'A07M',IMinBJ(GetUnitAbilityLevel(u,'A07M')+6,9))
	            call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A07M'*5, GetUnitAbilityLevel(u, 'A07M'))
	            call ModifyHeroStat(0,u,0,300)
            endif
            if GetUnitAbilityLevel(u,'A07W')>=6 and GetUnitAbilityLevel(u, 'A0DN')>=1 and GetUnitAbilityLevel(u,'A08R')>=4 then
	            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：无忌")
	            call SetPlayerName(p,"〓无忌〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
	            call SetUnitAbilityLevel(u,'A08R',IMinBJ(GetUnitAbilityLevel(u,'A08R')+3,9))
	            call SetUnitAbilityLevel(u,'A07W',7)
            	call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A07W'*5, GetUnitAbilityLevel(u, 'A07W'))
            	call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A08R'*5, GetUnitAbilityLevel(u, 'A08R'))
	            call ModifyHeroStat(1,u,0,1000)
	            call ModifyHeroStat(2,u,0,500)
            endif
        elseif GetUnitAbilityLevel(u,'A07S')>=1 and GetUnitAbilityLevel(u,'A0D2')>=1  and GetUnitAbilityLevel(u,'A0D6')>=1 and GetUnitAbilityLevel(u,'A0D4')>=1 and GetUnitAbilityLevel(u,'A07N')>=4 and GetUnitAbilityLevel(u,'A0D3')>=4 and GetUnitAbilityLevel(u,'A0D1')>=4 then
            call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：真·九阴真人")
            call SetPlayerName(p,"〓真·九阴真人〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            call SetUnitAbilityLevel(u,'A07N',IMinBJ(GetUnitAbilityLevel(u,'A07N')+3,9))
            call SetUnitAbilityLevel(u,'A0D3',IMinBJ(GetUnitAbilityLevel(u,'A0D3')+3,9))
            call SetUnitAbilityLevel(u,'A0D1',IMinBJ(GetUnitAbilityLevel(u,'A0D1')+3,9))
            call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A07N'*5, GetUnitAbilityLevel(u, 'A07N'))
            call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A0D3'*5, GetUnitAbilityLevel(u, 'A0D3'))
            call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A0D1'*5, GetUnitAbilityLevel(u, 'A0D1'))
            call ModifyHeroStat(1,u,0,2900)
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=11
        elseif GetUnitAbilityLevel(u,'A089')>=5 and GetUnitAbilityLevel(u,'A084')>=1  and GetUnitAbilityLevel(u,'A0D2')>=1 and UnitHaveItem(u,'I09B') then
        	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：西毒")
            call SetPlayerName(p,"〓西毒〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            call ModifyHeroStat(0,u,0,600)
            call ModifyHeroStat(2,u,0,360)
            call unitadditembyidswapped('I070',u)
            call SetUnitAbilityLevel(u,'A089',IMinBJ(GetUnitAbilityLevel(u,'A089')+2,9))
            call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A089'*5, GetUnitAbilityLevel(u, 'A089'))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=19
		elseif GetUnitAbilityLevel(u,'A06H')>=5 and GetUnitAbilityLevel(u,'A018')>=5  and UnitHaveItem(u,'I09D') then
        	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：东邪")
            call SetPlayerName(p,"〓东邪〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            call ModifyHeroStat(1,u,0,240)
            call ModifyHeroStat(2,u,0,300)
            call SetUnitAbilityLevel(u,'A06H',9)
            call SetUnitAbilityLevel(u,'A018',9)
            call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A06H'*5, GetUnitAbilityLevel(u, 'A06H'))
            call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A018'*5, GetUnitAbilityLevel(u, 'A018'))
            call unitadditembyidswapped('I04Q',u)
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=22
        elseif GetUnitAbilityLevel(u,'A06P')>=5 and GetUnitAbilityLevel(u,'A0CH')>=3  and GetUnitAbilityLevel(u,'A0D4')>=1 and udg_runamen[i]!=5 then
        	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：南帝")
            call SetPlayerName(p,"〓南帝〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
            call ModifyHeroStat(1,u,0,480)
            call ModifyHeroStat(2,u,0,600)
            call SetUnitAbilityLevel(u,'A06P',9)
            call SetUnitAbilityLevel(u,'A0CH',7)
            call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A06P'*5, GetUnitAbilityLevel(u, 'A06P'))
            call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A0CH'*5, GetUnitAbilityLevel(u, 'A0CH'))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=23
        elseif GetUnitAbilityLevel(u,'A07N')>=5 and GetUnitAbilityLevel(u,'A0D1')>=5  and GetUnitAbilityLevel(u,'A0D3')>=5 and GetUnitAbilityLevel(u,'A07G')>=3 and (GetUnitTypeId(u)=='O023' or GetUnitTypeId(u)=='O02H' or GetUnitTypeId(u)=='O02I' or GetUnitTypeId(u)=='O003' or GetUnitTypeId(u)=='O002') then
        	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：瑶琴")
            call SetPlayerName(p,"〓瑶琴〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call ModifyHeroStat(0,u,0,700)
            call ModifyHeroStat(1,u,0,200)
            call SetUnitAbilityLevel(u,'A0D1',9)
            call SetUnitAbilityLevel(u,'A0D3',7)
            call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A0D1'*5, GetUnitAbilityLevel(u, 'A0D1'))
            call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A0D3'*5, GetUnitAbilityLevel(u, 'A0D3'))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=18
            //自创武功命名为虾米神拳
        elseif zizhiwugong[i].name=="虾米神拳" and GetUnitAbilityLevel(u,'A036')>=1 and GetUnitAbilityLevel(u,'A07I')>=5 and udg_runamen[i] == 11 then
			call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：小虾米")
            call SetPlayerName(p,"〓小虾米〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call ModifyHeroStat(0,u,0,600)
            call ModifyHeroStat(1,u,0,600)
            call ModifyHeroStat(2,u,0,600)
            call SetUnitAbilityLevel(u,'A07I',9)
            call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A07I'*5, GetUnitAbilityLevel(u, 'A07I'))
            set udg_zhangmen[i]=true
            set udg_whichzhangmen[i]=21
        endif
    endif
    if UnitTypeNotNull(u,UNIT_TYPE_HERO) and udg_whichzhangmen[i]==10 and GetUnitAbilityLevel(u,'A07F')>=1 and GetUnitAbilityLevel(u,'A09D')>=1 and  GetUnitAbilityLevel(u,'A07R')>=1 and  GetUnitAbilityLevel(u,'A08W')>=1 then
    	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff66ff00恭喜玩家"+I2S(i)+"获得了称号：笑傲江湖")
        call SetPlayerName(p,"〓笑傲江湖〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        call ModifyHeroStat(0,u,0,480)
        call ModifyHeroStat(2,u,0,600)
        call SetUnitAbilityLevel(u,'A07F',IMinBJ(GetUnitAbilityLevel(u,'A07F')+3,9))
        call SetUnitAbilityLevel(u,'A08W',IMinBJ(GetUnitAbilityLevel(u,'A08W')+3,9))
        call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A07F'*5, GetUnitAbilityLevel(u, 'A07F'))
        call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A08W'*5, GetUnitAbilityLevel(u, 'A08W'))
        set udg_whichzhangmen[i]=20
    endif
    set p=null
endfunction
//击退系统
function knock_back_condition takes nothing returns boolean
    local unit u=LoadUnitHandle(YDHT,StringHash("击退"),0)
    local real shanghai=LoadReal(YDHT,StringHash("击退"),1)
    local unit uc=GetFilterUnit()
	if IsUnitEnemy(uc,GetOwningPlayer(u)) then
		//call DisplayTextToPlayer(GetOwningPlayer(u),0,0,R2S(shanghai))
		//call WuGongShangHai(u,uc,shanghai)
	endif
    set uc=null
	set u=null
	call FlushChildHashtable(YDHT,StringHash("击退"))
	return false
endfunction
function knock_back_on_timer takes nothing returns nothing
    local timer t= GetExpiredTimer()
    local integer p= GetHandleId(t)
    local unit u= LoadUnitHandle(YDHT, p, 0)
    local integer step= LoadInteger(YDHT, p, 1) + 1
    local real shanghai=LoadReal(YDHT, p, 6)
    local group g=CreateGroup()
    //call  DisplayTextToPlayer(GetOwningPlayer(u),0,0,R2S(shanghai))
    call SaveInteger(YDHT, p, 1, step)
    if IsTerrainPathable( GetUnitX(u) + LoadReal(YDHT, p, 3),GetUnitY(u) + LoadReal(YDHT, p, 4),PATHING_TYPE_WALKABILITY)==false then
    call SetUnitX(u, CheckX(GetUnitX(u) + LoadReal(YDHT, p, 3)))
    call SetUnitY(u, CheckY(GetUnitY(u) + LoadReal(YDHT, p, 4)))
    call DestroyEffect(AddSpecialEffect(LoadStr(YDHT, p, 5), GetUnitX(u), GetUnitY(u)))
    endif
    call SaveUnitHandle(YDHT,StringHash("击退"),0,u)
    call SaveReal(YDHT,StringHash("击退"),1,shanghai)
    call GroupEnumUnitsInRange(g,CheckX(GetUnitX(u)),CheckY(GetUnitY(u)),500,Condition(function knock_back_condition))
    if ( step >= LoadInteger(YDHT, p, 2) ) then
	    call PauseTimer(t)
        call DestroyTimer(t)
        call FlushChildHashtable(YDHT, p)
    endif
    call GroupClear(g)
    call DestroyGroup(g)
    set g=null
    set u=null
    set t=null
endfunction
//击退函数
function knock_back takes unit u,real angle,real dist,real time,real period,string model,real shanghai returns nothing
    local timer t= CreateTimer()
    local integer p= GetHandleId(t)
    local integer m= R2I(time / period)
    set dist=dist / m //  单次位移距离
    call SaveUnitHandle(YDHT, p, 0, u) //  存储被击退单位
    call SaveInteger(YDHT, p, 1, 0) //  存储循环计数
    call SaveInteger(YDHT, p, 2, m) //  存储次数
    call SaveReal(YDHT, p, 3, dist * Cos(angle)) //  存储x轴速度分量
    call SaveReal(YDHT, p, 4, dist * Sin(angle)) //  存储y轴速度分量
    call SaveStr(YDHT, p, 5, model)
    call SaveReal(YDHT,p,6,shanghai) //存储伤害
    call TimerStart(t, period, true, function knock_back_on_timer)
    set t=null
endfunction
function IsCertainWuGong takes unit u, unit uc, integer id returns boolean
	return (GetRandomReal(0.,100)<15+fuyuan[1+GetPlayerId(GetOwningPlayer(u))]/5) and (GetUnitAbilityLevel(u,id)>=1) and (IsUnitEnemy(uc,GetOwningPlayer(u)))
endfunction
//BOSS AI放技能
function IsUnitBoss takes nothing returns boolean
	return ((GetUnitPointValue(GetTriggerUnit())==101))
endfunction
function BossFangJiNeng takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local unit uc=GetEventDamageSource()
	local real x = GetUnitX(uc)
	local real y = GetUnitY(uc)
    if GetRandomInt(1,100)<50 then
	    if (GetUnitTypeId(GetTriggerUnit())==u7[1]) then
            call IssuePointOrderById(u,$D0278,x,y)
		elseif (GetUnitTypeId(GetTriggerUnit())==u7[2]) then
		    if GetRandomInt(1,3)==1 then
                call IssueTargetOrderById(u,$D0278,uc)
            elseif GetRandomInt(1,2)==1 then
                call IssueImmediateOrderById(u,$D00D1)
            else
                call IssueImmediateOrderById(u,$D00D2)
            endif
		elseif (GetUnitTypeId(GetTriggerUnit())==u7[3]) then
		    call IssuePointOrderById(u,$D0278,x,y)
		elseif (GetUnitTypeId(GetTriggerUnit())==u7[4]) then
		    call IssuePointOrderById(u,$D0278,x,y)
		elseif (GetUnitTypeId(GetTriggerUnit())==u7[5]) then
		    call IssueTargetOrder(u,"chemicalrage",u)
		elseif (GetUnitTypeId(GetTriggerUnit())==u7[6]) then
		    call IssueTargetOrder(u,"devour",u)
    	endif
    endif
    set u=null
    set uc=null
endfunction

/*
 * 万能状态系统：
 * 1 内伤 处于内伤状态下，每次发起攻击扣除自身气血1/1000
 * 2 走火入魔 该单位受到了走火入魔的作用，每次发起攻击会扣除自身3/1000的气血
 * 3 流血 处于流血状态下，每秒扣除气血2/1000
 * 4 混乱 该单位受到了混乱的作用，因此失去了控制
 * 5 昏迷 该单位被昏迷了，其移动速度下降很多
 * 6 重伤 该单位被重伤了，其攻击速度都会下降
 * 7 血流不止 处于血流不止状态下，每秒扣除气血3/1000
 * 8 麻痹 该单位受到了麻痹效果，因此攻击命中率从下降60%
 * 9 破防 降低400点护甲
 * 10 神经错乱 释放技能和触发招式扣血气血5%
 * 11 封穴 眩晕3秒
 * 12 穴位全封 眩晕6秒
 * 13 中毒 处于中毒状态下，减少移动速度并且每秒扣除气血1/1000
 * 14 深度中毒 处于深度中毒状态下，减少移动速度并且每秒扣除气血3/1000
 */
function WanBuff_1 takes integer buffnum, integer num, unit uc, integer id, integer orderid, unit ut, string s returns nothing
	local unit u
	local player p
	local location loc
	if (buffnum==num) then
		set p = GetOwningPlayer(uc)
		set loc = GetUnitLoc(ut)
		call CreateNUnitsAtLoc(1,'e000',p,loc,bj_UNIT_FACING)
    	set u = bj_lastCreatedUnit
    	call ShowUnitHide(u)
		call UnitAddAbility(u, id)
		if (num==12 or num==14) then
			call IncUnitAbilityLevel(u,id)
		endif
    	call IssueTargetOrderById(u, orderid, ut)
    	call UnitApplyTimedLife(u,'BHwe',2.)
    	call CreateTextTagLocBJ(s,loc,60.,12.,65.,55.,42.,0)
		call Nw(3.,bj_lastCreatedTextTag)
    	call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,90)
		call RemoveLocation(loc)
	endif
	set loc = null
	set p = null
	set u = null
endfunction

function WanBuff takes unit u, unit ut, integer buffnum returns nothing
    call WanBuff_1(buffnum, 1, u, 'A077', $D008F, ut, "内伤")
    call WanBuff_1(buffnum, 2, u, 'A079', $D02BC, ut, "走火入魔")
    call WanBuff_1(buffnum, 3, u, 'A075', $D022F, ut, "流血")
    call WanBuff_1(buffnum, 4, u, 'A06I', $D00DD, ut, "混乱")
    call WanBuff_1(buffnum, 5, u, 'A0AZ', $D006B, ut, "昏迷")
    call WanBuff_1(buffnum, 6, u, 'A076', $D006B, ut, "重伤")
    call WanBuff_1(buffnum, 7, u, 'A078', $D022F, ut, "血流不止")
    call WanBuff_1(buffnum, 8, u, 'A0AY', $D00DE, ut, "麻痹")
    call WanBuff_1(buffnum, 9, u, 'A019', $D00B5, ut, "破防")
    call WanBuff_1(buffnum, 10, u, 'A05N', $D00DE, ut, "神经错乱")
    call WanBuff_1(buffnum, 11, u, 'A05L', $D007F, ut, "封穴")
    call WanBuff_1(buffnum, 12, u, 'A05L', $D007F, ut, "穴位全封")
	call WanBuff_1(buffnum, 13, u, 'A074', $D022F, ut, "中毒")
	call WanBuff_1(buffnum, 14, u, 'A074', $D022F, ut, "深度中毒")
endfunction


//封装CreateTimerDialog方法并使对话框自动显示
function createTimerDialog takes timer t, string title returns timerdialog
	call CreateTimerDialogBJ(t, title)
	call TimerDialogDisplay(bj_lastCreatedTimerDialog,true)
	return bj_lastCreatedTimerDialog
endfunction

/*
 * 马甲在目标单位所在处对单位释放技能
 * @param owner 马甲所有者的英雄
 * @param unitId 马甲单位id
 * @param abilityId 马甲技能id
 * @param orderId 马甲技能对应的命令ID
 * @param target 马甲技能的施放目标
 */
function maJiaUseAbilityAtEnemysLoc takes unit owner, integer unitId,  integer abilityId, integer orderId, unit target, real lifeTime returns nothing
	local location loc = GetUnitLoc(target)
	call CreateNUnitsAtLoc(1, unitId, GetOwningPlayer(owner),loc,bj_UNIT_FACING)
    call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddAbility(bj_lastCreatedUnit, abilityId)
	call IssueTargetOrderById(bj_lastCreatedUnit,orderId, target)
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',lifeTime)
	call RemoveLocation(loc)
	set loc = null
endfunction

/*
 * 马甲在目标单位所在处对单位释放技能
 * @param owner 马甲所有者的英雄
 * @param unitId 马甲单位id
 * @param abilityId 马甲技能id
 * @param orderId 马甲技能对应的命令ID
 * @param target 马甲技能的施放目标
 */
function maJiaUseLeveldAbilityAtTargetLoc takes unit owner, integer unitId,  integer abilityId, integer ablilityLevel, integer orderId, unit target, real lifeTime returns nothing
	local location loc = GetUnitLoc(target)
	call CreateNUnitsAtLoc(1, unitId, GetOwningPlayer(owner),loc,bj_UNIT_FACING)
    call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddAbility(bj_lastCreatedUnit, abilityId)
	call SetUnitAbilityLevel(bj_lastCreatedUnit, abilityId, ablilityLevel)
	call IssueTargetOrderById(bj_lastCreatedUnit,orderId, target)
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',lifeTime)
	call RemoveLocation(loc)
	set loc = null
endfunction

/*
 * 被动技能判断条件
 */
function PassiveWuGongCondition takes unit playerControllingUnit, unit enemy, integer abilityId returns boolean
	return GetUnitAbilityLevel(playerControllingUnit, abilityId)>=1 and IsUnitEnemy(enemy, GetOwningPlayer(playerControllingUnit))
endfunction

/*
 * 几率触发被动武功(AOE)
 * @param filter 筛选伤害周围单位的条件，通常为活着、敌人
 * @param callback 对筛选出的单位进行伤害的函数，包括物效
 */
function PassiveWuGongAction takes unit playerControllingUnit, unit enemy, real possibility, real range, boolexpr filter, code callback, integer abilityId, real upgradeSpeed returns nothing
	local location loc = GetUnitLoc(playerControllingUnit)
	local integer i = 1 + GetPlayerId(GetOwningPlayer(playerControllingUnit))
	if (GetRandomInt(1, 100)<=fuyuan[i]/5+possibility) then
		call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(range,loc,filter),callback)
		call WuGongShengChong(playerControllingUnit, abilityId, upgradeSpeed)
	endif
	call RemoveLocation(loc)
	set loc = null
endfunction

/*
 * 被动武功伤害对象的筛选条件：活着的敌人
 */
function DamageFilter takes unit playerControllingUnit, unit filtered returns boolean
	return IsUnitAliveBJ(filtered) and IsUnitEnemy(filtered, GetOwningPlayer(playerControllingUnit))
endfunction

/*
 * 武功搭配中技能加强伤害的系数
 */
function DamageCoefficientByAbility takes unit u, integer abilityId, real coefficient returns real
	if (GetUnitAbilityLevel(u, abilityId)>=1) then
		return coefficient
	endif
	return 0.0
endfunction

/*
 * 武功搭配中物品加强伤害的系数
 */
function DamageCoefficientByItem takes unit u, integer itemId, real coefficient returns real
	if (UnitHaveItem(u, itemId)) then
		return coefficient
	endif
	return 0.0
endfunction

/*
 * 被动武功的特效和伤害
 * @param w1:伤害公式中的第1个伤害因子
 * @param w2:伤害公式中的第2个伤害因子
 */
function PassiveWuGongEffectAndDamage takes unit playerControllingUnit, unit enemy, string modelName, real w1, real w2, real damageCoefficient, integer abilityId returns nothing
	local location loc = GetUnitLoc(enemy)
	call DestroyEffect(AddSpecialEffectLoc(modelName, loc))
	call WuGongShangHai(playerControllingUnit,enemy,ShangHaiGongShi(playerControllingUnit,enemy,w1,w2,damageCoefficient,abilityId))
	call RemoveLocation(loc)
	set loc = null
endfunction

/*
 * 封装漂浮字方法
 */
function FontFloat takes string s, location loc, real zoffset, real size, real red, real green, real blue, real transparency, real time returns nothing
	call CreateTextTagLocBJ(s, loc, zoffset, size, red, green, blue, transparency)
	call Nw(time, bj_lastCreatedTextTag)
    call SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100., 90)
endfunction

/*
 * 关闭timer并清空timer储存信息
 */
function clearTimer takes timer tm returns nothing
    call FlushChildHashtable(YDHT, GetHandleId(tm))
    call PauseTimer(tm)
    call DestroyTimer(tm)
endfunction

#endif //CommonFuncIncluded
