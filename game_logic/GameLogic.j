//---------------------------------
// 游戏逻辑处理
// 1. 基地保护逻辑
// 2. 选择英雄及门派
// 3. 设置游戏模式和难度
// 4. 游戏界面显示相关
// 5. 游戏胜利和失败
// 6. 玩家英雄阵亡和复活
// 7. 刷怪相关
//---------------------------------

/*
 * 1. 基地保护机制
 */
//基地保护机制
function IsJiDiBaoHu takes nothing returns boolean
	return (GetTriggerUnit() == udg_ZhengPaiWL) and GetEventDamage() > GetUnitState(udg_ZhengPaiWL, UNIT_STATE_MAX_LIFE) * 0.03
endfunction
function JiDiBaoHu takes nothing returns nothing
	call WuDi(udg_ZhengPaiWL)
	call SetUnitLifePercentBJ(udg_ZhengPaiWL, GetUnitLifePercent(udg_ZhengPaiWL) - 3.00)
endfunction
//云大救家
function Trig_YunDaXianShenConditions takes nothing returns boolean
    return ((GetTriggerUnit() == udg_ZhengPaiWL) and (GetUnitLifePercent(udg_ZhengPaiWL) <= 25.00) and (udg_yunyangxianshen == false))
endfunction
function Trig_YunDaXianShenActions takes nothing returns nothing
    set udg_yunyangxianshen = true
    call CreateNUnitsAtLoc( 1, 'Hblm', Player(5), OffsetLocation(GetUnitLoc(udg_ZhengPaiWL), 0, 200), 90.00 )
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15,"|cFFFF6600基地严重受创，云杨现身相助")
    call UnitApplyTimedLife( GetLastCreatedUnit(), 'BHwe', 20.00 )
    call UnitAddAbility( udg_ZhengPaiWL, 'Avul' )
    call YDWEPolledWaitNull(20.00)
    call UnitRemoveAbilityBJ( 'Avul', udg_ZhengPaiWL )
endfunction

//买基地无敌
function BuyJiDiWuDi takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())=='I07X'))
endfunction
function JiDiWuDi takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveUnitHandle(YDHT,id*cx,$32A9E4C8,udg_ZhengPaiWL)
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00ff33在正义之士的庇护下，武林暂时无敌了（20秒后解除）")
	call SetUnitInvulnerable(LoadUnitHandle(YDHT,id*cx,$32A9E4C8),true)
	call YDWEPolledWaitNull(20.)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SetUnitInvulnerable(LoadUnitHandle(YDHT,id*cx,$32A9E4C8),false)
	call FlushChildHashtable(YDHT,id*cx)
endfunction
//基地挨打
function JiDiAiDa_Conditions takes nothing returns boolean
	return(GetPlayerController(GetOwningPlayer(GetAttacker()))==MAP_CONTROL_COMPUTER)
endfunction
function laojiayouren takes nothing returns boolean
    return (IsUnitAlly(GetFilterUnit(), Player(0))) and (IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)) and (GetPlayerController(GetOwningPlayer(GetFilterUnit()))==MAP_CONTROL_USER)
endfunction

function JiDiAiDa_Actions takes nothing returns nothing
	//==============反仇恨机制定义单位组==============
	local group g=CreateGroup()
	//==============反仇恨机制定义单位组==============
	call PingMinimapLocForForce(GetPlayersAll(),GetUnitLoc(udg_ZhengPaiWL),1)
        if(GetRandomInt(30,50)==48)then
            call DisplayTextToForce(GetPlayersAll(),"|CFFCCFF00正派武林受到攻击，请赶紧回防")
        endif
        if(GetRandomInt(30,50)==45)then
            call SetUnitPositionLoc(GetAttacker(),GetRectCenter(udg_jail))
            call DisplayTextToForce(GetPlayersAll(),"|CFFCCFFCC正派武林将攻击单位抓进了监狱")
        endif
   //==========反仇恨机制，按云大建议去掉==============
    call GroupEnumUnitsInRangeOfLoc( g, GetUnitLoc(udg_ZhengPaiWL), 800, Condition(function laojiayouren) )
    if ((IsUnitGroupEmptyBJ(g) == false)) then
	    call UnitAddAbility(udg_ZhengPaiWL,'A00S')
    //call SetUnitInvulnerable(udg_ZhengPaiWL,true)
   		call GroupClear( g )
    	call YDWEPolledWaitNull(5.00)
    //call SetUnitInvulnerable(udg_ZhengPaiWL,false)
    	call UnitRemoveAbility(udg_ZhengPaiWL,'A00S')
    	set g=null
    endif
   //==========反仇恨机制，按云大建议去掉==============
endfunction

//购买城防
function BuyChengFang takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227896147))
endfunction
function ShengChengFang takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	call SaveInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
	if((GetPlayerTechCountSimple('R000',Player(5))<=29))then
		call SetPlayerTechResearchedSwap('R000',(GetPlayerTechCountSimple('R000',Player(5))+1),Player(5))
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|cFFFFD700在玩家："+(GetPlayerName(GetOwningPlayer(GetTriggerUnit()))+"的无私奉献下，正派武林的城防得到加强了")))
		set shoujiajf[LoadInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$5E9EB4B3)]=(shoujiajf[LoadInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$5E9EB4B3)]+$F)
		call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|CFF34FF00守家积分+15")
	else
		call AdjustPlayerStateBJ($4E20,GetOwningPlayer(GetTriggerUnit()),PLAYER_STATE_RESOURCE_GOLD)
		call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cFFFF0000城防已达最高，无法继续升级|r")
	endif
endfunction
//高级城防
function BuyGaoChengFang takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227896917))
endfunction
function ShengGaoChengFang takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	call SaveInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$5E9EB4B3,(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))))
	if((udg_boshu>=18))then
		if((GetPlayerTechCountSimple('R002',Player(5))<=9))then
			call SetPlayerTechResearchedSwap('R002',(GetPlayerTechCountSimple('R002',Player(5))+1),Player(5))
			call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|cFFFFD700在玩家："+(GetPlayerName(GetOwningPlayer(GetTriggerUnit()))+"的无私奉献下，正派武林的高级城防得到加强了")))
			set shoujiajf[LoadInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$5E9EB4B3)]=(shoujiajf[LoadInteger(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$5E9EB4B3)]+25)
			call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|CFF34FF00守家积分+25")
		else
			call AdjustPlayerStateBJ($C350,GetOwningPlayer(GetTriggerUnit()),PLAYER_STATE_RESOURCE_GOLD)
			call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cFFFF0000高级城防已达最高，无法继续升级|r")
		endif
	else
		call AdjustPlayerStateBJ($C350,GetOwningPlayer(GetTriggerUnit()),PLAYER_STATE_RESOURCE_GOLD)
		call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cFFFF000018波进攻怪以后才能使用此功能哦|r")
	endif
endfunction
/*
 * 2. 选择英雄及门派
 */
//选择英雄
function fx takes nothing returns boolean
	return(((udg_hashero[(1+GetPlayerId(GetTriggerPlayer()))]==false)and(IsUnitInGroup(GetTriggerUnit(),i7))))
endfunction

function SelectHero takes nothing returns nothing
    local player p=GetTriggerPlayer()
    local integer i=1+GetPlayerId(p)
    local unit u=GetTriggerUnit()
    if(GetUnitTypeId(L4[i])==GetUnitTypeId(u))then
	    if u==K4[1] or u==K4[2] or u==K4[3] or u==K4[4] or u==K4[5] or (u==K4[6] and udg_vip[i] > 0) or (u==K4[7] and (udg_changevip[i]>0 or udg_vip[i] == 2)) then
        	set Q4=GetRandomLocInRect(Ge)
        	call CreateNUnitsAtLoc(1,GetUnitTypeId(u),p,Q4,bj_UNIT_FACING)
        	call PanCameraToTimedLocForPlayer(p,Q4,0)
    	endif
        if(u==K4[1])then
            call DisplayTimedTextToPlayer(p,0,0,15.,"恭喜获得英雄：|CFFCCFF00若蝶|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 星宿 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊） 神龙教（女）|r\n\n")
            set wuxing[i]=wuxing[i]+5
            set fuyuan[i]=fuyuan[i]+2
            set yishu[i]=yishu[i]+3
            set udg_xinggeA[i]=GetRandomInt(1,3)
            set udg_xinggeB[i]=GetRandomInt(3,5)
            call RemoveUnit(K4[1])
	        call RemoveUnit(vipbanlv[i])
        elseif(u==K4[2])then
            call DisplayTimedTextToPlayer(p,0,0,15.,"恭喜获得英雄：|CFFCCFF00潇侠|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC少林 古墓 丐帮 华山 全真 峨眉 武当 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊） 神龙教（男）|r\n")
            set wuxing[i]=(wuxing[i]+2)
            set gengu[i]=(gengu[i]+2)
            set danpo[i]=(danpo[i]+1)
            set fuyuan[i]=(fuyuan[i]+5)
            set udg_xinggeA[i]=GetRandomInt(2,4)
            set udg_xinggeB[i]=GetRandomInt(2,4)
            call RemoveUnit(K4[2])
	        call RemoveUnit(vipbanlv[i])
        elseif((u==K4[3]))then
            call DisplayTimedTextToPlayer(p,0,0,15.,"恭喜获得英雄：|CFFCCFF00莫言|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC古墓 丐帮 华山 血刀 恒山 峨眉 星宿 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊）  神龙教（女）|r\n")
            set wuxing[i]=(wuxing[i]+2)
            set danpo[i]=(danpo[i]+5)
            set jingmai[i]=(jingmai[i]+1)
            set yishu[i]=(yishu[i]+2)
            set udg_xinggeA[i]=GetRandomInt(3,5)
            set udg_xinggeB[i]=GetRandomInt(1,3)
            call RemoveUnit(K4[3])
	        call RemoveUnit(vipbanlv[i])
        elseif((u==K4[4]))then
            call DisplayTimedTextToPlayer(p,0,0,15.,"恭喜获得英雄：|CFFCCFF00浪云|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC少林 古墓 丐帮 华山 血刀 武当 星宿 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊）  神龙教（男）|r\n")
            set gengu[i]=(gengu[i]+3)
            set jingmai[i]=(jingmai[i]+5)
            set yishu[i]=(yishu[i]+2)
            set udg_xinggeA[i]=GetRandomInt(2,4)
            set udg_xinggeB[i]=GetRandomInt(2,4)
            call RemoveUnit(K4[4])
	        call RemoveUnit(vipbanlv[i])
        elseif((u==K4[5]))then
            call DisplayTimedTextToPlayer(p,0,0,15.,"恭喜获得英雄：|CFFCCFF00魔君|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC少林 华山 全真 血刀 峨眉 武当 星宿 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊）  神龙教（男）|r\n")
            set gengu[i]=(gengu[i]+5)
            set danpo[i]=(danpo[i]+2)
            set jingmai[i]=(jingmai[i]+3)
            set udg_xinggeA[i]=GetRandomInt(1,3)
            set udg_xinggeB[i]=GetRandomInt(3,5)
            call RemoveUnit(K4[5])
	        call RemoveUnit(vipbanlv[i])
        elseif (u==K4[6]) then
        	if udg_vip[i] <= 0 then
	        	call DisplayTimedTextToPlayer(p,0,0,15.,"该角色为赞助游戏者特别制作，暂不对普通玩家开放")
	        else
	        	call DisplayTimedTextToPlayer(p,0,0,15.,"恭喜获得英雄：|CFFCCFF00兰馨|r\n请选择任意门派后开启江湖之旅|r\n")
	        	set gengu[i]=(gengu[i]+3)
            	set danpo[i]=(danpo[i]+3)
            	set jingmai[i]=(jingmai[i]+3)
            	set wuxing[i]=wuxing[i]+3
            	set yishu[i]=yishu[i]+3
            	set fuyuan[i]=fuyuan[i]+3
            	set udg_xinggeA[i]=GetRandomInt(3,5)
            	set udg_xinggeB[i]=GetRandomInt(3,5)
            	//call RemoveUnit(K4[6])
            	call RemoveUnit(vipbanlv[i])
        	endif
        elseif (u==K4[7]) then
        	if udg_vip[i] <= 1 and udg_changevip[i] <= 0 then
	        	call DisplayTimedTextToPlayer(p,0,0,15.,"该角色为赞助游戏者特别制作，暂不对普通玩家开放")
	        else
	        	call DisplayTimedTextToPlayer(p,0,0,15.,"恭喜获得英雄：|CFFCCFF00瑾轩|r\n请选择任意门派后开启江湖之旅|r\n")
	        	set gengu[i]=(gengu[i]+3)
            	set danpo[i]=(danpo[i]+3)
            	set jingmai[i]=(jingmai[i]+3)
            	set wuxing[i]=wuxing[i]+3
            	set yishu[i]=yishu[i]+3
            	set fuyuan[i]=fuyuan[i]+3
            	set udg_xinggeA[i]=GetRandomInt(3,5)
            	set udg_xinggeB[i]=GetRandomInt(3,5)
            	//call RemoveUnit(K4[6])
            	call RemoveUnit(vipbanlv[i])
        	endif
        endif
        if u==K4[1] or u==K4[2] or u==K4[3] or u==K4[4] or u==K4[5] or (u==K4[6] and udg_vip[i] > 0)  or (u==K4[7] and (udg_changevip[i]>0 or udg_vip[i] == 2))  then
        	call SelectUnitRemoveForPlayer(u,p)
        	call SelectUnitAddForPlayer(bj_lastCreatedUnit,p)
        	set udg_hashero[i]=true
        	call AddSpecialEffectTargetUnitBJ("overhead",bj_lastCreatedUnit,"Abilities\\Spells\\Other\\Awaken\\Awaken.mdl")
        	call DestroyEffect(bj_lastCreatedEffect)
        	set udg_hero[i]=bj_lastCreatedUnit
        	set O4=(O4+1)
        	call RemoveLocation(Q4)
        	call DisplayTimedTextToPlayer(p,0,0,10.,"|CFFFF0000请从天下门派处选择你喜欢的门派后方可离开此地|r")
        	call DisplayTimedTextToPlayer(p,0,0,10.,"|CFFFF0000输入-random可随机选择门派并获得额外60个木头，选取方式请到F9中寻找|r")
    	endif
    else
        set L4[i]=u
        if((u==K4[1]))then
            call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFCCFF00若蝶|r\n可加入门派：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 灵鹫宫 姑苏慕容 明教  神龙教（女）|r\n基础全属性+9\n额外属性\n|cFF00FF00悟性+5 福缘+2 医术+3\n|r\n")
            call SetUnitAnimation(u,"attack")
            call YDWEPolledWaitNull(2)
            call ResetUnitAnimation(K4[1])
        elseif((u==K4[2]))then
            call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFCCFF00潇侠|r\n可加入门派：\n|CFF00FFCC少林 古墓 丐帮 华山 全真 峨眉 武当 灵鹫宫 姑苏慕容 明教  神龙教（男）|r\n基础全属性+9\n额外属性\n|cFF00FF00根骨+2 悟性+2 福缘+5 胆魄+1\n|r\n")
            call SetUnitAnimation(u,"attack")
            call YDWEPolledWaitNull(2)
            call ResetUnitAnimation(K4[2])
        elseif((u==K4[3]))then
            call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFCCFF00莫言|r\n可加入门派：\n|CFF00FFCC古墓 丐帮 华山 血刀 恒山 峨眉 灵鹫宫 姑苏慕容 明教  神龙教（女）|r\n基础全属性+9\n额外属性\n|cFF00FF00悟性+2 经脉+1 胆魄+5 医术+2\n|r\n")
            call SetUnitAnimation(u,"attack")
            call YDWEPolledWaitNull(2)
            call ResetUnitAnimation(K4[3])
        elseif((u==K4[4]))then
            call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFCCFF00浪云|r\n可加入门派：\n|CFF00FFCC少林 古墓 丐帮 华山 血刀 武当 灵鹫宫 姑苏慕容 明教  神龙教（男）|r\n基础全属性+9\n额外属性\n|cFF00FF00根骨+3 经脉+5 医术+2\n|r\n")
            call SetUnitAnimation(u,"attack")
            call YDWEPolledWaitNull(2)
            call ResetUnitAnimation(K4[4])
        elseif((u==K4[5]))then
            call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFCCFF00魔君|r\n可加入门派：\n|CFF00FFCC少林 华山 全真 血刀 峨眉 武当 灵鹫宫 姑苏慕容 明教  神龙教（男）|r\n基础全属性+9\n额外属性\n|cFF00FF00根骨+5 经脉+3 胆魄+2\n|r\n")
            call SetUnitAnimation(u,"attack")
            call YDWEPolledWaitNull(2)
            call ResetUnitAnimation(K4[5])
        elseif((u==K4[6]))then
            call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFCCFF00兰馨|r\n可加入门派：\n|CFF00FFCC全部门派|r\n基础全属性+9\n额外属性\n|cFF00FF00全属性+3\n|r\n")
            call SetUnitAnimation(u,"attack")
            call YDWEPolledWaitNull(2)
            call ResetUnitAnimation(K4[6])
        elseif((u==K4[7]))then
            call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFCCFF00瑾轩|r\n可加入门派：\n|CFF00FFCC全部门派|r\n基础全属性+9\n额外属性\n|cFF00FF00全属性+3\n|r\n")
            call SetUnitAnimation(u,"attack")
            call YDWEPolledWaitNull(2)
            call ResetUnitAnimation(K4[7])
        endif
    endif
    set p=null
    set u=null
endfunction
//选择门派
function kx takes nothing returns boolean
	return((GetTriggerUnit()==Rs)and(udg_runamen[(1+GetPlayerId(GetTriggerPlayer()))]==0))
endfunction

function MenPai takes nothing returns nothing
	if((GetUnitTypeId(udg_hero[(1+GetPlayerId(GetTriggerPlayer()))])=='O002'))then
		call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15.,"当前可加入以下门派：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 灵鹫宫 姑苏慕容 明教|r\n")
	elseif((GetUnitTypeId(udg_hero[(1+GetPlayerId(GetTriggerPlayer()))])=='O001'))then
		call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15.,"当前可加入以下门派：\n|CFF00FFCC少林 古墓 丐帮 华山 全真 峨眉 武当 灵鹫宫 姑苏慕容 明教|r\n")
	elseif((GetUnitTypeId(udg_hero[(1+GetPlayerId(GetTriggerPlayer()))])=='O003'))then
		call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15.,"当前可加入以下门派：\n|CFF00FFCC古墓 丐帮 华山 血刀 恒山 峨眉 灵鹫宫 姑苏慕容 明教|r\n")
	elseif((GetUnitTypeId(udg_hero[(1+GetPlayerId(GetTriggerPlayer()))])=='O004'))then
		call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15.,"当前可加入以下门派：\n|CFF00FFCC少林 古墓 丐帮 华山 血刀 武当 灵鹫宫 姑苏慕容 明教|r\n")
	elseif((GetUnitTypeId(udg_hero[(1+GetPlayerId(GetTriggerPlayer()))])=='O000'))then
		call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15.,"当前可加入以下门派：\n|CFF00FFCC少林 华山 全真 血刀 峨眉 武当 灵鹫宫 姑苏慕容 明教|r\n")
	elseif((GetUnitTypeId(udg_hero[(1+GetPlayerId(GetTriggerPlayer()))])=='O023'))then
		call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15.,"当前可加入任意门派|r\n")
	elseif((GetUnitTypeId(udg_hero[(1+GetPlayerId(GetTriggerPlayer()))])=='O02J'))then
		call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15.,"当前可加入任意门派|r\n")
	endif
endfunction

//选择门派加入
function WuMenPai_Condition takes nothing returns boolean
    return UnitTypeNotNull(GetLeavingUnit(),UNIT_TYPE_HERO) and udg_runamen[1+GetPlayerId(GetOwningPlayer(GetLeavingUnit()))]==0 and GetPlayerController(GetOwningPlayer(GetLeavingUnit()))==MAP_CONTROL_USER
