
//===========================================================
//决战江湖1.6之圣兽来了
//===========================================================

globals
	unit udg_qinglong=null
	unit udg_baihu=null
	unit udg_xuanwu=null
	unit udg_zhuque=null
	boolean udg_ql=false
	boolean udg_bh=false
	boolean udg_xw=false
	boolean udg_zq=false
	boolean udg_qlover=false
	boolean udg_bhover=false
	boolean udg_xwover=false
	boolean udg_zqover=false
	boolean array udg_loadql
endglobals

function qinglongjie_condition takes nothing returns boolean
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	if udg_qlover==true   then
	return false
	endif
	if udg_ql==true or IsUnitType(u,UNIT_TYPE_HERO)==false then
	call DisplayTextToPlayer(p,0,0,"|cFFFF0000青龙圣兽正在安睡")
	set u=null
	set p=null
	return false
	endif
	set u=null
	set p=null
	return true
endfunction
function qinglongjie takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	if fuyuan[i]<30 or GetRandomInt(1,3)!=1 then
	set udg_ql=true
	call DisplayTextToPlayer(p,0,0,"|cFFFF0000汝等凡夫俗子与圣兽无缘")
	call YDWEPolledWaitNull(2.00)
	set udg_ql=false
	elseif fuyuan[i]>=40 and GetRandomInt(1,5)==1 then
	call DisplayTextToPlayer(p,0,0,"|cFFFF0000少侠为有缘人，青龙圣兽愿助尔一臂之力")
	call UnitRemoveAbility(udg_qinglong,'Avul')
	call SetUnitOwner(udg_qinglong,p,true)
	call ShowUnitShow(udg_qinglong)
	set udg_qlover=true
	else
	call DisplayTextToPlayer(p,0,0,"|cFFFF0000青龙圣兽现世，你能打败它吗？")
	call UnitRemoveAbility(udg_qinglong,'Avul')
	call SetUnitOwner(udg_qinglong,Player(12),true)
	call ShowUnitShow(udg_qinglong)
	set udg_qlover=true
	endif
	set u=null
	set p=null
endfunction
function baihujie_condition takes nothing returns boolean
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	if udg_bhover==true   then
	return false
	endif
	if udg_bh==true or IsUnitType(u,UNIT_TYPE_HERO)==false then
	call DisplayTextToPlayer(p,0,0,"|cFFFF0000白虎圣兽正在安睡")
	set u=null
	set p=null
	return false
	endif
	set u=null
	set p=null
	return true
endfunction
function baihujie takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	if fuyuan[i]<20 or GetRandomInt(1,3)!=1 then
	set udg_bh=true
	call DisplayTextToPlayer(p,0,0,"|cFFFF0000汝等凡夫俗子与圣兽无缘")
	call YDWEPolledWaitNull(2.00)
	set udg_bh=false
	elseif fuyuan[i]>=30 and GetRandomInt(1,5)==1 then
	call DisplayTextToPlayer(p,0,0,"|cFFFF0000少侠为有缘人，白虎圣兽愿助尔一臂之力")
	call UnitRemoveAbility(udg_baihu,'Avul')
	call SetUnitOwner(udg_baihu,p,true)
	call ShowUnitShow(udg_baihu)
	set udg_bhover=true
	else
	call DisplayTextToPlayer(p,0,0,"|cFFFF0000白虎圣兽现世，你能打败它吗？")
	call UnitRemoveAbility(udg_baihu,'Avul')
	call SetUnitOwner(udg_baihu,Player(12),true)
	call ShowUnitShow(udg_baihu)
	set udg_bhover=true
	endif
	set u=null
	set p=null
endfunction
function xuanwujie_condition takes nothing returns boolean
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	if udg_xwover==true   then
	return false
	endif
	if udg_xw==true or IsUnitType(u,UNIT_TYPE_HERO)==false then
	call DisplayTextToPlayer(p,0,0,"|cFFFF0000玄武圣兽正在安睡")
	set u=null
	set p=null
	return false
	endif
	set u=null
	set p=null
	return true
