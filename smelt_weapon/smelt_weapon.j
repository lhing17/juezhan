

//===================================================
//决战江湖1.4之大辽金匠
//===================================================

globals
	ShopWeapon array shopweapon
endglobals

//购买商店武器
function RemoveWeapon takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local item it = LoadItemHandle(YDHT, GetHandleId(t), 1)
	call UnitRemoveItem(u, it)
	call FlushChildHashtable(YDHT, GetHandleId(t))
	call DestroyTimer(t)
	set t = null
	set u = null
	set it = null
endfunction

struct ShopWeapon
	private integer min_xiuxing
	public integer id
	private boolean zhuanshu = false
	static method create takes integer id, integer min_xiuxing returns ShopWeapon
		local ShopWeapon wp
		set wp = ShopWeapon.allocate()
		set wp.min_xiuxing = min_xiuxing
		set wp.id = id
		return wp
	endmethod
	method onDestroy takes nothing returns nothing
		set min_xiuxing = 0
		set id = 0
	endmethod
	method CanYeLianWeapon takes unit u, item it returns boolean
		if udg_runamen[1+GetPlayerId(GetOwningPlayer(u))] == 2 and GetItemTypeId(it) == 'I09C' then
			set  this.zhuanshu = true
		endif
		if udg_runamen[1+GetPlayerId(GetOwningPlayer(u))] == 3 and GetItemTypeId(it) == 'I097' then
			set  this.zhuanshu = true
		endif
		if udg_runamen[1+GetPlayerId(GetOwningPlayer(u))] == 6 and GetItemTypeId(it) == 'I098' then
			set  this.zhuanshu = true
		endif
		if udg_runamen[1+GetPlayerId(GetOwningPlayer(u))] == 11 and (GetItemTypeId(it) == 'I09B' or GetItemTypeId(it) == 'I09D') then
			set  this.zhuanshu = true
		endif
		if xiuxing[1+GetPlayerId(GetOwningPlayer(u))]<min_xiuxing and this.zhuanshu == false and Ce[1+GetPlayerId(GetOwningPlayer(u))]!=3 then
			call DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "需历练"+I2S(min_xiuxing)+"以上方可冶炼该武器")
			call AdjustPlayerStateBJ(60000, GetOwningPlayer(u), PLAYER_STATE_RESOURCE_GOLD)
			return false
		endif
		return true
	endmethod
	method PickUpWeapon takes unit u, item it returns nothing
		local timer t = CreateTimer()
		if udg_runamen[1+GetPlayerId(GetOwningPlayer(u))] == 2 and GetItemTypeId(it) == 'I09C' then
			set  this.zhuanshu = true
		endif
		if udg_runamen[1+GetPlayerId(GetOwningPlayer(u))] == 3 and GetItemTypeId(it) == 'I097' then
			set  this.zhuanshu = true
		endif
		if udg_runamen[1+GetPlayerId(GetOwningPlayer(u))] == 6 and GetItemTypeId(it) == 'I098' then
			set  this.zhuanshu = true
		endif
		if GetItemTypeId(it) == 'I09B' or GetItemTypeId(it) == 'I09D' then
			set  this.zhuanshu = true
		endif
		if xiuxing[1+GetPlayerId(GetOwningPlayer(u))]<min_xiuxing-1 and this.zhuanshu == false and Ce[1+GetPlayerId(GetOwningPlayer(u))]!=3 then
			call DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "需历练"+I2S(min_xiuxing-1)+"以上方可使用该武器")
			call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
			call SaveItemHandle(YDHT, GetHandleId(t), 1, it)
			call TimerStart(t, 0., false, function RemoveWeapon)
		endif
		set t = null
	endmethod
endstruct