endfunction
//自由门派
function WuMenPai_Action takes nothing returns nothing
    local unit u=GetLeavingUnit()
    local player p=GetOwningPlayer(u)
    local integer i=1+GetPlayerId(p)
    set udg_runamen[i]=11
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933玩家"+GetPlayerName(p)+"选择了〓自由门派〓|r")
    call SetPlayerName(p,"〓自由门派〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
    call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦），请在NPC郭靖处选择副职")
    call UnitAddAbility(u,'A05R')
    call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
    call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
    if udg_vip[i]<2 and udg_elevenvip[i]<1 then
    	call UnitAddAbility(u,'A040')
    	call UnitAddAbility(u,'A041')
    	call UnitAddAbility(u,'A042')
	endif
    set I7[(((i-1)*20)+8)]='A05R'
    call UnitRemoveAbility(u,'Avul')
    set Q4=GetRandomLocInRect(He)
    call SetUnitPositionLoc(u,Q4)
    call PanCameraToTimedLocForPlayer(p,Q4,0)
    call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
    call AdjustPlayerStateBJ(60,p,PLAYER_STATE_RESOURCE_LUMBER)
    set P4[i]=bj_lastCreatedUnit
    set udg_shuxing[i]=udg_shuxing[i]+5
    call RemoveLocation(Q4)
    call UnitAddItemByIdSwapped(1227896394,u)
    set u=null
    set p=null
endfunction
// 加入门派的itemid
function ox takes nothing returns boolean
	return ((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and((GetItemTypeId(GetManipulatedItem())==1227894833)or(GetItemTypeId(GetManipulatedItem())==1227894834)  \
		or(GetItemTypeId(GetManipulatedItem())==1227894835)or(GetItemTypeId(GetManipulatedItem())==1227894836)or(GetItemTypeId(GetManipulatedItem())==1227894837) 	 	\
		or(GetItemTypeId(GetManipulatedItem())==1227894838)or(GetItemTypeId(GetManipulatedItem())==1227894839)or(GetItemTypeId(GetManipulatedItem())==1227894840)	 	\
		or(GetItemTypeId(GetManipulatedItem())==1227894841)or (GetItemTypeId(GetManipulatedItem())=='I09E') or(GetItemTypeId(GetManipulatedItem())==1227894849)		 	\
		or (GetItemTypeId(GetManipulatedItem())=='I09N') or (GetItemTypeId(GetManipulatedItem())=='I0A2')  or (GetItemTypeId(GetManipulatedItem())=='I0CK')				\
		or (GetItemTypeId(GetManipulatedItem())=='I0CX')))
endfunction
function JiaRuMenPai takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	if((udg_runamen[i]!=0))then
		if GetItemTypeId(GetManipulatedItem())=='I09E' and udg_runamen[i]==11 and GetUnitLevel(u)<2 and GetPlayerState(p,PLAYER_STATE_RESOURCE_LUMBER)>=60 then
			set udg_runamen[i]=13
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15.,"|CFFff9933玩家"+GetPlayerName(p)+"改拜入了〓姑苏慕容〓，大家一起膜拜他|r")
			call SetPlayerName(p,"〓姑苏慕容〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call AdjustPlayerStateBJ(-60, p, PLAYER_STATE_RESOURCE_LUMBER)
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000你已经加过门派了|r")
		endif
	elseif((GetItemTypeId(GetManipulatedItem())==1227894833))then
	    if((GetUnitTypeId(u)!='O002')and(GetUnitTypeId(u)!='O003'))then
	      set udg_runamen[i]=1
	      call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓少林派〓，请在NPC郭靖处选择副职|r")
	      call SetPlayerName(p,"〓少林派〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
	      call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
	      call UnitAddAbility(u,'A05R')
	      call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
          call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
	    if udg_vip[i]<2 and udg_elevenvip[i]<1 then
	    	call UnitAddAbility(u,'A040')
    		call UnitAddAbility(u,'A041')
    		call UnitAddAbility(u,'A042')
		endif
	      set I7[(((i-1)*20)+8)]='A05R'
	      call UnitRemoveAbility(u,'Avul')
	      set Q4=GetRandomLocInRect(He)
	      call SetUnitPositionLoc(u,Q4)
	      call PanCameraToTimedLocForPlayer(p,Q4,0)
	      call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
	      set P4[i]=bj_lastCreatedUnit
	      set gengu[i]=(gengu[i]+3)
	      set jingmai[i]=(jingmai[i]+2)
	      call RemoveLocation(Q4)
	      call UnitAddItemByIdSwapped(1227896394,u)
	    else
	      call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000你的角色不能加入该门派")
	    endif
	elseif((GetItemTypeId(GetManipulatedItem())==1227894834))then
		if((GetUnitTypeId(u)!='O000'))then
			set udg_runamen[i]=3
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓丐帮〓，请在NPC郭靖处选择副职|r")
			call SetPlayerName(p,"〓丐帮〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			call UnitAddAbility(u,'A05R')
			call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			if udg_vip[i]<2 and udg_elevenvip[i]<1 then
				call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
			set I7[(((i-1)*20)+8)]='A05R'
			call UnitRemoveAbility(u,'Avul')
			set Q4=GetRandomLocInRect(He)
			call SetUnitPositionLoc(u,Q4)
			call PanCameraToTimedLocForPlayer(p,Q4,0)
			call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
			set P4[i]=bj_lastCreatedUnit
			set danpo[i]=(danpo[i]+3)
			set jingmai[i]=(jingmai[i]+2)
			call RemoveLocation(Q4)
			call UnitAddItemByIdSwapped(1227896394,u)
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000你的角色不能加入该门派")
		endif
	elseif((GetItemTypeId(GetManipulatedItem())==1227894835))then
		if((GetUnitTypeId(u)!='O002'))then
			set udg_runamen[i]=4
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓华山派〓，请在NPC郭靖处选择副职|r")
			call SetPlayerName(p,"〓华山派〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			call UnitAddAbility(u,'A05R')
			call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			if udg_vip[i]<2 and udg_elevenvip[i]<1 then
				call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
			set I7[(((i-1)*20)+8)]='A05R'
			call UnitRemoveAbility(u,'Avul')
			set Q4=GetRandomLocInRect(He)
			call SetUnitPositionLoc(u,Q4)
			call PanCameraToTimedLocForPlayer(p,Q4,0)
			call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
			set P4[i]=bj_lastCreatedUnit
			set wuxing[i]=(wuxing[i]+3)
			set danpo[i]=(danpo[i]+2)
			call RemoveLocation(Q4)
			call UnitAddItemByIdSwapped(1227896394,u)
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000你的角色不能加入该门派")
		endif
	elseif((GetItemTypeId(GetManipulatedItem())==1227894836))then
		if((GetUnitTypeId(u)!='O004')and(GetUnitTypeId(u)!='O003'))then
			set udg_runamen[i]=5
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓全真教〓，请在NPC郭靖处选择副职|r")
			call SetPlayerName(p,"〓全真教〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			call UnitAddAbility(u,'A05R')
			call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			if udg_vip[i]<2 and udg_elevenvip[i]<1 then
				call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
			set I7[(((i-1)*20)+8)]='A05R'
			call UnitRemoveAbility(u,'Avul')
			set Q4=GetRandomLocInRect(He)
			call SetUnitPositionLoc(u,Q4)
			call PanCameraToTimedLocForPlayer(p,Q4,0)
			call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
			set P4[i]=bj_lastCreatedUnit
			set jingmai[i]=(jingmai[i]+3)
			set fuyuan[i]=(fuyuan[i]+2)
			call RemoveLocation(Q4)
			call UnitAddItemByIdSwapped(1227896394,u)
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000你的角色不能加入该门派")
		endif
	elseif((GetItemTypeId(GetManipulatedItem())==1227894837))then
		if((GetUnitTypeId(u)!='O001')and(GetUnitTypeId(u)!='O002'))then
			set udg_runamen[i]=6
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓血刀门〓，请在NPC郭靖处选择副职|r")
			call SetPlayerName(p,"〓血刀门〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			call UnitAddAbility(u,'A05R')
			call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			if udg_vip[i]<2 and udg_elevenvip[i]<1 then
				call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
			set I7[(((i-1)*20)+8)]='A05R'
			call UnitRemoveAbility(u,'Avul')
			set Q4=GetRandomLocInRect(He)
			call SetUnitPositionLoc(u,Q4)
			call PanCameraToTimedLocForPlayer(p,Q4,0)
			call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
			set P4[i]=bj_lastCreatedUnit
			set gengu[i]=(gengu[i]+2)
			set danpo[i]=(danpo[i]+3)
			call RemoveLocation(Q4)
			call UnitAddItemByIdSwapped(1227896394,u)
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000你的角色不能加入该门派")
		endif
	elseif((GetItemTypeId(GetManipulatedItem())==1227894838))then
		if((GetUnitTypeId(u)!='O004')and(GetUnitTypeId(u)!='O000')and(GetUnitTypeId(u)!='O001'))then
			set udg_runamen[i]=7
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓恒山派〓，请在NPC郭靖处选择副职|r")
			call SetPlayerName(p,"〓恒山派〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			call UnitAddAbility(u,'A05R')
			call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			if udg_vip[i]<2 and udg_elevenvip[i]<1 then
				call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
			set I7[(((i-1)*20)+8)]='A05R'
			call UnitRemoveAbility(u,'Avul')
			set Q4=GetRandomLocInRect(He)
			call SetUnitPositionLoc(u,Q4)
			call PanCameraToTimedLocForPlayer(p,Q4,0)
			call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
			set P4[i]=bj_lastCreatedUnit
			set yishu[i]=(yishu[i]+3)
			set fuyuan[i]=(fuyuan[i]+2)
			call RemoveLocation(Q4)
			call UnitAddItemByIdSwapped(1227896394,u)
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000你的角色不能加入该门派")
		endif
	elseif((GetItemTypeId(GetManipulatedItem())==1227894839))then
		if((GetUnitTypeId(u)!='O004'))then
			set udg_runamen[i]=8
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓峨眉派〓，请在NPC郭靖处选择副职|r")
			call SetPlayerName(p,"〓峨眉派〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			call UnitAddAbility(u,'A05R')
			call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])

			if udg_vip[i]<2 and udg_elevenvip[i]<1 then
				call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
			set I7[(((i-1)*20)+8)]='A05R'
			call UnitRemoveAbility(u,'Avul')
			set Q4=GetRandomLocInRect(He)
			call SetUnitPositionLoc(u,Q4)
			call PanCameraToTimedLocForPlayer(p,Q4,0)
			call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
			set P4[i]=bj_lastCreatedUnit
			set yishu[i]=(yishu[i]+1)
			set jingmai[i]=(jingmai[i]+1)
			set fuyuan[i]=(fuyuan[i]+3)
			call RemoveLocation(Q4)
			call UnitAddItemByIdSwapped(1227896394,u)
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000你的角色不能加入该门派")
		endif
	elseif((GetItemTypeId(GetManipulatedItem())==1227894840))then
		if((GetUnitTypeId(u)!='O001'))then
			set udg_runamen[i]=$A
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓星宿派〓，请在NPC郭靖处选择副职|r")
			call SetPlayerName(p,"〓星宿派〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			call UnitAddAbility(u,'A05R')
			call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			if udg_vip[i]<2 and udg_elevenvip[i]<1 then
				call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
			set I7[(((i-1)*20)+8)]='A05R'
			set Q4=GetRandomLocInRect(He)
			call UnitRemoveAbility(u,'Avul')
			call SetUnitPositionLoc(u,Q4)
			call PanCameraToTimedLocForPlayer(p,Q4,0)
			call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
			set P4[i]=bj_lastCreatedUnit
			set danpo[i]=(danpo[i]+2)
			set yishu[i]=(yishu[i]+1)
			set jingmai[i]=(jingmai[i]+2)
			call RemoveLocation(Q4)
			call UnitAddItemByIdSwapped(1227896394,u)
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000你的角色不能加入该门派")
		endif
	elseif((GetItemTypeId(GetManipulatedItem())==1227894841))then
		if((GetUnitTypeId(u)!='O003'))then
			set udg_runamen[i]=9
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓武当派〓，请在NPC郭靖处选择副职|r")
			call SetPlayerName(p,"〓武当派〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			call UnitAddAbility(u,'A05R')
			call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			if udg_vip[i]<2 and udg_elevenvip[i]<1 then
				call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
			set I7[(((i-1)*20)+8)]='A05R'
			set Q4=GetRandomLocInRect(He)
			call SetUnitPositionLoc(u,Q4)
			call UnitRemoveAbility(u,'Avul')
			call PanCameraToTimedLocForPlayer(p,Q4,0)
			call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
			set P4[i]=bj_lastCreatedUnit
			set gengu[i]=(gengu[i]+1)
			set jingmai[i]=(jingmai[i]+2)
			set fuyuan[i]=(fuyuan[i]+2)
			call RemoveLocation(Q4)
			call UnitAddItemByIdSwapped(1227896394,u)
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000你的角色不能加入该门派")
		endif
	elseif((GetItemTypeId(GetManipulatedItem())==1227894849))then
		if((GetUnitTypeId(u)!='O000'))then
			set udg_runamen[i]=2
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓古墓派〓，请在NPC郭靖处选择副职|r")
			call SetPlayerName(p,"〓古墓派〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			call UnitAddAbility(u,'A05R')
			call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			if udg_vip[i]<2 and udg_elevenvip[i]<1 then
				call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
			set I7[(((i-1)*20)+8)]='A05R'
			call UnitRemoveAbility(u,'Avul')
			set Q4=GetRandomLocInRect(He)
			call SetUnitPositionLoc(u,Q4)
			call PanCameraToTimedLocForPlayer(p,Q4,0)
			call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
			set P4[i]=bj_lastCreatedUnit
			set wuxing[i]=(wuxing[i]+2)
			set jingmai[i]=(jingmai[i]+1)
			set fuyuan[i]=(fuyuan[i]+2)
			call RemoveLocation(Q4)
			call UnitAddItemByIdSwapped(1227896394,u)
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000你的角色不能加入该门派")
		endif
	elseif((GetItemTypeId(GetManipulatedItem())=='I09N'))then
		if udg_vip[i] > 0 then
			set udg_runamen[i]=14
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓明教〓，请在NPC郭靖处选择副职|r")
			call SetPlayerName(p,"〓明教〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			call UnitAddAbility(u,'A05R')
			call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			if udg_vip[i]<2 and udg_elevenvip[i]<1 then
				call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
			set I7[(((i-1)*20)+8)]='A05R'
			call UnitRemoveAbility(u,'Avul')
			set Q4=GetRandomLocInRect(He)
			call SetUnitPositionLoc(u,Q4)
			call PanCameraToTimedLocForPlayer(p,Q4,0)
			call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
			set P4[i]=bj_lastCreatedUnit
			set wuxing[i]=(wuxing[i]+3)
			set jingmai[i]=(jingmai[i]+2)
			set fuyuan[i]=(fuyuan[i]+2)
			call RemoveLocation(Q4)
			call UnitAddItemByIdSwapped(1227896394,u)
		else
			call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000该门派为赞助游戏者特别制作，暂不对普通玩家开放")
		endif
	elseif((GetItemTypeId(GetManipulatedItem())=='I0A2'))then
	    if((GetUnitTypeId(u)!='O002')and(GetUnitTypeId(u)!='O003'))then
	    	set udg_runamen[i]=15
	    	call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓衡山派〓，请在NPC郭靖处选择副职|r")
	    	call SetPlayerName(p,"〓衡山派〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
	    	call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
	    	call UnitAddAbility(u,'A05R')
	    	call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
	    	if udg_vip[i]<2 and udg_elevenvip[i]<1 then
	    		call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
	    	set I7[(((i-1)*20)+8)]='A05R'
	    	call UnitRemoveAbility(u,'Avul')
	    	set Q4=GetRandomLocInRect(He)
	    	call SetUnitPositionLoc(u,Q4)
	    	call PanCameraToTimedLocForPlayer(p,Q4,0)
	    	call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
	    	set P4[i]=bj_lastCreatedUnit
	    	set wuxing[i]=(wuxing[i]+3)
	    	set yishu[i]=(yishu[i]+2)
	    	call RemoveLocation(Q4)
	    	call UnitAddItemByIdSwapped(1227896394,u)
	    else
	      call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000你的角色不能加入该门派")
	    endif
	elseif((GetItemTypeId(GetManipulatedItem())=='I0CK'))then
		if(GetUnitTypeId(u)=='O000' or GetUnitTypeId(u)=='O001' or GetUnitTypeId(u)=='O004' or GetUnitTypeId(u)=='O02J') then
	    	set udg_runamen[i]=16
	    	call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓神龙教〓，请在NPC郭靖处选择副职|r")
	    	call SetPlayerName(p,"〓神龙教〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
	    	call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
	    	call UnitAddAbility(u,'A05R')
	    	call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
	    	if udg_vip[i]<2 and udg_elevenvip[i]<1 then
	    		call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
	    	set I7[(((i-1)*20)+8)]='A05R'
	    	call UnitRemoveAbility(u,'Avul')
	    	set Q4=GetRandomLocInRect(He)
	    	call SetUnitPositionLoc(u,Q4)
	    	call PanCameraToTimedLocForPlayer(p,Q4,0)
	    	call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
	    	set P4[i]=bj_lastCreatedUnit
	    	set gengu[i]=gengu[i]+2
	    	set fuyuan[i] = fuyuan[i] + 2
	    	set danpo[i] = danpo[i] + 1
	    	call RemoveLocation(Q4)
	    	call UnitAddItemByIdSwapped(1227896394,u)
	    else
	      	set udg_runamen[i]=17
	    	call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓神龙教〓，请在NPC郭靖处选择副职|r")
	    	call SetPlayerName(p,"〓神龙教〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
	    	call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
	    	call UnitAddAbility(u,'A05R')
	    	call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
	    	if udg_vip[i]<2 and udg_elevenvip[i]<1 then
	    		call UnitAddAbility(u,'A040')
    			call UnitAddAbility(u,'A041')
    			call UnitAddAbility(u,'A042')
			endif
	    	set I7[(((i-1)*20)+8)]='A05R'
	    	call UnitRemoveAbility(u,'Avul')
	    	set Q4=GetRandomLocInRect(He)
	    	call SetUnitPositionLoc(u,Q4)
	    	call PanCameraToTimedLocForPlayer(p,Q4,0)
	    	call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
	    	set P4[i]=bj_lastCreatedUnit
	    	set gengu[i]=gengu[i]+2
	    	set fuyuan[i] = fuyuan[i] + 2
	    	set danpo[i] = danpo[i] + 1
	    	call RemoveLocation(Q4)
	    	call UnitAddItemByIdSwapped(1227896394,u)
	    endif
	 elseif((GetItemTypeId(GetManipulatedItem())=='I0CX'))then
	     if (GetUnitTypeId(u)!='O003') then
	    	set udg_runamen[i]=18
	    	call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入〓泰山派〓，请在NPC郭靖处选择副职|r")
	    	call SetPlayerName(p,"〓泰山派〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
	    	call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
	    	call UnitAddAbility(u,'A05R')
	    	call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
        	call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
	    	if udg_vip[i]<2 and udg_elevenvip[i]<1 then
				call UnitAddAbility(u,'A040')
				call UnitAddAbility(u,'A041')
				call UnitAddAbility(u,'A042')
			endif
	    	set I7[(((i-1)*20)+8)]='A05R'
	    	call UnitRemoveAbility(u,'Avul')
	    	set Q4=GetRandomLocInRect(He)
	    	call SetUnitPositionLoc(u,Q4)
	    	call PanCameraToTimedLocForPlayer(p,Q4,0)
	    	call CreateNUnitsAtLoc(1,'nvul',p,Q4,bj_UNIT_FACING)
	    	set P4[i]=bj_lastCreatedUnit
			set gengu[i] = gengu[i] + 3
	    	set wuxing[i] = wuxing[i] + 1
	    	set yishu[i] = yishu[i] + 1
	    	call RemoveLocation(Q4)
	    	call UnitAddItemByIdSwapped(1227896394,u)
	    else
	        call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff0000你的角色不能加入该门派")
		endif
	endif
	set p=null
	set u=null
endfunction

/*
 * 3. 设置游戏模式和难度
 */
 //主机选择模式
function Trig_____________u_Func002C takes nothing returns boolean
    return(GetPlayerController(Player(0))==MAP_CONTROL_USER)and(GetPlayerSlotState(Player(0))==PLAYER_SLOT_STATE_PLAYING)
endfunction
function ChooseMoShi takes nothing returns nothing
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FF40主机开始选择游戏模式")
    if(Trig_____________u_Func002C())then
        call DialogClear(udg_index)
        call DialogSetMessage(udg_index,"请选择游戏模式")
        set udg_index0=DialogAddButtonBJ(udg_index,"|cFF00CC00普通模式")
        set udg_index1=DialogAddButtonBJ(udg_index,"|cFFCC0066特殊事件模式")
        set udg_index2=DialogAddButtonBJ(udg_index,"|cFFFF6600生存模式")
        set udg_index3 = DialogAddButtonBJ(udg_index,"|cFF6600FF快速通关模式")
        call DialogDisplayBJ(true,udg_index,Player(0))
    endif
endfunction
function ChooseMoShi_Action takes nothing returns nothing
    if GetClickedButton()==udg_index0 then
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FFFF主机选择了普通模式")
        set udg_teshushijian=false
        set udg_shengchun=false
    endif
    if GetClickedButton()==udg_index1 then
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FFFF主机选择了特殊事件模式")
        set udg_teshushijian=true
        set udg_shengchun=false
    endif
    if GetClickedButton()==udg_index2 then
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FFFF主机选择了生存模式")
        set udg_teshushijian=false
        set udg_shengchun=true
    endif
    if GetClickedButton()==udg_index3 then
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FFFF主机选择了快速通关模式")
        set udg_teshushijian=false
        set udg_shengchun=false
        set udg_sutong = true
    endif
endfunction
//调整游戏难度
function GameNanDu_Condition takes nothing returns boolean
	//非特殊事件模式、非生存模式
	return (udg_teshushijian==false and udg_shengchun==false)
endfunction
function GameNanDu takes nothing returns nothing
	local trigger t=GetTriggeringTrigger()
	local integer id=GetHandleId(t)
	local integer i=0
	local integer level=0
	if((S2I(SubStringBJ(GetEventPlayerChatString(),3,5))==0))then
	    set i=10
	else
	    set i=S2I(SubStringBJ(GetEventPlayerChatString(),3,5))*10
	endif
	set level=GetPlayerTechCountSimple('R001',Player(12))
	if(level==50)then
	    call DisplayTextToPlayer(Player(0),0,0,"当前已为最高难度了")
	else
	    if level+i>=50 then
	        set i=50-level
	    endif
	    call AddPlayerTechResearched(Player(12),'R001',i)
	    call AddPlayerTechResearched(Player(6),'R001',i)
	    call AddPlayerTechResearched(Player(15),'R001',i)
	    set udg_nandu=udg_nandu+i/10
	    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("玩家1输入“up”提高了游戏难度，目前游戏难度为"+I2S(udg_nandu)))
	    if udg_nandu == 5 then
			call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FFFF该模式下进攻怪具有|cFFFF0000抽血术")
		endif
	endif
	set t=null
endfunction
function ChooseNanDu takes nothing returns nothing
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FF40主机开始选择游戏难度")
    if(Trig_____________u_Func002C())then
        call DialogClear(udg_nan)
        call DialogSetMessage(udg_nan,"请选择游戏难度")
        if udg_nandu<=0 then
        	set udg_nan0=DialogAddButtonBJ(udg_nan,"|cFF00CC00初入江湖")
    	endif
    	if udg_nandu<=1 then
       		set udg_nan1=DialogAddButtonBJ(udg_nan,"|cFFCC0066牛刀小试")
   		endif
   		if udg_nandu<=2 then
        	set udg_nan2=DialogAddButtonBJ(udg_nan,"|cFFFF6600登堂入室")
        endif
        if udg_nandu<=3 then
        	set udg_nan3=DialogAddButtonBJ(udg_nan,"|cFF0041FF炉火纯青")
        endif
        if udg_nandu<=4 then
        	set udg_nan4=DialogAddButtonBJ(udg_nan,"|cFF1FBF00华山论剑")
        endif
        if udg_nandu<=5 then
        	set udg_nan5=DialogAddButtonBJ(udg_nan,"|cFFFF0000决战江湖")
        endif
        call DialogDisplayBJ(true,udg_nan,Player(0))
    endif
endfunction

// 设置游戏难度和经验获得率的函数
function setDifficultyAndExpRate takes integer difficulty returns nothing
	set udg_nandu = difficulty
        call SetPlayerHandicapXPBJ( Player(0), 200.00-20.00*difficulty )
        call SetPlayerHandicapXPBJ( Player(1), 200.00-20.00*difficulty )
        call SetPlayerHandicapXPBJ( Player(2), 200.00-20.00*difficulty )
        call SetPlayerHandicapXPBJ( Player(3), 200.00-20.00*difficulty )
        call SetPlayerHandicapXPBJ( Player(4), 200.00-20.00*difficulty )
endfunction

function ChooseNanDu_Action takes nothing returns nothing
    if GetClickedButton()==udg_nan0 then
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FFFF主机选择了难度|cFF00CC00初入江湖")
        call SetPlayerTechResearched(Player(12),'R001',0)
        call SetPlayerTechResearched(Player(6),'R001',0)
        call SetPlayerTechResearched(Player(15),'R001',0)
        call setDifficultyAndExpRate(0)
    endif
    if GetClickedButton()==udg_nan1 then
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FFFF主机选择了难度|cFFCC0066牛刀小试")
        call SetPlayerTechResearched(Player(12),'R001',10)
        call SetPlayerTechResearched(Player(6),'R001',10)
        call SetPlayerTechResearched(Player(15),'R001',10)
        call setDifficultyAndExpRate(1)
    endif
    if GetClickedButton()==udg_nan2 then
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FFFF主机选择了难度|cFFFF6600登堂入室")
        call SetPlayerTechResearched(Player(12),'R001',20)
        call SetPlayerTechResearched(Player(6),'R001',20)
        call SetPlayerTechResearched(Player(15),'R001',20)
        call setDifficultyAndExpRate(2)
    endif
    if GetClickedButton()==udg_nan3 then
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FFFF主机选择了难度|cFF0041FF炉火纯青")
        call SetPlayerTechResearched(Player(12),'R001',30)
        call SetPlayerTechResearched(Player(6),'R001',30)
        call SetPlayerTechResearched(Player(15),'R001',30)
        call setDifficultyAndExpRate(3)
    endif
    if GetClickedButton()==udg_nan4 then
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FFFF主机选择了难度|cFF1FBF00华山论剑")
        call SetPlayerTechResearched(Player(12),'R001',40)
        call SetPlayerTechResearched(Player(6),'R001',40)
        call SetPlayerTechResearched(Player(15),'R001',40)
        call setDifficultyAndExpRate(4)
    endif
    if GetClickedButton()==udg_nan5 then
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FFFF主机选择了难度|cFFFF0000决战江湖")
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FFFF该模式下进攻怪具有|cFFFF0000抽血术")
        call SetPlayerTechResearched(Player(12),'R001',50)
        call SetPlayerTechResearched(Player(6),'R001',50)
        call SetPlayerTechResearched(Player(15),'R001',50)
        call setDifficultyAndExpRate(5)
    endif
endfunction
//试玩模式
function BeforeAttack takes nothing returns boolean
	return(hd==false)
endfunction
function SetShiWan takes nothing returns nothing
	set ShiFouShuaGuai=false
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFF00FF00玩家一选择了试玩模式，怪物不会进攻主城，大家可以尽情的去体验玩法了")
endfunction
/*
 * 4. 游戏界面显示相关
 */
 //系统窗口
function SystemWindow takes nothing returns nothing
	local integer i=0
	local string s = null
	call CreateMultiboardBJ(5,20,"系统窗口")
	call MultiboardSetItemsStyle(bj_lastCreatedMultiboard,true,false)
	call MultiboardSetItemsWidth(bj_lastCreatedMultiboard,.07)
	set i = 1

	loop
		exitwhen i >= 6
		if udg_MaxDamage[i]<10000. then
            set s = R2S(udg_MaxDamage[i])
        elseif udg_MaxDamage[i]<100000000. then
            set s = R2S(udg_MaxDamage[i])+"万"
        elseif udg_MaxDamage[i]/10000.<100000000. then
            set s = R2S(udg_MaxDamage[i])+"亿"
        elseif udg_MaxDamage[i]/100000000.<100000000. then
        	set s = R2S(udg_MaxDamage[i])+"万亿"
        else
        	set s = R2S(udg_MaxDamage[i])+"亿亿"
        endif
        call MultiboardSetTitleText(bj_lastCreatedMultiboard,"|cFFFFCC33这并不是系统窗口")
		call DuoMianBan(bj_lastCreatedMultiboard,1,4*i-3,"|c00FF0080"+GetPlayerName(Player(i-1)))
		call DuoMianBan(bj_lastCreatedMultiboard,2,4*i-3,"|c0000FF00"+"等级："+I2S(GetUnitLevel(udg_hero[i])))
		call DuoMianBan(bj_lastCreatedMultiboard,3,4*i-3,"|cFF00CCFF"+udg_menpainame[udg_runamen[i]])
		call DuoMianBan(bj_lastCreatedMultiboard,4,4*i-3,"|cFFFF6600"+"最高伤害："+s)
		if Ce[i] == 1 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"炼丹师")
		elseif Ce[i] == 2 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"锻造师")
		elseif Ce[i] == 3 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"兵器师")
		elseif Ce[i] == 4 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"鉴定师")
		elseif Ce[i] == 5 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"练气师")
		elseif Ce[i] == 6 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"寻宝师")
		elseif Ce[i] == 7 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"丫鬟")
		elseif Ce[i] == 8 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"精武师")
		else
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"未选择")
		endif
		if (I7[20*(i-1)+1]!='AEfk') then
			call DuoMianBan(bj_lastCreatedMultiboard,1,4*i-2,"|c0000FF00"+GetObjectName(I7[20*(i-1)+1]))
		endif
		if((I7[20*(i-1)+2]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,2,4*i-2,"|c0000FF00"+GetObjectName(I7[20*(i-1)+2]))
		endif
		if((I7[20*(i-1)+3]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,3,4*i-2,"|c0000FF00"+GetObjectName(I7[20*(i-1)+3]))
		endif
		if((I7[20*(i-1)+4]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,4,4*i-2,"|c0000FF00"+GetObjectName(I7[20*(i-1)+4]))
		endif
		if((I7[20*(i-1)+5]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,1,4*i-1,"|c0000FF00"+GetObjectName(I7[20*(i-1)+5]))
		endif
		if((I7[20*(i-1)+6]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,2,4*i-1,"|c0000FF00"+GetObjectName(I7[20*(i-1)+6]))
		endif
		if((I7[20*(i-1)+7]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,3,4*i-1,"|c0000FF00"+GetObjectName(I7[20*(i-1)+7]))
		endif
		if((I7[20*(i-1)+8]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,4,4*i-1,"|c0000FF00"+GetObjectName(I7[20*(i-1)+8]))
		endif
		if((I7[20*(i-1)+9]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,1,4*i,"|c0000FF00"+GetObjectName(I7[20*(i-1)+9]))
		endif
		if((I7[20*(i-1)+10]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,2,4*i,"|c0000FF00"+GetObjectName(I7[20*(i-1)+10]))
		endif
		if((I7[20*(i-1)+11]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,3,4*i,"|c0000FF00"+GetObjectName(I7[20*(i-1)+11]))
		endif
		set i = i + 1
	endloop
	call MultiboardDisplay(bj_lastCreatedMultiboard,true)
endfunction
function uuyy takes nothing returns nothing
	local integer i=0
	local string s = null
	set i = 1

	loop
		exitwhen i >= 6
		if udg_MaxDamage[i]<10000. then
            set s = I2S(R2I(udg_MaxDamage[i]/1.))
        elseif udg_MaxDamage[i]<100000000. then
            set s = I2S(R2I(udg_MaxDamage[i]/10000.))+"万"
        elseif udg_MaxDamage[i]/10000.<100000000. then
            set s = I2S(R2I(udg_MaxDamage[i]/100000000.))+"亿"
        elseif udg_MaxDamage[i]/100000000.<100000000. then
        	set s = I2S(R2I(udg_MaxDamage[i]/1000000000000.))+"万亿"
        else
        	set s = I2S(R2I(udg_MaxDamage[i]/10000000000000000.))+"亿亿"
        endif
        call MultiboardSetTitleText(bj_lastCreatedMultiboard,"|cFFFFCC33这并不是系统窗口")
		call DuoMianBan(bj_lastCreatedMultiboard,1,4*i-3,"|c00FF0080"+GetPlayerName(Player(i-1)))
		call DuoMianBan(bj_lastCreatedMultiboard,2,4*i-3,"|c0000FF00"+"等级："+I2S(GetUnitLevel(udg_hero[i])))
		call DuoMianBan(bj_lastCreatedMultiboard,3,4*i-3,"|cFF00CCFF"+udg_menpainame[udg_runamen[i]])
		call DuoMianBan(bj_lastCreatedMultiboard,4,4*i-3,"|cFFFF6600"+"最高伤害："+s)
		if Ce[i] == 1 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"炼丹师")
		elseif Ce[i] == 2 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"锻造师")
		elseif Ce[i] == 3 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"兵器师")
		elseif Ce[i] == 4 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"鉴定师")
		elseif Ce[i] == 5 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"练气师")
		elseif Ce[i] == 6 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"寻宝师")
		elseif Ce[i] == 7 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"丫鬟")
		elseif Ce[i] == 8 then
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"精武师")
		else
			call DuoMianBan(bj_lastCreatedMultiboard,5,4*i-3,"|c00FFEE99"+"未选择")
		endif
		if (I7[20*(i-1)+1]!='AEfk') then
			call DuoMianBan(bj_lastCreatedMultiboard,1,4*i-2,"|c0000FF00"+GetObjectName(I7[20*(i-1)+1]))
		endif
		if((I7[20*(i-1)+2]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,2,4*i-2,"|c0000FF00"+GetObjectName(I7[20*(i-1)+2]))
		endif
		if((I7[20*(i-1)+3]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,3,4*i-2,"|c0000FF00"+GetObjectName(I7[20*(i-1)+3]))
		endif
		if((I7[20*(i-1)+4]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,4,4*i-2,"|c0000FF00"+GetObjectName(I7[20*(i-1)+4]))
		endif
		if((I7[20*(i-1)+5]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,1,4*i-1,"|c0000FF00"+GetObjectName(I7[20*(i-1)+5]))
		endif
		if((I7[20*(i-1)+6]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,2,4*i-1,"|c0000FF00"+GetObjectName(I7[20*(i-1)+6]))
		endif
		if((I7[20*(i-1)+7]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,3,4*i-1,"|c0000FF00"+GetObjectName(I7[20*(i-1)+7]))
		endif
		if((I7[20*(i-1)+8]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,4,4*i-1,"|c0000FF00"+GetObjectName(I7[20*(i-1)+8]))
		endif
		if((I7[20*(i-1)+9]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,1,4*i,"|c0000FF00"+GetObjectName(I7[20*(i-1)+9]))
		endif
		if((I7[20*(i-1)+10]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,2,4*i,"|c0000FF00"+GetObjectName(I7[20*(i-1)+10]))
		endif
		if((I7[20*(i-1)+11]!='AEfk'))then
			call DuoMianBan(bj_lastCreatedMultiboard,3,4*i,"|c0000FF00"+GetObjectName(I7[20*(i-1)+11]))
		endif
		set i = i + 1
	endloop
endfunction
//最大伤害
function wy takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))!=MAP_CONTROL_USER)and(GetEventDamage()>udg_MaxDamage[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))]))
endfunction
function SetMaxDamage takes nothing returns nothing
	set udg_MaxDamage[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))]=GetEventDamage()
endfunction

//玩家离开
function Xx takes nothing returns nothing
	set bj_forLoopBIndex=1
	set bj_forLoopBIndexEnd=6
	loop
		exitwhen bj_forLoopBIndex>bj_forLoopBIndexEnd
		call UnitRemoveItemSwapped(UnitItemInSlotBJ(GetEnumUnit(),bj_forLoopBIndex),GetEnumUnit())
		set bj_forLoopBIndex=bj_forLoopBIndex+1
	endloop
	call RemoveUnit(GetEnumUnit())
endfunction
function PlayerLeave takes nothing returns nothing
	call ForGroupBJ((AddPlayerUnitIntoGroup((GetTriggerPlayer()),null)),function Xx)
	call yv(bj_lastCreatedMultiboard,4,((1+GetPlayerId(GetTriggerPlayer()))+2),100.,20.,100.,0)
	call DuoMianBan(bj_lastCreatedMultiboard,5,((1+GetPlayerId(GetTriggerPlayer()))*4-2),"离开")
endfunction
//F9显示
function Qx takes nothing returns nothing
	call CreateQuestBJ(0,"|cFFFF00001.53版本更新内容","|cff00ff00新增元素|n|r|cffffff00开放新门派|r：泰山派|n|cffffff00装备调整|r：七绝护符、天璇护腕、神行鞋和神迹戒变更为神器|n|cff00ff00平衡性调整|n|r|cffffff00门派调整|r：全面平衡各门派伤害和升重速度|n|cffffff00删除了救火任务和青龙团队副本。|n积分兑换金钱和珍稀币随难度不同而不同。|n历练3的声望要求降至3200，十恶不赦基础血量降至30000。|n杀矮子王爆江湖忠，杀南海神尼爆九阴锻骨篇。|n大量游戏细节优化调整。|r|cff00ff00|nBUG修复|n|r|cffffff00修复部分装备不能正确加攻速和移速的BUG。|n修复部分武功属性要求显示不正确的BUG。|r","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	call CreateQuestBJ(0,"|cFFFF0000人物属性","招式伤害：影响人物的所有武功的威力，中后期影响较大\n内力：加成武功伤害百分比，中后期影响较大\n真实伤害：造成不受内力影响的实际伤害，前期影响较大\n绝学领悟力：影响绝学的发挥效果和威力\n根骨：影响任务和武功学习条件，同时提高技能暴击力\n悟性：影响任务和武功学习条件，同时决定技能升级的概率\n经脉：影响任务和武功学习条件，同时提高法力回复速度\n福缘：影响任务和武功学习条件，同时提高被动武学触发概率\n胆魄：影响任务和武功学习条件，同时提高杀怪回复能力\n医术：影响任务和武功学习条件，同时提高自然生命回复速度","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	call CreateQuestBJ(0,"|cFFFF6600人物武功","门派武功：加入门派后每个英雄都会有3个武功，分别在3、8、15级时自动领悟\n门派心法：每个门派都有两种心法，可以在完成历练2后二选其一修习\n江湖武功：分为武功和心法两大类，需要通过使用武功秘籍获得\n绝学和绝内：后期厉害的大招，也需要通过使用武功秘籍获得\n绝阵：开放部分门派绝阵，请到聚贤庄寻找","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	call CreateQuestBJ(0,"|cFF00FF00游戏指令","按键Esc：|cFFCCFF33查看人物属性|r\n输入“sj”：|cFFCCFF33恢复视角|r\n输入“bl”：|cFFCCFF33查看伴侣属性|r\n输入“jy”：|cFFCCFF33将剑意转化为性格属性|r\n输入“up”：|cFFCCFF33非特殊事件模式下提高难度（只能提不能降）|r\n输入“fb”：|cFFCCFF33查询副本重置时间|r\n输入“yx”：|cFFCCFF33查询宝宝携带草药的总药性|r\n游戏开始2分钟内输入“sw”：|cFFCCFF33试玩模式|r\n","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	call CreateQuestBJ(0,"|cFF0000FF游戏指令2","输入“cksx”：|cFFCCFF33查看剩余自由属性点数|r\n输入属性拼音首字母如“gg”：|cFFCCFF33根骨+1|r\n输入属性拼音首字母加数值如“fy5”：|cFFCCFF33福缘+5|r\n输入“ckwq”：|cFFCCFF33查询自制武器属性|r\n输入“ckwg”：|cFFCCFF33查询自创武功|r\n输入“ckjn”：|cFFCCFF33查询人物性格和技能升重进度|r\n输入“ck”：|cFFCCFF33查询技能伤害|r\n输入“ckjf”：|cFFCCFF33查询守家积分|r\n","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	call CreateQuestBJ(2,"|cFFFF00CC称号系统","在游戏中，可以获得两种称号：门派称号和副职称号\n门派称号：如果你的所有门派武学和门派内功均达到6级，可以获得各门派的掌门称号；在获得掌门之前达成一定的条件，获得掌门称号时还可以获得额外的门派称号，具体门派称号的获得方法可以参考论坛的攻略。注意获得门派称号的契机只有一次。\n副职称号：游戏中的七种副职达到一定条件时，可以分别获得相应的副职大师称号，增加与该副职相关的额外能力，具体副职大师称号的获得方法可以参考论坛的攻略","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	//call CreateQuestBJ(2,"|cFFFFFF00武器系统","在游戏中，每一把武器都有自己的耐久度，每击杀一个单位耐久度减1，耐久度为0后武器破损消失\n如果副职选择兵器师，则武器不减少耐久度。\n每个玩家对每一种武器有一定的熟练度，每击杀一个单位增加一定熟练度，不同武器熟练度上限不同，熟练度上升武功的伤害将随之上升\n副职选择兵器师大幅提升武器的熟练度上限\n对某种武器极不熟练时伤害要低于不拿武器时的伤害","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	call CreateQuestBJ(2,"|cFFFF0000副职玩法","玩家可在NPC郭靖处选择自己的副职，加入副职后会获得一些独特的能力\n副职满足一定条件后，可以获得相应的大师称号，获得大师后会额外获得一些能力\n炼丹师：可使用炼丹系统并可多服食五颗丹药\n锻造师：可使用镶嵌和锻造系统\n兵器师：镇妖死亡不掉落，拾取和冶炼兵器不受历练限制\n练气师：每提升一次等级增加4-12点招式伤害或内力或真实伤害\n寻宝师：副本双倍掉落\n鉴定师：爆双倍古董，可以使用古董换书，古董以最高价卖出\n丫鬟：携带两把武器及两件衣服\n精武师：技能升级到九重获得额外自创武学点，可以打出奇武\n更多大师获得方式和作用请到NPC随风而逝de风处查看","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	call CreateQuestBJ(2,"|cFFFF6600称号系统","玩家4个门派武功全部达到6级可获得掌门称号\n在获得掌门称号时若达到一定条件，可同时获得其他称号\n有一些称号与掌门无关，具体可参考网站或论坛的攻略\n","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	call CreateQuestBJ(2,"|cFF00FF00隐藏门派","游戏中有两个隐藏门派：姑苏慕容和灵鹫宫\n隐藏门派的选择方式:灵鹫宫选人后输入www.juezhanjianghu.com，慕容世家选人后输入jzjh.uuu9.com或3级前去找慕容复\n","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	call CreateQuestBJ(2,"|cFF0000FF游戏网站","17玩吧：|cFFCCFF33www.17wanba.cc|r\n专区论坛：|cFFCCFF33jzjhbbs.uuu9.com|r\n游戏作者：|cFFCCFF33云杨 Zei_kale|r\n游戏QQ群：|cFFCCFF33159030768, 369925013\n\n关注武侠，支持作者，详情请在网站和论坛查询","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
endfunction

//ESC查看人物属性
function RenWuShuXing takes nothing returns nothing
	local player p=GetTriggerPlayer()
	local integer i=1+GetPlayerId(p)
	call ClearTextMessagesBJ(ov(p))
	call DisplayTextToPlayer(p,0,0,"|cFFFF0000人物属性：")
	call DisplayTextToPlayer(p,0,0,"|cFFcc99ff〓〓〓〓〓〓〓〓〓〓〓")
	call DisplayTextToPlayer(p,0,0,("|cFF00FFFF暴击率 ：   "+(I2S(IMinBJ(R2I((udg_baojilv[i]*100.)), 100))+"%")))
	call DisplayTextToPlayer(p,0,0,("|cFF00FFFF暴击伤害 ：   "+(I2S(R2I((udg_baojishanghai[i]*100.)))+"%")))
	call DisplayTextToPlayer(p,0,0,("|cFF00FFFF武功伤害加成 ：   "+(I2S(R2I((udg_shanghaijiacheng[i]*100.)))+"%")))
	call DisplayTextToPlayer(p,0,0,("|cFF00FFFF伤害吸收 ：   "+(I2S(IMinBJ(R2I((udg_shanghaixishou[i]*100.)),80))+"%")))
	call DisplayTextToPlayer(p,0,0,"|cFFcc99ff〓〓〓〓〓〓〓〓〓〓〓")
	call DisplayTextToPlayer(p,0,0,("|cFF00FFFF根骨 ：   "+I2S(gengu[i])))
	call DisplayTextToPlayer(p,0,0,("|cFF00FFFF悟性 ：   "+I2S(wuxing[i])))
	call DisplayTextToPlayer(p,0,0,("|cFF00FFFF经脉 ：   "+I2S(jingmai[i])))
	call DisplayTextToPlayer(p,0,0,("|cFF00FFFF福缘 ：   "+I2S(fuyuan[i])))
	call DisplayTextToPlayer(p,0,0,("|cFF00FFFF胆魄 ：   "+I2S(danpo[i])))
	call DisplayTextToPlayer(p,0,0,("|cFF00FFFF医术 ：   "+I2S(yishu[i])))
	call DisplayTextToPlayer(p,0,0,"|cFFcc99ff〓〓〓〓〓〓〓〓〓〓〓")
	call DisplayTextToPlayer(p,0,0,("|cFF33FF00绝学领悟力："+I2S(juexuelingwu[i])))
	call DisplayTextToPlayer(p,0,0,("|cFF33FF00修行："+I2S(xiuxing[i])))
	call DisplayTextToPlayer(p,0,0,("|cFF33FF00武学修为：第"+(I2S(wugongxiuwei[i])+"层")))
	call DisplayTextToPlayer(p,0,0,("|cFF33FF00江湖声望："+I2S(shengwang[i])))
	call DisplayTextToPlayer(p,0,0,("|cFF33FF00守家积分："+I2S(shoujiajf[i])))
	if Ce[i]!=1 then
	    call DisplayTextToPlayer(p,0,0,("|cFF33FF00当前用丹数量："+(I2S(yongdanshu[i])+" / 10")))
	else
	    call DisplayTextToPlayer(p,0,0,("|cFF33FF00当前用丹数量："+(I2S(yongdanshu[i])+" / 15")))
	endif
	set p=null
endfunction

/*
 * 5. 游戏胜利和失败
 */
 
 function hy takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())=='nbds'))
endfunction
//是否达到胜利条件
function IsVictory takes nothing returns nothing
if((de==false))then
	call FlushChildHashtable(YDHT,GetHandleId(GetExpiredTimer()))
	call DestroyTimer(GetExpiredTimer())
else
	if((LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5E9EB4B3)<=10.))then
		call SaveReal(YDHT,GetHandleId(GetExpiredTimer()),-$5E9EB4B3,100.)
	else
		call SaveReal(YDHT,GetHandleId(GetExpiredTimer()),-$5E9EB4B3,(LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5E9EB4B3)-10.))
	endif
	if((LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$63F0AAA2)<=10.))then
		call SaveReal(YDHT,GetHandleId(GetExpiredTimer()),-$63F0AAA2,100.)
	else
		call SaveReal(YDHT,GetHandleId(GetExpiredTimer()),-$63F0AAA2,(LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$63F0AAA2)-10.))
	endif
	if((LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5CF6751E)<=.1))then
		call SaveReal(YDHT,GetHandleId(GetExpiredTimer()),-$5CF6751E,100.)
	else
		call SaveReal(YDHT,GetHandleId(GetExpiredTimer()),-$5CF6751E,(LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5CF6751E)-10.))
	endif
	if((LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$6329FB8A)<=.0))then
		call SaveReal(YDHT,GetHandleId(GetExpiredTimer()),-$6329FB8A,70.)
	else
		call SaveReal(YDHT,GetHandleId(GetExpiredTimer()),-$6329FB8A,(LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$6329FB8A)-10.))
	endif
	call SaveInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06,1)
	if((udg_hero[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]!=null))then
		call DestroyTextTag(ee[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)])
		call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F,GetUnitLoc(udg_hero[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]))
		call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060,pu(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F),150.,110.))
		call CreateTextTagLocBJ("武林盟主",LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060),100.,11.,LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5E9EB4B3),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$63F0AAA2),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5CF6751E),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$6329FB8A))
		call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F))
		call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060))
		set ee[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]=bj_lastCreatedTextTag
	endif
	call SaveInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06,(LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)+1))
	if((udg_hero[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]!=null))then
		call DestroyTextTag(ee[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)])
		call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F,GetUnitLoc(udg_hero[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]))
		call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060,pu(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F),150.,110.))
		call CreateTextTagLocBJ("武林盟主",LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060),100.,11.,LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5E9EB4B3),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$63F0AAA2),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5CF6751E),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$6329FB8A))
		call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F))
		call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060))
		set ee[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]=bj_lastCreatedTextTag
	endif
	call SaveInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06,(LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)+1))
	if((udg_hero[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]!=null))then
		call DestroyTextTag(ee[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)])
		call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F,GetUnitLoc(udg_hero[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]))
		call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060,pu(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F),150.,110.))
		call CreateTextTagLocBJ("武林盟主",LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060),100.,11.,LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5E9EB4B3),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$63F0AAA2),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5CF6751E),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$6329FB8A))
		call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F))
		call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060))
		set ee[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]=bj_lastCreatedTextTag
	endif
	call SaveInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06,(LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)+1))
	if((udg_hero[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]!=null))then
		call DestroyTextTag(ee[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)])
		call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F,GetUnitLoc(udg_hero[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]))
		call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060,pu(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F),150.,110.))
		call CreateTextTagLocBJ("武林盟主",LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060),100.,11.,LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5E9EB4B3),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$63F0AAA2),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5CF6751E),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$6329FB8A))
		call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F))
		call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060))
		set ee[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]=bj_lastCreatedTextTag
	endif
	call SaveInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06,(LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)+1))
	if((udg_hero[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]!=null))then
		call DestroyTextTag(ee[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)])
		call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F,GetUnitLoc(udg_hero[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]))
		call SaveLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060,pu(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F),150.,110.))
		call CreateTextTagLocBJ("武林盟主",LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060),100.,11.,LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5E9EB4B3),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$63F0AAA2),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$5CF6751E),LoadReal(YDHT,GetHandleId(GetExpiredTimer()),-$6329FB8A))
		call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),$5E83114F))
		call RemoveLocation(LoadLocationHandle(YDHT,GetHandleId(GetExpiredTimer()),-$72C3E060))
		set ee[LoadInteger(YDHT,GetHandleId(GetExpiredTimer()),-$566CDF06)]=bj_lastCreatedTextTag
	endif