endfunction
function xuanwujie takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	if fuyuan[i]<15 or GetRandomInt(1,3)!=1 then
	set udg_xw=true
	call DisplayTextToPlayer(p,0,0,"|cFFFF0000汝等凡夫俗子与圣兽无缘")
	call YDWEPolledWaitNull(2.00)
	set udg_xw=false
	elseif fuyuan[i]>=25 and GetRandomInt(1,5)==1 then
	call DisplayTextToPlayer(p,0,0,"|cFFFF0000少侠为有缘人，玄武圣兽愿助尔一臂之力")
	call UnitRemoveAbility(udg_xuanwu,'Avul')
	call SetUnitOwner(udg_xuanwu,p,true)
	call ShowUnitShow(udg_xuanwu)
	set udg_xwover=true
	else
	call DisplayTextToPlayer(p,0,0,"|cFFFF0000玄武圣兽现世，你能打败它吗？")
	call UnitRemoveAbility(udg_xuanwu,'Avul')
	call SetUnitOwner(udg_xuanwu,Player(12),true)
	call ShowUnitShow(udg_xuanwu)
	set udg_xwover=true
	endif
	set u=null
	set p=null
endfunction
function zhuquejie_condition takes nothing returns boolean
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	if udg_zqover==true   then
	return false
	endif
	if udg_zq==true or IsUnitType(u,UNIT_TYPE_HERO)==false then
	call DisplayTextToPlayer(p,0,0,"|cFFFF0000朱雀圣兽正在安睡")
	set u=null
	set p=null
	return false
	endif
	set u=null
	set p=null
	return true
endfunction
function zhuquejie takes nothing returns nothing
	local unit u=GetTriggerUnit()
	local player p=GetOwningPlayer(u)
	local integer i=1+GetPlayerId(p)
	if fuyuan[i]<25 or GetRandomInt(1,3)!=1 then
	set udg_zq=true
	call DisplayTextToPlayer(p,0,0,"|cFFFF0000汝等凡夫俗子与圣兽无缘")
	call YDWEPolledWaitNull(2.00)
	set udg_zq=false
	elseif fuyuan[i]>=35 and GetRandomInt(1,5)==1 then
	call DisplayTextToPlayer(p,0,0,"|cFFFF0000少侠为有缘人，朱雀圣兽愿助尔一臂之力")
	call UnitRemoveAbility(udg_zhuque,'Avul')
	call SetUnitOwner(udg_zhuque,p,true)
	call ShowUnitShow(udg_zhuque)
	set udg_zqover=true
	else
	call DisplayTextToPlayer(p,0,0,"|cFFFF0000朱雀圣兽现世，你能打败它吗？")
	call UnitRemoveAbility(udg_zhuque,'Avul')
	call SetUnitOwner(udg_zhuque,Player(12),true)
	call ShowUnitShow(udg_zhuque)
	set udg_zqover=true
	endif
	set u=null
	set p=null
endfunction
function IsMonsterAttack takes nothing returns boolean
	return IsUnitEnemy(GetAttackedUnitBJ(), GetOwningPlayer(GetAttacker())) and IsUnitType(GetAttackedUnitBJ(), UNIT_TYPE_STRUCTURE) == false