function IsYeLianWuQi takes nothing returns boolean
	local integer j = 1
	if GetItemTypeId(GetManipulatedItem())=='I0BG' then
		if (GetItemType(UnitItemInSlotBJ(GetTriggerUnit(), 1))!=ITEM_TYPE_ARTIFACT) then
			call DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,10,"|cffff0000装备栏第一格不是武器")
			call AdjustPlayerStateBJ(60000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
			return false
		else
			loop
				exitwhen j >= 30
				if GetItemTypeId(UnitItemInSlotBJ(GetTriggerUnit(), 1)) == shopweapon[j].id then
					if shopweapon[j].CanYeLianWeapon(GetTriggerUnit(), UnitItemInSlotBJ(GetTriggerUnit(), 1)) then
						return true
					else
						return false
					endif
				endif
				set j = j + 1
			endloop
			return true
		endif
	endif
	return false
endfunction

function YeLianWuQi takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	local item it = UnitItemInSlotBJ(u, 1)
	local integer id = GetItemTypeId(it)
	local real zssh=LoadReal(YDHT,id,StringHash("招式伤害"))
	local real wdnl=LoadReal(YDHT,id,StringHash("内力"))
	local real zhssh=LoadReal(YDHT,id,StringHash("真实伤害"))
	local real bjsh=LoadReal(YDHT,id,StringHash("暴击伤害"))
	local real bjl=LoadReal(YDHT,id,StringHash("暴击率"))
	local real jxlw=LoadReal(YDHT,id,StringHash("绝学领悟"))
	local real wdgg=LoadReal(YDHT,id,StringHash("根骨"))+LoadReal(YDHT,id,StringHash("全属性"))
	local real wddp=LoadReal(YDHT,id,StringHash("胆魄"))+LoadReal(YDHT,id,StringHash("全属性"))
	local real wdwx=LoadReal(YDHT,id,StringHash("悟性"))+LoadReal(YDHT,id,StringHash("全属性"))
	local real wdys=LoadReal(YDHT,id,StringHash("医术"))+LoadReal(YDHT,id,StringHash("全属性"))
	local real wdjm=LoadReal(YDHT,id,StringHash("经脉"))+LoadReal(YDHT,id,StringHash("全属性"))
	local real wdfy=LoadReal(YDHT,id,StringHash("福缘"))+LoadReal(YDHT,id,StringHash("全属性"))
	local real shhf=LoadReal(YDHT,id,StringHash("伤害回复"))
	local real sghf=LoadReal(YDHT,id,StringHash("杀怪回复"))
	local real smhf=LoadReal(YDHT,id,StringHash("生命回复"))
	local real flhf=LoadReal(YDHT,id,StringHash("法力回复"))
	local real sjgl=LoadReal(YDHT,id,StringHash("升级概率"))+LoadReal(YDHT,GetHandleId(it),StringHash("升级概率"))
	//local real wdxx=LoadReal(YDHT,id,StringHash("吸血"))
	//local real gjsd=LoadReal(YDHT,id,StringHash("攻击速度"))
	if shengwang[i]<=2000 then
		call DisplayTimedTextToPlayer(p,0,0,30,"|cffff0000声望不足2000不可以冶炼武器")
		call AdjustPlayerStateBJ(60000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
	elseif sjgl <= 0. then
		call DisplayTimedTextToPlayer(p,0,0,30,"|cffff0000该武器已不可继续冶炼")
		call AdjustPlayerStateBJ(60000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
	else
		if GetRandomReal(0., 100.)<sjgl then
			call DisplayTimedTextToPlayer(p,0,0,30,"|cffff0000恭喜你，冶炼成功")
			if udg_bqdsbool[i]==false and Ce[i]==3 then
				set udg_bqds[i] = udg_bqds[i] + 1
				call DisplayTextToPlayer(p, 0, 0, "|CFF66FF00恭喜您冶炼成功第"+I2S(udg_bqds[i])+"次，您需要冶炼成功5次才能获得兵器大师哦")
			endif
			if udg_bqds[i]>=5 and udg_bqdsbool[i]==false and Ce[i]==3 then
			    set udg_bqdsbool[i]=true
			    if udg_zhangmen[i]==true then
				else
					call SaveStr(YDHT, GetHandleId(p), GetHandleId(p),"〓兵器大师〓"+LoadStr(YDHT, GetHandleId(p), GetHandleId(p)))
				endif
				call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜"+GetPlayerName(p)+"获得兵器大师")
				call SetPlayerName(p, "〓兵器大师〓"+GetPlayerName(p))
			endif
			if id!='I0BH' then
				call RemoveItem(FetchUnitItem(u,id))
				set it = UnitAddItemById(u, 'I0BH')
			else
				set zssh=LoadReal(YDHT,GetHandleId(it),StringHash("招式伤害"))
				set wdnl=LoadReal(YDHT,GetHandleId(it),StringHash("内力"))
				set zhssh=LoadReal(YDHT,GetHandleId(it),StringHash("真实伤害"))
				set bjsh=LoadReal(YDHT,GetHandleId(it),StringHash("暴击伤害"))
				set bjl=LoadReal(YDHT,GetHandleId(it),StringHash("暴击率"))
				set jxlw=LoadReal(YDHT,GetHandleId(it),StringHash("绝学领悟"))
				set wdgg=LoadReal(YDHT,GetHandleId(it),StringHash("根骨"))
				set wddp=LoadReal(YDHT,GetHandleId(it),StringHash("胆魄"))
				set wdwx=LoadReal(YDHT,GetHandleId(it),StringHash("悟性"))
				set wdys=LoadReal(YDHT,GetHandleId(it),StringHash("医术"))
				set wdjm=LoadReal(YDHT,GetHandleId(it),StringHash("经脉"))
				set wdfy=LoadReal(YDHT,GetHandleId(it),StringHash("福缘"))
				set shhf=LoadReal(YDHT,GetHandleId(it),StringHash("伤害回复"))
				set sghf=LoadReal(YDHT,GetHandleId(it),StringHash("杀怪回复"))
				set smhf=LoadReal(YDHT,GetHandleId(it),StringHash("生命回复"))
				set flhf=LoadReal(YDHT,GetHandleId(it),StringHash("法力回复"))
				//set wdxx=LoadReal(YDHT,GetHandleId(it),StringHash("吸血"))
				//set gjsd=LoadReal(YDHT,GetHandleId(it),StringHash("攻击速度"))
			endif
			if udg_bqdsbool[i] then
				set sjgl = sjgl * GetGeoNormRandomReal(0.78, 0.95)
			else
				set sjgl = sjgl * GetGeoNormRandomReal(0.68, 0.95)
			endif
			if sjgl < 3. then
				set sjgl = 0.
			endif
			if udg_vip[i]>=1 then
				set sjgl = RMinBJ(sjgl *GetRandomReal(1.0, 1.04), 100.)
			endif
			call SaveReal(YDHT,GetHandleId(it),StringHash("升级概率"), sjgl)
			call UnitRemoveItem(u, it)
			call SaveReal(YDHT, GetHandleId(it), StringHash("招式伤害"), (GetGeoNormRandomReal(0., 100.)+zssh)*GetGeoNormRandomReal(1.0, 1.3))
			call SaveReal(YDHT, GetHandleId(it), StringHash("内力"), (GetGeoNormRandomReal(0., 100.)+wdnl)*GetGeoNormRandomReal(1.0, 1.3))
			call SaveReal(YDHT, GetHandleId(it), StringHash("真实伤害"), (GetGeoNormRandomReal(0., 100.)+zhssh)*GetGeoNormRandomReal(1.0, 1.3))
			call SaveReal(YDHT, GetHandleId(it), StringHash("暴击伤害"), bjsh*GetGeoNormRandomReal(1.0, 1.1))
			call SaveReal(YDHT, GetHandleId(it), StringHash("暴击率"), bjl*GetGeoNormRandomReal(1.0, 1.05))
			call SaveReal(YDHT, GetHandleId(it), StringHash("绝学领悟"), jxlw*GetGeoNormRandomReal(1.0, 1.25))
			call SaveReal(YDHT, GetHandleId(it), StringHash("根骨"), (GetRandomReal(0., 0.4)+wdgg)*GetGeoNormRandomReal(1.0, 1.15))
			call SaveReal(YDHT, GetHandleId(it), StringHash("胆魄"), (GetRandomReal(0., 0.4)+wddp)*GetGeoNormRandomReal(1.0, 1.15))
			call SaveReal(YDHT, GetHandleId(it), StringHash("悟性"), (GetRandomReal(0., 0.4)+wdwx)*GetGeoNormRandomReal(1.0, 1.15))
			call SaveReal(YDHT, GetHandleId(it), StringHash("医术"), (GetRandomReal(0., 0.4)+wdys)*GetGeoNormRandomReal(1.0, 1.15))
			call SaveReal(YDHT, GetHandleId(it), StringHash("经脉"), (GetRandomReal(0., 0.4)+wdjm)*GetGeoNormRandomReal(1.0, 1.15))
			call SaveReal(YDHT, GetHandleId(it), StringHash("福缘"), (GetRandomReal(0., 0.4)+wdfy)*GetGeoNormRandomReal(1.0, 1.15))
			call SaveReal(YDHT, GetHandleId(it), StringHash("伤害回复"), shhf*GetGeoNormRandomReal(1.0, 1.3))
			call SaveReal(YDHT, GetHandleId(it), StringHash("杀怪回复"), sghf*GetGeoNormRandomReal(1.0, 1.3))
			call SaveReal(YDHT, GetHandleId(it), StringHash("生命回复"), smhf*GetGeoNormRandomReal(1.0, 1.3))
			call SaveReal(YDHT, GetHandleId(it), StringHash("法力回复"), flhf*GetGeoNormRandomReal(1.0, 1.3))
		//call SaveReal(YDHT, GetHandleId(it), StringHash("吸血"), I2R(wdxx)*GetRandomReal(1.0, 1.5)))
		//call SaveReal(YDHT, GetHandleId(it), StringHash("攻击速度"), I2R(gjsd)*GetRandomReal(1.0, 1.5)))
		else
			call DisplayTimedTextToPlayer(p,0,0,30,"|cffff0000很遗憾，冶炼失败")
			set sjgl = sjgl * GetGeoNormRandomReal(0.95, 0.99)
			if sjgl < 3. then
				set sjgl = 0.
			endif
			call SaveReal(YDHT,GetHandleId(it),StringHash("升级概率"), sjgl)
			//set shengwang[i] = shengwang[i]-100
		endif
	endif
	set u = null
	set p = null
	set it = null
endfunction
function SmeltingWeaponSystem takes nothing returns nothing
	local trigger t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t,Condition(function IsYeLianWuQi))
	call TriggerAddAction(t,function YeLianWuQi)
	set t = null
endfunction
function InitShopWeapon takes nothing returns nothing
	set shopweapon[1] = ShopWeapon.create('I01E', 0)
	set shopweapon[2] = ShopWeapon.create('I01F', 0)
	set shopweapon[3] = ShopWeapon.create('I01S', 0)
	set shopweapon[4] = ShopWeapon.create('I020', 0)
	set shopweapon[5] = ShopWeapon.create('I021', 0)
	set shopweapon[6] = ShopWeapon.create('I016', 1)
	set shopweapon[7] = ShopWeapon.create('I01L', 1)
	set shopweapon[8] = ShopWeapon.create('I01N', 1)
	set shopweapon[9] = ShopWeapon.create('I013', 2)
	set shopweapon[10] = ShopWeapon.create('I04F', 2)
	set shopweapon[11] = ShopWeapon.create('I00X', 3)
	set shopweapon[12] = ShopWeapon.create('I099', 3)
	set shopweapon[13] = ShopWeapon.create('I09A', 3)
	set shopweapon[14] = ShopWeapon.create('I00P', 4)
	set shopweapon[15] = ShopWeapon.create('I00Q', 4)
	set shopweapon[16] = ShopWeapon.create('I00B', 5)
	set shopweapon[17] = ShopWeapon.create('I00C', 5)
	set shopweapon[18] = ShopWeapon.create('I00D', 5)
	set shopweapon[19] = ShopWeapon.create('I08V', 5)
	set shopweapon[20] = ShopWeapon.create('I097', 6)
	set shopweapon[21] = ShopWeapon.create('I098', 6)
	set shopweapon[22] = ShopWeapon.create('I09B', 6)
	set shopweapon[23] = ShopWeapon.create('I09C', 6)
	set shopweapon[24] = ShopWeapon.create('I09D', 6)
endfunction