endif
endfunction
//胜利动作
function Victory takes nothing returns nothing
	local timer ky
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	local integer i=0
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	set i = 1
	loop
		exitwhen i >= 6
		set udg_MeiJuJiFen[i]=udg_MeiJuJiFen[i]+ae/50
		call YDWE_PreloadSL_Set( Player(i-1), "总积分", 1, udg_MeiJuJiFen[i] )
    	call YDWE_PreloadSL_Save( Player(i-1), "JueZhan", "JiangHu"+I2S(i), 1 )
		set i = i + 1
	endloop
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF00B2决战江湖1.53的游戏总评分："+(I2S(ae)+"分（通关）")))
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF00B2恭喜你们通关，游戏将在2分钟后结束\n游戏专区论坛：jzjhbbs.uuu9.com\n游戏交流QQ群：159030768 369925013\n关注武侠，让决战江湖走得更远，期待你的参与，详情请在专区论坛查询")
	set de=true
	call SaveReal(YDHT,id*cx,-$5E9EB4B3,40.)
	call SaveReal(YDHT,id*cx,-$63F0AAA2,70.)
	call SaveReal(YDHT,id*cx,-$5CF6751E,100.)
	call SaveReal(YDHT,id*cx,-$6329FB8A,70.)
	set ky=CreateTimer()
	call SaveReal(YDHT,GetHandleId(ky),-$5E9EB4B3,LoadReal(YDHT,id*cx,-$5E9EB4B3))
	call SaveReal(YDHT,GetHandleId(ky),-$63F0AAA2,LoadReal(YDHT,id*cx,-$63F0AAA2))
	call SaveReal(YDHT,GetHandleId(ky),-$5CF6751E,LoadReal(YDHT,id*cx,-$5CF6751E))
	call SaveReal(YDHT,GetHandleId(ky),-$6329FB8A,LoadReal(YDHT,id*cx,-$6329FB8A))
	call TimerStart(ky,.04,true,function IsVictory)
	call YDWEPolledWaitNull(60.)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF00B2决战江湖1.53的游戏总评分："+(I2S(ae)+"分（通关）")))
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF00B2恭喜你们通关，游戏将在1分钟后结束\n游戏专区论坛：jzjhbbs.uuu9.com\n游戏交流QQ群：159030768 369925013\n关注武侠，让决战江湖走得更远，期待你的参与，详情请在专区论坛查询")
	call YDWEPolledWaitNull(60.)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call CustomVictoryBJ(Player(0),true,true)
	call CustomVictoryBJ(Player(1),true,true)
	call CustomVictoryBJ(Player(2),true,true)
	call CustomVictoryBJ(Player(3),true,true)
	call CustomVictoryBJ(Player(4),true,true)
	call FlushChildHashtable(YDHT,id*cx)
	set ky=null
endfunction
//失败动作
function Lose takes nothing returns nothing
	local integer i=0
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF00B2决战江湖1.53的游戏总评分："+(I2S(ae)+"分（战败）")))
	set i = 1
	loop
		exitwhen i >= 6
		set udg_MeiJuJiFen[i]=udg_MeiJuJiFen[i]+ae/100
		call YDWE_PreloadSL_Set( Player(i-1), "总积分", 1, udg_MeiJuJiFen[i] )
    	call YDWE_PreloadSL_Save( Player(i-1), "JueZhan", "JiangHu"+I2S(i), 1 )
		set i = i + 1
	endloop
	call CustomDefeatBJ(Player(0),"没有能守护住正派武林!")
	call CustomDefeatBJ(Player(1),"没有能守护住正派武林!")
	call CustomDefeatBJ(Player(2),"没有能守护住正派武林!")
	call CustomDefeatBJ(Player(3),"没有能守护住正派武林!")
	call CustomDefeatBJ(Player(4),"没有能守护住正派武林!")
endfunction

/*
 * 6. 玩家英雄阵亡和复活
 */
 
 //玩家英雄阵亡
function Ex takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function PlayerDeath takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	if (ge[i]) then
		call StartTimerBJ(udg_revivetimer[i],false,7.)
	else
		call StartTimerBJ(udg_revivetimer[i],false,15.)
	endif
	call TimerDialogDisplayForPlayerBJ(true,bj_lastCreatedTimerDialog,p)
	call CreateTimerDialogBJ(bj_lastStartedTimer,"复活倒计时:")
	set R7[i]=bj_lastCreatedTimerDialog
	set he[i]=true
	set N8[i]=0
	call GroupRemoveUnit(k9,u)
	call GroupRemoveUnit(j9,u)
	call GroupRemoveUnit(s9,u)
	call GroupRemoveUnit(r9,u)
	if (UnitHaveItem(u,'I02S') or UnitHaveItem(u,1227895373) or UnitHaveItem(u,1227895377) or UnitHaveItem(u,1227895378) or UnitHaveItem(u,1227895376)) then
		if Ce[i]!=3 then
			call DisplayTextToPlayer(p,0,0,"|cFFff0000养武消失了")
		endif
	endif
	set u=null
	set p=null
endfunction
//五个玩家复活
function PlayerReviveA takes nothing returns nothing
	call DestroyTimerDialog(R7[1])
	set Q4=GetRectCenter(He)
	call ReviveHeroLoc(udg_hero[1],Q4,true)
	call PanCameraToTimedLocForPlayer(GetOwningPlayer(udg_hero[1]),Q4,0)
	call RemoveLocation(Q4)
	set he[1]=false
	if(((UnitHaveItem(udg_hero[1],'I02S'))or(UnitHaveItem(udg_hero[1],1227895373))or(UnitHaveItem(udg_hero[1],1227895377))or(UnitHaveItem(udg_hero[1],1227895378))or(UnitHaveItem(udg_hero[1],1227895376))))then
		if Ce[1]!=3 then
			call RemoveItem(FetchUnitItem(udg_hero[1],'I02S'))
			call RemoveItem(FetchUnitItem(udg_hero[1],1227895373))
			call RemoveItem(FetchUnitItem(udg_hero[1],1227895377))
			call RemoveItem(FetchUnitItem(udg_hero[1],1227895378))
			call RemoveItem(FetchUnitItem(udg_hero[1],1227895376))
		endif
	endif
	if GetUnitAbilityLevel(udg_hero[1], 'A035')>0 then
		call UnitRemoveAbility(udg_hero[1], 'A035')
		call UnitAddAbility(udg_hero[1], 'A034')
		call SetUnitAbilityLevel(udg_hero[1], 'A034', LoadInteger(YDHT, GetHandleId(GetOwningPlayer(udg_hero[1])), 'A034'*5))
	endif
	call AddCharacterABuff(udg_hero[1], udg_xinggeA[1])
    call AddCharacterBBuff(udg_hero[1], udg_xinggeB[1])
endfunction
function PlayerReviveB takes nothing returns nothing
	call DestroyTimerDialog(R7[2])
	set Q4=GetRectCenter(He)
	call ReviveHeroLoc(udg_hero[2],Q4,true)
	call PanCameraToTimedLocForPlayer(GetOwningPlayer(udg_hero[2]),Q4,0)
	call RemoveLocation(Q4)
	set he[2]=false
	if(((UnitHaveItem(udg_hero[2],'I02S'))or(UnitHaveItem(udg_hero[2],1227895373))or(UnitHaveItem(udg_hero[2],1227895377))or(UnitHaveItem(udg_hero[2],1227895378))or(UnitHaveItem(udg_hero[2],1227895376))))then
		if Ce[2]!=3 then
			call RemoveItem(FetchUnitItem(udg_hero[2],'I02S'))
			call RemoveItem(FetchUnitItem(udg_hero[2],1227895373))
			call RemoveItem(FetchUnitItem(udg_hero[2],1227895377))
			call RemoveItem(FetchUnitItem(udg_hero[2],1227895378))
			call RemoveItem(FetchUnitItem(udg_hero[2],1227895376))
		endif
	endif
	if GetUnitAbilityLevel(udg_hero[2], 'A035')>0 then
		call UnitRemoveAbility(udg_hero[2], 'A035')
		call UnitAddAbility(udg_hero[2], 'A034')
		call SetUnitAbilityLevel(udg_hero[2], 'A034', LoadInteger(YDHT, GetHandleId(GetOwningPlayer(udg_hero[2])), 'A034'*5))
	endif
	call AddCharacterABuff(udg_hero[2], udg_xinggeA[2])
    call AddCharacterBBuff(udg_hero[2], udg_xinggeB[2])
endfunction
function PlayerReviveC takes nothing returns nothing
	call DestroyTimerDialog(R7[3])
	set Q4=GetRectCenter(He)
	call ReviveHeroLoc(udg_hero[3],Q4,true)
	call PanCameraToTimedLocForPlayer(GetOwningPlayer(udg_hero[3]),Q4,0)
	call RemoveLocation(Q4)
	set he[3]=false
	if(((UnitHaveItem(udg_hero[3],'I02S'))or(UnitHaveItem(udg_hero[3],1227895373))or(UnitHaveItem(udg_hero[3],1227895377))or(UnitHaveItem(udg_hero[3],1227895378))or(UnitHaveItem(udg_hero[3],1227895376))))then
		if Ce[3]!=3 then
			call RemoveItem(FetchUnitItem(udg_hero[3],'I02S'))
			call RemoveItem(FetchUnitItem(udg_hero[3],1227895373))
			call RemoveItem(FetchUnitItem(udg_hero[3],1227895377))
			call RemoveItem(FetchUnitItem(udg_hero[3],1227895378))
			call RemoveItem(FetchUnitItem(udg_hero[3],1227895376))
		endif
	endif
	if GetUnitAbilityLevel(udg_hero[3], 'A035')>0 then
		call UnitRemoveAbility(udg_hero[3], 'A035')
		call UnitAddAbility(udg_hero[3], 'A034')
		call SetUnitAbilityLevel(udg_hero[3], 'A034', LoadInteger(YDHT, GetHandleId(GetOwningPlayer(udg_hero[3])), 'A034'*5))
	endif
	call AddCharacterABuff(udg_hero[3], udg_xinggeA[3])
    call AddCharacterBBuff(udg_hero[3], udg_xinggeB[3])
endfunction
function PlayerReviveD takes nothing returns nothing
	call DestroyTimerDialog(R7[4])
	set Q4=GetRectCenter(He)
	call ReviveHeroLoc(udg_hero[4],Q4,true)
	call PanCameraToTimedLocForPlayer(GetOwningPlayer(udg_hero[4]),Q4,0)
	call RemoveLocation(Q4)
	set he[4]=false
	if(((UnitHaveItem(udg_hero[4],'I02S'))or(UnitHaveItem(udg_hero[4],1227895373))or(UnitHaveItem(udg_hero[4],1227895377))or(UnitHaveItem(udg_hero[4],1227895378))or(UnitHaveItem(udg_hero[4],1227895376))))then
		if Ce[4]!=3 then
			call RemoveItem(FetchUnitItem(udg_hero[4],'I02S'))
			call RemoveItem(FetchUnitItem(udg_hero[4],1227895373))
			call RemoveItem(FetchUnitItem(udg_hero[4],1227895377))
			call RemoveItem(FetchUnitItem(udg_hero[4],1227895378))
			call RemoveItem(FetchUnitItem(udg_hero[4],1227895376))
		endif
	endif
	if GetUnitAbilityLevel(udg_hero[4], 'A035')>0 then
		call UnitRemoveAbility(udg_hero[4], 'A035')
		call UnitAddAbility(udg_hero[4], 'A034')
		call SetUnitAbilityLevel(udg_hero[4], 'A034', LoadInteger(YDHT, GetHandleId(GetOwningPlayer(udg_hero[4])), 'A034'*5))
	endif
	call AddCharacterABuff(udg_hero[4], udg_xinggeA[4])
    call AddCharacterBBuff(udg_hero[4], udg_xinggeB[4])
endfunction
function PlayerReviveE takes nothing returns nothing
	call DestroyTimerDialog(R7[5])
	set Q4=GetRectCenter(He)
	call ReviveHeroLoc(udg_hero[5],Q4,true)
	call PanCameraToTimedLocForPlayer(GetOwningPlayer(udg_hero[5]),Q4,0)
	call RemoveLocation(Q4)
	set he[5]=false
	if(((UnitHaveItem(udg_hero[5],'I02S'))or(UnitHaveItem(udg_hero[5],1227895373))or(UnitHaveItem(udg_hero[5],1227895377))or(UnitHaveItem(udg_hero[5],1227895378))or(UnitHaveItem(udg_hero[5],1227895376))))then
		if Ce[5]!=3 then
			call RemoveItem(FetchUnitItem(udg_hero[5],'I02S'))
			call RemoveItem(FetchUnitItem(udg_hero[5],1227895373))
			call RemoveItem(FetchUnitItem(udg_hero[5],1227895377))
			call RemoveItem(FetchUnitItem(udg_hero[5],1227895378))
			call RemoveItem(FetchUnitItem(udg_hero[5],1227895376))
		endif
	endif
	if GetUnitAbilityLevel(udg_hero[5], 'A035')>0 then
		call UnitRemoveAbility(udg_hero[5], 'A035')
		call UnitAddAbility(udg_hero[5], 'A034')
		call SetUnitAbilityLevel(udg_hero[5], 'A034', LoadInteger(YDHT, GetHandleId(GetOwningPlayer(udg_hero[5])), 'A034'*5))
	endif
	call AddCharacterABuff(udg_hero[5], udg_xinggeA[5])
    call AddCharacterBBuff(udg_hero[5], udg_xinggeB[5])
endfunction

/*
 * 7. 刷怪相关
 */

function CA takes nothing returns nothing
	set udg_counter1=udg_counter1+1
	set q7[udg_counter1]=GetUnitTypeId(GetEnumUnit())
	set r7[udg_counter1]=GetEnumUnit()
	set m7[udg_counter1]=GetUnitLoc(GetEnumUnit())
endfunction
function cA takes nothing returns nothing
	set m7[0]=GetRectCenter(Ge)
	set nn7=CountUnitsInGroup((AddPlayerUnitIntoGroup((Player(12)),null)))
	set o7=CountUnitsInGroup((AddPlayerUnitIntoGroup((Player(15)),null)))
	call ForGroupBJ((AddPlayerUnitIntoGroup((Player(12)),null)),function CA)
	call ForGroupBJ((AddPlayerUnitIntoGroup((Player(15)),null)),function CA)
endfunction
//怪物死后重新刷怪
function EA takes nothing returns nothing
	//圣兽死后不刷新
	if GetTriggerUnit()!=udg_qinglong and GetTriggerUnit()!=udg_baihu and GetTriggerUnit()!=udg_zhuque and GetTriggerUnit()!=udg_xuanwu and GetTriggerUnit()!=gg_unit_n00M_0131 then
		call YDWEPolledWaitNull(.02)
		set s7=1
		//call BJDebugMsg(GetUnitName(GetTriggerUnit()))
		//call BJDebugMsg(I2S(GetUnitTypeId(GetTriggerUnit())))
		loop

			exitwhen s7>(nn7+o7)
			if((GetTriggerUnit()==r7[s7]))then
			    if((s7<=nn7))then
				    //call BJDebugMsg("s7="+I2S(s7))
			        //call BJDebugMsg(I2S(q7[s7]))
			        if((GetUnitTypeId(GetTriggerUnit())!='n000'))then
			            call CreateNUnitsAtLoc(1,'n000',Player(12),m7[0],bj_UNIT_FACING)
			            call UnitApplyTimedLifeBJ(((.18-(.01*I2R(O4)))*I2R(GetUnitPointValueByType(GetUnitTypeId(GetTriggerUnit())))),'BTLF',bj_lastCreatedUnit)
			            set r7[s7]=bj_lastCreatedUnit
			            return
			        else
			            call CreateNUnitsAtLoc(1,q7[s7],Player(12),m7[s7],bj_UNIT_FACING)
			            set r7[s7]=bj_lastCreatedUnit
			            return
			        endif
			    else
			        if((GetUnitTypeId(GetTriggerUnit())!='n000'))then
			            call CreateNUnitsAtLoc(1,'n000',Player(12),m7[0],bj_UNIT_FACING)
			            call UnitApplyTimedLifeBJ(((.18-(.01*I2R(O4)))*I2R(GetUnitPointValueByType(GetUnitTypeId(GetTriggerUnit())))),'BTLF',bj_lastCreatedUnit)
			            set r7[s7]=bj_lastCreatedUnit
			            return
			        else
			            call CreateNUnitsAtLoc(1,q7[s7],Player(15),m7[s7],bj_UNIT_FACING)
			            set r7[s7]=bj_lastCreatedUnit
			            return
			        endif
			    endif
			endif
			set s7=s7+1
		endloop
	endif
endfunction
function GA takes nothing returns boolean
	return(ShiFouShuaGuai)
endfunction
//BOSS成长
function BOSSChengZhang takes nothing returns nothing
	local timer t=GetExpiredTimer()
    if udg_boss[udg_boshu/4]!=null then
	    if IsUnitAliveBJ(udg_boss[udg_boshu/4]) then
		    if GetUnitAbilityLevel(udg_boss[udg_boshu/4],'A0DB')==0 then
	            call UnitAddAbility(udg_boss[udg_boshu/4],'A0DB')
	            call  DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033邪教BOSS"+GetUnitName(udg_boss[udg_boshu/4])+"已加强")
	        else
	            if GetUnitAbilityLevel(udg_boss[udg_boshu/4],'A0DB')<10 then
	                call IncUnitAbilityLevel(udg_boss[udg_boshu/4],'A0DB')
	                call  DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033邪教BOSS"+GetUnitName(udg_boss[udg_boshu/4])+"已加强")
                endif
            endif
            if GetUnitAbilityLevel(udg_boss[udg_boshu/4],'A0CP')==0 then
	            call UnitAddAbility(udg_boss[udg_boshu/4],'A0CP')
	        else
	            if GetUnitAbilityLevel(udg_boss[udg_boshu/4],'A0CP')<6 then
		            call IncUnitAbilityLevel(udg_boss[udg_boshu/4],'A0CP')
		        else
	                call UnitAddAbility(udg_boss[udg_boshu/4],'A0C1')
                endif
            endif
	    else
	        call PauseTimer(t)
	        call DestroyTimer(t)
        endif
    else
        call PauseTimer(t)
        call DestroyTimer(t)
    endif
	set t=null
endfunction

//玩家等级大于波数*4
function LevelGuoGao takes nothing returns boolean
	local integer i=0
	local integer totallevel=0
	local real r=0.
	loop
		exitwhen i > 11
		if udg_hero[i]!=null then
            set totallevel=totallevel+GetUnitLevel(udg_hero[i])
        endif
		set i = i + 1
	endloop
	if   udg_teshushijian and I2R(totallevel)>udg_boshu*4*I2R(GetNumPlayer()) then
		return true
	endif
	return false
endfunction
//刷怪
function HA takes nothing returns nothing
	local timer t=CreateTimer()
	if udg_boshu==5 and udg_teshushijian==true then
		call ChooseNanDu()
	endif
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033邪教势力：第"+(I2S(udg_boshu)+"|CFFFF0033波")))
	if udg_boshu==9 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能神圣护甲和10倍暴击"))
	elseif udg_boshu==11 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能咆哮和重击"))
	elseif udg_boshu==12 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪为空军"))
	elseif udg_boshu==13 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能噬血术"))
	elseif udg_boshu==14 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪为绞肉车，死亡后会产生小蜘蛛"))
	elseif udg_boshu==15 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪为空军，拥有技能20倍暴击"))
	elseif udg_boshu==16 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能精灵之火"))
	elseif udg_boshu==17 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能狂战士和30倍暴击"))
	elseif udg_boshu==18 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪血量很高，并拥有技能嘲讽"))
	elseif udg_boshu==19 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能狂热"))
	elseif udg_boshu==20 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能变相移动"))
	elseif udg_boshu==21 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能反魔法外壳"))
	elseif udg_boshu==22 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能重击"))
	elseif udg_boshu==23 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能90%闪避"))
	elseif udg_boshu==24 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能卡布恩（自爆）"))
	elseif udg_boshu==25 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能闪电攻击"))
	elseif udg_boshu==26 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪拥有技能神圣护甲"))
	elseif udg_boshu==27 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：下一波怪血量很高，并拥有技能永久献祭和重生"))
	elseif udg_boshu==28 then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,("|CFFFF0033※警告※：本波为最后一波进攻，本波结束后教主即将出现"))
	endif
	if LevelGuoGao() then
	    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033激活特殊事件|cFFDDA0DD※邪教全力进攻※")
	endif
	call StopMusic(false)
	call PlayMusicBJ(yh)
	call EnableTrigger(Yi)
	call YDWEPolledWaitNull(60.)
	if((O4>1))then
		call EnableTrigger(Zi)
	    if((ModuloInteger(udg_boshu,4)==0)and(udg_boshu<28) and udg_shengchun==false)then
	        call CreateNUnitsAtLocFacingLocBJ(1,u7[(udg_boshu/4)],Player(6),v7[8],v7[3])
	        call GroupAddUnit(w7,bj_lastCreatedUnit)
	        call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[3])
	        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033邪教趁我方不备，偷偷地派出BOSS从背后杀过来了，请准备防御")
	    endif
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033邪教趁我方不备，偷偷地从背后杀过来了")

	endif
	if((ModuloInteger(udg_boshu,4)==0)and(udg_boshu<30)and udg_shengchun==false)then
	    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033邪教派出BOSS前来进攻，请准备防御")
	    call CreateNUnitsAtLocFacingLocBJ(1,u7[(udg_boshu/4)],Player(6),v7[6],v7[4])
	    if udg_boshu==4 then
	    	call UnitAddAbility(bj_lastCreatedUnit,'A0C2')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0C2',IMinBJ(udg_nandu*2,9))
	    	call UnitAddAbility(bj_lastCreatedUnit,'A0C5')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0C5',IMinBJ(udg_nandu*2,9))
	    	call UnitAddAbility(bj_lastCreatedUnit,'A0C7')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0C7',IMinBJ(udg_nandu*2,9))
	    elseif udg_boshu==8 then
	        call UnitAddAbility(bj_lastCreatedUnit,'A0CF')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0CF',IMinBJ(udg_nandu*2,9))
	    	//call UnitAddAbility(bj_lastCreatedUnit,'A0CM')
	    	//call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0CM',IMinBJ(udg_nandu*2,9))
	    	call UnitAddAbility(bj_lastCreatedUnit,'A0DA')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0DA',IMinBJ(udg_nandu*2,9))
	    elseif udg_boshu==12 then
	        call UnitAddAbility(bj_lastCreatedUnit,'A0CI')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0CI',IMinBJ(udg_nandu*2,9))
	    	call UnitAddAbility(bj_lastCreatedUnit,'A0CJ')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0CJ',IMinBJ(udg_nandu*2,9))
	    	call UnitAddAbility(bj_lastCreatedUnit,'A0CN')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0CN',IMinBJ(udg_nandu*2,9))
	    elseif udg_boshu==16 then
	        call UnitAddAbility(bj_lastCreatedUnit,'A0C8')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0C8',IMinBJ(udg_nandu*2,9))
	    	call UnitAddAbility(bj_lastCreatedUnit,'A0C9')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0C9',IMinBJ(udg_nandu*2,9))
	    	call UnitAddAbility(bj_lastCreatedUnit,'A0CB')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0CB',IMinBJ(udg_nandu*2,9))
	    elseif udg_boshu==20 then
	        call UnitAddAbility(bj_lastCreatedUnit,'A0CH')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0CH',IMinBJ(udg_nandu*2,9))
	    	call UnitAddAbility(bj_lastCreatedUnit,'A0DE')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0DE',IMinBJ(udg_nandu*2,9))
	    elseif udg_boshu==24 then
	        call UnitAddAbility(bj_lastCreatedUnit,'A0CK')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0CK',IMinBJ(udg_nandu*2,9))
	    	call UnitAddAbility(bj_lastCreatedUnit,'A0DH')
	    	call SetUnitAbilityLevel(bj_lastCreatedUnit,'A0DH',IMinBJ(udg_nandu*2,9))
	    endif
	    set udg_boss[udg_boshu/4]=bj_lastCreatedUnit
	    call TimerStart(t,20,true,function BOSSChengZhang)
	    call GroupAddUnit(w7,bj_lastCreatedUnit)
	    call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
	elseif((ModuloInteger(udg_boshu,4)!=0)and(udg_boshu<28)and udg_shengchun==false)then
	    if LevelGuoGao() then
		    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033由于激活特殊事件，邪教派出BOSS前来进攻，请准备防御")
	        call CreateNUnitsAtLocFacingLocBJ(1,u7[(udg_boshu/4)+1],Player(6),v7[6],v7[4])
	        set udg_boss[udg_boshu/4]=bj_lastCreatedUnit
	        call TimerStart(t,20,true,function BOSSChengZhang)
	        call GroupAddUnit(w7,bj_lastCreatedUnit)
	        call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
	    endif
	endif
	call YDWEPolledWaitNull(20.)
	if((ue>0))then
	call ConditionalTriggerExecute(dj)
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033名门高手开始进攻，大家要小心应付了！")
	endif
	call DisableTrigger(Yi)
	call YDWEPolledWaitNull(10.)
	if((O4>1))then
		call DisableTrigger(Zi)
	endif
	set udg_boshu=udg_boshu+1
	call StopMusic(false)
	call PlayMusicBJ(xh)
	if udg_sutong == false then
		call YDWEPolledWaitNull(135-GetNumPlayer()*10)
	endif
	if((udg_boshu>=29) and udg_shengchun==false)then
	    call StopMusic(false)
	    call PlayMusicBJ(zh)
	    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033西域势力最后BOSS即将发起最后进攻，请作好防守准备")
	    call CreateNUnitsAtLocFacingLocBJ(1,u7[8],Player(6),v7[6],v7[4])
	    set udg_boss[udg_boshu/4]=bj_lastCreatedUnit
	    call TimerStart(t,20,true,function BOSSChengZhang)
	    call GroupAddUnit(w7,bj_lastCreatedUnit)
	    call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
	else
	    if udg_shengchun==true then
		    call AddPlayerTechResearched(Player(12),'R004',1)
		    call AddPlayerTechResearched(Player(6),'R004',1)
	    endif
	    if((x7>=1))then
	        call TriggerExecute(ij)
	    else
	        call TriggerExecute(hj)
	    endif
	endif
	set t=null