endfunction
function MonsterAttack takes nothing returns nothing
	local unit u = GetAttacker()
	local location loc = GetUnitLoc(u)
	//龙之分身：每次攻击有20%概率创造一个分身，持续5秒，分身可继承分身。
	if GetRandomInt(1, 100) <= 20 and GetUnitAbilityLevel(u, 'S004')!=0 and u == udg_qinglong then
		call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(u),loc,bj_UNIT_FACING)
		call ShowUnitHide(bj_lastCreatedUnit)
		call UnitAddAbility(bj_lastCreatedUnit,'A05C')
		call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',3.)
		call IssueTargetOrderById(bj_lastCreatedUnit,$D0132,u)
		call CreateTextTagLocBJ("龙之分身",loc,0,14.,90.,21.,15.,.0)
		call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,(GetRandomReal(80.,100.)))
		call Nw(4.,bj_lastCreatedTextTag)
	endif
	//圣兽之击：1%概率击杀攻击者
	if GetRandomInt(1, 100) == 1 and GetUnitAbilityLevel(GetAttacker(), 'A04E')!=0 then
		call KillUnit(GetAttackedUnitBJ())
		call CreateTextTagLocBJ("圣兽之击",loc,0,14.,90.,21.,15.,.0)
		call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,(GetRandomReal(80.,100.)))
		call Nw(4.,bj_lastCreatedTextTag)
	endif
endfunction
//青龙逆鳞：血量低于50%后攻速加快
//@id 'A05D' 加速手套：1级攻速0%，逐级递增50%
function QingLongNiLin takes nothing returns nothing
	if GetUnitLifePercent(udg_qinglong) <= 50.0 then
		call SetUnitAbilityLevel(udg_qinglong, 'A05D', 70-R2I(GetUnitLifePercent(udg_qinglong))/10)
	else
		call SetUnitAbilityLevel(udg_qinglong, 'A05D', 1)
	endif
endfunction
//挑战四圣兽团队副本
function IsTiaoZhanSiShengShou takes nothing returns boolean
	return  IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO) and xiuxing[1+GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]>=6 and (GetItemTypeId(GetManipulatedItem())=='I0CL' or GetItemTypeId(GetManipulatedItem())=='I0CM' or GetItemTypeId(GetManipulatedItem())=='I0CN' or GetItemTypeId(GetManipulatedItem())=='I0CO')
endfunction
//挑战四圣是否成功
function IsSiShengChallengeSuccess takes nothing returns boolean
	local timer t = LoadTimerHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0)
	local timerdialog tmd = LoadTimerDialogHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 1)
	local unit u = LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 2)
	local string name = LoadStr(YDHT, GetHandleId(GetTriggeringTrigger()), 3)
	local location loc = GetUnitLoc(u)
	if (YDWEIsTriggerEventId(EVENT_PLAYER_UNIT_DEATH) == false) then
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFFF00玩家在十分钟之内挑战"+name+"圣兽失败，"+name+"圣兽将进攻基地")
		call SetUnitPositionLocFacingLocBJ(u, v7[GetRandomInt(5, 7)], v7[4])
		call SetUnitOwner(u, Player(6), true)
		call SetUnitLifePercentBJ(u, 100.)
        call GroupAddUnit(w7,u)
        call IssuePointOrderByIdLoc(u,$D000F,v7[4])
        call PauseTimer(t)
		call DestroyTimer(t)
		call DestroyTimerDialog(tmd)
		call DestroyTrigger(GetTriggeringTrigger())
	else
		if (GetTriggerUnit() == u) then
			call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFFF00恭喜成功打败"+name+"圣兽！！")
			call CreateItemLoc('I0CP', loc)
			//call CreateItemLoc('I0CQ', loc)
			if GetRandomInt(1, 100)<=20 then
				call CreateItemLoc('I0CQ', loc)
			endif
			call PauseTimer(t)
			call DestroyTimer(t)
			call DestroyTimerDialog(tmd)
			call DestroyTrigger(GetTriggeringTrigger())
		endif
	endif
	call RemoveLocation(loc)
	set loc = null
	set t = null
	return false