endfunction
function JiaJiNeng takes unit u returns nothing
    if udg_boshu>=8 then
	    call UnitAddAbility(u,'A0CX')
	    if udg_boshu>=18 then
	        call UnitAddAbility(u,'A0CY')
	        if udg_boshu>=28 then
	            call UnitAddAbility(u,'A0CZ')
            endif
        endif
    endif
endfunction
function lA takes nothing returns nothing
	if udg_shengchun==false then
        call CreateNUnitsAtLocFacingLocBJ(1,y7[udg_boshu],Player(6),v7[6],v7[4])
        call GroupAddUnit(w7,bj_lastCreatedUnit)
        call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
        call CreateNUnitsAtLocFacingLocBJ(1,y7[udg_boshu],Player(6),v7[7],v7[4])
        call GroupAddUnit(w7,bj_lastCreatedUnit)
        call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
        call CreateNUnitsAtLocFacingLocBJ(1,y7[udg_boshu],Player(6),v7[5],v7[4])
        call GroupAddUnit(w7,bj_lastCreatedUnit)
        call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
        if LevelGuoGao() then
        	call CreateNUnitsAtLocFacingLocBJ(1,y7[udg_boshu],Player(6),v7[6],v7[4])
            call GroupAddUnit(w7,bj_lastCreatedUnit)
            call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
            call CreateNUnitsAtLocFacingLocBJ(1,y7[udg_boshu],Player(6),v7[7],v7[4])
            call GroupAddUnit(w7,bj_lastCreatedUnit)
            call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
            call CreateNUnitsAtLocFacingLocBJ(1,y7[udg_boshu],Player(6),v7[5],v7[4])
            call GroupAddUnit(w7,bj_lastCreatedUnit)
            call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
        endif
    else
        call CreateNUnitsAtLocFacingLocBJ(1,'n003',Player(6),v7[6],v7[4])
        call GroupAddUnit(w7,bj_lastCreatedUnit)
        call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
        call JiaJiNeng(bj_lastCreatedUnit)
        call CreateNUnitsAtLocFacingLocBJ(1,'n003',Player(6),v7[7],v7[4])
        call GroupAddUnit(w7,bj_lastCreatedUnit)
        call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
        call JiaJiNeng(bj_lastCreatedUnit)
        call CreateNUnitsAtLocFacingLocBJ(1,'n003',Player(6),v7[5],v7[4])
        call GroupAddUnit(w7,bj_lastCreatedUnit)
        call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
        call JiaJiNeng(bj_lastCreatedUnit)
    endif
endfunction
function KA takes nothing returns nothing
	if udg_shengchun==false then
        call CreateNUnitsAtLocFacingLocBJ(1,y7[(udg_boshu+1)],Player(6),v7[8],v7[3])
        call GroupAddUnit(w7,bj_lastCreatedUnit)
        call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[3])
        if LevelGuoGao() then
        	call CreateNUnitsAtLocFacingLocBJ(1,y7[(udg_boshu+1)],Player(6),v7[8],v7[3])
            call GroupAddUnit(w7,bj_lastCreatedUnit)
            call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[3])
        endif
    else
        call CreateNUnitsAtLocFacingLocBJ(1,'n003',Player(6),v7[8],v7[3])
        call GroupAddUnit(w7,bj_lastCreatedUnit)
        call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[3])
        call JiaJiNeng(bj_lastCreatedUnit)
    endif
endfunction
function MA takes nothing returns boolean
	return (ShiFouShuaGuai)
endfunction
function NA takes nothing returns nothing
	local integer i = 1
	local integer j = 1
	local integer l = 0
	local real r1 = 0
	local real r2 = 0
	local real rr3 = 1.
	local real rr4 = 1.
	if((ue==1))then
		set r1 = 1.26
		set r2 = 1.4
	elseif((ue==2))then
		set r1 = 1.28
		set r2 = 1.43
	elseif((ue==3))then
		set r1 = 1.3
		set r2 = 1.46
	elseif((ue==4))then
		set r1 = 1.32
		set r2 = 1.49
	elseif((ue==5))then
		set r1 = 1.34
		set r2 = 1.52
	endif
	loop
		exitwhen i>ue
		loop
			exitwhen j>udg_boshu
			if (j<udg_boshu) then
				set rr3 = rr3*r1
				set rr4 = rr4*r2
			endif
			set j=j+1
		endloop
		set l = GetRandomInt(1,11)
		call CreateNUnitsAtLocFacingLocBJ(1,ve[l],Player(6),v7[GetRandomInt(5,8)],v7[4])
		call GroupAddUnit(w7,bj_lastCreatedUnit)
		call IssuePointOrderByIdLoc(bj_lastCreatedUnit,$D000F,v7[4])
		call SetHeroLevelBJ(bj_lastCreatedUnit,(4*udg_boshu),false)
		call YDWEGeneralBounsSystemUnitSetBonus(bj_lastCreatedUnit,3,0,R2I(I2R(xe[l])*(rr3*3.3)))
		call YDWEGeneralBounsSystemUnitSetBonus(bj_lastCreatedUnit,2,0,(((udg_boshu-1)*ye[l]*9)/10)*ue)
		//call YDWEGeneralBounsSystemUnitSetBonus(bj_lastCreatedUnit,1,0,R2I(I2R(ze[l])*rr4))
		call unitadditembyidswapped(Ae[udg_boshu],bj_lastCreatedUnit)
		set i=i+1
	endloop
	//set ue=0
endfunction
function PA takes nothing returns nothing
	call DestroyTimerDialog(z7[1])
	call ConditionalTriggerExecute(Xi)
endfunction
function RA takes nothing returns nothing
	call DestroyTimerDialog(z7[2])
	call ConditionalTriggerExecute(Xi)
	//set x7=0
endfunction
function TA takes nothing returns nothing
	call DestroyTimerDialog(z7[3])
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cFFDDA0DD西域邪教开始了进攻正派武林，玩家务必要确保正派武林不被摧毁，否则游戏失败|r")
	if udg_teshushijian==true then
		call ChooseNanDu()
	endif
	call ConditionalTriggerExecute(Xi)
endfunction
function VA takes nothing returns nothing
	call StartTimerBJ(A7[1],false,(30.+I2R(ie)))
	call CreateTimerDialogBJ(bj_lastStartedTimer,"邪教下次进攻时间")
	set z7[1]=bj_lastCreatedTimerDialog
	set ie=0
endfunction
function XA takes nothing returns nothing
	call StartTimerBJ(A7[2],false,(x7*60.+30.+I2R(ie)))
	call CreateTimerDialogBJ(bj_lastStartedTimer,"邪教下次进攻时间")
	set z7[2]=bj_lastCreatedTimerDialog
	set ie=0
	set x7=0
endfunction
function ZA takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227894853))
endfunction
function ea takes nothing returns nothing
	set x7=x7+1
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFF00FF4C在武林弟子的奋力帮助下，邪教的进攻势力被延缓了，大家有1分钟的时间，赶紧去做任务吧~")
	call PlaySoundOnUnitBJ(Dh,100,GetTriggerUnit())
	set shoujiajf[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]=shoujiajf[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]+10
	call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|CFF00FF4C守家积分+10")
endfunction

function ja takes nothing returns boolean
	return((IsUnitInGroup(GetTriggerUnit(),w7)))
endfunction
function ka takes nothing returns nothing
	call GroupRemoveUnit(w7,GetTriggerUnit())
endfunction
//练功房刷怪
function na takes nothing returns boolean
	return(((GetOwningPlayer(GetFilterUnit())==Player(7))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
 function qa takes nothing returns nothing
    if((CountUnitsInGroup(wv(Ie,Condition(function na)))<=3))then
        call CreateNUnitsAtLoc(12,y7[IMinBJ(IMaxBJ(udg_boshu,1),28)],Player(7),v7[1],bj_UNIT_FACING)
    endif
    if((CountUnitsInGroup(wv(Re,Condition(function na)))<=3))then
        call CreateNUnitsAtLoc(12,y7[IMinBJ(IMaxBJ(udg_boshu,1),28)],Player(7),v7[$A],bj_UNIT_FACING)
    endif
    if((CountUnitsInGroup(wv(le,Condition(function na)))<=3))then
        call CreateNUnitsAtLoc(12,y7[IMinBJ(IMaxBJ(udg_boshu,1),28)],Player(7),v7[2],bj_UNIT_FACING)
    endif
endfunction
//练功房
function sa takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895350))
endfunction
function ua takes nothing returns nothing
	call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cFFFFCC00进入少林寺练功房二")
	call SetUnitPosition(GetTriggerUnit(), 4750, -3650)
	call PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()),4250, -3650,0)
endfunction
function wa takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895351))
endfunction
function xa takes nothing returns nothing
	call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cFFFFCC00进入少林寺练功房三")
	call SetUnitPosition(GetTriggerUnit(), 5920, -4750)
	call PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()),5920,-4750,0)
endfunction
function za takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895361))
endfunction
function Aa takes nothing returns nothing
	call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cFFFFCC00进入少林寺练功房一")
	call SetUnitPosition(GetTriggerUnit(), 3730, -4690)
	call PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()),3730, -4690,0)
endfunction

/*
 * 8. 鸟的技能
 */
 

//切换背包
function Ba takes nothing returns boolean
	return((GetSpellAbilityId()==1093677134))
endfunction
function ba takes nothing returns nothing
	set B7=1
	loop
		exitwhen B7>6
		call UnitAddItem(b7[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))],UnitItemInSlotBJ(C7[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))],B7))
		set B7=B7+1
	endloop
	set B7=1
	loop
		exitwhen B7>6
		call UnitAddItem(C7[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))],UnitItemInSlotBJ(GetTriggerUnit(),B7))
		set B7=B7+1
	endloop
	set B7=1
	loop
		exitwhen B7>6
		call UnitAddItem(GetTriggerUnit(),UnitItemInSlotBJ(b7[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))],B7))
		set B7=B7+1
	endloop
endfunction
//鸟的贩卖技能
function ca takes nothing returns boolean
	return((GetSpellAbilityId()==1093679433))
endfunction
function Da takes nothing returns nothing
	call CreateNUnitsAtLoc(1,'nvul',GetOwningPlayer(GetTriggerUnit()),v7[9],bj_UNIT_FACING)
	call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddItem(bj_lastCreatedUnit,CreateItem(GetItemTypeId(GetSpellTargetItem()),0,0))
	call UnitDropItemTarget(bj_lastCreatedUnit,UnitItemInSlotBJ(bj_lastCreatedUnit,1),Rs)
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',5.)
	call RemoveItem(GetSpellTargetItem())
	call PlaySoundOnUnitBJ(Ih,100,GetTriggerUnit())
	call AddSpecialEffectTargetUnitBJ("overhead",GetTriggerUnit(),"Abilities\\Spells\\Items\\ResourceItems\\ResourceEffectTarget.mdl")
	call DestroyEffect(bj_lastCreatedEffect)
endfunction
//切换物品
function IsQieHuanItem takes nothing returns boolean
	return((GetSpellAbilityId()=='A00M')and(he[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]==false))
endfunction
function QieHuanItem takes nothing returns nothing
	call UnitAddItem(Vs,UnitItemInSlotBJ(GetTriggerUnit(),1))
	call UnitAddItem(GetTriggerUnit(),UnitItemInSlotBJ(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))],1))
	call UnitAddItem(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))],UnitItemInSlotBJ(Vs,1))
endfunction

/*
 * 9. 英雄升级
 */

 //英雄达到某等级
function Ja takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function HeroLevel takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	local location loc = null
	if (Ce[i]==5) then
		if GetRandomInt(1, 3)==1 then
			call ModifyHeroStat(0, u, 0, GetRandomInt(4, 12))
		elseif GetRandomInt(1, 2) ==1 then
			call ModifyHeroStat(1, u, 0, GetRandomInt(4, 12))
		else
			call ModifyHeroStat(2, u, 0, GetRandomInt(4, 12))
		endif
		if (GetUnitLevel(u)==80) then
			set juexuelingwu[i] = juexuelingwu[i]+10
			if udg_zhangmen[i]==true then
			else
				call SaveStr(YDHT, GetHandleId(p), GetHandleId(p),"〓练气大师〓"+LoadStr(YDHT, GetHandleId(p), GetHandleId(p)))
			endif
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜"+GetPlayerName(p)+"获得练气大师")
			call SetPlayerName(p, "〓练气大师〓"+GetPlayerName(p))
		endif
	endif
	if((GetUnitTypeId(u)=='O004'))then
		call YDWEGeneralBounsSystemUnitSetBonus(u,0,0,400)
	else
		call YDWEGeneralBounsSystemUnitSetBonus(u,0,0,350)
	endif
	if((GetUnitTypeId(u)=='O000'))then
		call YDWEGeneralBounsSystemUnitSetBonus(u,3,0,40)
	else
		call YDWEGeneralBounsSystemUnitSetBonus(u,3,0,35)
	endif
	if((GetUnitTypeId(u)=='O001'))then
		call YDWEGeneralBounsSystemUnitSetBonus(u,2,0,5)
	else
		call YDWEGeneralBounsSystemUnitSetBonus(u,2,0,4)
	endif
	if((GetUnitLevel(u)>=3)and(Z8[i]==false))then
		set Z8[i]=true
		set d8[i]=1
		loop
			exitwhen d8[i]>20 //门派数
			if (udg_runamen[i]==d8[i]) then
				//if d8[i]==11 then
				//	if GetRandomInt(1,100)<=99 then
				//		set X7[d8[i]] = LoadInteger(YDHT, StringHash("武学")+GetRandomInt(1,18), 2)
				//	else
				//		set X7[d8[i]] = LoadInteger(YDHT, StringHash("武学")+GetRandomInt(19,36), 2)
				//	endif
				//endif
				if d8[i]!=11 then
					call UnitAddAbility(u,X7[d8[i]])
					call UnitMakeAbilityPermanent(u, true, X7[d8[i]])
					call DisplayTextToPlayer(p,0,0,"|cff00FF66恭喜领悟技能："+GetObjectName(X7[d8[i]]))
					call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FF66玩家"+I2S(1+GetPlayerId(p))+"成为"+udg_menpainame[udg_runamen[i]]+"初级弟子")
					call SetPlayerName(p,"〓"+udg_menpainame[udg_runamen[i]]+"初级弟子〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
				endif
				if (udg_runamen[i]==11) then
					set udg_shuxing[i]=udg_shuxing[i]+5
					call DisplayTextToPlayer(p,0,0,"|cff00FF66自由门派3级奖励5点自由属性点及随机武功秘籍一本、小概率获得奇武秘籍一本")
					if GetRandomInt(1,100)<=10 then
						call unitadditembyidswapped(LoadInteger(YDHT, StringHash("武学")+GetRandomInt(42, 46), 1), u)
					endif
					if GetRandomInt(1,100)<=99 then
						call unitadditembyidswapped(LoadInteger(YDHT, StringHash("武学")+GetRandomInt(19, 36), 1), u)
					else
						call unitadditembyidswapped(LoadInteger(YDHT, StringHash("武学")+GetRandomInt(1, 18), 1), u)
					endif
					//set S9=1
     //           	loop
     //           	    exitwhen S9>20
     //           	    if (X7[d8[i]]==MM9[S9]) then
     //           	        set udg_shanghaijiacheng[i] = udg_shanghaijiacheng[i] + udg_jueneishjc[S9]
     //           	        call ModifyHeroStat(1,u,0,udg_jueneiminjie[S9])
     //           	        set udg_baojilv[i] = udg_baojilv[i] + udg_jueneibaojilv[S9]
					//		set juexuelingwu[i] = juexuelingwu[i] + udg_jueneijxlw[S9]
					//		set udg_shanghaixishou[i] = udg_shanghaixishou[i] + udg_jueneishxs[S9]
     //           	    endif
     //           	    set S9=S9+1
     //           	endloop
				endif
				set L7[i]=1
				loop
					exitwhen L7[i]>wugongshu[i]
					if (I7[(GetPlayerId(p)*20+L7[i])]!='AEfk') then
					else
						set I7[(((i-1)*20)+L7[i])]=X7[d8[i]]
						exitwhen true
					endif
					set L7[i]=L7[i]+1
				endloop
			endif
			set d8[i]=d8[i]+1
		endloop
	endif
	if((GetUnitLevel(u)>=3)and GetUnitAbilityLevel(u,X7[udg_runamen[i]])>=2 and (e9[i]==false))then
		set e9[i]=true
		set d8[i]=1
		loop
			exitwhen d8[i]>20
			if d8[i]!=11 then
				if((udg_runamen[i]==d8[i]))then
					call UnitAddAbility(u,Z7[d8[i]])
					call UnitMakeAbilityPermanent(u, true, Z7[d8[i]])
					call DisplayTextToPlayer(p,0,0,("|cff00FF66恭喜领悟技能："+GetObjectName(Z7[d8[i]])))
					call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FF66玩家"+I2S(1+GetPlayerId(p))+"成为"+udg_menpainame[udg_runamen[i]]+"中级弟子")
					call SetPlayerName(p,"〓"+udg_menpainame[udg_runamen[i]]+"中级弟子〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
					set L7[i]=1
					loop
						exitwhen L7[i]>wugongshu[i]
						if((I7[((GetPlayerId(p)*20)+L7[i])]!='AEfk'))then
						else
							set I7[(((i-1)*20)+L7[i])]=Z7[d8[i]]
							exitwhen true
						endif
						set L7[i]=L7[i]+1
					endloop
				endif
			endif
			set d8[i]=d8[i]+1
		endloop
	endif
	if((GetUnitLevel(u)>=3) and GetUnitAbilityLevel(u,Z7[udg_runamen[i]])>=2 and (d9[i]==false))then
		set d9[i]=true
		set d8[i]=1
		loop
			exitwhen d8[i]>20
			if d8[i]!=11 then
				if((udg_runamen[i]==d8[i]))then
					call UnitAddAbility(u,Y7[d8[i]])
					call DisplayTextToPlayer(p,0,0,("|cff00FF66恭喜领悟技能："+GetObjectName(Y7[d8[i]])))
					call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FF66玩家"+I2S(1+GetPlayerId(p))+"成为"+udg_menpainame[udg_runamen[i]]+"高级弟子")
					call SetPlayerName(p,"〓"+udg_menpainame[udg_runamen[i]]+"高级弟子〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
					call UnitMakeAbilityPermanent(u, true, Y7[d8[i]])
					set L7[i]=1
					loop
						exitwhen L7[i]>wugongshu[i]
						if((I7[((GetPlayerId(p)*20)+L7[i])]!='AEfk'))then
						else
							set I7[(((i-1)*20)+L7[i])]=Y7[d8[i]]
							exitwhen true
						endif
						set L7[i]=L7[i]+1
					endloop
				endif
			endif
			set d8[i]=d8[i]+1
		endloop
	endif
	if((GetUnitLevel(u)==10))then
		call DisplayTimedTextToPlayer(p,0,0,30.,"|cff66ff00恭喜你升到了10级，你可以前往全真教（小地图指示点）完成历练1任务（大战江南七怪）了，完成历练任务可以提升修行，对人物的武功伤害占有重要影响，切记切记！！")
		set loc = GetRectCenter(Te)
		call PingMinimapLocForForce(ov(p),loc,5.)
		call RemoveLocation(loc)
	endif
	if((GetUnitLevel(u)==25))then
		call DisplayTimedTextToPlayer(p,0,0,30.,"|cff66ff00恭喜你升到了25级，你可以前往少林后山（小地图指示点）完成历练2任务（挑战十八罗汉）了，完成历练任务可以提升修行，对人物的武功伤害占有重要影响，切记切记！！")
		set loc = GetRectCenter(ag)
		call PingMinimapLocForForce(ov(p),loc,5.)
		call RemoveLocation(loc)
	endif
	if((GetUnitLevel(u)==40))then
		call DisplayTimedTextToPlayer(p,0,0,30.,"|cff66ff00恭喜你升到了40级，你可以前往武林城外（小地图指示点）完成历练3任务（勇闯十恶不赦岛）了，完成历练任务可以提升修行，对人物的武功伤害占有重要影响，切记切记！！")
		set loc = GetRectCenter(Bg)
		call PingMinimapLocForForce(ov(p),loc,5.)
		call RemoveLocation(loc)
	endif
	if((GetUnitLevel(u)==55))then
		call DisplayTimedTextToPlayer(p,0,0,30.,"|cff66ff00恭喜你升到了55级，你可以前往光明顶（小地图指示点）完成历练4任务（勇闯光明顶）了，完成历练任务可以提升修行，对人物的武功伤害占有重要影响，切记切记！！")
		set loc = GetRectCenter(Lg)
		call PingMinimapLocForForce(ov(p),loc,5.)
		call RemoveLocation(loc)
	endif
	if((GetUnitLevel(u)==70))then
		call DisplayTimedTextToPlayer(p,0,0,30.,"|cff66ff00恭喜你升到了70级，你可以前往少林寺后山（小地图指示点）完成历练5任务（华山论剑）了，完成历练任务可以提升修行，对人物的武功伤害占有重要影响，切记切记！！")
		set loc = GetRectCenter(Rg)
		call PingMinimapLocForForce(ov(p),loc,5.)
		call RemoveLocation(loc)
	endif
	if (GetUnitLevel(u)>=80 and jiawuxue[i]==false) then
		call DisplayTimedTextToPlayer(p,0,0,30.,"|cff66ff00恭喜你升到了80级，获得5个自创武学点（vip玩家获得7个），在通过历练6以后你可以到聚贤庄游坦之处自创武学")
		set wuxuedian[i] = wuxuedian[i] + 5
		if udg_vip[i] >=1 then
			set wuxuedian[i] = wuxuedian[i] + 2
		endif
		set jiawuxue[i] = true
		set zizhiwugong[i] = ZiZhiWuGong.create(0, 0, GetRandomInt(1, 10), 0, 0)
	endif
	set u = null
	set p = null
	set loc = null
endfunction

/*
 * 10. 各类回复
 */
 
 //杀怪回血
function Ma takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetKillingUnit()))==MAP_CONTROL_USER))
endfunction
function KillGuaiJiaXie takes nothing returns nothing
	if GetUnitAbilityLevel(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))], 'A03Z')<1 then
		call SetWidgetLife(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))],(GetUnitState(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))],UNIT_STATE_LIFE)+(shaguaihufui[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]+((I2R(danpo[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))])/2000.)*GetUnitState(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))],UNIT_STATE_MAX_LIFE)))))
	endif
endfunction
//每秒回血回蓝
function YiShuHuiXie takes nothing returns nothing
	set c7=1
	loop
		exitwhen c7>5
		if((GetPlayerController(Player(-1+(c7)))==MAP_CONTROL_USER)) and UnitHasBuffBJ(udg_hero[c7], 'B014')==false then
			call SetUnitLifePercentBJ(udg_hero[c7],GetUnitLifePercent(udg_hero[c7])+I2R(yishu[c7])/2000.+10*GetUnitAbilityLevel(udg_hero[c7],'A0D4')+guixihuixie[c7])
			if (UnitHaveItem(udg_hero[c7], 'I01D')) then
				call SetUnitLifePercentBJ(udg_hero[c7], GetUnitLifePercent(udg_hero[c7]) + 6)
			endif
			call SetUnitLifeBJ(udg_hero[c7],GetUnitState(udg_hero[c7],UNIT_STATE_LIFE)+shengminghuifu[c7])
			call SetUnitManaBJ(udg_hero[c7],GetUnitStateSwap(UNIT_STATE_MANA,udg_hero[c7])+(.3*I2R(yishu[c7]))+falihuifu[c7]+5*GetUnitAbilityLevel(udg_hero[c7],'A0D4'))
		endif
		set c7=c7+1
	endloop
endfunction
//伤害回复
function Ra takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER))
endfunction
function Sa takes nothing returns nothing
	if GetUnitAbilityLevel(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))], 'A03Z')<1 then
		call SetWidgetLife(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))],(GetUnitState(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))],UNIT_STATE_LIFE)+((shanghaihuifu[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))]/10.)+((I2R(danpo[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))])/1500.)*GetUnitState(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))],UNIT_STATE_MAX_LIFE)))))
	endif
endfunction
//伤害吸收
function Ua takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)))
endfunction
function Va takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	local real r=(1-RMinBJ(udg_shanghaixishou[i],.8))*GetEventDamage()
	call SetWidgetLife(udg_hero[i],(GetUnitState(udg_hero[i],UNIT_STATE_LIFE)+(RMinBJ(udg_shanghaixishou[i],.8)*GetEventDamage())))
	if((UnitHasBuffBJ(GetTriggerUnit(),1110454340))and(GetUnitAbilityLevel(GetTriggerUnit(),1093678930)!=0))then
		call SetWidgetLife(udg_hero[i],(GetUnitState(udg_hero[i],UNIT_STATE_LIFE)+(.3*GetEventDamage())))
	endif
	if UnitHaveItem(udg_hero[i],'I09Z') then
		if GetUnitAbilityLevel(udg_hero[i], 'A03O')!=0 then
			set r = r/3
		endif
		if GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)>=R2I(r)/20 then
			call AdjustPlayerStateBJ(-R2I(r)/20,p,PLAYER_STATE_RESOURCE_GOLD)
			call SetWidgetLife(udg_hero[i],RMinBJ((GetUnitState(udg_hero[i],UNIT_STATE_LIFE)+r),GetUnitState(udg_hero[i],UNIT_STATE_MAX_LIFE)))
		else
			call AdjustPlayerStateBJ(GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)*(-1),p,PLAYER_STATE_RESOURCE_GOLD)
			call SetWidgetLife(udg_hero[i],RMinBJ((GetUnitState(udg_hero[i],UNIT_STATE_LIFE)+5*I2R(GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD))),GetUnitState(udg_hero[i],UNIT_STATE_MAX_LIFE)))
		endif
	endif
	set u = null
	set p = null
endfunction

/*
 * 11. 远程传送
 */
//传送至桃花岛
function mB takes nothing returns boolean
	return  GetItemTypeId(GetManipulatedItem())=='I09V' and UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)
endfunction
function nB takes nothing returns nothing
	call SetUnitPosition(GetTriggerUnit(),9631,1139)
	call PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()),9631,1139,0)
	call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cFFFFCC00进入桃花岛")
	call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cFFFFCC00”源思英年,巴巴西洛普,雪陆文出；源思英年,巴巴西洛普,雪陆文出！“")
endfunction

//终南山
function GQ takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896148))
endfunction
function HQ takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	local location loc = null
	if (GetUnitLevel(u)<$A) then
		call DisplayTextToPlayer(p,0,0,"|cFFFF0000等级不足10级无法传送")
	else
		if (shengwang[i]<500) then
			call DisplayTextToPlayer(p,0,0,"|cFFFF0000江湖声望不足500无法传送")
		else
			set loc = GetRectCenter(Te)
			call SetUnitPositionLoc(u,loc)
			call PanCameraToTimedLocForPlayer(p,loc,0)
			call RemoveLocation(loc)
			call DisplayTextToPlayer(p,0,0,"|cff66ff33进入终南山")
		endif
	endif
	set u = null
	set p = null
	set loc = null
endfunction
//少林寺后山
function lQ takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896149))
endfunction
function JQ takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	local location loc = null
	if(GetUnitLevel(u)<25)then
		call DisplayTextToPlayer(p,0,0,"|cFFFF0000等级不足25级无法传送")
	else
		if((shengwang[i]<$5DC))then
			call DisplayTextToPlayer(p,0,0,"|cFFFF0000江湖声望不足1500无法传送")
		else
			set loc = GetRectCenter(ag)
			call SetUnitPositionLoc(u,loc)
			call PanCameraToTimedLocForPlayer(p,loc,0)
			call RemoveLocation(loc)
			call DisplayTextToPlayer(p,0,0,"|cff66ff33进入少林寺后山")
		endif
	endif
	set u = null
	set p = null
	set loc = null
endfunction
//塞外
function LQ takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896150))
endfunction
function MQ takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	local location loc = null
	if(GetUnitLevel(u)<40)then
		call DisplayTextToPlayer(p,0,0,"|cFFFF0000等级不足40级无法传送")
	else
		if((shengwang[i]<$9C4))then
			call DisplayTextToPlayer(p,0,0,"|cFFFF0000江湖声望不足2500无法传送")
		else
			set loc = GetRectCenter(Bg)
			call SetUnitPositionLoc(u,loc)
			call PanCameraToTimedLocForPlayer(p,loc,0)
			call RemoveLocation(loc)
			call DisplayTextToPlayer(p,0,0,"|cff66ff33进入塞外")
		endif
	endif
	set u = null
	set p = null
	set loc = null
endfunction
//光明顶
function OQ takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896151))
endfunction
function PQ takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	local location loc = null
	if(GetUnitLevel(u)<55)then
		call DisplayTextToPlayer(p,0,0,"|cFFFF0000等级不足55级无法传送")
	else
		if((shengwang[i]<$FA0))then
			call DisplayTextToPlayer(p,0,0,"|cFFFF0000江湖声望不足4000无法传送")
		else
			set loc = GetRectCenter(Lg)
			call SetUnitPositionLoc(u,loc)
			call PanCameraToTimedLocForPlayer(p,loc,0)
			call RemoveLocation(loc)
			call DisplayTextToPlayer(p,0,0,"|cff66ff33进入光明顶")
		endif
	endif
	set u = null
	set p = null
	set loc = null
endfunction
//少林寺后山
function RQ takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896152))
endfunction
function SQ takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	local location loc = null
	if(GetUnitLevel(u)<70)then
		call DisplayTextToPlayer(p,0,0,"|cFFFF0000等级不足70级无法传送")
	else
		if((shengwang[i]<6000))then
			call DisplayTextToPlayer(p,0,0,"|cFFFF0000江湖声望不足6000无法传送")
		else
			set loc = GetRectCenter(Rg)
			call SetUnitPositionLoc(u,loc)
			call PanCameraToTimedLocForPlayer(p,loc,0)
			call RemoveLocation(loc)
			call DisplayTextToPlayer(p,0,0,"|cff66ff33进入少林寺后山")
		endif
	endif
	set u = null
	set p = null
	set loc = null
endfunction
//边疆
function UQ takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896385))
endfunction
function VQ takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	local location loc = null
	if(GetUnitLevel(u)<100)then
		call DisplayTextToPlayer(p,0,0,"|cFFFF0000等级不足100级无法传送")
	else
		if((shengwang[i]<9000))then
			call DisplayTextToPlayer(p,0,0,"|cFFFF0000江湖声望不足9000无法传送")
		else
			set loc = GetRectCenter(Zg)
			call SetUnitPositionLoc(u,loc)
			call PanCameraToTimedLocForPlayer(p,loc,0)
			call RemoveLocation(loc)
			call DisplayTextToPlayer(p,0,0,"|cff66ff33进入边疆")
		endif
	endif
	set u = null
	set p = null
	set loc = null
endfunction

//驿站传送
function IsYiZhan takes nothing returns boolean
	return UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO)and GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER and (GetItemTypeId(GetManipulatedItem())=='I0BP' or GetItemTypeId(GetManipulatedItem())=='I0BQ' or GetItemTypeId(GetManipulatedItem())=='I0BR' or GetItemTypeId(GetManipulatedItem())=='I0BS' or GetItemTypeId(GetManipulatedItem())=='I0BT' or GetItemTypeId(GetManipulatedItem())=='I0BU' or GetItemTypeId(GetManipulatedItem())=='I0BV' or GetItemTypeId(GetManipulatedItem())=='I0BW' or GetItemTypeId(GetManipulatedItem())=='I0BX')
endfunction
function YiZhanChuanSong takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	if GetItemTypeId(GetManipulatedItem())=='I0BP' then
	    call SetUnitPosition(udg_hero[i],3763,-9091)
   		call PanCameraToTimedForPlayer(GetTriggerPlayer(),3763,-9091,0)
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33传送至牛妖幻境")
    endif
    if GetItemTypeId(GetManipulatedItem())=='I0BQ' then
        call SetUnitPosition(udg_hero[i],1446,-2317)
   		call PanCameraToTimedForPlayer(GetTriggerPlayer(),1446,-2317,0)
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33传送至初入江湖")
    endif
    if GetItemTypeId(GetManipulatedItem())=='I0BR' then
        call SetUnitPosition(udg_hero[i],1863,0)
   		call PanCameraToTimedForPlayer(GetTriggerPlayer(),1863,0,0)
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33传送至少林寺外")
    endif
    if GetItemTypeId(GetManipulatedItem())=='I0BS' then
        call SetUnitPosition(udg_hero[i],-1476,8139)
   		call PanCameraToTimedForPlayer(GetTriggerPlayer(),-1476,8139,0)
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33传送至光明顶下")
    endif
    if GetItemTypeId(GetManipulatedItem())=='I0BT' then
        call SetUnitPosition(udg_hero[i],-2400,-3900)
   		call PanCameraToTimedForPlayer(GetTriggerPlayer(),-2400,-3900,0)
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33传送至江南水乡")
    endif
    if GetItemTypeId(GetManipulatedItem())=='I0BU' then
        call SetUnitPosition(udg_hero[i],-4400,-2950)
   		call PanCameraToTimedForPlayer(GetTriggerPlayer(),-4400,-2950,0)
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33传送至全真三子")
    endif
    if GetItemTypeId(GetManipulatedItem())=='I0BV' then
        call SetUnitPosition(udg_hero[i],-5960,-160)
   		call PanCameraToTimedForPlayer(GetTriggerPlayer(),-5960,-160,0)
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33传送至雁门关内")
    endif
    if GetItemTypeId(GetManipulatedItem())=='I0BW' then
        call SetUnitPosition(udg_hero[i],-13000,-15500)
   		call PanCameraToTimedForPlayer(GetTriggerPlayer(),-13000,-15500,0)
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33传送至大辽国")
    endif
    if GetItemTypeId(GetManipulatedItem())=='I0BX' then
        call SetUnitPosition(udg_hero[i],-9000,-14000)
   		call PanCameraToTimedForPlayer(GetTriggerPlayer(),-9000,-14000,0)
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33传送至聚贤庄")
    endif
    set p = null
    set u = null
endfunction

/*
 * 12. 古董系统
 */

//古董价格
function s5 takes nothing returns nothing
	set gudong[1]=1227896115
	set nd[1]=500
	set od[1]=6000
	set gudong[2]=1227896116
	set nd[2]=500
	set od[2]=6000
	set gudong[3]=1227896117
	set nd[3]=500
	set od[3]=6000
	set gudong[4]=1227896118
	set nd[4]=1000
	set od[4]=$4E20
	set gudong[5]=1227896119
	set nd[5]=1000
	set od[5]=$4E20
	set gudong[6]=1227896120
	set nd[6]=1000
	set od[6]=$4E20
	set gudong[7]=1227896121
	set nd[7]=7000
	set od[7]=$C350
	set gudong[8]=1227896129
	set nd[8]=7000
	set od[8]=$C350
	set gudong[9]=1227896130
	set nd[9]=7000
	set od[9]=$C350
	set gudong[10]='I05C'
	set nd[10]=$4E20
	set od[10]=$186A0
endfunction
//古董价格变动
function u5 takes nothing returns nothing
	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cfffff000古董商人收购价格发生变动了~")
	set pd[1]=GetRandomInt(nd[1],od[1])
	set pd[2]=GetRandomInt(nd[2],od[2])
	set pd[3]=GetRandomInt(nd[3],od[3])
	set pd[4]=GetRandomInt(nd[4],od[4])
	set pd[5]=GetRandomInt(nd[5],od[5])
	set pd[6]=GetRandomInt(nd[6],od[6])
	set pd[7]=GetRandomInt(nd[7],od[7])
	set pd[8]=GetRandomInt(nd[8],od[8])
	set pd[9]=GetRandomInt(nd[9],od[9])
	set pd[10]=GetRandomInt(nd[10],od[10])
endfunction
//查询古董价格
function w5 takes nothing returns boolean
	return (GetItemTypeId(GetManipulatedItem())=='I050')
endfunction
function x5 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1
	set i = 1
	loop
		exitwhen i > 10
		call createitemloc(gudong[i],v7[9])
		if (UnitHaveItem(u,gudong[i])) then
			call DisplayTimedTextToPlayer(p,0,0,30,"|cff00ff00"+GetItemName(bj_lastCreatedItem)+"："+I2S(pd[i])+" ( "+I2S(nd[i])+" ， "+I2S(od[i])+" )")
		else
			call DisplayTimedTextToPlayer(p,0,0,30,GetItemName(bj_lastCreatedItem)+"："+I2S(pd[i])+" ( "+I2S(nd[i])+" ， "+I2S(od[i])+" )")
		endif
		call RemoveItem(bj_lastCreatedItem)
		set i = i + 1
	endloop
	set u = null
	set p = null
endfunction
//卖古董
function z5 takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227896113))
endfunction
function A5 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1
	loop
		exitwhen i>10
		if (GetItemTypeId(UnitItemInSlotBJ(u,1))==gudong[i]) then
			if Ce[1+GetPlayerId(p)]!=4 then
				call DisplayTimedTextToPlayer(p,0,0,30,("|CFF00FF00卖出"+GetItemName(UnitItemInSlotBJ(u,1))+"，获得金钱+"+I2S(pd[i])))
				call AdjustPlayerStateBJ(pd[i], p, PLAYER_STATE_RESOURCE_GOLD)
			else
				call DisplayTimedTextToPlayer(p,0,0,30,("|CFF00FF00你是鉴定师，以最高价格卖出"+GetItemName(UnitItemInSlotBJ(u,1))+"，获得金钱+"+I2S(od[i])))
				call AdjustPlayerStateBJ(od[i], p, PLAYER_STATE_RESOURCE_GOLD)
			endif
			call RemoveItem(UnitItemInSlotBJ(u, 1))
		endif
		set i=i+1
	endloop
	set u = null
	set p = null
endfunction
function B5 takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227896114))
endfunction
function b5 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1
	local integer j = 1
	set j=1
	loop
		exitwhen j>6
		set i=1
		loop
			exitwhen i>10
			if((GetItemTypeId(UnitItemInSlotBJ(u,j))==gudong[i]))then
				if Ce[1+GetPlayerId(p)]!=4 then
					call DisplayTimedTextToPlayer(p,0,0,30,("|CFF00FF00卖出"+(GetItemName(UnitItemInSlotBJ(u,j))+("，获得金钱+"+I2S(pd[i])))))
					call AdjustPlayerStateBJ(pd[i],GetOwningPlayer(GetTriggerUnit()),PLAYER_STATE_RESOURCE_GOLD)
				else
					call DisplayTimedTextToPlayer(p,0,0,30,("|CFF00FF00你是鉴定师，以最高价格卖出"+(GetItemName(UnitItemInSlotBJ(u,j))+("，获得金钱+"+I2S(od[i])))))
					call AdjustPlayerStateBJ(od[i],GetOwningPlayer(GetTriggerUnit()),PLAYER_STATE_RESOURCE_GOLD)
				endif
				call RemoveItem(UnitItemInSlotBJ(u,j))
			endif
			set i=i+1
		endloop
		set j=j+1
	endloop
	set u = null
	set p = null
endfunction
//收集古董
function CollectGuDong_Conditions takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())=='I093')) or ((GetItemTypeId(GetManipulatedItem())=='I094')) or ((GetItemTypeId(GetManipulatedItem())=='I095')) or ((GetItemTypeId(GetManipulatedItem())=='I096'))
endfunction
function CollectGuDong_Actions takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
    if GetItemTypeId(GetManipulatedItem())=='I093' then
	    if Ce[i] == 4 then
        	if udg_gudongD==0 then
	    	    call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00我自幼喜欢收集古董，如果你能收集一套D等级古董，我将送你一本秘籍")
	    	    set udg_gudongD=1
	    	else
	    	    if UnitHaveItem(u,'I053') and UnitHaveItem(u,'I054') and UnitHaveItem(u,'I055') then
				    call RemoveItem(FetchUnitItem(u,'I053'))
			        call RemoveItem(FetchUnitItem(u,'I054'))
			        call RemoveItem(FetchUnitItem(u,'I055'))
        	        call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00谢谢你的古董，这本江湖秘籍送给你了")
        	        call unitadditembyidswapped(udg_jianghu[GetRandomInt(1,18)],u)
        	        set udg_jdds[i] = udg_jdds[i] + 2
        	        if udg_jdds[i]<=10 and udg_jddsbool[i]==false and Ce[i]==4 then
	    	            call DisplayTextToPlayer(p, 0, 0, "|CFF66FF00您的鉴定师已经得了"+I2S(udg_jdds[i])+"分，得到10分可获得鉴定大师哦")
        	        endif
        	        //if Ce[1+GetPlayerId(p)]==4 then
	    	           // call unitadditembyidswapped(udg_jianghu[GetRandomInt(1,18)],u)
	    	           // call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00谢谢你教我鉴定古董，再送你一本江湖秘籍吧")
        	        //endif
        	        set udg_gudongD=0
        	    else
        	        call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00你还没有收集齐一套D古董哦")
        	    endif
        	endif
        else
        	call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00非鉴定师不能接此任务")
    	endif
    elseif GetItemTypeId(GetManipulatedItem())=='I094' then
    	if Ce[i] == 4 then
        	if udg_gudongC==0 then
	    	    call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00我自幼喜欢收集古董，如果你能收集一套C等级古董，我将送你一本秘籍")
	    	    set udg_gudongC=1
	    	else
			    if UnitHaveItem(u,'I056') and UnitHaveItem(u,'I057') and UnitHaveItem(u,'I058') then
				    call RemoveItem(FetchUnitItem(u,'I056'))
			        call RemoveItem(FetchUnitItem(u,'I057'))
			        call RemoveItem(FetchUnitItem(u,'I058'))
        	        call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00谢谢你的古董，这本绝学秘籍送给你了")
        	        call unitadditembyidswapped(udg_juexue[GetRandomInt(1,10)],u)
        	        set udg_jdds[i] = udg_jdds[i] + 4
        	        if udg_jdds[i]<=10 and udg_jddsbool[i]==false and Ce[i]==4 then
	    	    	    call DisplayTextToPlayer(p, 0, 0, "|CFF66FF00您的鉴定师已经得了"+I2S(udg_jdds[i])+"分，得到10分可获得鉴定大师哦")
        	    	endif
        	     //   if Ce[1+GetPlayerId(p)]==4 then
	    	    	   // call unitadditembyidswapped(udg_juexue[GetRandomInt(1,10)],u)
	    	    	   // call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00谢谢你教我鉴定古董，再送你一本绝学秘籍吧")
        	    	//endif
        	        set udg_gudongC=0
        	    else
        	        call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00你还没有收集齐一套C古董哦")
        	    endif
        	endif
        else
        	call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00非鉴定师不能接此任务")
    	endif
    elseif GetItemTypeId(GetManipulatedItem())=='I095' then
    	if Ce[i] == 4 then
        	if udg_gudongB==0 then
	    	    call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00我自幼喜欢收集古董，如果你能收集一套B等级古董，我将送你一本秘籍")
	    	    set udg_gudongB=1
	    	else
			    if UnitHaveItem(u,'I059') and UnitHaveItem(u,'I05A') and UnitHaveItem(u,'I05B') then
				    call RemoveItem(FetchUnitItem(u,'I059'))
			        call RemoveItem(FetchUnitItem(u,'I05A'))
			        call RemoveItem(FetchUnitItem(u,'I05B'))
        	        call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00谢谢你的古董，这本绝内秘籍送给你了")
        	        call unitadditembyidswapped(udg_juenei[GetRandomInt(1,8)],u)
        	        set udg_jdds[i] = udg_jdds[i] + 6
        	        if udg_jdds[i]<=10 and udg_jddsbool[i]==false and Ce[i]==4 then
	    	    	    call DisplayTextToPlayer(p, 0, 0, "|CFF66FF00您的鉴定师已经得了"+I2S(udg_jdds[i])+"分，得到10分可获得鉴定大师哦")
        	    	endif
        	     //   if Ce[1+GetPlayerId(p)]==4 then
	    	    	   // call unitadditembyidswapped(udg_juenei[GetRandomInt(1,8)],u)
	    	    	   // call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00谢谢你教我鉴定古董，再送你一本绝内秘籍吧")
        	    	//endif
        	        set udg_gudongB=0
        	    else
        	        call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00你还没有收集齐一套B古董哦")
        	    endif
        	endif
        else
        	call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00非鉴定师不能接此任务")
    	endif
    elseif GetItemTypeId(GetManipulatedItem())=='I096' then
    	if Ce[i] == 4 then
        	if udg_gudongA==0 then
	    	    call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00我自幼喜欢收集古董，如果你能收集两个A等级古董，我将送你一本秘籍")
	    	    set udg_gudongA=1
	    	else
	    	    if UnitHaveItem(u,'I05C')  then
			        call RemoveItem(FetchUnitItem(u,'I05C'))
			        if UnitHaveItem(u,'I05C')  then
			            call RemoveItem(FetchUnitItem(u,'I05C'))
			            call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00谢谢你的古董，这本残章送给你了")
        	            call unitadditembyidswapped(udg_canzhang[GetRandomInt(1,10)],u)
        	            set udg_jdds[i] = udg_jdds[i] + 10
        	            if udg_jdds[i]<=10 and udg_jddsbool[i]==false and Ce[i]==4 then
	    	        	    call DisplayTextToPlayer(p, 0, 0, "|CFF66FF00您的鉴定师已经得了"+I2S(udg_jdds[i])+"分，得到10分可获得鉴定大师哦")
        	        	endif
        	         //   if Ce[1+GetPlayerId(p)]==4 then
	    	        	   // call unitadditembyidswapped(udg_canzhang[GetRandomInt(1,10)],u)
	    	        	   // call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00谢谢你教我鉴定古董，再送你一本残章吧")
        	        	//endif
        	            set udg_gudongA=0
			        else
        	            call UnitAddItemById(u,'I05C')
			            call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00你还没有收集齐两个A古董哦")
	    	        endif
        	    else
			        call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00你还没有收集齐两个A古董哦")
        	    endif
        	endif
        else
        	call DisplayTimedTextToPlayer(p,0,0,15,"|CFF00FF00非鉴定师不能接此任务")
    	endif
    endif
    if udg_jdds[i]>=10 and udg_jddsbool[i]==false and Ce[i]==4 then
	    set udg_jddsbool[i]=true
	    if udg_zhangmen[i]==true then
		else
			call SaveStr(YDHT, GetHandleId(p), GetHandleId(p),"〓鉴定大师〓"+LoadStr(YDHT, GetHandleId(p), GetHandleId(p)))
		endif
		call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜"+GetPlayerName(p)+"获得鉴定大师")
		call SetPlayerName(p, "〓鉴定大师〓"+GetPlayerName(p))
	endif
	set u=null
	set p=null
endfunction

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
/*
 * 14. 积分和声望换物品、武学精要
 */
//--------守家积分换物品系统开始--------//
function IsJiFenHuan takes item it returns boolean
	if GetItemTypeId(it)=='I06O' or GetItemTypeId(it)=='I0A0' or GetItemTypeId(it)=='I06S' or GetItemTypeId(it)=='I06T' or GetItemTypeId(it)=='I06R' or GetItemTypeId(it)=='I06U' or GetItemTypeId(it)=='I06P' or GetItemTypeId(it)=='I06Q' then
		return true
	endif
	return false
endfunction
function JiFenHuan takes unit u, item it, integer id1, integer num, integer id2 returns nothing
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	if GetItemTypeId(it)==id1 then
		if (shoujiajf[i]>=num) then
			set shoujiajf[i] = shoujiajf[i]-num
			if id1=='I06S' or id1=='I06T' or id1=='I06R' or id1=='I06U' or id1=='I06Q' then
				call unitadditembyidswapped(id2,u)
				call DisplayTextToPlayer(p,0,0,"|CFF34FF00获得"+GetItemName(bj_lastCreatedItem))
			elseif id1=='I06P' then
				call AdjustPlayerStateBJ(20-udg_nandu*2,p,PLAYER_STATE_RESOURCE_LUMBER)
				call DisplayTextToPlayer(p,0,0,"|CFF34FF00获得珍稀币+"+I2S(20-udg_nandu*2))
			elseif id1=='I06O' then
				call AdjustPlayerStateBJ(8000-udg_nandu*1000,p,PLAYER_STATE_RESOURCE_GOLD)
				call DisplayTextToPlayer(p,0,0,"|CFF34FF00获得金钱+"+I2S(8000-udg_nandu*1000))
			elseif id1=='I0A0' then
				call unitadditembyidswapped(id2,udg_hero[i])
				call DisplayTextToPlayer(p,0,0,"|CFF34FF00获得"+GetItemName(bj_lastCreatedItem))
			endif
			call DisplayTextToPlayer(p,0,0,"|cFF00CCff当前剩余守家积分："+I2S(shoujiajf[i]))
		else
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00守家积分不足")
		endif
	endif
	set p = null
endfunction
function BuyKuanDong takes nothing returns boolean
	return (GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER and IsJiFenHuan(GetManipulatedItem()))
endfunction
function KuanDongHua takes nothing returns nothing
	local unit u = GetTriggerUnit()
	call JiFenHuan(u, GetManipulatedItem(), 'I06O', 20, 300)
	call JiFenHuan(u, GetManipulatedItem(), 'I0A0', 50, 'I04T')
	call JiFenHuan(u, GetManipulatedItem(), 'I06S', 200, YaoCao[GetRandomInt(1,12)])
	call JiFenHuan(u, GetManipulatedItem(), 'I06T', 100, 'I02N')
	call JiFenHuan(u, GetManipulatedItem(), 'I06R', 300, 'I06K')
	call JiFenHuan(u, GetManipulatedItem(), 'I06U', 600, 'I02L')
	call JiFenHuan(u, GetManipulatedItem(), 'I06P', 100, 5)
	call JiFenHuan(u, GetManipulatedItem(), 'I06Q', 200, 'I06N')
	set u = null
endfunction
//--------江湖声望换物品系统开始--------//
function IsShengWangHuan takes item it returns boolean
	if GetItemTypeId(it)=='I0AO' or GetItemTypeId(it)=='I0AP' or GetItemTypeId(it)=='I0AQ' or GetItemTypeId(it)=='I0AR' then
		return true
	endif
	return false
endfunction
function ShengWangHuan takes unit u, item it, integer id1, integer num, integer id2 returns nothing
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	if GetItemTypeId(it)==id1 then
		if (shengwang[i]>=num) then
			set shengwang[i] = shengwang[i]-num
			call unitadditembyidswapped(id2,u)
			call DisplayTextToPlayer(p,0,0,"|CFF34FF00获得"+GetItemName(bj_lastCreatedItem))
			call DisplayTextToPlayer(p,0,0,"|cFF00CCff当前剩余江湖声望："+I2S(shengwang[i]))
		else
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00江湖声望不足")
		endif
	endif
	set p = null
endfunction
function BuyKuanDong_1 takes nothing returns boolean
	return (GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER and IsShengWangHuan(GetManipulatedItem()))
endfunction
function KuanDongHua_1 takes nothing returns nothing
	local unit u = GetTriggerUnit()
	call ShengWangHuan(u, GetManipulatedItem(), 'I0AO', 200, 'I06K')
	call ShengWangHuan(u, GetManipulatedItem(), 'I0AP', 4000, 'I08W')
	call ShengWangHuan(u, GetManipulatedItem(), 'I0AQ', 2000, 'I0AS')
	call ShengWangHuan(u, GetManipulatedItem(), 'I0AR', 1000, udg_canzhang[GetRandomInt(1,10)])
	set u = null
endfunction
function IsWuXueJingYao takes nothing returns boolean
	return (GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem())=='I0AS')
endfunction
function WuXueJingYao takes nothing returns nothing
	local player p = GetOwningPlayer(GetTriggerUnit())
	local integer i = 1 + GetPlayerId(p)
	local unit u = udg_hero[i]
	local integer j = GetRandomInt(1, 8)
	local integer level = GetUnitAbilityLevel(u, I7[(i-1)*20+j])
	if I7[(i-1)*20+j]!='A05R' then
		call IncUnitAbilityLevel(u, I7[(i-1)*20+j])
		if GetUnitAbilityLevel(u, I7[(i-1)*20+j])==level then
			call unitadditembyidswapped('I0AS',GetTriggerUnit())
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00随机到九重或无法升重的技能，使用武学精要失败")
		else
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00恭喜技能"+GetAbilityName(I7[(i-1)*20+j])+"升重")
		endif
	else
		call unitadditembyidswapped('I0AS',GetTriggerUnit())
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00随机到凌波微步，使用武学精要失败")
	endif
	set u = null
	set p = null
endfunction
/*
 * 15. 学习和遗忘武功（含激活残章）
 */
 
//遗忘武功
function YiWangJiNeng takes nothing returns boolean
	return((GetSpellAbilityId()==1093678417))
endfunction
function ForgetAbility takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	local integer j = 1
	if((UnitHaveItem(u,'I06K'))) or udg_yiwang[i]==true then
		call DialogSetMessage(K7[i],"请选择遗忘的武功（遗忘后无法找回）！")
		if((I7[(i-1)*20+1]!='AEfk'))then
			call DialogAddButtonBJ(K7[i],GetObjectName(I7[(i-1)*20+1]))
			set S4[i]=bj_lastCreatedButton
		endif
		if((I7[(i-1)*20+2]!='AEfk'))then
			call DialogAddButtonBJ(K7[i],GetObjectName(I7[(i-1)*20+2]))
			set T4[i]=bj_lastCreatedButton
		endif
		if((I7[(i-1)*20+3]!='AEfk'))then
			call DialogAddButtonBJ(K7[i],GetObjectName(I7[(i-1)*20+3]))
			set U4[i]=bj_lastCreatedButton
		endif
		if((I7[(i-1)*20+4]!='AEfk'))then
			call DialogAddButtonBJ(K7[i],GetObjectName(I7[(i-1)*20+4]))
			set V4[i]=bj_lastCreatedButton
		endif
		if((I7[(i-1)*20+5]!='AEfk'))then
			call DialogAddButtonBJ(K7[i],GetObjectName(I7[(i-1)*20+5]))
			set W4[i]=bj_lastCreatedButton
		endif
		if((I7[(i-1)*20+6]!='AEfk'))then
			call DialogAddButtonBJ(K7[i],GetObjectName(I7[(i-1)*20+6]))
			set X4[i]=bj_lastCreatedButton
		endif
		if((I7[(i-1)*20+7]!='AEfk'))then
			call DialogAddButtonBJ(K7[i],GetObjectName(I7[(i-1)*20+7]))
			set J7[i]=bj_lastCreatedButton
		endif
		if((I7[(i-1)*20+8]!='AEfk'))then
			call DialogAddButtonBJ(K7[i],GetObjectName(I7[(i-1)*20+8]))
			set J78[i]=bj_lastCreatedButton
		endif
		if((I7[(i-1)*20+9]!='AEfk'))then
			call DialogAddButtonBJ(K7[i],GetObjectName(I7[(i-1)*20+9]))
			set J79[i]=bj_lastCreatedButton
		endif
		if((I7[(i-1)*20+10]!='AEfk'))then
			call DialogAddButtonBJ(K7[i],GetObjectName(I7[(i-1)*20+10]))
			set J710[i]=bj_lastCreatedButton
		endif
		if((I7[(i-1)*20+11]!='AEfk'))then
			call DialogAddButtonBJ(K7[i],GetObjectName(I7[(i-1)*20+11]))
			set J711[i]=bj_lastCreatedButton
		endif
		call DialogAddButtonBJ(K7[i],"取消")
		set l7[i]=bj_lastCreatedButton
		call DialogDisplay(p,K7[i],true)
	else
		call DisplayTimedTextToPlayer(p,0,0,30,"|cffff0000遗忘武功需要消耗道具遗忘之石！")
	endif
	set u = null
	set p = null
endfunction
function Forget takes player p, integer num returns nothing
	local integer i = 1 + GetPlayerId(p)
	if I7[(i-1)*20+num]=='A03N' and UnitHasBuffBJ(udg_hero[i], 'BOwk') then
		call DisplayTimedTextToPlayer(p,0,0,10.,"|CFFFF9933"+GetObjectName(I7[(i-1)*20+num])+"施展期间不能遗忘！！！")
	else
		set S9=1
		loop
			exitwhen S9>20
			if((I7[20*(i-1)+num]==MM9[S9]))then
				set udg_shanghaijiacheng[i]=(udg_shanghaijiacheng[i]-udg_jueneishjc[S9])
				call ModifyHeroStat(1,udg_hero[i],1,udg_jueneiminjie[S9])
				set juexuelingwu[i]=(juexuelingwu[i]-udg_jueneijxlw[S9])
				set udg_baojilv[i]=(udg_baojilv[i]-udg_jueneibaojilv[S9])
				set udg_shanghaixishou[i]=(udg_shanghaixishou[i]-udg_jueneishxs[S9])
			endif
			set S9=S9+1
		endloop
		call DisplayTimedTextToPlayer(p,0,0,10.,"|CFFFF9933成功遗忘技能："+GetObjectName(I7[(i-1)*20+num]))
		call UnitRemoveAbility(udg_hero[i],I7[20*(i-1)+num])
		if I7[(i-1)*20+num]=='A03P' then
			call UnitRemoveAbility(udg_hero[i], 'A03M')
		endif
		if I7[(i-1)*20+num]=='A03T' then
			call UnitRemoveAbility(udg_hero[i], 'A0DB')
		endif
		if I7[20*(i-1)+num] == 'A02B' then
			set udg_zhemei[i] = 0
		endif
		set I7[20*(i-1)+num]='AEfk'
		call RemoveItem(FetchUnitItem(P4[i],'I06K'))
	endif
endfunction
function jB takes nothing returns nothing
	local player p = GetTriggerPlayer()
	local integer i = 1 + GetPlayerId(p)
	if((GetClickedButton()==S4[i]))then
		call Forget(p, 1)
	elseif((GetClickedButton()==T4[i]))then
		call Forget(p, 2)
	elseif((GetClickedButton()==U4[i]))then
		call Forget(p, 3)
	elseif((GetClickedButton()==V4[i]))then
		call Forget(p, 4)
	elseif((GetClickedButton()==W4[i]))then
		call Forget(p, 5)
	elseif((GetClickedButton()==X4[i]))then
		call Forget(p, 6)
	elseif((GetClickedButton()==J7[i]))then
		call Forget(p, 7)
	elseif((GetClickedButton()==J78[i]))then
		call Forget(p, 8)
	elseif((GetClickedButton()==J79[i]))then
		call Forget(p, 9)
	elseif((GetClickedButton()==J710[i]))then
		call Forget(p, 10)
	elseif((GetClickedButton()==J711[i]))then
		call Forget(p, 11)
	endif
	call DialogClear(K7[i])
	set p = null