endfunction
function ChallengeSiSheng takes integer item_id, integer unit_id, string unit_name, item it returns nothing
	local location loc = Location(1000, -10750)
	local integer j = 0
	local trigger t = CreateTrigger()
    local timer tm = CreateTimer()
    local timerdialog tmd = CreateTimerDialog(tm)
	if GetItemTypeId(it)==item_id  then
		call CreateNUnitsAtLoc(1,unit_id,Player(12),loc,bj_UNIT_FACING)
		call SaveUnitHandle(YDHT, GetHandleId(t), 2, bj_lastCreatedUnit)
		call SaveStr(YDHT, GetHandleId(t), 3, unit_name)

		set x7 = x7 + 10//停怪10分钟
		call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFFF00有玩家作死挑战"+unit_name+"圣兽，下波怪进攻前将停怪10分钟，请在10分钟内杀死"+unit_name+"圣兽，否则10分钟后它将进攻基地！！！")
		if unit_id == 'o01D' then
			set udg_qinglong = bj_lastCreatedUnit
		elseif unit_id == 'o01E' then
			set udg_baihu = bj_lastCreatedUnit
		elseif unit_id == 'o01F' then
			set udg_xuanwu = bj_lastCreatedUnit
		elseif unit_id == 'o01G' then
			set udg_zhuque = bj_lastCreatedUnit
		endif
		//集体传送过去
		set j = 1
		loop
			exitwhen j > GetNumPlayer()
			call SetUnitPosition(udg_hero[j],2000,-10750)
			call PanCameraToTimedForPlayer(Player(j-1),2000,-10750,0)
			set j = j + 1
		endloop
		call StartTimerBJ(tm, false, 600)
		call TimerDialogDisplay(tmd, true)
		call SaveTimerHandle(YDHT, GetHandleId(t), 0, tm)
		call SaveTimerDialogHandle(YDHT, GetHandleId(t), 1, tmd)
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
		call TriggerRegisterTimerExpireEvent(t, tm)
		call TriggerAddCondition(t, Condition(function IsSiShengChallengeSuccess))
	endif
	call RemoveLocation(loc)
    set loc=null
    set t = null
    set tmd = null
    set tm = null
endfunction
function TiaoZhanSiShengShou takes nothing returns nothing
    local unit u=GetTriggerUnit()
    local player p=GetOwningPlayer(u)
    local integer i=1+GetPlayerId(p)


    if GetNumPlayer() < 2 then
    //if GetNumPlayer() < 2 then
	    call DisplayTimedTextToPlayer(p,0,0,15,"|cFFFFFF00游戏人数不少于2人方可使用团队副本")
	    call AdjustPlayerStateBJ(50000,p,PLAYER_STATE_RESOURCE_GOLD)
	else
		call ChallengeSiSheng('I0CN', 'o01D', "青龙", GetManipulatedItem())
		call ChallengeSiSheng('I0CM', 'o01E', "白虎", GetManipulatedItem())
		call ChallengeSiSheng('I0CO', 'o01F', "玄武", GetManipulatedItem())
		call ChallengeSiSheng('I0CL', 'o01G', "朱雀", GetManipulatedItem())
    endif

    set u=null
    set p=null

endfunction
//捡起青龙之戒
function IsPickUpQingLong takes nothing returns boolean
	return GetItemTypeId(GetManipulatedItem()) == 'I0CQ' and (UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))
endfunction
function PickUpQingLong takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	local item it = GetManipulatedItem()
	loop
		exitwhen E8>6
		if (GetItemTypeId(UnitItemInSlotBJ(u,E8))==GetItemTypeId(GetManipulatedItem()))and(UnitItemInSlotBJ(u,E8)!=GetManipulatedItem()) then
			call UnitRemoveItemSwapped(UnitItemInSlotBJ(u,E8),u)
			call DisplayTimedTextToPlayer(p,0,0,30,"|cffff0000只能携带一个青龙之戒")
		endif
		set E8=E8+1
	endloop
	call ModifyHeroStat(0,u,0,LoadInteger(YDHT,GetHandleId(it),StringHash("招式伤害")))
	call ModifyHeroStat(1,u,0,LoadInteger(YDHT,GetHandleId(it),StringHash("内力")))
	call ModifyHeroStat(2,u,0,LoadInteger(YDHT,GetHandleId(it),StringHash("真实伤害")))
	set gengu[i] = gengu[i] + LoadInteger(YDHT,GetHandleId(it),StringHash("根骨"))
	set wuxing[i] = wuxing[i] + LoadInteger(YDHT,GetHandleId(it),StringHash("悟性"))
	set jingmai[i] = jingmai[i] + LoadInteger(YDHT,GetHandleId(it),StringHash("经脉"))
	set fuyuan[i] = fuyuan[i] + LoadInteger(YDHT,GetHandleId(it),StringHash("福缘"))
	set danpo[i] = danpo[i] + LoadInteger(YDHT,GetHandleId(it),StringHash("胆魄"))
	set yishu[i] = yishu[i] + LoadInteger(YDHT,GetHandleId(it),StringHash("医术"))
	set udg_baojishanghai[i] = udg_baojishanghai[i] + I2R(LoadInteger(YDHT,GetHandleId(it),StringHash("暴击伤害")))/100.
	set juexuelingwu[i] = juexuelingwu[i] + LoadInteger(YDHT,GetHandleId(it),StringHash("绝学领悟"))
	set u = null
	set p = null
	set it = null
endfunction
//扔下青龙之戒
function IsDropQingLong takes nothing returns boolean
	return GetItemTypeId(GetManipulatedItem()) == 'I0CQ' and (UnitTypeNotNull(GetTriggerUnit(),UNIT_TYPE_HERO))
endfunction
function DropQingLong takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1+GetPlayerId(p)
	local item it = GetManipulatedItem()
	call ModifyHeroStat(0,u,1,LoadInteger(YDHT,GetHandleId(it),StringHash("招式伤害")))
	call ModifyHeroStat(1,u,1,LoadInteger(YDHT,GetHandleId(it),StringHash("内力")))
	call ModifyHeroStat(2,u,1,LoadInteger(YDHT,GetHandleId(it),StringHash("真实伤害")))
	set gengu[i] = gengu[i] - LoadInteger(YDHT,GetHandleId(it),StringHash("根骨"))
	set wuxing[i] = wuxing[i] - LoadInteger(YDHT,GetHandleId(it),StringHash("悟性"))
	set jingmai[i] = jingmai[i] - LoadInteger(YDHT,GetHandleId(it),StringHash("经脉"))
	set fuyuan[i] = fuyuan[i] - LoadInteger(YDHT,GetHandleId(it),StringHash("福缘"))
	set danpo[i] = danpo[i] - LoadInteger(YDHT,GetHandleId(it),StringHash("胆魄"))
	set yishu[i] = yishu[i] - LoadInteger(YDHT,GetHandleId(it),StringHash("医术"))
	set udg_baojishanghai[i] = udg_baojishanghai[i] - I2R(LoadInteger(YDHT,GetHandleId(it),StringHash("暴击伤害")))/100.
	set juexuelingwu[i] = juexuelingwu[i] - LoadInteger(YDHT,GetHandleId(it),StringHash("绝学领悟"))
	set u = null
	set p = null
	set it = null
endfunction
//青龙戒成长
function IsQingLongGrowup takes nothing returns boolean
	return UnitHaveItem(GetKillingUnit(), 'I0CQ')