endfunction


function GetBookNum takes integer id returns integer
	local integer i = 1
	loop
		exitwhen i > MAX_WU_GONG_NUM
		if LoadInteger(YDHT, StringHash("武学")+i,1) == id then
			return i
		endif
		set i = i + 1
	endloop
	return 0
endfunction
function LearnJiNeng takes unit ut,  item it returns nothing
	local player p = GetOwningPlayer(ut)
	local integer i = 1 + GetPlayerId(p)
	local unit u = udg_hero[i]
	local integer num = GetBookNum(GetItemTypeId(it))
	local integer id = LoadInteger(YDHT, StringHash("武学")+num, 2)
	local integer dp1 = LoadInteger(YDHT, StringHash("武学")+num, 4)
	local integer fy1 = LoadInteger(YDHT, StringHash("武学")+num, 5)
	local integer gg1 = LoadInteger(YDHT, StringHash("武学")+num, 6)
	local integer jm1 = LoadInteger(YDHT, StringHash("武学")+num, 7)
	local integer wx1 = LoadInteger(YDHT, StringHash("武学")+num, 8)
	local integer ys1 = LoadInteger(YDHT, StringHash("武学")+num, 9)
	if (GetUnitAbilityLevel(u,id)>0) then
		call DisplayTextToPlayer(p,0,0,"|CFFFF0033你已经拥有此武功了")
		call unitadditembyidswapped(GetItemTypeId(it),ut)
	else
		if (danpo[i]>=dp1 and fuyuan[i]>=fy1 and gengu[i]>=gg1 and jingmai[i]>=jm1 and wuxing[i]>=wx1 and yishu[i]>=ys1) then
			if id == 'A03Q' then
				call UnitAddAbility(u, id)
				call UnitMakeAbilityPermanent(u, true, id)
				call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033恭喜"+GetPlayerName(p)+"习得"+GetObjectName(id))
				call AddPlayerTechResearched(p,'Rhri',1)
			else
				set L7[i]=1
				loop
					exitwhen L7[i]>wugongshu[i]
					if (I7[20*(i-1)+L7[i]]!='AEfk')then
						if((L7[i]==wugongshu[i]))then
							call DisplayTextToPlayer(p,0,0,"|CFFFF0033学习技能已达上限，请先遗忘部分技能")
							call unitadditembyidswapped(GetItemTypeId(it),ut)
						endif
					else
						call UnitAddAbility(u, id)
						call UnitMakeAbilityPermanent(u, true, id)
						if LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id*5) >= 2 then
							call SetUnitAbilityLevel(u, id, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), id*5))
						endif
						set I7[20*(i-1)+L7[i]] = id
						if GetUnitAbilityLevel(u, id) >=2 then
							call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033恭喜"+GetPlayerName(p)+"想起"+GetObjectName(id))
						else
							call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFFF0033恭喜"+GetPlayerName(p)+"习得"+GetObjectName(id))
						endif
						set S9=1
            	    	loop
            	    	    exitwhen S9>20
            	    	    if (id==MM9[S9]) then
            	    	        set udg_shanghaijiacheng[i] = udg_shanghaijiacheng[i] + udg_jueneishjc[S9]
            	    	        call ModifyHeroStat(1,u,0,udg_jueneiminjie[S9])
            	    	        set udg_baojilv[i] = udg_baojilv[i] + udg_jueneibaojilv[S9]
								set juexuelingwu[i] = juexuelingwu[i] + udg_jueneijxlw[S9]
								set udg_shanghaixishou[i] = udg_shanghaixishou[i] + udg_jueneishxs[S9]
            	    	    endif
            	    	    set S9=S9+1
            	    	endloop
						exitwhen true
					endif
					set L7[i]=L7[i]+1
				endloop
			endif
		else
			call DisplayTextToPlayer(p,0,0,"|CFFFF0033学习条件不足")
			if (danpo[i]>=dp1) then
			else
				call DisplayTextToPlayer(p,0,0,"|CFFFF0033胆魄缺少："+I2S(dp1-danpo[i]))
			endif
			if (gengu[i]>=gg1) then
			else
				call DisplayTextToPlayer(p,0,0,"|CFFFF0033根骨缺少："+I2S(gg1-gengu[i]))
			endif
			if (fuyuan[i]>=fy1) then
			else
				call DisplayTextToPlayer(p,0,0,"|CFFFF0033福缘缺少："+I2S(fy1-fuyuan[i]))
			endif
			if (wuxing[i]>=wx1) then
			else
				call DisplayTextToPlayer(p,0,0,"|CFFFF0033悟性缺少："+I2S(wx1-wuxing[i]))
			endif
			if (jingmai[i]>=jm1) then
			else
				call DisplayTextToPlayer(p,0,0,"|CFFFF0033经脉缺少："+I2S(jm1-jingmai[i]))
			endif
			if (yishu[i]>=ys1)then
			else
				call DisplayTextToPlayer(p,0,0,"|CFFFF0033医术缺少："+I2S(ys1-yishu[i]))
			endif
			call unitadditembyidswapped(GetItemTypeId(it),ut)
		endif
	endif
	set p = null
	set u = null
endfunction
//学习武功
function IsWuGongBook takes nothing returns boolean
	return (GetBookNum(GetItemTypeId(GetManipulatedItem()))!=0)
endfunction
function BookLearnWuGong takes nothing returns nothing
	call LearnJiNeng(GetTriggerUnit(), GetManipulatedItem())
endfunction

//内功加成属性
function NeiGongJiaCheng takes integer i, integer id, real baoji,real shxs,integer jxlw,integer minjie,real shjc returns nothing
    set MM9[i]=id
    set udg_jueneibaojilv[i]=baoji
    set udg_jueneishxs[i]=shxs
    set udg_jueneijxlw[i]=jxlw
    set udg_jueneiminjie[i]=minjie
    set udg_jueneishjc[i]=shjc
endfunction
function NeiGongJiaChengS takes nothing returns nothing
	//序号、ID、暴击率、伤害吸收、绝学领悟、内力、伤害加成
    call NeiGongJiaCheng(1,'A0D8',.15,.2,5,30,1.)
    call NeiGongJiaCheng(2,1093679154,.08,.25,4,150,.4)
    call NeiGongJiaCheng(3,'A083',.05,.3,3,100,.3)
    call NeiGongJiaCheng(4,'A09D',.06,.4,4,120,.8)
    call NeiGongJiaCheng(5,1093679152,.12,.2,3,130,.7)
    call NeiGongJiaCheng(6,'A07X',.16,.15,3,60,.5)
    call NeiGongJiaCheng(7,'A084',.1,.1,2,80,.6)
    call NeiGongJiaCheng(8,1395666994,.2,.2,1,50,.9)
    call NeiGongJiaCheng(9,'A07O',.04,0,0,25,.2)
    call NeiGongJiaCheng(10,'A07P',.06,0,0,30,.12)
    call NeiGongJiaCheng(11,'A07Q',.08,0,0,30,.14)
    call NeiGongJiaCheng(12,1093678930,.06,0,0,20,.15)
    call NeiGongJiaCheng(13,'A07S',.1,0,0,40,.25)
    call NeiGongJiaCheng(14,1093678932,.1,0,0,30,.3)
    call NeiGongJiaCheng(15,'A07U',.07,0,0,50,.18)
    call NeiGongJiaCheng(16,1093678935,.09,0,0,50,.1)
    call NeiGongJiaCheng(17,'A0DN',.03,0,0,40,.18)
    call NeiGongJiaCheng(18,'A0D2',.2,0,0,80,.5)
    call NeiGongJiaCheng(19,'A0D6',.8,0,0,10,.15)
    call NeiGongJiaCheng(20,'A0D4',-0.2,0,0,-40,-0.25)
endfunction
//------学习武功系统结束------
//------武功效果系统开始------
function uC takes nothing returns boolean
	return((UnitHasBuffBJ(GetAttacker(),'B002')))
endfunction
function vC takes nothing returns nothing
	local unit u = GetAttacker()
	if (GetUnitState(u,UNIT_STATE_LIFE)<=0.001*GetUnitState(u,UNIT_STATE_MAX_LIFE)) then
		call SetWidgetLife(u,1.)
	else
		call SetWidgetLife(u,GetUnitState(u,UNIT_STATE_LIFE)-0.001*GetUnitState(u,UNIT_STATE_MAX_LIFE))
	endif
	set u = null
endfunction
function xC takes nothing returns boolean
	return((UnitHasBuffBJ(GetAttacker(),1112437615)))
endfunction
function yC takes nothing returns nothing
	local unit u = GetAttacker()
	if (GetUnitState(u,UNIT_STATE_LIFE)<=0.003*GetUnitState(u,UNIT_STATE_MAX_LIFE)) then
		call SetWidgetLife(u,1.)
	else
		call SetWidgetLife(u,GetUnitState(u,UNIT_STATE_LIFE)-0.003*GetUnitState(u,UNIT_STATE_MAX_LIFE))
	endif
	set u = null
endfunction
function AC takes nothing returns boolean
	return IsUnitAliveBJ(GetFilterUnit()) and (UnitHasBuffBJ(GetFilterUnit(),'BEsh') or UnitHasBuffBJ(GetFilterUnit(),'B01J') or UnitHasBuffBJ(GetFilterUnit(),'B003') or UnitHasBuffBJ(GetFilterUnit(),'Bcri') or UnitHasBuffBJ(GetFilterUnit(),1110454324) or UnitHasBuffBJ(GetFilterUnit(),1110454342) or UnitHasBuffBJ(GetFilterUnit(),1110454343))
endfunction
function aC takes nothing returns nothing
	local location loc = GetUnitLoc(GetEnumUnit())
	local location loc2 = null
	if((UnitHasBuffBJ(GetEnumUnit(),'BEsh')))then
		if(GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)<=0.001*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))then
			call SetWidgetLife(GetEnumUnit(),1.)
		else
			call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)-0.001*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))
		endif
	endif

	if((UnitHasBuffBJ(GetEnumUnit(),'B01J')))then
		if(GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)<=0.003*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))then
			call SetWidgetLife(GetEnumUnit(),1.)
		else
			call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)-0.003*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))
		endif
	endif

	if((UnitHasBuffBJ(GetEnumUnit(),'B003')))then
		if(GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)<=0.002*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))then
			call SetWidgetLife(GetEnumUnit(),1.)
		else
			call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)-0.002*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))
		endif
	endif
	if((UnitHasBuffBJ(GetEnumUnit(),'Bcri')))then
		set loc2 = pu(loc,256.,GetRandomReal(0,360.))
		call IssuePointOrderByIdLoc(GetEnumUnit(),$D0012,loc2)
		call RemoveLocation(loc2)
	endif
	if((UnitHasBuffBJ(GetEnumUnit(),1110454324)))then
		if(GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)<=0.003*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))then
			call SetWidgetLife(GetEnumUnit(),1.)
		else
			call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)-0.003*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))
		endif
	endif
	if((UnitHasBuffBJ(GetEnumUnit(),1110454342)))then
		if((ModuloInteger(GetUnitPointValue(GetEnumUnit()),10)!=0))then
			if(GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)<=0.01*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))then
				call SetWidgetLife(GetEnumUnit(),1.)
			else
				call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)-0.01*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))
			endif
		else
			if(GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)<=0.03*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))then
				call SetWidgetLife(GetEnumUnit(),1.)
			else
				call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)-0.03*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))
			endif
		endif
		call CreateTextTagLocBJ("脑神丹效果",loc,60.,12.,65.,55.,42.,0)
		call Nw(3.,bj_lastCreatedTextTag)
		call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,90)
	endif
	if((UnitHasBuffBJ(GetEnumUnit(),1110454343)))then
		//if(GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)<=0.03*GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))then
		//	call SetWidgetLife(GetEnumUnit(),1.)
		//else
		call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)-0.03*GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE))
		//endif
		call CreateTextTagLocBJ("化尸粉效果",loc,60.,12.,65.,55.,42.,0)
		call Nw(3.,bj_lastCreatedTextTag)
		call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,90)
	endif
	call RemoveLocation(loc)
	set loc = null
	set loc2 = null
endfunction
//每秒钟做一次
function BC takes nothing returns nothing
	call ForGroupBJ(wv(bj_mapInitialPlayableArea,Condition(function AC)),function aC)
endfunction
//-----激活残章-----
function ActCanZhang takes unit ut, item it, integer id1, integer lwd, integer id2, integer id3, integer id4, string s, integer flag returns integer
	local player p = GetOwningPlayer(ut)
	local integer i = 1 + GetPlayerId(p)
	local unit u = udg_hero[i]
	if (GetUnitAbilityLevel(u, id1)<=0) then
		call DisplayTextToPlayer(p,0,0,"|CFFFF0033你尚未学会该武功，无法激活隐藏招式")
		call unitadditembyidswapped(GetItemTypeId(it), ut)
	else
		if((flag>=1))then
			call DisplayTextToPlayer(p,0,0,"|CFFFF0033你之前已经激活过了")
			call unitadditembyidswapped(GetItemTypeId(it),ut)
		else
			if (juexuelingwu[i]>=lwd and GetUnitAbilityLevel(u,id2)!=0 and GetUnitAbilityLevel(u,id3)!=0 and GetUnitAbilityLevel(u,id4)!=0) then
				set flag=1
				call DisplayTextToPlayer(p,0,0,"|CFF00ff33恭喜激活了"+s)
			else
				call DisplayTextToPlayer(p,0,0,"|CFFFF0033条件不足，激活失败")
				call unitadditembyidswapped(GetItemTypeId(it), ut)
			endif
		endif
	endif
	set u = null
	set p = null
	return flag
endfunction
function CC takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227896371))
endfunction
function cC takes nothing returns nothing
	set Jd[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 'A07H', 5, 1093678935, 'A07U', 1093679152, "反两仪刀法第1式：行气如虹", Jd[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
endfunction
function EC takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227896370))
endfunction
function FC takes nothing returns nothing
	set Id[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 'A085', 5, 'A07P', 1093678930, 1093679154, "六脉神剑第1式：少商剑", Id[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
endfunction
function HC takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227896369))
endfunction
function IC takes nothing returns nothing
	set Qd[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 'A07L', 5, 1093679154, 'A07Q', 'A0DN', "打狗棒法第1式：恶狗拦路", Qd[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
endfunction
function JC takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227896374))
endfunction
function KC takes nothing returns nothing
	set ld[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 'A07F', 5, 'A09D', 1093679152, 'A071', "独孤九剑第1式：破剑式", ld[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
endfunction
function MC takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227896372))
endfunction
function NC takes nothing returns nothing
	set Od[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 'A086', 5, 'A083', 'A07X', 'A06M', "胡家刀法第1式：八方藏刀式", Od[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
endfunction
function PC takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227896368))
endfunction
function QC takes nothing returns nothing
	set Pd[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 'A089', 5, 'A084', 'A0D2', 'A07S', "西毒棍法第1式：蛇盘青竹", Pd[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
endfunction
function SC takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227896377))
endfunction
function TC takes nothing returns nothing
	set Kd[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 'A07J', 5, 'A06J', 1093678932, 1395666994, "辟邪剑法第1式：流星赶月", Kd[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
endfunction
function VC takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())==1227896376))
endfunction
function WC takes nothing returns nothing
	set Ld[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 'A07I', 5, 'A07N', 'A0D8', 'A07X', "野球拳第1式：翻肘裂捶", Ld[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
endfunction
function YC takes nothing returns boolean
	return GetItemTypeId(GetManipulatedItem())==1227896375
endfunction
function ZC takes nothing returns nothing
	set Nd[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 'A07E', 5, 'A0D8', 'A07O', 'A0DN', "降龙十八掌第1式：神龙摆尾", Nd[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
endfunction
function ec takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())=='I065'))
endfunction
function gc takes nothing returns nothing
	set Md[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 'A07G', 5, 'A06H', 'A07S', 'A084', "黯然销魂掌第1式：无中生有", Md[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
endfunction
//九阳真经残卷
function isJiuYangCanJuan takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())=='I0CW'))
endfunction
function jiuYangCanJuan takes nothing returns nothing
	set JYd[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ActCanZhang(GetTriggerUnit(), GetManipulatedItem(), 'A0DN', 5, 'A0DN', 'A09D', 'A07X', "九阳真经残卷", JYd[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
endfunction
//武魂石系统
function IsWuHunShi takes nothing returns boolean
	if (GetItemTypeId(GetManipulatedItem())=='I09Q') then
		if (De[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]==false and Ee[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]==false) then
	        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|CFFFF0033未集齐决战套装或江湖套装，激活失败")
	        return false
	    else
	        return true
        endif
    endif
    return false
endfunction
globals
	dialog wuhun=DialogCreate()
	dialog chuansong=DialogCreate()
	button array wuhun1
	button array chuansong1
endglobals
function WuHunShi takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	call DialogClear(wuhun)
	call RemoveItem(GetManipulatedItem())
	call DialogSetMessage(wuhun,"请选择要激活的残章")
	if Jd[i]==0 then
    	set wuhun1[1]=DialogAddButtonBJ(wuhun,"反两仪刀法")
    endif
    if Id[i]==0 then
    	set wuhun1[2]=DialogAddButtonBJ(wuhun,"六脉神剑")
    endif
    if Qd[i]==0 then
    	set wuhun1[3]=DialogAddButtonBJ(wuhun,"打狗棒法")
    endif
    if ld[i]==0 then
    	set wuhun1[4]=DialogAddButtonBJ(wuhun,"独孤九剑")
    endif
    if Od[i]==0 then
    	set wuhun1[5]=DialogAddButtonBJ(wuhun,"胡家刀法")
    endif
    if Pd[i]==0 then
    	set wuhun1[6]=DialogAddButtonBJ(wuhun,"西毒棍法")
    endif
    if Kd[i]==0 then
    	set wuhun1[7]=DialogAddButtonBJ(wuhun,"辟邪剑法")
    endif
    if Ld[i]==0 then
    	set wuhun1[8]=DialogAddButtonBJ(wuhun,"野球拳法")
    endif
    if Nd[i]==0 then
    	set wuhun1[9]=DialogAddButtonBJ(wuhun,"降龙十八掌")
    endif
    if Md[i]==0 then
    	set wuhun1[10]=DialogAddButtonBJ(wuhun,"黯然销魂掌")
    endif
    set wuhun1[11]=DialogAddButtonBJ(wuhun,"取消")
	call DialogDisplay(p,wuhun,true)
	set u=null
    set p=null
endfunction
function JiHuoCanZhang takes nothing returns nothing
	local player p=GetTriggerPlayer()
	local integer i=1+GetPlayerId(p)
    if GetClickedButton()==wuhun1[1] then
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33恭喜激活了反两仪刀法第1式：行气如虹")
        set Jd[i]=1
    endif
    if GetClickedButton()==wuhun1[2] then
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33恭喜激活了六脉神剑第1式：少商剑")
        set Id[i]=1
    endif
    if GetClickedButton()==wuhun1[3] then
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33恭喜激活了打狗棒法第1式：恶狗拦路")
        set Qd[i]=1
    endif
    if GetClickedButton()==wuhun1[4] then
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33恭喜激活了独孤九剑第1式：破剑式")
        set ld[i]=1
    endif
    if GetClickedButton()==wuhun1[5] then
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33恭喜激活了胡家刀法第1式：八方藏刀式")
        set Od[i]=1
    endif
    if GetClickedButton()==wuhun1[6] then
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33恭喜激活了西毒棍法第1式：蛇盘青竹")
        set Pd[i]=1
    endif
     if GetClickedButton()==wuhun1[7] then
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33恭喜激活了辟邪剑法第1式：流星赶月")
        set Kd[i]=1
    endif
    if GetClickedButton()==wuhun1[8] then
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33恭喜激活了野球拳第1式：翻肘裂捶")
        set Ld[i]=1
    endif
    if GetClickedButton()==wuhun1[9] then
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33恭喜激活了降龙十八掌第1式：神龙摆尾")
        set Nd[i]=1
    endif
    if GetClickedButton()==wuhun1[10] then
        call DisplayTextToPlayer(p,0,0,"|CFF00ff33恭喜激活了黯然销魂掌第1式：无中生有")
        set Md[i]=1
    endif
    if GetClickedButton()==wuhun1[11] then
        call UnitAddItemById(P4[i],'I09Q')
    endif
    set p=null
endfunction

//学习门派内功
function pR takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227895856))
endfunction
function LearnNeiGong takes nothing returns nothing
	local button b=GetClickedButton()
	local unit u=LoadUnitHandle(YDHT,StringHash("门派内功"),3)
	local integer i=1+GetPlayerId(GetOwningPlayer(u))
	local integer id=LoadInteger(YDHT,StringHash("门派内功"),4)
	local player p = GetOwningPlayer(u)
	if b==LoadButtonHandle(YDHT,StringHash("门派内功"),1) then
		call UnitAddAbility(u,Q8[id])
		call UnitMakeAbilityPermanent(u, true, Q8[id])
        call DisplayTextToPlayer(GetOwningPlayer(u),0,0,("|cff00FF66恭喜领悟技能："+GetObjectName(Q8[id])))
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FF66玩家"+I2S(1+GetPlayerId(p))+"成为"+udg_menpainame[udg_runamen[i]]+"长老")
		call SetPlayerName(p,"〓"+udg_menpainame[udg_runamen[i]]+"长老〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
        set L7[i]=1
        loop
            exitwhen L7[i]>wugongshu[i]
            if((I7[(((i-1)*20)+L7[i])]!='AEfk'))then
            else
                set I7[(((i-1)*20)+L7[i])]=Q8[id]
                exitwhen true
            endif
            set L7[i]=L7[i]+1
        endloop
    elseif b==LoadButtonHandle(YDHT,StringHash("门派内功"),2) then
    	if P8[id] == 'A07W' then
	    	if GetUnitAbilityLevel(u, 'A07W') >= 1 then
	        	call IncUnitAbilityLevel(u, P8[id])
	        else
	        	call UnitAddAbility(u,P8[id])
	        	set L7[i]=1
        		loop
        		    exitwhen L7[i]>wugongshu[i]
        		    if((I7[(((i-1)*20)+L7[i])]!='AEfk'))then
        		    else
        		        set I7[(((i-1)*20)+L7[i])]=P8[id]
        		        exitwhen true
        		    endif
        		    set L7[i]=L7[i]+1
        		endloop
        	endif
        	call IncUnitAbilityLevel(u, P8[id])
        else
        	call UnitAddAbility(u,P8[id])
        	call UnitMakeAbilityPermanent(u, true, P8[id])
        	set L7[i]=1
        	loop
        	    exitwhen L7[i]>wugongshu[i]
        	    if((I7[(((i-1)*20)+L7[i])]!='AEfk'))then
        	    else
        	        set I7[(((i-1)*20)+L7[i])]=P8[id]
        	        exitwhen true
        	    endif
        	    set L7[i]=L7[i]+1
        	endloop
        endif
        call DisplayTextToPlayer(GetOwningPlayer(u),0,0,("|cff00FF66恭喜领悟技能："+GetObjectName(P8[id])))
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FF66玩家"+I2S(1+GetPlayerId(p))+"成为"+udg_menpainame[udg_runamen[i]]+"长老")
		call SetPlayerName(p,"〓"+udg_menpainame[udg_runamen[i]]+"长老〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))


    endif
    call DialogClear(udg_menpaineigong)
    call FlushChildHashtable(YDHT,StringHash("门派内功"))
    call DialogDestroy(udg_menpaineigong)
    set udg_menpaineigong=null
        set b=null
    set u=null
    set p = null
endfunction
function qR takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	local integer i=1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	local button b1=null
	local button b2=null
	local trigger t=CreateTrigger()
	local integer j=0
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	call SaveInteger(YDHT,id*cx,-$5E9EB4B3,i)
	call SaveUnitHandle(YDHT,id*cx,-$2EC5CBA0,GetTriggerUnit())
	if((UnitHaveItem(GetTriggerUnit(),1227895642)==false))then
	    call DisplayTextToPlayer(Player(-1+i),0,0,"|CFF34FF00你必须携带门派毕业卷才能获得修习资格")
	else
	    if((O8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==1))then
	        call DisplayTextToPlayer(Player(-1+i),0,0,"|CFF34FF00你已经修行过了")
	    else
	    	if GetUnitAbilityLevel(udg_hero[i],Y7[udg_runamen[i]])<2 then
			    call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,15,"你的"+GetAbilityName(Y7[udg_runamen[i]])+"|r还没修炼到位")
			else
	    	    set j=1
	    	    loop
	    	    exitwhen j>wugongshu[i]
	    	        if (I7[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))*20+j])!='AEfk' then
			            //call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"j="+I2S(j))
			            if j==wugongshu[i] then
	    	            	call DisplayTextToPlayer(Player(-1+i),0,0,"|CFF34FF00学习技能已达上限，请先遗忘部分技能")
	    	        	endif
	    	        else
	    	            set O8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=1
	    	            call RemoveItem(FetchUnitItem(GetTriggerUnit(),1227895642))
	    	            set bj_forLoopBIndex=1
	    	            set bj_forLoopBIndexEnd=20
	    	            loop
	    	                exitwhen bj_forLoopBIndex>bj_forLoopBIndexEnd
	    	                if((udg_runamen[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==11))then
			                    call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,15,"自由门派没有内功")
			                    exitwhen true
			                elseif (udg_runamen[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==13) then
			                	call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,15,"该门派不在此学习内功")
			                	call unitadditembyidswapped(1227895642, GetTriggerUnit())
			                	set O8[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]=0
			                    exitwhen true
			                else
	    	                    if((udg_runamen[LoadInteger(YDHT,id*cx,-$5E9EB4B3)]==bj_forLoopBIndex))then
	    	                    	set udg_menpaineigong=DialogCreate()
	    	                    	call DialogSetMessage(udg_menpaineigong,"请选择你要修习的内功")
	    	                    	set b1= DialogAddButtonBJ(udg_menpaineigong,GetObjectName(Q8[bj_forLoopBIndex]))
	    	                    	set b2= DialogAddButtonBJ(udg_menpaineigong,GetObjectName(P8[bj_forLoopBIndex]))
	    	                    	call SaveButtonHandle(YDHT,StringHash("门派内功"),1,b1)
	    	                    	call SaveButtonHandle(YDHT,StringHash("门派内功"),2,b2)
	    	                    	call SaveUnitHandle(YDHT,StringHash("门派内功"),3,GetTriggerUnit())
	    	                    	call SaveInteger(YDHT,StringHash("门派内功"),4,bj_forLoopBIndex)
	    	                    	call DialogDisplay(GetOwningPlayer(GetTriggerUnit()),udg_menpaineigong,true)
	    	                    	call TriggerRegisterDialogEvent(t,udg_menpaineigong)
	    	                        call TriggerAddAction(t,function LearnNeiGong)
	    	                    endif
	    	                endif
	    	                set bj_forLoopBIndex=bj_forLoopBIndex+1
	    	            endloop
	    	            exitwhen true
	    	        endif
	    	        set j=j+1
	    	    endloop
    	    endif
	    endif
	endif
	call FlushChildHashtable(YDHT,id*cx)
	set b1=null
	set b2=null
endfunction
function IsMuRongNeiGong takes nothing returns boolean
	return((UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))and(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())=='I09F'))
endfunction
function MuRongNeiGong takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	local integer j = 1
	if (udg_runamen[i]!=13) then
		call DisplayTextToPlayer(p,0,0,"|CFF34FF00你没有拜入姑苏慕容")
	else
		if (UnitHaveItem(u,1227895642)==false) then
		    call DisplayTextToPlayer(p,0,0,"|CFF34FF00你必须携带门派毕业卷才能获得修习资格")
		else
			if GetUnitAbilityLevel(u,Y7[udg_runamen[i]])<2 then
			    call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,15,"你的"+GetAbilityName(Y7[udg_runamen[i]])+"|r还没修炼到位")
			else
			    if (O8[i]==1) then
			        call DisplayTextToPlayer(p, 0, 0, "|CFF34FF00你已经修行过了")
			    else
			        set j=1
			        loop
			        exitwhen j>wugongshu[i]
			            if (I7[(i-1)*20+j])!='AEfk' then
				            if j==wugongshu[i] then
			                	call DisplayTextToPlayer(p,0,0,"|CFF34FF00学习技能已达上限，请先遗忘部分技能")
			            	endif
			            else
			                set O8[i]=1
			                call RemoveItem(FetchUnitItem(u,1227895642))
			                if danpo[i]>20 then
				            	call UnitAddAbility(u,P8[13])
				            	call UnitMakeAbilityPermanent(u, true, P8[13])
    		    				call DisplayTextToPlayer(p,0,0, "|cff00FF66恭喜领悟技能："+GetObjectName(P8[13]))
    		    				call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FF66玩家"+I2S(1+GetPlayerId(p))+"成为"+udg_menpainame[udg_runamen[i]]+"长老")
								call SetPlayerName(p,"〓"+udg_menpainame[udg_runamen[i]]+"长老〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
    		    				set L7[i]=1
    		    				loop
    		    				    exitwhen L7[i]>wugongshu[i]
    		    				    if((I7[(((i-1)*20)+L7[i])]!='AEfk'))then
    		    				    else
    		    				        set I7[(((i-1)*20)+L7[i])]=P8[13]
    		    				        exitwhen true
    		    				    endif
    		    				    set L7[i]=L7[i]+1
    		    				endloop
    		    			else
    		    				call UnitAddAbility(u,Q8[13])
    		    				call UnitMakeAbilityPermanent(u, true, Q8[13])
    		    				call DisplayTextToPlayer(p,0,0, "|cff00FF66你还是先掌握"+GetObjectName(Q8[13])+"吧")
    		    				call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cff00FF66玩家"+I2S(1+GetPlayerId(p))+"成为"+udg_menpainame[udg_runamen[i]]+"长老")
								call SetPlayerName(p,"〓"+udg_menpainame[udg_runamen[i]]+"长老〓"+LoadStr(YDHT,GetHandleId(p),GetHandleId(p)))
    		    				set L7[i]=1
    		    				loop
    		    				    exitwhen L7[i]>wugongshu[i]
    		    				    if((I7[(((i-1)*20)+L7[i])]!='AEfk'))then
    		    				    else
    		    				        set I7[(((i-1)*20)+L7[i])]=Q8[13]
    		    				        exitwhen true
    		    				    endif
    		    				    set L7[i]=L7[i]+1
    		    				endloop
	    					endif
    		    			exitwhen true
			    	    endif
	    	        set j=j+1
			        endloop
			    endif
		    endif
		endif
	endif
	set u = null
	set p = null
endfunction
/*
 * 16. 合成物品
 */
 
//===========================================================================
//合成物品
function HeCheng_Conditions takes nothing returns boolean
	//call BJDebugMsg(I2S(GetUnitTypeId(GetTriggerUnit())))
    return Ce[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]==2 or GetItemTypeId(GetManipulatedItem()) == 'I099' or GetItemTypeId(GetManipulatedItem()) == 'I09A' or GetItemTypeId(GetManipulatedItem()) == 'I09B' or GetItemTypeId(GetManipulatedItem()) == 'I09D'
endfunction
function HeCheng_Actions takes nothing returns nothing
	//二合一
	//if GetItemTypeId(GetManipulatedItem()) == 'I09C' or GetItemTypeId(GetManipulatedItem()) == 'I09P' then
 //   	call YDWENewItemsFormula( 'I09C', 1, 'I09P', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'I00B' )
	//endif
	//if GetItemTypeId(GetManipulatedItem()) == 'I098' or GetItemTypeId(GetManipulatedItem()) == 'I09P' then
 //   	call YDWENewItemsFormula( 'I098', 1, 'I09P', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'I00D' )
	//endif
	if GetItemTypeId(GetManipulatedItem()) == 'I00B' or GetItemTypeId(GetManipulatedItem()) == 'I00D' then
    	call YDWENewItemsFormula( 'I00B', 1, 'I00D', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'I00D' )
	endif
	if GetItemTypeId(GetManipulatedItem()) == 'I02S' or GetItemTypeId(GetManipulatedItem()) == 'I09P' then
    	call YDWENewItemsFormula( 'I02S', 1, 'I09P', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'I02M' )
	endif
	if GetItemTypeId(GetManipulatedItem()) == 'I02M' or GetItemTypeId(GetManipulatedItem()) == 'I09P' then
    	call YDWENewItemsFormula( 'I02M', 1, 'I09P', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'I02Q' )
	endif
	if GetItemTypeId(GetManipulatedItem()) == 'I02Q' or GetItemTypeId(GetManipulatedItem()) == 'I09P' then
    	call YDWENewItemsFormula( 'I02Q', 1, 'I09P', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'I02R' )
	endif
	if GetItemTypeId(GetManipulatedItem()) == 'I02R' or GetItemTypeId(GetManipulatedItem()) == 'I09P' then
    	call YDWENewItemsFormula( 'I02R', 1, 'I09P', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'I02P' )
	endif
	if GetItemTypeId(GetManipulatedItem()) == 'I099' or GetItemTypeId(GetManipulatedItem()) == 'I09A' then
    	call YDWENewItemsFormula( 'I099', 1, 'I09A', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'ches', 0, 'I09C' )
	endif
	//三合一
	if GetItemTypeId(GetManipulatedItem()) == 'I053' or GetItemTypeId(GetManipulatedItem()) == 'I058' or GetItemTypeId(GetManipulatedItem()) == 'I05A' then
    	call YDWENewItemsFormula( 'I053', 1, 'I058', 1, 'I05A', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'I05C' )
	endif
	//四合一
	//五合一
	//六合一
	if GetItemTypeId(GetManipulatedItem()) == 'I02P' or GetItemTypeId(GetManipulatedItem()) == 'I09P' then
    	call YDWENewItemsFormula( 'I02P', 1, 'I09P', 1, 'I09P', 1, 'I09P', 1, 'I09P', 1, 'I09P', 1, 'I08V' )
	endif

	//call BJDebugMsg(GetItemName(GetLastCombinedItem())+"A")
	//if GetItemType(GetLastCombinedItem())==ITEM_TYPE_ARTIFACT then
	//    call SaveInteger(YDHT,GetHandleId(GetLastCombinedItem()),0,WeaponNaiJiu(GetLastCombinedItem()))
 //   endif
endfunction
//锻造大师补属性
function DZDSBuShuXing takes unit u returns nothing
	local integer ii7 = 0
	local integer ii8 = 0
	local integer ii9 = 0
	local item it = null
	local integer j = 1
	local integer i = 1 + GetPlayerId(GetOwningPlayer(u))

	loop
		exitwhen j >= 7
		set it = UnitItemInSlotBJ(u, j)
		set ii7 = ModuloInteger((GetItemUserData(it)/100),10)
		set ii8 = ModuloInteger((GetItemUserData(it)/10),10)
		set ii9 = ModuloInteger((GetItemUserData(it)/1),10)
		//call BJDebugMsg("第"+I2S(j)+"格子物品的数值为"+I2S(ii7*100+ii8*10+ii9))
		if(ii7==1)then
			set gengu[i] = gengu[i] + 2
		elseif(ii7==2)then
			set wuxing[i] = wuxing[i] + 2
		elseif(ii7==3)then
			set jingmai[i] = jingmai[i] + 2
		elseif(ii7==4)then
			set fuyuan[i] = fuyuan[i] + 2
		elseif(ii7==5)then
			set danpo[i] = danpo[i] + 2
		elseif(ii7==6)then
			set yishu[i] = yishu[i] + 2
		endif
		if(ii8==1)then
			set gengu[i] = gengu[i] + 2
		elseif(ii8==2)then
			set wuxing[i] = wuxing[i] + 2
		elseif(ii8==3)then
			set jingmai[i] = jingmai[i] + 2
		elseif(ii8==4)then
			set fuyuan[i] = fuyuan[i] + 2
		elseif(ii8==5)then
			set danpo[i] = danpo[i] + 2
		elseif(ii8==6)then
			set yishu[i] = yishu[i] + 2
		endif
		if(ii9==1)then
			set gengu[i] = gengu[i] + 2
		elseif(ii9==2)then
			set wuxing[i] = wuxing[i] + 2
		elseif(ii9==3)then
			set jingmai[i] = jingmai[i] + 2
		elseif(ii9==4)then
			set fuyuan[i] = fuyuan[i] + 2
		elseif(ii9==5)then
			set danpo[i] = danpo[i] + 2
		elseif(ii9==6)then
			set yishu[i] = yishu[i] + 2
		endif
		set j = j + 1
	endloop
	set it = null
endfunction
//为合成的武器增加耐久度
function WuPinHeCheng takes nothing returns nothing
	local item it=GetLastCombinedItem()
	local integer i = 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	if Ce[i]==2 and LoadBoolean(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), GetItemTypeId(it))==false and udg_dzds[i]<=5 then
		set udg_dzds[i] = udg_dzds[i] + 1
		call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|CFF66FF00恭喜您锻造成功第"+I2S(udg_dzds[i])+"件装备，锻造成功5件装备可以获得锻造大师哦")
		call SaveBoolean(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), GetItemTypeId(it), true)
	endif
	if Ce[i]==2 and udg_dzds[i]>=5 and udg_dzdsbool[i]==false then
		set udg_dzdsbool[i] = true
		call DZDSBuShuXing(udg_hero[i])
		if udg_zhangmen[i]==true then
		else
			call SaveStr(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), GetHandleId(GetOwningPlayer(GetTriggerUnit())),"〓锻造大师〓"+LoadStr(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), GetHandleId(GetOwningPlayer(GetTriggerUnit()))))
		endif
		call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜"+GetPlayerName(GetOwningPlayer(GetTriggerUnit()))+"获得锻造大师")
		call SetPlayerName(GetOwningPlayer(GetTriggerUnit()), "〓锻造大师〓"+GetPlayerName(GetOwningPlayer(GetTriggerUnit())))
	endif
	//call BJDebugMsg(GetItemName(it))
	if GetItemType(it)==ITEM_TYPE_ARTIFACT then
	    call SaveInteger(YDHT,GetHandleId(it),0,WeaponNaiJiu(it))
    endif
    set it=null
endfunction

/*
 * 17. 伴侣系统
 */
 
//伴侣属性
function BanLvShuXing_1 takes integer num, integer id1, integer id2, integer blgg, integer blwx, integer bljm, integer blfy, integer bldp, integer blys returns nothing
	set R8[num]=id1
	set S8[num]=id2
	set udg_blgg[num]=blgg
	set udg_blwx[num]=blwx
	set udg_bljm[num]=bljm
	set udg_blfy[num]=blfy
	set udg_bldp[num]=bldp
	set udg_blys[num]=blys
endfunction
function LO takes nothing returns nothing
	call BanLvShuXing_1(1, 1697656885, 1227895865, 2, 0, 0, 0, 3, 0)
	call BanLvShuXing_1(2, 1697656886, 1227895874, 2, 2, 2, 2, 2, 2)
	call BanLvShuXing_1(3, 1697656887, 1227895380, 0, 0, 0, 0, 1, 1)
	call BanLvShuXing_1(4, 1697656888, 1227895864, 0, 2, 2, 1, 0, 0)
	call BanLvShuXing_1(5, 1697656889, 1227895858, 2, 0, 1, 0, 0, 0)
	call BanLvShuXing_1(6, 1697656898, 1227895859, 0, 2, 0, 0, 0, 1)
	call BanLvShuXing_1(7, 1697656897, 1227895857, 0, 0, 0, 2, 0, 0)
	call BanLvShuXing_1(8, 1697656899, 1227895873, 2, 2, 2, 2, 2, 2)
	call BanLvShuXing_1(9, 1697656900, 1227895863, 2, 0, 0, 2, 1, 0)
	call BanLvShuXing_1(10, 1697656901, 1227895862, 0, 1, 3, 0, 0, 1)
	call BanLvShuXing_1(11, 1697656902, 1227895861, 1, 1, 0, 0, 0, 2)
	call BanLvShuXing_1(12, 1697656903, 1227895860, 0, 0, 2, 1, 1, 0)
	call BanLvShuXing_1(13, 'e01B', 'I0CP', 2, 2, 2, 2, 2, 2)
	call BanLvShuXing_1(14, 'e01C', 'I0CS', 3, 3, 3, 3, 3, 3) //白猿
endfunction
//结成伴侣
function NO takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemType(GetManipulatedItem())==ITEM_TYPE_PERMANENT))
endfunction
function OO takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	local integer j =1
	local location loc = GetUnitLoc(u)
	if (UnitTypeNotNull(u,UNIT_TYPE_HERO)) then
		loop
			exitwhen j>MAX_BAN_LV_NUM
			if((GetUnitTypeId(k8[i])==R8[j]))then
				set jingmai[i]=(jingmai[i]-udg_bljm[j])
				set fuyuan[i]=(fuyuan[i]-udg_blfy[j])
				set wuxing[i]=(wuxing[i]-udg_blwx[j])
				set yishu[i]=(yishu[i]-udg_blys[j])
				set gengu[i]=(gengu[i]-udg_blgg[j])
				set danpo[i]=(danpo[i]-udg_bldp[j])
			endif
			set j=j+1
		endloop
		call RemoveUnit(k8[i])
		set j=1
		loop
			exitwhen j>MAX_BAN_LV_NUM
			if((GetItemTypeId(GetManipulatedItem())==S8[j]))then
				call PlaySoundOnUnitBJ(Fh,100,u)
				call CreateNUnitsAtLoc(1,R8[j],p,loc,bj_UNIT_FACING)
				call zw(bj_lastCreatedUnit,u,1.,250.,1000.,1500.,75)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00恭喜你与"+GetUnitName(bj_lastCreatedUnit)+"结成伴侣")
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00查看伴侣属性输入“bl”")
				set k8[i]=bj_lastCreatedUnit
				set jingmai[i]=(jingmai[i]+udg_bljm[j])
				set fuyuan[i]=(fuyuan[i]+udg_blfy[j])
				set wuxing[i]=(wuxing[i]+udg_blwx[j])
				set yishu[i]=(yishu[i]+udg_blys[j])
				set gengu[i]=(gengu[i]+udg_blgg[j])
				set danpo[i]=(danpo[i]+udg_bldp[j])
				call RemoveLocation(loc)
			endif
			set j=j+1
		endloop
	else
		call unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()),u)
	endif
	set u = null
	set p = null
	set loc = null
endfunction

/*
 * 18. 整理地图上物品
 */
 
//整理物品
function SO takes nothing returns nothing
	if((GetWidgetLife(GetEnumItem())==101.))then    //D古董
		call SetItemPositionLoc(GetEnumItem(),GetRectCenter(nh))
		call RemoveLocation(GetRectCenter(nh))
	elseif((GetWidgetLife(GetEnumItem())==102.))then    //C古董
		call SetItemPositionLoc(GetEnumItem(),GetRectCenter(oh))
		call RemoveLocation(GetRectCenter(oh))
	elseif((GetWidgetLife(GetEnumItem())==103.))then    //B古董
		call SetItemPositionLoc(GetEnumItem(),GetRectCenter(ph))
		call RemoveLocation(GetRectCenter(ph))
	elseif((GetWidgetLife(GetEnumItem())==104.))then    //A古董
		call SetItemPositionLoc(GetEnumItem(),GetRectCenter(qh))
		call RemoveLocation(GetRectCenter(qh))
	elseif((GetWidgetLife(GetEnumItem())==105.))then    //C草药
		call SetItemPositionLoc(GetEnumItem(),GetRectCenter(rh))
		call RemoveLocation(GetRectCenter(rh))
	elseif((GetWidgetLife(GetEnumItem())==106.))then    //B草药
		call SetItemPositionLoc(GetEnumItem(),GetRectCenter(sh))
		call RemoveLocation(GetRectCenter(sh))
	elseif((GetWidgetLife(GetEnumItem())==107.))then    //A草药
		call SetItemPositionLoc(GetEnumItem(),GetRectCenter(th))
		call RemoveLocation(GetRectCenter(th))
	elseif((GetWidgetLife(GetEnumItem())==108.))then    //18种江湖武功
		call SetItemPosition(GetEnumItem(),-1819.,484.)
	elseif((GetWidgetLife(GetEnumItem())==109.))then
		call SetItemPosition(GetEnumItem(),-1300.,-300.)
	endif
endfunction
function TO takes nothing returns nothing
	call EnumItemsInRectBJ(bj_mapInitialPlayableArea,function SO)
endfunction

/*
 * 19. 其他琐碎逻辑
 */
 
//------轻功系统------//
globals
	effect array udg_JTX
endglobals
function Trig_ttConditions takes nothing returns boolean
    return ( GetSpellAbilityId() == 'A02U' ) and ( IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true )
endfunction

function qinggongxiaoshi takes nothing returns nothing
	local timer tm=GetExpiredTimer()
	local unit u = LoadUnitHandle(YDHT,GetHandleId(tm), 0)
	call DestroyEffect(udg_JTX[GetPlayerId(GetOwningPlayer(u))+1])
	call PauseTimer(tm)
	call DestroyTimer(tm)
	set u = null
	set tm = null
endfunction

function Trig_ttActions takes nothing returns nothing
	local location d1 = GetUnitLoc(GetTriggerUnit())
	local location d2 = GetSpellTargetLoc()
	local real agi=I2R(GetHeroAgi(GetTriggerUnit(),false))
	local real jd=AngleBetweenPoints(d1, d2)
	local real distance=500+I2R(GetHeroStr(GetTriggerUnit(),false))/3
	local real velocity=48.027*Pow(agi,0.3131)
	local real lasttime=5.0
	local timer tm = CreateTimer()
	if velocity>1000 then
		set velocity=1000
	endif
	if distance>2000 then
		set distance=2000
	endif
	call SaveReal(YDHT, GetHandleId(GetTriggerUnit()), StringHash("轻功distance"), distance)
	if distance>DistanceBetweenPoints(d1,d2) then
		set distance=DistanceBetweenPoints(d1,d2)
	endif
	set lasttime=distance/velocity
	call SaveReal(YDHT, GetHandleId(GetTriggerUnit()), StringHash("轻功velocity"), velocity)
	call SaveUnitHandle(YDHT,GetHandleId(tm), 0, GetTriggerUnit())
	call SetUnitFacing( GetTriggerUnit(), jd)
	call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Weapons\\PhoenixMissile\\Phoenix_Missile.mdl"))
	set udg_JTX[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))+1]=AddSpecialEffectTarget("Abilities\\Weapons\\PhoenixMissile\\Phoenix_Missile.mdl", GetTriggerUnit(), "origin")
	call SetUnitAnimation( GetTriggerUnit(), "walk")
	call YDWEJumpTimer(GetTriggerUnit(),jd,distance,lasttime,0.03,100)

	call TimerStart(tm,lasttime,false,function qinggongxiaoshi)
	call RemoveLocation(d1)
	call RemoveLocation(d2)
	set d1=null
	set d2=null
	set tm=null
endfunction

//伤害测试桩
globals
	boolean ceshi = false
	real ceshizongshanghai
endglobals
function IsCeShiShangHai takes nothing returns boolean
	return GetItemTypeId(GetManipulatedItem())=='I0B7'
endfunction
function CeShiJieShu takes nothing returns nothing
	local timer t = GetExpiredTimer()
	set ceshi = false
	call SetUnitOwner(gg_unit_N00I_0116, Player(5), true)
	call BJDebugMsg("|cff00ff00测试总伤害为"+R2S(ceshizongshanghai))
	call PauseTimer(t)
	call DestroyTimer(t)
	set t = null
endfunction
function CeShiShangHai takes nothing returns nothing
	local timer t = CreateTimer()
	set ceshi = true
	set ceshizongshanghai = 0
	call BJDebugMsg(GetUnitName(gg_unit_N00I_0116))
	call SetUnitOwner(gg_unit_N00I_0116, Player(6), true)
	call TimerStart(t, 10, false, function CeShiJieShu)
	set t  = null
endfunction
function IsCalcShangHai takes nothing returns boolean
	return ceshi
endfunction
function CalcShangHai takes nothing returns nothing
	set ceshizongshanghai = ceshizongshanghai + GetEventDamage()
endfunction
//抽血术
function ChouXie_Condition takes nothing returns boolean
	return IsUnitInGroup(GetAttacker(), w7) and GetPlayerTechCountSimple('R001', Player(6))==50 and GetTriggerUnit()!=udg_ZhengPaiWL and GetUnitTypeId(GetTriggerUnit())!='Hblm' and GetUnitTypeId(GetTriggerUnit())!='o02F' and GetUnitTypeId(GetTriggerUnit())!='o02G'
endfunction
function ChouXie_Action takes nothing returns nothing
	if GetRandomInt(1, 100)<=20 then
		call SetUnitLifePercentBJ(GetTriggerUnit(), GetUnitLifePercent(GetTriggerUnit())-6.)
	endif
endfunction

//杀怪(进攻怪及练功房)
function ey takes nothing returns boolean
	return((IsUnitEnemy(GetDyingUnit(),GetOwningPlayer(GetKillingUnit())))and((GetOwningPlayer(GetTriggerUnit())==Player(6))or(GetOwningPlayer(GetTriggerUnit())==Player(7))))
endfunction
function KillGuai takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	local integer cx=LoadInteger(YDHT,id,-$3021938A)
	local integer i = 1
	set cx=cx+3
	call SaveInteger(YDHT,id,-$3021938A,cx)
	call SaveInteger(YDHT,id,-$1317DA19,cx)
	if((GetOwningPlayer(GetTriggerUnit())==Player(7)))then
	    if((UnitHaveItem(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))],1227896391)))then
	        set T7=GetRandomReal(.95,(.95+(I2R(fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))])/50.)))
	        set U7=(T7*(30.*(I2R((udg_boshu+1))/1.)))
	        call AdjustPlayerStateBJ(R2I(U7),GetOwningPlayer(GetKillingUnit()),PLAYER_STATE_RESOURCE_GOLD)
	    else
	        set T7=GetRandomReal(.95,(.95+(I2R(fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))])/50.)))
	        set U7=(T7*(15.*(I2R((udg_boshu+1))/1.)))
	        call AdjustPlayerStateBJ(R2I(U7),GetOwningPlayer(GetKillingUnit()),PLAYER_STATE_RESOURCE_GOLD)
	    endif
	    if((UnitHaveItem(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))],'I06I')))then
	        if((GetRandomInt(1,100)<=15))then
	            call AdjustPlayerStateBJ(1,GetOwningPlayer(GetKillingUnit()),PLAYER_STATE_RESOURCE_LUMBER)
	        endif
	    endif
	    if((UnitHaveItem(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))],1227896390)))then
	        set shengwang[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]=(shengwang[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]+((udg_boshu/5)))
	    endif
	    if((UnitHaveItem(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))],1227896392)))then
	        call AddHeroXP(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))],(GetUnitLevel(GetTriggerUnit())*20),true)
	    endif
	else
	    set T7=GetRandomReal(.95,(.95+(I2R(fuyuan[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))])/50.)))
	    set U7=(T7*(25.*(I2R((udg_boshu+1))/1.)))
	    call AdjustPlayerStateBJ(R2I(U7),GetOwningPlayer(GetKillingUnit()),PLAYER_STATE_RESOURCE_GOLD)
	    if((GetUnitPointValue(GetTriggerUnit())==102))then
		    set i = 1
		    loop
		    	exitwhen i >= 6
		    	 set shoujiajf[i]=shoujiajf[i]+15*(10-GetNumPlayer())/10
		    	set i = i + 1
		    endloop
	        set ae=(ae+($A+GetPlayerTechCountSimple('R001',Player(6))))
	        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"击杀名门高手，每位玩家获得守家积分+"+I2S(shoujiajf[i]+15*(10-GetNumPlayer())/10))
	        call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
	        if((GetRandomInt(1,50)<=5))then
	            call createitemloc(YaoCao[GetRandomInt(1,12)],LoadLocationHandle(YDHT,id*cx,$1769D332))
	            if udg_lddsbool[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))] then
		            call createitemloc(YaoCao[GetRandomInt(1,12)],LoadLocationHandle(YDHT,id*cx,$1769D332))
	            endif
	        endif
	        if((GetRandomInt(1,50)<=2))then
	            call createitemloc(1227897138,LoadLocationHandle(YDHT,id*cx,$1769D332))
	        else
	            if((GetRandomInt(1,100)<=10))then
	                call createitemloc('I06N',LoadLocationHandle(YDHT,id*cx,$1769D332))
	            else
	                if((GetRandomInt(1,90)<=10))then
	                    call createitemloc('I06K',LoadLocationHandle(YDHT,id*cx,$1769D332))
	                else
	                    if((GetRandomInt(1,80)<=10))then
	                        call createitemloc(1227896397,LoadLocationHandle(YDHT,id*cx,$1769D332))
	                    endif
	                endif
	            endif
	        endif
	        call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
	    else
	        //判断是否为进攻BOSS
	        if((GetUnitPointValue(GetTriggerUnit())==101))then
	            set i = 1
		    	loop
		    		exitwhen i >= 6
		    		 set shoujiajf[i]=shoujiajf[i]+30*(10-GetNumPlayer())/10
		    		set i = i + 1
		    	endloop
	        	set ae=(ae+($A+GetPlayerTechCountSimple('R001',Player(6))))
	        	call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"击杀BOSS，每位玩家获得守家积分+"+I2S(shoujiajf[i]+30*(10-GetNumPlayer())/10))
	            set ae=(ae+(30+GetPlayerTechCountSimple('R001',Player(6))))
	            if GetRandomInt(1,100)<=50 then
	                set udg_shuxing[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]=(udg_shuxing[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]+1)
	                call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|cFF33CC00"+GetPlayerName(GetOwningPlayer(GetKillingUnit()))+"|cFF33CC00击杀了BOSS"+GetUnitName(GetTriggerUnit())+"|cFF33CC00获得了一个自由属性点")
	            endif
	            call SaveLocationHandle(YDHT,id*cx,$1769D332,GetUnitLoc(GetTriggerUnit()))
	            call createitemloc(YaoCao[GetRandomInt(1,12)],LoadLocationHandle(YDHT,id*cx,$1769D332))
	            call createitemloc(YaoCao[GetRandomInt(1,12)],LoadLocationHandle(YDHT,id*cx,$1769D332))
	            if udg_lddsbool[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))] then
		            call createitemloc(YaoCao[GetRandomInt(1,12)],LoadLocationHandle(YDHT,id*cx,$1769D332))
		            call createitemloc(YaoCao[GetRandomInt(1,12)],LoadLocationHandle(YDHT,id*cx,$1769D332))
	            endif
	            call RemoveLocation(LoadLocationHandle(YDHT,id*cx,$1769D332))
	        else
	            if GetKillingUnit()!=null then
	                set shoujiajf[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]=(shoujiajf[(1+GetPlayerId(GetOwningPlayer(GetKillingUnit())))]+1)
	            endif
	        endif
	    endif
	endif
	call FlushChildHashtable(YDHT,id*cx)
endfunction


//魔教救人
function MoJiaoJiuRen_1 takes nothing returns nothing
    call SetUnitPosition(GetEnumUnit(),-910,750)
endfunction
function MoJiaoJiuRen takes nothing returns nothing
    call DisplayTextToForce(GetPlayersAll(),"|CFFCCFF00魔教潜入监狱救走了被抓住的敌人")
    call ForGroupBJ(YDWEGetUnitsInRectOfPlayerNull(udg_jail,Player(6)),function MoJiaoJiuRen_1)
endfunction

//杀怪加声望
function Xa takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetKillingUnit()))==MAP_CONTROL_USER))
endfunction
function Ya takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))
	local real x
	local real y
	set shengwang[i] = shengwang[i]+udg_boshu/7+1
	if (ModuloInteger(GetUnitPointValue(u),$A)==1) then
		set shengwang[i]=shengwang[i]+8
	endif
	if (p==Player(6)) then
		set zd=zd+GetRandomInt(1,2)
		if (zd>=100) then
			set zd=0
			set x = GetUnitX(u)
			set y = GetUnitY(u)
			call createitem(gudong[GetRandomInt(1,(6+(udg_boshu/5)))],x,y)
		endif
	endif
	set u = null
	set p = null
endfunction
function dB takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetKillingUnit()))==MAP_CONTROL_USER))
endfunction
function eB takes nothing returns nothing
	local integer i=1+GetPlayerId(GetOwningPlayer(GetKillingUnit()))
	set shengwang[i]=(shengwang[i]+1)
	if((ModuloInteger(GetUnitPointValue(GetTriggerUnit()),10)==1))then
		set shengwang[i]=shengwang[i]+5
	elseif((ModuloInteger(GetUnitPointValue(GetTriggerUnit()),10)==2))then
		set shengwang[i]=shengwang[i]+10
	endif
endfunction




//经验符
function oQ takes nothing returns boolean
	return(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem())=='texp')
endfunction
function pQ takes nothing returns nothing
	call AddHeroXP(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))], 200000, true)
endfunction
//购买等级
function rQ takes nothing returns boolean
	return(GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem())=='I05Z')
endfunction
function sQ takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	if (GetUnitLevel(udg_hero[i])>=100)then
		call AdjustPlayerStateBJ(10000, p, PLAYER_STATE_RESOURCE_GOLD)
		call DisplayTimedTextToPlayer(p,0,0,15,"|cFFFFCC00等级高于100无法购买等级")
	else
		if Ce[i]==5 then
			call AdjustPlayerStateBJ(10000, p, PLAYER_STATE_RESOURCE_GOLD)
			call DisplayTimedTextToPlayer(p,0,0,15,"|cFFFFCC00选择该副职无法购买等级")
		else
			call SetHeroLevel(udg_hero[i], GetUnitLevel(udg_hero[i])+1, true)
		endif
	endif
	set u = null
	set p = null
endfunction
//新手大礼包
function uQ takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())==1227896394))
endfunction
function vQ takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	if((GetRandomInt(1,12)<=3))then
		call AdjustPlayerStateBJ(20000, p, PLAYER_STATE_RESOURCE_GOLD)
		call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用新手大礼包获得金钱+20000")
	else
		if((GetRandomInt(1,9)<=3))then
			call UnitAddItemById(u,udg_jianghu[GetRandomInt(1,18)])
			call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用新手大礼包获得随机江湖武功")
		else
			if((GetRandomInt(1,6)<=3))then
				call UnitAddAbility(u,1093679441)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用新手大礼包获得神行状态")
				call TriggerSleepAction(300.)
				call UnitRemoveAbility(u,1093679441)
				call DisplayTextToPlayer(p,0,0,"|cFFFF0000失去神行效果")
			else
				call YDWEGeneralBounsSystemUnitSetBonus(u,3,0,20000)
				call DisplayTextToPlayer(p,0,0,"|cFFFFCC00使用新手大礼包获得狂暴状态")
				call TriggerSleepAction(120.)
				call YDWEGeneralBounsSystemUnitSetBonus(u,3,1,20000)
				call DisplayTextToPlayer(p,0,0,"|cFFFF0000失去狂暴效果")
			endif
		endif
	endif
	set u = null
	set p = null
endfunction
//装备打孔
function xQ takes nothing returns boolean
	return((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())=='I06N'))
endfunction
function yQ takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i11 = 0
	local integer i12 = 0
	if(((GetItemType(UnitItemInSlotBJ(u,1))==ITEM_TYPE_ARTIFACT)or(GetItemType(UnitItemInSlotBJ(u,1))==ITEM_TYPE_PURCHASABLE)or(GetItemType(UnitItemInSlotBJ(u,1))==ITEM_TYPE_CHARGED)))then
		set i12 = ModuloInteger(GetItemUserData(UnitItemInSlotBJ(u,1))/1000,10)
		set i11 = ModuloInteger(GetItemUserData(UnitItemInSlotBJ(u,1))/100,10)
		if (i11>0) then
			set i12 = i12+1
		endif
		set i11 = ModuloInteger(GetItemUserData(UnitItemInSlotBJ(u,1))/10,10)
		if (i11>0) then
			set i12 = i12+1
		endif
		set i11 = ModuloInteger(GetItemUserData(UnitItemInSlotBJ(u,1)),10)
		if (i11>0) then
			set i12 = i12+1
		endif
		if (i12<3) then
			call SetItemUserData(UnitItemInSlotBJ(u,1),(GetItemUserData(UnitItemInSlotBJ(u,1))+$3E8))
			call DisplayTimedTextToPlayer(p,0,0,30,"|cff00ffff打孔成功！")
		else
			call unitadditembyidswapped('I06N',u)
			call DisplayTimedTextToPlayer(p,0,0,30,"|cffff0000第一格物品不能再打孔了")
		endif
	else
		call unitadditembyidswapped('I06N',u)
		call DisplayTimedTextToPlayer(p,0,0,30,"|cffff0000第一格物品不是装备")
	endif
	set u = null
	set p = null
endfunction
//加入副职
function AQ takes nothing returns boolean
	return ((GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER)and(GetItemTypeId(GetManipulatedItem())=='I08Q' or GetItemTypeId(GetManipulatedItem())=='I0A4' or GetItemTypeId(GetManipulatedItem())=='I0A5' or GetItemTypeId(GetManipulatedItem())=='I0A6' or GetItemTypeId(GetManipulatedItem())=='I0A7' or GetItemTypeId(GetManipulatedItem())=='I08S' or GetItemTypeId(GetManipulatedItem())=='I08T' or GetItemTypeId(GetManipulatedItem())=='I0CG'))