endfunction
function QingLongGrowup takes nothing returns nothing
	local unit u = GetKillingUnit()
	local item it = FetchUnitItem(u,'I0CQ')
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	local integer j = 0
	call SaveInteger(YDHT, GetHandleId(it), StringHash("杀人数"), LoadInteger(YDHT, GetHandleId(it), StringHash("杀人数"))+1)
	if LoadInteger(YDHT, GetHandleId(it), StringHash("杀人数")) >= 10000 then
		call SaveInteger(YDHT, GetHandleId(it), StringHash("杀人数"), 0)
		if GetRandomInt(1,11)==1 then
			set j = GetRandomInt(1, 2)
	        set wuxing[i]=wuxing[i]+j
	        call DisplayTextToPlayer(p,0,0,"|cff00ff00青龙之戒获得属性成长：悟性+"+I2S(j))
	        call SaveInteger(YDHT, GetHandleId(it), StringHash("悟性"), LoadInteger(YDHT, GetHandleId(it), StringHash("悟性"))+j)
	    elseif GetRandomInt(1,10)==1 then
	        set j = GetRandomInt(1, 2)
	        set gengu[i]=gengu[i]+j
	        call DisplayTextToPlayer(p,0,0,"|cff00ff00青龙之戒获得属性成长：根骨+"+I2S(j))
	        call SaveInteger(YDHT, GetHandleId(it), StringHash("根骨"), LoadInteger(YDHT, GetHandleId(it), StringHash("根骨"))+j)
	    elseif GetRandomInt(1,9)==1 then
	        set j = GetRandomInt(1, 2)
	        set danpo[i]=danpo[i]+j
	        call DisplayTextToPlayer(p,0,0,"|cff00ff00青龙之戒获得属性成长：胆魄+"+I2S(j))
	        call SaveInteger(YDHT, GetHandleId(it), StringHash("胆魄"), LoadInteger(YDHT, GetHandleId(it), StringHash("胆魄"))+j)
	    elseif GetRandomInt(1,8)==1 then
	        set j = GetRandomInt(1, 2)
	        set yishu[i]=yishu[i]+j
	        call DisplayTextToPlayer(p,0,0,"|cff00ff00青龙之戒获得属性成长：医术+"+I2S(j))
	        call SaveInteger(YDHT, GetHandleId(it), StringHash("医术"), LoadInteger(YDHT, GetHandleId(it), StringHash("医术"))+j)
	    elseif GetRandomInt(1,7)==1 then
	        set j = GetRandomInt(1, 2)
	        set jingmai[i]=jingmai[i]+j
	        call DisplayTextToPlayer(p,0,0,"|cff00ff00青龙之戒获得属性成长：经脉+"+I2S(j))
	        call SaveInteger(YDHT, GetHandleId(it), StringHash("经脉"), LoadInteger(YDHT, GetHandleId(it), StringHash("经脉"))+j)
	    elseif GetRandomInt(1,6)==1 then
	        set j = GetRandomInt(1, 2)
	        set fuyuan[i]=fuyuan[i]+j
	        call DisplayTextToPlayer(p,0,0,"|cff00ff00青龙之戒获得属性成长：福缘+"+I2S(j))
	        call SaveInteger(YDHT, GetHandleId(it), StringHash("福缘"), LoadInteger(YDHT, GetHandleId(it), StringHash("福缘"))+j)
	    elseif GetRandomInt(1,5)==1 then
	    	set j = GetRandomInt(1, 50)
	        call ModifyHeroStat(0,u,0,j)
	        call DisplayTextToPlayer(p,0,0,"|cff00ff00青龙之戒获得属性成长：招式伤害+"+I2S(j))
	        call SaveInteger(YDHT, GetHandleId(it), StringHash("招式伤害"), LoadInteger(YDHT, GetHandleId(it), StringHash("招式伤害"))+j)
	    elseif GetRandomInt(1,4)==1 then
	    	set j = GetRandomInt(1, 50)
	        call ModifyHeroStat(1,u,0,j)
	        call DisplayTextToPlayer(p,0,0,"|cff00ff00青龙之戒获得属性成长：内力+"+I2S(j))
	        call SaveInteger(YDHT, GetHandleId(it), StringHash("内力"), LoadInteger(YDHT, GetHandleId(it), StringHash("内力"))+j)
	    elseif GetRandomInt(1,3)==1 then
	    	set j = GetRandomInt(1, 50)
	        call ModifyHeroStat(2,u,0,j)
	        call DisplayTextToPlayer(p,0,0,"|cff00ff00青龙之戒获得属性成长：真实伤害+"+I2S(j))
	        call SaveInteger(YDHT, GetHandleId(it), StringHash("真实伤害"), LoadInteger(YDHT, GetHandleId(it), StringHash("真实伤害"))+j)
	    elseif GetRandomInt(1,2)==1 then
	    	set j = 1
	        set juexuelingwu[i] = juexuelingwu[i] + j
	        call DisplayTextToPlayer(p,0,0,"|cff00ff00青龙之戒获得属性成长：绝学领悟力+"+I2S(j))
	        call SaveInteger(YDHT, GetHandleId(it), StringHash("绝学领悟"), LoadInteger(YDHT, GetHandleId(it), StringHash("绝学领悟"))+j)
	    else
	    	set j =  GetRandomInt(1, 10)
	        set udg_baojishanghai[i] = udg_baojishanghai[i] + R2I(j)/100
	        call DisplayTextToPlayer(p,0,0,"|cff00ff00青龙之戒获得属性成长：暴击伤害+"+I2S(j)+"%")
	        call SaveInteger(YDHT, GetHandleId(it), StringHash("暴击伤害"), LoadInteger(YDHT, GetHandleId(it), StringHash("暴击伤害"))+j)
        endif
	endif
	set u = null
	set it = null
endfunction
function MonsterCome takes nothing returns nothing
	local trigger t=CreateTrigger()

	//set udg_qinglong=CreateUnit(Player(15),'o01D',920.,-10149.,276.63)
	//set udg_baihu=CreateUnit(Player(15),'o01E',1850.1,-10171.1,270.564)
	//set udg_xuanwu=CreateUnit(Player(15),'o01F',947.7,-11312.4,93.469)
	//set udg_zhuque=CreateUnit(Player(15),'o01G',1816.8,-11288.6,96.447)
	//call ShowUnitHide(udg_qinglong)
	//call ShowUnitHide(udg_baihu)
	//call ShowUnitHide(udg_xuanwu)
	//call ShowUnitHide(udg_zhuque)

	//call TriggerRegisterUnitInRangeSimple(t,256,udg_qinglong)
	//call TriggerAddCondition(t,Condition(function qinglongjie_condition))
	//call TriggerAddAction(t,function qinglongjie)
	//set t=CreateTrigger()
	//call TriggerRegisterUnitInRangeSimple (t,256,udg_baihu)
	//call TriggerAddCondition(t,Condition(function baihujie_condition))
	//call TriggerAddAction(t,function baihujie)
	//set t=CreateTrigger()
	//call TriggerRegisterUnitInRangeSimple (t,256,udg_xuanwu)
	//call TriggerAddCondition(t,Condition(function xuanwujie_condition))
	//call TriggerAddAction(t,function xuanwujie)
	//set t=CreateTrigger()
	//call TriggerRegisterUnitInRangeSimple (t,256,udg_zhuque)
	//call TriggerAddCondition(t,Condition(function zhuquejie_condition))
	//call TriggerAddAction(t,function zhuquejie)
	set t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsMonsterAttack))
	call TriggerAddAction(t,function MonsterAttack)
	set t = CreateTrigger()
	call TriggerRegisterTimerEventPeriodic(t, .5)
	call TriggerAddAction(t,function QingLongNiLin)
	//挑战圣兽
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(t,function IsTiaoZhanSiShengShou)
    call TriggerAddAction(t,function TiaoZhanSiShengShou)
    //拾起青龙戒
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(t,function IsPickUpQingLong)
    call TriggerAddAction(t,function PickUpQingLong)
    //放下青龙戒
    set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DROP_ITEM)
    call TriggerAddCondition(t,function IsDropQingLong)
    call TriggerAddAction(t,function DropQingLong)
    //青龙戒成长
    set t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(t,function IsQingLongGrowup)
    call TriggerAddAction(t,function QingLongGrowup)
	set t = null
endfunction

//------四圣兽任务结束------//