endfunction
function aQ takes nothing returns nothing
	local integer i = 1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	if((Ce[i]==0))then
		if (GetItemTypeId(GetManipulatedItem())=='I08Q') then
			set yishu[i]=yishu[i]+5
			set Ce[i]=1
			call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,5.,"|cffffff00恭喜成为炼丹师，获得医术+5")
		elseif (GetItemTypeId(GetManipulatedItem())=='I08S') then
			set gengu[i]=(gengu[i]+5)
			set Ce[i]=2
			call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,5.,"|cffffff00恭喜成为锻造师，获得根骨+5")
		elseif (GetItemTypeId(GetManipulatedItem())=='I08T') then
			set danpo[i]=(danpo[i]+5)
			set Ce[i]=3
			call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,5.,"|cffffff00恭喜成为兵器师，获得胆魄+5")
		elseif (GetItemTypeId(GetManipulatedItem())=='I0A4') then
			set wuxing[i]=wuxing[i]+5
			set Ce[i]=4
			call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,5.,"|cffffff00恭喜成为鉴定师，获得悟性+5")
		elseif (GetItemTypeId(GetManipulatedItem())=='I0A5') then
			set jingmai[i]=jingmai[i]+5
			set Ce[i]=5
			call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,5.,"|cffffff00恭喜成为练气师，获得经脉+5")
		elseif (GetItemTypeId(GetManipulatedItem())=='I0A6') then
			set fuyuan[i]=fuyuan[i]+5
			set Ce[i]=6
			call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,5.,"|cffffff00恭喜成为寻宝师，获得福缘+5")
		elseif (GetItemTypeId(GetManipulatedItem())=='I0A7') then
			if (GetUnitTypeId(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))])=='O002' or GetUnitTypeId(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))])=='O003' or GetUnitTypeId(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))])=='O023' or GetUnitTypeId(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))])=='O02H' or GetUnitTypeId(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))])=='O02I') then
				set Ce[i]=7
				call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,5.,"|cffffff00恭喜成为丫鬟，获得全属性+1")
				set danpo[i] = danpo[i]+1
				set wuxing[i] = wuxing[i]+1
				set gengu[i] = gengu[i]+1
				set fuyuan[i] = fuyuan[i]+1
				set jingmai[i] = jingmai[i]+1
				set yishu[i] = yishu[i]+1
			else
				call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,5.,"|cffffff00男性角色不可加入该副职")
			endif
		elseif (GetItemTypeId(GetManipulatedItem())=='I0CG') then
			if (GetUnitTypeId(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))])!='O002' and GetUnitTypeId(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))])!='O003' and GetUnitTypeId(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))])!='O023' and GetUnitTypeId(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))])!='O02H' and GetUnitTypeId(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetTriggerUnit())))])!='O02I') then
				set Ce[i]=8
				call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,5.,"|cffffff00恭喜成为精武师，获得全属性+1")
				set danpo[i] = danpo[i]+1
				set wuxing[i] = wuxing[i]+1
				set gengu[i] = gengu[i]+1
				set fuyuan[i] = fuyuan[i]+1
				set jingmai[i] = jingmai[i]+1
				set yishu[i] = yishu[i]+1
			else
				call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,5.,"|cffffff00女性角色不可加入该副职")
			endif
		endif
	else
		call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,5.,"|cffff0000你已经加入专精了！（每个角色只能选择一种专精，也可以不选择）")
	endif
endfunction







//结拜系统
function MaiHuangZhi_Conditions takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())=='I000'))
endfunction
function MaiHuangZhi takes nothing returns nothing
	call unitadditembyidswapped('I05Y',GetTriggerUnit())
	call unitadditembyidswapped('I05Y',GetTriggerUnit())
endfunction
function IsHuangZhi takes nothing returns boolean
	return((GetItemTypeId(GetManipulatedItem())=='I05Y'))
endfunction
function ShaoHuangZhi takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	if((Bd[i]))then
		call DisplayTimedTextToPlayer(p,0,0,20.,"|cffff0000你已经使用过黄纸了，还是等等另外一个人的响应吧")
		call unitadditembyidswapped('I05Y',GetTriggerUnit())
	else
		set Bd[i]=true
		set ad = ad+1
		set bd[ad]=udg_hero[i]
		if((ModuloInteger(ad,2)==0))then
			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,20.,("|cffff66ff恭喜"+(GetPlayerName(GetOwningPlayer(bd[(ad-1)]))+("和"+(GetPlayerName(GetOwningPlayer(bd[ad]))+"结拜为兄弟")))))
		else
			call DisplayTimedTextToPlayer(p,0,0,20.,"|cffff66ff使用成功，等待另外一位玩家与你结拜....")
		endif
	endif
	set u=null
	set p=null
endfunction
function kT takes nothing returns boolean
	return (Bd[(1+GetPlayerId(GetTriggerPlayer()))])
endfunction
function mT takes nothing returns nothing
	local integer i = 1 + GetPlayerId(GetTriggerPlayer())
	local integer j = 1
	local real x
	local real y
	loop
		exitwhen j>6
		if (udg_hero[i]==bd[j]) then
			if (ModuloInteger(j,2)==0) then
				if (bd[j-1]!=null) then
					set x = GetUnitX(bd[j-1])
					set y = GetUnitY(bd[j-1])
					call SetUnitPosition(udg_hero[i],x,y)
					call PanCameraToTimedForPlayer(GetTriggerPlayer(),x,y,0)
				endif
			else
				if (bd[j+1]!=null) then
					set x = GetUnitX(bd[j+1])
					set y = GetUnitY(bd[j+1])
					call SetUnitPosition(udg_hero[i],x,y)
					call PanCameraToTimedForPlayer(GetTriggerPlayer(),x,y,0)
				endif
			endif
		endif
	set j=j+1
	endloop
endfunction

function qT takes nothing returns boolean
	return (GetPlayerController(GetOwningPlayer(GetTriggerUnit()))==MAP_CONTROL_USER and (GetItemTypeId(GetManipulatedItem())=='I0BO'or GetItemTypeId(GetManipulatedItem())=='I07S'))
endfunction
function rT takes nothing returns nothing
	//if GetItemTypeId(GetManipulatedItem())==1227896663 then
	//	set ue = 1
	//endif
	//if GetItemTypeId(GetManipulatedItem())==1227896661 then
	//	set ue = 2
	//endif
	//if GetItemTypeId(GetManipulatedItem())==1227896660 then
	//	set ue = 3
	//endif
	//if GetItemTypeId(GetManipulatedItem())==1227896662 then
	//	set ue = 4
	//endif
	if GetItemTypeId(GetManipulatedItem())=='I07S' then
		set ue = 5
		call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30.,"|cff00ffff有玩家开始预约名门挑战，本波进攻怪物将会增加名门高手，大家要小心应付了！")
	endif
	if GetItemTypeId(GetManipulatedItem())=='I0BO' then
		set ue = 0
		call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30.,"|cff00ffff有玩家取消了预约名门挑战，下波进攻怪物将不会增加名门高手，大家要小心应付了！")
	endif

endfunction
// 攻破城门
function cT takes nothing returns boolean
	return((GetUnitTypeId(GetTriggerUnit())=='hmtt'))
endfunction
function DT takes nothing returns nothing
	call ModifyGateBJ(1,Gt)
	call YDWEPolledWaitNull(((.18-(.01*I2R(O4)))*2000.))
	call ModifyGateBJ(0,Gt)
endfunction
//爆炸
function FT takes nothing returns boolean
	return((GetUnitAbilityLevel(GetTriggerUnit(),'A0BU')!=0))
endfunction
function GT takes nothing returns boolean
	local integer id=GetHandleId(GetTriggeringTrigger())
	return(((IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),$59BEA0CB))))and(IsUnitAliveBJ(GetFilterUnit()))))
endfunction
function HT takes nothing returns nothing
	local integer id=GetHandleId(GetTriggeringTrigger())
	call SaveUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$270B8163,GetEnumUnit())
	call SetWidgetLife(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$270B8163),(GetUnitState(LoadUnitHandle(YDHT,id*LoadInteger(YDHT,id,-$1317DA19),-$270B8163),UNIT_STATE_LIFE)-(200.*I2R(GetUnitLevel(GetEnumUnit())))))
endfunction
function IT takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local location loc = GetUnitLoc(u)
	call AddSpecialEffectLocBJ(loc,"war3mapImported\\ChaosExplosion.mdl")
	call DestroyEffect(bj_lastCreatedEffect)
	call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(300.,loc,Condition(function GT)),function HT)
	call RemoveLocation(loc)
	set u = null
	set loc = null
endfunction
// 流星
function JT takes nothing returns boolean
	return((GetUnitAbilityLevel(GetAttacker(),'A0BY')!=0)and(GetRandomInt(1,70)<=5))
endfunction
function KT takes nothing returns nothing
	local unit u = GetAttacker()
	local location loc = GetUnitLoc(u)
	call CreateNUnitsAtLoc(1,1697656919,GetOwningPlayer(u),loc,bj_UNIT_FACING)
	call UnitAddAbility(bj_lastCreatedUnit,1093681754)
	call IssueImmediateOrderById(bj_lastCreatedUnit,$D00D7)
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',15.)
	call ShowUnitHide(bj_lastCreatedUnit)
	call RemoveLocation(loc)
	set u = null
	set loc = null
endfunction
// 冰缓
function MT takes nothing returns boolean
	return((GetUnitAbilityLevel(GetAttacker(),'A0C0')!=0)and(GetRandomInt(1,70)<=5))
endfunction
function NT takes nothing returns nothing
	local unit u = GetAttacker()
	local location loc = GetUnitLoc(u)
	call CreateNUnitsAtLoc(1,1697656918,GetOwningPlayer(u),loc,bj_UNIT_FACING)
	call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',15.)
	call RemoveLocation(loc)
	set u = null
	set loc = null
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

/*
 * 游戏逻辑触发器
 */
 
function GameLogic_Trigger takes nothing returns nothing
	local trigger t = CreateTrigger()
	//选择英雄
	set Jh=CreateTrigger()
	call TriggerRegisterPlayerSelectionEventBJ(Jh,Player(0),true)
	call TriggerRegisterPlayerSelectionEventBJ(Jh,Player(1),true)
	call TriggerRegisterPlayerSelectionEventBJ(Jh,Player(2),true)
	call TriggerRegisterPlayerSelectionEventBJ(Jh,Player(3),true)
	call TriggerRegisterPlayerSelectionEventBJ(Jh,Player(4),true)
	call TriggerAddCondition(Jh,Condition(function fx))
	call TriggerAddAction(Jh,function SelectHero)
	//查看当前可加入门派
	set Lh=CreateTrigger()
	call TriggerRegisterPlayerSelectionEventBJ(Lh,Player(0),true)
	call TriggerRegisterPlayerSelectionEventBJ(Lh,Player(1),true)
	call TriggerRegisterPlayerSelectionEventBJ(Lh,Player(2),true)
	call TriggerRegisterPlayerSelectionEventBJ(Lh,Player(3),true)
	call TriggerRegisterPlayerSelectionEventBJ(Lh,Player(4),true)
	call TriggerAddCondition(Lh,Condition(function kx))
	call TriggerAddAction(Lh,function MenPai)
	// 加入门派
	set Mh=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Mh,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Mh,Condition(function ox))
	call TriggerAddAction(Mh,function JiaRuMenPai)
	// 伤害测试
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t,Condition(function IsCeShiShangHai))
	call TriggerAddAction(t,function CeShiShangHai)
	set t = CreateTrigger()
	call TriggerRegisterUnitEvent(t, gg_unit_N00I_0116, EVENT_UNIT_DAMAGED)
	call TriggerAddCondition(t, Condition(function IsCalcShangHai))
	call TriggerAddAction(t, function CalcShangHai)
	// 自由门派
	set Mh=CreateTrigger()
	call TriggerRegisterLeaveRectSimple(Mh,udg_xuanmenpai)
	call TriggerAddCondition(Mh,Condition(function WuMenPai_Condition))
	call TriggerAddAction(Mh,function WuMenPai_Action)
	// 按ESC查看人物属性
	set Rh=CreateTrigger()
	call TriggerRegisterPlayerEventEndCinematic(Rh,Player(0))
	call TriggerRegisterPlayerEventEndCinematic(Rh,Player(1))
	call TriggerRegisterPlayerEventEndCinematic(Rh,Player(2))
	call TriggerRegisterPlayerEventEndCinematic(Rh,Player(3))
	call TriggerRegisterPlayerEventEndCinematic(Rh,Player(4))
	call TriggerAddAction(Rh,function RenWuShuXing)
	// up提升游戏难度
	set Sh=CreateTrigger()
	call TriggerRegisterPlayerChatEvent(Sh,Player(0),"up",false)
	call TriggerAddCondition(Sh,Condition(function GameNanDu_Condition))
	call TriggerAddAction(Sh,function GameNanDu)
	// 玩家英雄阵亡
	set Th=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Th,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Th,Condition(function Ex))
	call TriggerAddAction(Th,function PlayerDeath)
	// 玩家英雄复活
	set Uh=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Uh,udg_revivetimer[1])
	call TriggerAddAction(Uh,function PlayerReviveA)
	set Vh=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Vh,udg_revivetimer[2])
	call TriggerAddAction(Vh,function PlayerReviveB)
	set Wh=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Wh,udg_revivetimer[3])
	call TriggerAddAction(Wh,function PlayerReviveC)
	set Xh=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Xh,udg_revivetimer[4])
	call TriggerAddAction(Xh,function PlayerReviveD)
	set Yh=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(Yh,udg_revivetimer[5])
	call TriggerAddAction(Yh,function PlayerReviveE)
	// 生成F9信息
	set Zh=CreateTrigger()
	call TriggerRegisterTimerEventSingle(Zh,5)
	call TriggerAddAction(Zh,function Qx)
	// 玩家离开游戏
	set fi=CreateTrigger()
	call TriggerRegisterPlayerEventLeave(fi,Player(0))
	call TriggerRegisterPlayerEventLeave(fi,Player(1))
	call TriggerRegisterPlayerEventLeave(fi,Player(2))
	call TriggerRegisterPlayerEventLeave(fi,Player(3))
	call TriggerRegisterPlayerEventLeave(fi,Player(4))
	call TriggerAddAction(fi,function PlayerLeave)
	// 杀进攻怪及练功房怪
	set gi=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(gi,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(gi,Condition(function ey))
	call TriggerAddAction(gi,function KillGuai)
	// 击杀最终BOSS游戏胜利
	set hi=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(hi,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(hi,Condition(function hy))
	call TriggerAddAction(hi,function Victory)
	// 老家灭了游戏失败
	set ii=CreateTrigger()
	call TriggerRegisterUnitEvent(ii,udg_ZhengPaiWL,EVENT_UNIT_DEATH)
	call TriggerAddAction(ii,function Lose)
	// 购买老家无敌
	set ji=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ji,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(ji,Condition(function BuyJiDiWuDi))
	call TriggerAddAction(ji,function JiDiWuDi)
	// 首次显示系统窗口信息
	set ki=CreateTrigger()
	call TriggerRegisterTimerEventSingle(ki,10.)
	call TriggerAddAction(ki,function SystemWindow)
	// 刷新系统窗口信息
	set mi=CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(mi,4.)
	call TriggerAddAction(mi,function uuyy)
	// 计算玩家最大伤害
	set ni=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger(ni)
	call TriggerAddCondition(ni,Condition(function wy))
	call TriggerAddAction(ni,function SetMaxDamage)
	// 开启试玩模式
	set oi=CreateTrigger()
	call TriggerRegisterPlayerChatEvent(oi,Player(0),"sw",true)
	call TriggerAddCondition(oi,Condition(function BeforeAttack))
	call TriggerAddAction(oi,function SetShiWan)
	// 购买城防
	set pi=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(pi,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(pi,Condition(function BuyChengFang))
	call TriggerAddAction(pi,function ShengChengFang)
	// 购买高级城防
	set ri=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ri,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(ri,Condition(function BuyGaoChengFang))
	call TriggerAddAction(ri,function ShengGaoChengFang)
	// 积分换物品
	set si=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(si,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(si,Condition(function BuyKuanDong))
	call TriggerAddAction(si,function KuanDongHua)
	// 声望换物品
	set si=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(si,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(si,Condition(function BuyKuanDong_1))
	call TriggerAddAction(si,function KuanDongHua_1)
	// FIXME 使用武学精要（目前有BUG）
	set si=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(si,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(si,Condition(function IsWuXueJingYao))
	call TriggerAddAction(si,function WuXueJingYao)
	
	//将地图上初始所有单位加入单位组
	set Vi=CreateTrigger()
	call TriggerRegisterTimerEventSingle(Vi,2.)
	call TriggerAddAction(Vi,function cA)
	//怪物死后重新刷怪
	set Wi=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(Wi,Player(12),EVENT_PLAYER_UNIT_DEATH)
	call TriggerRegisterPlayerUnitEventSimple(Wi,Player(15),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddAction(Wi,function EA)
	//刷进攻怪
	set Xi=CreateTrigger()
	call TriggerAddCondition(Xi,Condition(function GA))
	call TriggerAddAction(Xi,function HA)
	//刷正面的进攻怪
	set Yi=CreateTrigger()
	call DisableTrigger(Yi)
	call TriggerRegisterTimerEventPeriodic(Yi,3.)
	call TriggerAddAction(Yi,function lA)
	//刷背面的进攻怪
	set Zi=CreateTrigger()
	call DisableTrigger(Zi)
	call TriggerRegisterTimerEventPeriodic(Zi,2.)
	call TriggerAddAction(Zi,function KA)
	// 刷名门
	set dj=CreateTrigger()
	call TriggerAddCondition(dj,Condition(function MA))
	call TriggerAddAction(dj,function NA)
	// 时间到刷怪
	set ej=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(ej,A7[1])
	call TriggerAddAction(ej,function PA)
	set fj=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(fj,A7[2])
	call TriggerAddAction(fj,function RA)
	set gj=CreateTrigger()
	call TriggerRegisterTimerExpireEvent(gj,A7[3])
	call TriggerAddAction(gj,function TA)
	set hj=CreateTrigger()
	call TriggerAddAction(hj,function VA)
	set ij=CreateTrigger()
	call TriggerAddAction(ij,function XA)
	// 停怪
	set jj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(jj,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(jj,Condition(function ZA))
	call TriggerAddAction(jj,function ea)
	// 将死亡单位从单位组移除
	set mj=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(mj,Player(6),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(mj,Condition(function ja))
	call TriggerAddAction(mj,function ka)
	// 练功房刷怪
	set nj=CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(nj,6.)
	call TriggerAddAction(nj,function qa)
	// 进入练功房
	set oj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(oj,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(oj,Condition(function sa))
	call TriggerAddAction(oj,function ua)
	// 进入练功房
	set pj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(pj,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(pj,Condition(function wa))
	call TriggerAddAction(pj,function xa)
	// 进入练功房
	set qj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(qj,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(qj,Condition(function za))
	call TriggerAddAction(qj,function Aa)
	// 切换背包
	set rj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(rj,EVENT_PLAYER_UNIT_SPELL_CAST)
	call TriggerAddCondition(rj,Condition(function Ba))
	call TriggerAddAction(rj,function ba)
	// 鸟的贩卖技能
	set sj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(sj,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(sj,Condition(function ca))
	call TriggerAddAction(sj,function Da)
	// 轻功系统
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function Trig_ttConditions))
	call TriggerAddAction(t,function Trig_ttActions)
	// 切换物品
	set tj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(tj,EVENT_PLAYER_UNIT_SPELL_CAST)
	call TriggerAddCondition(tj,Condition(function IsQieHuanItem))
	call TriggerAddAction(tj,function QieHuanItem)

	// 英雄达到某等级
	set vj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(vj,EVENT_PLAYER_HERO_LEVEL)
	call TriggerAddCondition(vj,Condition(function Ja))
	call TriggerAddAction(vj,function HeroLevel)
	// 杀怪回血
	set wj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(wj,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(wj,Condition(function Ma))
	call TriggerAddAction(wj,function KillGuaiJiaXie)
	// 每秒回血回蓝
	set xj=CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(xj,1.)
	call TriggerAddAction(xj,function YiShuHuiXie)
	// 攻击回复（伤害回复）
	set yj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(yj,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(yj,Condition(function Ra))
	call TriggerAddAction(yj,function Sa)
	// 伤害吸收
	set zj=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger(zj)
	call TriggerAddCondition(zj,Condition(function Ua))
	call TriggerAddAction(zj,function Va)
	// 杀怪加声望
	set Aj=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(Aj,Player(6),EVENT_PLAYER_UNIT_DEATH)
	call TriggerRegisterPlayerUnitEventSimple(Aj,Player(7),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Aj,Condition(function Xa))
	call TriggerAddAction(Aj,function Ya)
	set aj=CreateTrigger()
	call TriggerRegisterPlayerUnitEventSimple(aj,Player(12),EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(aj,Condition(function dB))
	call TriggerAddAction(aj,function eB)
	// 遗忘武功
	set Bj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bj,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(Bj,Condition(function YiWangJiNeng))
	call TriggerAddAction(Bj,function ForgetAbility)
	// 为合成的物品补属性
	set t=CreateTrigger()
	call YDWESyStemItemCombineRegistTrigger( t )
    call TriggerAddAction(t, function WuPinHeCheng)
	// 选择遗忘的武功
	set bj=CreateTrigger()
	call TriggerRegisterDialogEvent(bj,K7[1])
	call TriggerRegisterDialogEvent(bj,K7[2])
	call TriggerRegisterDialogEvent(bj,K7[3])
	call TriggerRegisterDialogEvent(bj,K7[4])
	call TriggerRegisterDialogEvent(bj,K7[5])
	call TriggerAddAction(bj,function jB)
	// 传送至桃花岛
	set Cj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Cj,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(Cj,Condition(function mB))
	call TriggerAddAction(Cj,function nB)
	// 学习武功
	set cj=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(cj,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(cj,Condition(function IsWuGongBook))
	call TriggerAddAction(cj,function BookLearnWuGong)
	// 初始化内功加成
	set fk=CreateTrigger()
	call TriggerRegisterTimerEventSingle(fk,0.1)
	call TriggerAddAction(fk,function NeiGongJiaChengS)
	set pk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(pk,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(pk,Condition(function uC))
	call TriggerAddAction(pk,function vC)
	set qk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(qk,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(qk,Condition(function xC))
	call TriggerAddAction(qk,function yC)
	set rk=CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(rk,1.)
	call TriggerAddAction(rk,function BC)
	set sk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(sk,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(sk,Condition(function CC))
	call TriggerAddAction(sk,function cC)
	set tk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(tk,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(tk,Condition(function EC))
	call TriggerAddAction(tk,function FC)
	set uk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(uk,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(uk,Condition(function HC))
	call TriggerAddAction(uk,function IC)
	set vk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(vk,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(vk,Condition(function JC))
	call TriggerAddAction(vk,function KC)
	set wk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(wk,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(wk,Condition(function MC))
	call TriggerAddAction(wk,function NC)
	set xk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(xk,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(xk,Condition(function PC))
	call TriggerAddAction(xk,function QC)
	set yk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(yk,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(yk,Condition(function SC))
	call TriggerAddAction(yk,function TC)
	set zk=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(zk,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(zk,Condition(function VC))
	call TriggerAddAction(zk,function WC)
	set Ak=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Ak,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(Ak,Condition(function YC))
	call TriggerAddAction(Ak,function ZC)
	set ak=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ak,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(ak,Condition(function ec))
	call TriggerAddAction(ak,function gc)
	set ak=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ak,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(ak,Condition(function isJiuYangCanJuan))
	call TriggerAddAction(ak,function jiuYangCanJuan)
	set ak=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ak,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(ak,Condition(function IsWuHunShi))
	call TriggerAddAction(ak,function WuHunShi)
	set Bk=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger( Bk )
	call TriggerAddCondition(Bk,Condition(function IsUnitBoss))
	call TriggerAddAction(Bk,function BossFangJiNeng)
	// 预约名门和取消预约
	set Gs=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Gs,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Gs,Condition(function qT))
	call TriggerAddAction(Gs,function rT)
	// 攻破城门
	set Ks=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Ks,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Ks,Condition(function cT))
	call TriggerAddAction(Ks,function DT)
	// 爆炸
	set Ht=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Ht,EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(Ht,Condition(function FT))
	call TriggerAddAction(Ht,function IT)
	// 流星
	set It=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(It,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(It,Condition(function JT))
	call TriggerAddAction(It,function KT)
	// 冰缓
	set Jt=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Jt,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(Jt,Condition(function MT))
	call TriggerAddAction(Jt,function NT)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t,Condition(function IsYiZhan))
	call TriggerAddAction(t,function YiZhanChuanSong)
	//抽血术
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function ChouXie_Condition))
	call TriggerAddAction(t,function ChouXie_Action)
	// 初始化伴侣属性
	set uq=CreateTrigger()
	call TriggerRegisterTimerEventSingle(uq,.2)
	call TriggerAddAction(uq,function LO)
	// 结成伴侣
	set vq=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(vq,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(vq,Condition(function NO))
	call TriggerAddAction(vq,function OO)
	// 整理物品
	set xq=CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(xq,400.)
	call TriggerAddAction(xq,function TO)
	
	// 吃经验符
	set kr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(kr,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(kr,Condition(function oQ))
	call TriggerAddAction(kr,function pQ)
	// 购买等级
	set mr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(mr,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(mr,Condition(function rQ))
	call TriggerAddAction(mr,function sQ)
	// 新手大礼包
	set nr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(nr,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(nr,Condition(function uQ))
	call TriggerAddAction(nr,function vQ)
	// 装备打孔
	set pr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(pr,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(pr,Condition(function xQ))
	call TriggerAddAction(pr,function yQ)
	// 加入副职
	set qr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(qr,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(qr,Condition(function AQ))
	call TriggerAddAction(qr,function aQ)
	// 传送到钟南山
	set tr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(tr,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(tr,Condition(function GQ))
	call TriggerAddAction(tr,function HQ)
	// 传送到少林寺后山（25级）
	set ur=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ur,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(ur,Condition(function lQ))
	call TriggerAddAction(ur,function JQ)
	// 传送到塞外
	set vr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(vr,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(vr,Condition(function LQ))
	call TriggerAddAction(vr,function MQ)
	// 传送到光明顶
	set wr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(wr,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(wr,Condition(function OQ))
	call TriggerAddAction(wr,function PQ)
	// 传送到少林寺后山（70级）
	set xr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(xr,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(xr,Condition(function RQ))
	call TriggerAddAction(xr,function SQ)
	// 传送到边疆
	set yr=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(yr,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(yr,Condition(function UQ))
	call TriggerAddAction(yr,function VQ)
	// 学习门派内功
	set br=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(br,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(br,Condition(function pR))
	call TriggerAddAction(br,function qR)
	// 学习慕容派内功
	set br=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(br,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(br,Condition(function IsMuRongNeiGong))
	call TriggerAddAction(br,function MuRongNeiGong)
	
	// 初始化古董价格区间
	set rs=CreateTrigger()
	call TriggerRegisterTimerEventSingle(rs,.5)
	call TriggerAddAction(rs,function s5)
	// 古董价格变动
	set ss=CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(ss,200.)
	call TriggerAddAction(ss,function u5)
	// 查询古董价格
	set ts=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ts,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(ts,Condition(function w5))
	call TriggerAddAction(ts,function x5)
	// 卖古董
	set us=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(us,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(us,Condition(function z5))
	call TriggerAddAction(us,function A5)
	set vs=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(vs,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(vs,Condition(function B5))
	call TriggerAddAction(vs,function b5)
	// 收集古董
	set vs=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(vs,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(vs,Condition(function CollectGuDong_Conditions))
	call TriggerAddAction(vs,function CollectGuDong_Actions)
	// 进入剑意系统
	set ws=CreateTrigger()
	call TriggerAddRect(ws,Sg)
	call TriggerAddCondition(ws,Condition(function c5))
	call TriggerAddAction(ws,function D5)
	// 合成物品
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_PICKUP_ITEM )
	call TriggerAddCondition(t, Condition(function HeCheng_Conditions))
	call TriggerAddAction(t, function HeCheng_Actions)
	
	
	// 达到第几层修为
	set xs=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(xs,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(xs,Condition(function F5))
	call TriggerAddAction(xs,function G5)
	set ys=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(ys,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(ys,Condition(function I5))
	call TriggerAddAction(ys,function l5)
	set zs=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(zs,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(zs,Condition(function K5))
	call TriggerAddAction(zs,function L5)
	set As=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(As,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(As,Condition(function N5))
	call TriggerAddAction(As,function O5)
	set as=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(as,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(as,Condition(function Q5))
	call TriggerAddAction(as,function R5)
	// 领悟剑意
	set Bs=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Bs,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(Bs,Condition(function LingWuJY_Conditions))
	call TriggerAddAction(Bs,function LingWuJY)
	// 选择转化剑意
	set Cs=CreateTrigger()
	call TriggerRegisterDialogEvent(Cs,v8[1])
	call TriggerRegisterDialogEvent(Cs,v8[2])
	call TriggerRegisterDialogEvent(Cs,v8[3])
	call TriggerRegisterDialogEvent(Cs,v8[4])
	call TriggerRegisterDialogEvent(Cs,v8[5])
	call TriggerAddCondition(Cs,Condition(function ZhuanHuaJY_Conditions))
	call TriggerAddAction(Cs,function ZhuanHuaJY)
	// 买黄纸
	set cs=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(cs,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(cs,Condition(function MaiHuangZhi_Conditions))
	call TriggerAddAction(cs,function MaiHuangZhi)
	// 烧黄纸
	set Ds=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(Ds,EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(Ds,Condition(function IsHuangZhi))
	call TriggerAddAction(Ds,function ShaoHuangZhi)
	// 跳到结拜兄弟/夫妻处
	set Es=CreateTrigger()
	call TriggerRegisterPlayerChatEvent(Es,Player(0),"~",true)
	call TriggerRegisterPlayerChatEvent(Es,Player(1),"~",true)
	call TriggerRegisterPlayerChatEvent(Es,Player(2),"~",true)
	call TriggerRegisterPlayerChatEvent(Es,Player(3),"~",true)
	call TriggerRegisterPlayerChatEvent(Es,Player(4),"~",true)
	call TriggerRegisterPlayerChatEvent(Es,Player(5),"~",true)
	call TriggerAddCondition(Es,Condition(function kT))
	call TriggerAddAction(Es,function mT)
	set t=CreateTrigger()
	call TriggerRegisterDialogEvent(t,udg_index)
	call TriggerAddAction(t,function ChooseMoShi_Action)
	set t=CreateTrigger()
	call TriggerRegisterDialogEvent(t,wuhun)
	call TriggerAddAction(t,function JiHuoCanZhang)
	set t=CreateTrigger()
	call TriggerRegisterDialogEvent(t,udg_nan)
	call TriggerAddAction(t,function ChooseNanDu_Action)
	set t=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger( t )
	call TriggerAddCondition(t,Condition(function IsJiDiBaoHu))
	call TriggerAddAction(t,function JiDiBaoHu)
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_ATTACKED )
	call TriggerAddCondition(t, Condition(function Trig_YunDaXianShenConditions))
	call TriggerAddAction(t, function Trig_YunDaXianShenActions)
	
	set t=CreateTrigger()
	call TriggerRegisterUnitEvent(t,udg_ZhengPaiWL,EVENT_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function JiDiAiDa_Conditions))
	call TriggerAddAction(t,function JiDiAiDa_Actions)
	set t=CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(t,1000.00)
	call TriggerAddAction(t,function MoJiaoJiuRen)
	set t = null
endfunction

