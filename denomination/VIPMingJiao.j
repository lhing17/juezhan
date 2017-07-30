
//鹰爪功 3级技
function IsYingZhao takes nothing returns boolean
	return (IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))) and GetUnitAbilityLevel(GetAttacker(),'A030')>=1
endfunction

function YingZhao_Condition takes nothing returns boolean
	return (IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetAttacker()))) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function YingZhaoShangHai takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local unit uc = LoadUnitHandle(YDHT, GetHandleId(t), 1)
	local real shanghai = LoadReal(YDHT, GetHandleId(t), 2)
	call WuGongShangHai(u,uc,shanghai)
	if GetUnitAbilityLevel(u, 'A017')>=1 and GetRandomInt(1, 5)==1 then
		call WanBuff(u, uc, 7)
	endif
	call PauseTimer(t)
	call DestroyTimer(t)
	set t = null
	set u = null
	set uc = null
endfunction
function YingZhao_Action takes nothing returns nothing
    local unit u=GetAttacker()
    local unit uc=GetEnumUnit()
    local real shxishu=1.
    local real shanghai=0.
    local integer i=1+GetPlayerId(GetOwningPlayer(u))
    local location loc=GetUnitLoc(u)
    local timer t = CreateTimer()
    local real dist = SquareRoot((GetUnitX(u)-GetUnitX(uc))*(GetUnitX(u)-GetUnitX(uc))+(GetUnitY(u)-GetUnitY(uc))*(GetUnitY(u)-GetUnitY(uc)))
    set shxishu=1.8+0.2*dist*GetRandomReal(20.,50.)/I2R(LoadInteger(YDHT, GetHandleId(u), StringHash("鹰爪")))/I2R(LoadInteger(YDHT, GetHandleId(u), StringHash("鹰爪")))
    if GetUnitAbilityLevel(u,'A034')>=1 or GetUnitAbilityLevel(u,'A035')>=1 then
	    set shxishu=shxishu*2
    endif
    if GetUnitAbilityLevel(u,'A07W')>=1 then
	    set shxishu=shxishu*2
    endif
    set shanghai=ShangHaiGongShi(u,uc,0.3,0.4,shxishu,'A030')
    call CreateNUnitsAtLoc(1,'e014',GetOwningPlayer(u),loc,bj_UNIT_FACING)
    call SetUnitVertexColorBJ( bj_lastCreatedUnit, 100, 100, 100, 100 )
    call UnitAddAbility(bj_lastCreatedUnit, 'Aloc')
    //call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddAbility(bj_lastCreatedUnit, 'A031')
    call IssueTargetOrderById(bj_lastCreatedUnit, $D0200, uc)
    call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',1.)
    call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
    call SaveUnitHandle(YDHT, GetHandleId(t), 1, uc)
    call SaveReal(YDHT, GetHandleId(t), 2, shanghai)
    call TimerStart(t, 0.3, false, function YingZhaoShangHai )
    call RemoveLocation(loc)
    set loc=null
    set u=null
    set uc=null
    set t = null
endfunction
function YingZhaoGong takes nothing returns nothing
	local unit u = GetAttacker()
	local group g = CreateGroup()
	local location loc  = GetUnitLoc(u)
	if GetRandomReal(1, 100)<25 + fuyuan[1+GetPlayerId(GetOwningPlayer(u))]/3 + GetUnitAbilityLevel(u, 'A06L')*8 then
		call WuGongShengChong(u, 'A030', 1000)
		call GroupEnumUnitsInRangeOfLoc(g, loc, 420 + 80 * GetUnitAbilityLevel(u, 'A030'), Condition(function YingZhao_Condition))
		call SaveInteger(YDHT, GetHandleId(u), StringHash("鹰爪"), CountUnitsInGroup(g))
		call ForGroupBJ(g, function YingZhao_Action)
	endif
	call RemoveLocation(loc)
	call DestroyGroup(g)
	set loc = null
	set g = null
	set u = null
endfunction
function IsYingZhaoZhuDong takes nothing returns boolean
	return GetSpellAbilityId()=='A030'
endfunction
function YingZhaoZhuDong_Condition takes nothing returns boolean
	return (IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))) and IsUnitAliveBJ(GetFilterUnit()) and GetUnitAbilityLevel(GetFilterUnit(),'Avul') < 1 and GetUnitTypeId(GetFilterUnit())!='N008'
endfunction

function YingZhaoZhuDong_Action takes nothing returns nothing
    local unit u=GetTriggerUnit()
    local unit uc=GetEnumUnit()
    local real shxishu=1.
    local real shanghai=0.
    local integer i=1+GetPlayerId(GetOwningPlayer(u))
    local location loc=GetUnitLoc(u)
    local timer t = CreateTimer()
    local real dist = SquareRoot((GetUnitX(u)-GetUnitX(uc))*(GetUnitX(u)-GetUnitX(uc))+(GetUnitY(u)-GetUnitY(uc))*(GetUnitY(u)-GetUnitY(uc)))
    set shxishu=1.8+0.2*dist*GetRandomReal(20.,50.)/I2R(LoadInteger(YDHT, GetHandleId(u), StringHash("鹰爪主动")))/I2R(1+LoadInteger(YDHT, GetHandleId(u), StringHash("鹰爪主动")))
    if GetUnitAbilityLevel(u,'A034')>=1 or GetUnitAbilityLevel(u,'A035')>=1 then
	    set shxishu=shxishu*2
    endif
    if GetUnitAbilityLevel(u,'A07W')>=1 then
	    set shxishu=shxishu*2
    endif
    set shanghai=ShangHaiGongShi(u,uc,0.7,0.9,shxishu,'A030')
    call CreateNUnitsAtLoc(1,'e014',GetOwningPlayer(u),loc,bj_UNIT_FACING)
    call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddAbility(bj_lastCreatedUnit, 'A031')
    call IssueTargetOrderById(bj_lastCreatedUnit, $D0200, uc)
    call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',1.)
    call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
    call SaveUnitHandle(YDHT, GetHandleId(t), 1, uc)
    call SaveReal(YDHT, GetHandleId(t), 2, shanghai)
    call TimerStart(t, 0.3, false, function YingZhaoShangHai )

    call RemoveLocation(loc)
    set loc=null
    set u=null
    set uc=null
    set t = null
endfunction
function YingZhaoGongZhuDong takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local group g = CreateGroup()
	local location loc  = GetUnitLoc(u)
	call WuGongShengChong(u, 'A030', 1000)
	call GroupEnumUnitsInRangeOfLoc(g, loc, 420 + 80 * GetUnitAbilityLevel(u, 'A030'), Condition(function YingZhaoZhuDong_Condition))
	call SaveInteger(YDHT, GetHandleId(u), StringHash("鹰爪主动"), CountUnitsInGroup(g))
	call ForGroupBJ(g, function YingZhaoZhuDong_Action)
	call RemoveLocation(loc)
	call DestroyGroup(g)
	set loc = null
	set g = null
	set u = null
endfunction
library MaxSpeed /* v1.2
 *************************************************************************************
 *
 *   任意设置移动速度 突破522
 *   by 茄子
*   更新 by Cerphy
 *
 *************************************************************************************
 *
 *   */ requires /*
 *       */ optional /*
 *           */ Table /*     hiveworkshop.com/forums/jass-resources-412/snippet-new-table-188084/
 *                       or      wc3c.net/showthread.php?t=101246
 *
 ************************************************************************************
 *
 *   SetUnitMoveSpeed(unit, speed) SetUnitMoveSpeedEx(unit, speed)
 *   设置单位移动速度
*
 *   GetUnitMoveSpeedEx(unit)
 *   获取单位移动速度
*
 *   SetUnitLed(unit, bool)
 *   设置单位未暂停眩晕下或被迫移动时是否被牵引，来关闭移动状态
*/

     globals
         private constant boolean USE_TABLE = true
         private constant boolean NEW_TABLE = true
         // Vexorian's Table or Bribe's (NEW)
         private constant boolean TEST_MODE = false
         private constant real PERIOD = 0.03125
         private constant real MAX_SPEED = 2088.0
         // 最大速度限定，超出视为传送。
        private constant real MIN_SPEED = 500.0
         // 判定的最小距离，此项过小或速度过大会使原地打转几率增加，超出则没有加速效果。
        // 测试最大为500刚出头，与522还有些差距

    endglobals

     module Init
         static if LIBRARY_Table and USE_TABLE then
             private static method onInit takes nothing returns nothing
                 set table = Table.create()
             endmethod
         endif
     endmodule

     struct ModSpeed extends array
         //private:
         private static timer tm = CreateTimer()
         private static integer instanceMaxCount = 0
         private thistype prev
         private thistype next
         private unit u
         private real lastX
         private real lastY
         private real speed
         private boolean lead

         //temp variables
         private static real x
         private static real y
         private static real dx
         private static real dy
         private static real dist
         private static real rate

         static if LIBRARY_Table and USE_TABLE then
             static if NEW_TABLE then
                 private static Table table
             else
                 private static HandleTable table
             endif
         endif
         implement Init

         private method destroy takes nothing returns nothing
             set this.speed = 0.
             if (this.next != 0)then
                 set this.next.prev = this.prev
             endif
             set this.prev.next = this.next
             set this.prev = thistype(0).prev
             set thistype(0).prev = this
             if (thistype(0).next == 0) then
                 call PauseTimer(tm)
                 static if TEST_MODE then
                     call BJDebugMsg("maxspeed  timer paused")
                 endif
             endif
             static if LIBRARY_Table and USE_TABLE then
                 static if NEW_TABLE then
                     call table.remove(GetHandleId(this.u))
                 else
                     call table.flush(u)
                 endif
             endif
         endmethod

        private method operator moveFilter takes nothing returns boolean
             return GetUnitAbilityLevel(u, 'BSTN') < 1 /*
             */ and GetUnitAbilityLevel(u, 'BPSE') < 1 /*
             */ and GetUnitMoveSpeed(u) > 521.0 /*
             */ and not IsUnitPaused(u) /*
             */ and not lead
         endmethod

         private method move takes nothing returns nothing
             if (not moveFilter) then
                 return
             endif
             set x = GetUnitX(u)
             set y = GetUnitY(u)
             set dx = x - lastX
             set dy = y - lastY
             set lastX = x
             set lastY = y
             set dist = SquareRoot(dx * dx + dy * dy) / PERIOD
             if (dist >= MIN_SPEED and dist <= MAX_SPEED) then
                 set rate = (speed - 522.) / dist
                 set lastX = x + dx * rate
                 set lastY = y + dy * rate
                 call SetUnitX(u, lastX)
                 call SetUnitY(u, lastY)
                 static if TEST_MODE then
                     call BJDebugMsg(R2S(rate))
                 endif
             endif
         endmethod

         private static method iterate takes nothing returns nothing
             local thistype this = thistype(0)
             loop
                 set this = this.next
                 exitwhen (this == 0)
                 if (GetWidgetLife(this.u) < 0.405) then
                     call this.destroy()
                 else
                     call this.move()
                 endif
             endloop
         endmethod


         //public:
         static method getInstance takes unit u returns thistype
             local thistype this = thistype(0)
             static if LIBRARY_Table and USE_TABLE then
                 static if NEW_TABLE then
                     if (table.has(GetHandleId(u))) then
                         return thistype(table[GetHandleId(u)])
                     endif
                 else
                     if (table.exists(u)) then
                         return thistype(table[u])
                     endif
                 endif
             else
                 loop
                     set this = this.next
                     exitwhen this == 0
                     if this.u == u then
                         return this
                     endif
                 endloop
             endif
             return thistype(0)
         endmethod

         static method setUnitLed takes unit u, boolean b returns nothing
             local ModSpeed this = ModSpeed.getInstance(u)
             if (this > 0) then
                 set this.lead = b
             debug else
                 debug call BJDebugMsg("can not set whether get leading to a null object.")
             endif
         endmethod

         static method getSpeed takes unit u returns real
             local thistype this = getInstance(u)
             if (this > 0 and GetUnitMoveSpeed(u) > 521.0) then
                 return this.speed
             endif
             return GetUnitMoveSpeed(u)
         endmethod

         static method setSpeed takes unit u, real amount returns nothing
             local thistype this
             if (u == null or GetWidgetLife(u) < 0.405) then
                 return
             endif
             set this = getInstance(u)
             if (amount < 523.) then
                 if (this > 0) then
                     call this.destroy()
                 endif
                 return
             elseif (this == 0) then
                 if (thistype(0).prev == 0)then
                     set instanceMaxCount = instanceMaxCount + 1
                     set this = instanceMaxCount
                 else
                     set this = thistype(0).prev
                     set thistype(0).prev = thistype(0).prev.prev
                 endif
                 if (thistype(0).next == 0)then
                     call TimerStart(tm, PERIOD, true, function thistype.iterate)
                     static if TEST_MODE then
                         call BJDebugMsg("maxspeed timer has started")
                     endif
                 else
                     set thistype(0).next.prev = this
                 endif
                 set this.next = thistype(0).next
                 set thistype(0).next = this
                 set this.prev = thistype(0)

                 set this.u = u
                 static if LIBRARY_Table and USE_TABLE then
                     static if NEW_TABLE then
                         set table[GetHandleId(u)] = this
                     else
                         set table[u ] = this
                     endif
                 endif
             endif
             set amount = RMinBJ(amount, MAX_SPEED)
             set this.lastX = GetUnitX(u)
             set this.lastY = GetUnitY(u)
             set this.speed = amount
         endmethod
     endstruct

     //interface:
     function SetUnitLed takes unit u, boolean b returns nothing
         call ModSpeed.setUnitLed(u, b)
     endfunction
     function GetUnitMoveSpeedEx takes unit u returns real
         return ModSpeed.getSpeed(u)
     endfunction
     function SetUnitMoveSpeedEx takes unit u, real speed returns nothing
         call ModSpeed.setSpeed(u, speed)
     endfunction

     hook SetUnitMoveSpeed SetUnitMoveSpeedEx
endlibrary
//蝠翼纵 8级技
function IsFuYi takes nothing returns boolean
	return GetSpellAbilityId()=='A032'
endfunction
function FuYiZong_1 takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local real oldSpeed =  LoadReal(YDHT, GetHandleId(t), 1)
	local real oldSpeed2 = GetUnitMoveSpeedEx(u) - LoadReal(YDHT, GetHandleId(t), 2)
	call SetUnitMoveSpeed(u, RMaxBJ(RMinBJ(oldSpeed, oldSpeed2), 350.))
	call UnitRemoveAbility(u, 'A02T')
	call UnitRemoveAbility(u, 'A0DB')
	call PauseTimer(t)
	call DestroyTimer(t)
	call FlushChildHashtable(YDHT, GetHandleId(t))
	set u = null
	set t = null
endfunction
function FuYiZong_2_Condition takes nothing returns boolean
	return IsUnitAliveBJ(GetFilterUnit()) and IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0)))
endfunction
function FuYiZong_2_Action takes nothing returns nothing
	local unit u = LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0)
	local unit uc = GetEnumUnit()
	if GetRandomInt(1, 50) == 1 then
		call WanBuff(u, uc, 12)
	endif
	set u = null
	set uc = null
endfunction
function FuYiZong_2 takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local group g = null
	local location loc = GetUnitLoc(u)
	local integer j = LoadInteger(YDHT, GetHandleId(t), 1)
	local integer jmax = 100
	if j <= jmax then
		set g = CreateGroup()
		call GroupEnumUnitsInRangeOfLoc(g, loc, 300, Condition(function FuYiZong_2_Condition))
		call ForGroupBJ(g, function FuYiZong_2_Action)
		call DestroyGroup(g)
		call SaveInteger(YDHT, GetHandleId(t), 1, j+1)
	else
		call PauseTimer(t)
		call DestroyTimer(t)
		call FlushChildHashtable(YDHT, GetHandleId(t))
	endif
	call RemoveLocation(loc)
	set t = null
	set u = null
	set loc = null
	set g = null
endfunction
function FuYiZong takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local integer i = 1 + GetPlayerId(GetOwningPlayer(u))
	local real time = 5. + I2R(GetUnitAbilityLevel(u, 'A032'))
	local real oldSpeed = GetUnitMoveSpeedEx(u)
	local timer t = CreateTimer()
	local timer tm = null
	call WuGongShengChong(u, 'A032', 100)
	call SetUnitMoveSpeed(u, oldSpeed + 700 + jingmai[i]*10)
	if GetUnitAbilityLevel(u, 'A07W')>=1 then
		call UnitAddAbilityBJ( 'A02T', u )
    	call SetPlayerAbilityAvailableBJ( false, 'A02T', GetOwningPlayer(u) )
	endif
	if GetUnitAbilityLevel(u, 'A0DN')>=1 then
		call UnitAddAbility(u, 'A0DB')
		call SetUnitAbilityLevel(u, 'A0DB', GetUnitAbilityLevel(u, 'A032')+1)
	endif
	call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	call SaveReal(YDHT, GetHandleId(t), 1, oldSpeed)
	call SaveReal(YDHT, GetHandleId(t), 2, 700 + jingmai[i]*10)
	call TimerStart(t, time, false, function FuYiZong_1)
	if GetUnitAbilityLevel(u, 'A017')>=1 then
		set tm = CreateTimer()
		call SaveUnitHandle(YDHT, GetHandleId(tm), 0, u)
		call TimerStart(tm, time/100, true, function FuYiZong_2)
	endif
	set u = null
	set t = null
	set tm = null
	//local location loc = GetUnitLoc(u)
	//local integer i = 0
	//local integer num = 0
	//local location array loc2
	//local location loc3 = pu(loc, 400 + 80 * GetUnitAbilityLevel(u, 'A030'), GetRandomReal(0., 360.))
	//local group g = CreateGroup()
	//local group g2 = CreateGroup()
	//local unit uc = null
	//local lightning array light

	//call YDWEPolledWaitNull(.15)
	//call GroupEnumUnitsInRangeOfLoc(g, loc, 420 + 80 * GetUnitAbilityLevel(u, 'A030'), Condition(function YingZhaoZhuDong_Condition))
	//if g != null then
	//	set num = CountUnitsInGroup(g)
	//endif
	//if num >= 1 then
	//	set i = 1
	//	loop
	//		exitwhen i > (num + 1)/2
	//		set uc = GroupPickRandomUnit(g)
	//		call GroupAddUnit(g2, uc)
	//		call GroupRemoveUnit(g, uc)
	//		set loc2[i] = GetUnitLoc(uc)
	//		call SetUnitPositionLocFacingLocBJ(u,loc2[i],loc2[i])
	//		call SetUnitAnimation(u,"ATTACK")
	//		call YDWEPolledWaitNull(.15)
	//		if i > 1 then
	//			set light[i] = AddLightningLoc("FORK",loc2[i-1],loc2[i])
	//			call DestroyLightning(light[i-1])
	//			set light[i-1] = null
	//		else
	//			set light[i] = AddLightningLoc("FORK",loc,loc2[i])
	//		endif
	//		set uc = null
	//		set i = i + 1
	//	endloop
	//endif
	//if light[i-1] != null then
	//	call YDWEPolledWaitNull(.15)
	//	call DestroyLightning(light[i-1])
	//	set light[i-1] = null
	//endif
	//if g2 != null and CountUnitsInGroup(g2)>=1 then
	//	call SetUnitPositionLocFacingLocBJ(u,loc3,loc3)
	//	set light[1] = AddLightningLoc("FORK",loc2[i-1],loc3)
	//	set num = CountUnitsInGroup(g2)
	//endif
	//set i = 1
	//if num >= 1 then
	//	set i = 1
	//	loop
	//		exitwhen i >= num
	//		set uc = GroupPickRandomUnit(g2)
	//		call GroupRemoveUnit(g2, uc)
	//		call SetUnitPositionLocFacingLocBJ(uc,loc3,loc3)
	//		call SetUnitAnimation(uc,"ATTACK")
	//		if GetUnitAbilityLevel(u,'A0DE')>=1 then
	//			call WanBuff(u, uc, 12)
	//		else
	//			call WanBuff(u, uc, 11)
	//		endif
	//		set uc = null
	//		set i = i + 1
	//	endloop
	//endif
	//if light[1] != null then
	//	call YDWEPolledWaitNull(.15)
	//	call DestroyLightning(light[1])
	//endif
	//if num > 1 then
	//	call SetUnitPositionLocFacingLocBJ(u,loc,loc)
	//	set light[1] = AddLightningLoc("FORK",loc3,loc)
	//	call YDWEPolledWaitNull(.15)
	//	call DestroyLightning(light[1])
	//endif
	//if GetUnitAbilityLevel(u, 'A07W')>=1 then
	//	call UnitAddAbilityBJ( 'A02T', u )
 //   	call SetPlayerAbilityAvailableBJ( false, 'A02T', GetOwningPlayer(u) )
 //   	call YDWEPolledWaitNull(4.)
 //   	call UnitRemoveAbility(u, 'A02T')
	//endif
	//call RemoveLocation(loc)
	//call RemoveLocation(loc3)
	//call DestroyGroup(g)
	//call DestroyGroup(g2)
	//set u = null
	//set uc = null
	//set loc = null
	//set loc3 = null
	//set g = null
	//set g2 = null
	//set light[1] = null
endfunction

//狮子吼 15级技
function IsShiZi takes nothing returns boolean
	return GetSpellAbilityId()=='A06R'
endfunction
function ShiZiHou_Action takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local unit uc = GetEnumUnit()
	local real shxishu=1.
    local real shanghai=0.
	local real dist = SquareRoot((GetUnitX(u)-GetUnitX(uc))*(GetUnitX(u)-GetUnitX(uc))+(GetUnitY(u)-GetUnitY(uc))*(GetUnitY(u)-GetUnitY(uc)))
	if GetUnitAbilityLevel(u,'A07W')>=1 then
	    set shxishu=shxishu+1.
    endif
    if GetUnitAbilityLevel(u,'A07M')>=1 then
	    set shxishu=shxishu+.7
    endif
	set shanghai=ShangHaiGongShi(u,uc,100.,200.,shxishu,'A06R')
	call knock_back(uc, Atan2(GetUnitY(uc)-GetUnitY(u),GetUnitX(uc)-GetUnitX(u)),  GetRandomReal(320., 720.) + 80 * GetUnitAbilityLevel(u, 'A030') - dist, 1., 0.05, "Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl", 0)
	call WuGongShangHai(u, uc, shanghai)
	if GetUnitAbilityLevel(u,'A0DN')>=1 and GetRandomInt(1, 3) == 2 then
		call WanBuff(u, uc, 9)
	endif
	set u = null
	set uc = null
endfunction
function ShiZiHou takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local location loc = GetUnitLoc(u)
	local integer level = 0
	local group g = CreateGroup()
	call WuGongShengChong(u, 'A06R', 200)
	call GroupEnumUnitsInRangeOfLoc(g, loc, 420 + 80 * GetUnitAbilityLevel(u, 'A030'), Condition(function YingZhaoZhuDong_Condition))
	call ForGroupBJ(g, function ShiZiHou_Action)
	if (GetUnitAbilityLevel(u, 'A034') > 0 or GetUnitAbilityLevel(u,'A035')>=1) and GetRandomReal(0, 100)>=30 then
		set level=GetUnitAbilityLevel(u,'A06R')
		call UnitRemoveAbility(u,'A06R')
		call UnitAddAbility(u,'A06R')
		call SetUnitAbilityLevel(u,'A06R',level)
	endif
endfunction

//圣火令神功 25级技1
globals
	unit shenghuoling_1
	unit shenghuoling_2
	unit shenghuoling_3
	boolean ling1zhuan
	boolean ling2zhuan
	boolean ling3zhuan
endglobals
function IsShengHuo takes nothing returns boolean
	return GetSpellAbilityId()=='A034'
endfunction

//改进转圈函数
function ZhuanQuan_1 takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local unit uc = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 1)
	local real angle = LoadReal(YDHT, GetHandleId(t), 2)
	local real dist = LoadReal(YDHT, GetHandleId(t), 3)
	local real angle0 = LoadReal(YDHT, GetHandleId(t), 4)
	local real dist0 = LoadReal(YDHT, GetHandleId(t), 5)
	local location loc = GetUnitLoc(u)
	local real x=.0
	local real y=.0
	//call BJDebugMsg("转圈1执行了，angle0="+R2S(angle0))
	if IsUnitAliveBJ(u)==false then
		call KillUnit(uc)
		call RemoveUnit(uc)
		call PauseTimer(t)
		call DestroyTimer(t)
		call FlushChildHashtable(YDHT, GetHandleId(t))
	endif
	if(dist>=0)and(GetUnitState(uc,UNIT_STATE_LIFE)>0)and(GetUnitState(u,UNIT_STATE_LIFE)>0) and ((uc == shenghuoling_1 and ling1zhuan) or (uc == shenghuoling_2 and ling2zhuan) or (uc == shenghuoling_3 and ling3zhuan)) then
		set x=GetUnitX(u)+(dist+dist0)*Cos(angle+angle0)
		set y=GetUnitY(u)+(dist+dist0)*Sin(angle+angle0)
		call SaveReal(YDHT, GetHandleId(t), 4, angle + angle0)
		call SaveReal(YDHT, GetHandleId(t), 5, dist + dist0)
		call SetUnitX(uc,CheckX(x))
		call SetUnitY(uc,CheckY(y))
		call SetUnitFacing(uc, Atan2(GetUnitY(uc)-GetUnitY(u), GetUnitX(uc)-GetUnitX(u)))
	else
		call PauseTimer(t)
		call DestroyTimer(t)
		call FlushChildHashtable(YDHT, GetHandleId(t))
	endif
	call RemoveLocation(loc)
	set t = null
	set u = null
	set uc = null
	set loc = null
endfunction

function ZhuanQuan takes unit uc,unit u,real angle,real dist returns nothing
	local real x1=GetUnitX(uc)
	local real y1=GetUnitY(uc)
	local real x2=GetUnitX(u)
	local real y2=GetUnitY(u)
	local timer t = CreateTimer()
	call SaveUnitHandle(YDHT, GetHandleId(t), 0, uc)
	call SaveUnitHandle(YDHT, GetHandleId(t), 1, u)
	call SaveReal(YDHT, GetHandleId(t), 2, angle*(3.14159/180.))
	call SaveReal(YDHT, GetHandleId(t), 3, dist)
	call SaveReal(YDHT, GetHandleId(t), 4, Atan2(y2-y1,x2-x1))
	call SaveReal(YDHT, GetHandleId(t), 5, SquareRoot((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1)))
	call TimerStart(t, 0.01, true, function ZhuanQuan_1)
	//call BJDebugMsg("转圈执行了")
	set t = null
endfunction
function ShengHuoLing takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local location loc = GetUnitLoc(u)
	call WuGongShengChong(u, 'A034', 100)
	call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A034'*5, GetUnitAbilityLevel(u, 'A034'))
	call UnitRemoveAbility(u, 'A034')
	call UnitAddAbility(u, 'A035')
	call SetUnitAbilityLevel(u, 'A035', LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A034'*5))
	call CreateNUnitsAtLoc(1,'e013',GetOwningPlayer(u),pu(loc,325.,0),90)
	set shenghuoling_1 = bj_lastCreatedUnit
	call IssueImmediateOrderById(bj_lastCreatedUnit,$D00D1)
	call ZhuanQuan(shenghuoling_1, u, 1., 0.)
	set ling1zhuan = true
	call CreateNUnitsAtLoc(1,'e013',GetOwningPlayer(u),pu(loc,325.,120.),210)
	set shenghuoling_2 = bj_lastCreatedUnit
	call IssueImmediateOrderById(bj_lastCreatedUnit,$D00D1)
	call ZhuanQuan(shenghuoling_2, u, 1., 0.)
	set ling2zhuan = true
	call CreateNUnitsAtLoc(1,'e013',GetOwningPlayer(u),pu(loc,325.,240.),330)
	set shenghuoling_3 = bj_lastCreatedUnit
	call IssueImmediateOrderById(bj_lastCreatedUnit,$D00D1)
	call ZhuanQuan(shenghuoling_3, u, 1., 0.)
	set ling3zhuan = true
endfunction
function IsRengShengHuo takes nothing returns boolean
	return GetSpellAbilityId()=='A035'
endfunction
function RengShengHuoLing_Action takes nothing returns nothing
	local timer t=GetExpiredTimer()
	local integer p=GetHandleId(t)
	local unit u=LoadUnitHandle(YDHT,p,0)
	local unit uc=LoadUnitHandle(YDHT,p,1)
	local unit ut=LoadUnitHandle(YDHT,p,2)
	local location loc=LoadLocationHandle(YDHT,p,3)
	local real myX=GetLocationX(loc)
    local real myY=GetLocationY(loc)
    local real hisX=GetUnitX(uc)
    local real hisY=GetUnitY(uc)
    local location loc2=null
    local real dist=0.
    local real angle=0.
    local integer i=LoadInteger(YDHT,p,4)
    local real perc=0.04
    local integer imax=25
    local real shxishu=1.
    local real shanghai=0
    set shanghai=ShangHaiGongShi(u,uc,400,300,shxishu,'A035')
    if i<=imax then
        set hisX=GetUnitX(uc)
        set hisY=GetUnitY(uc)
    	set angle=Atan2(hisY-myY,hisX-myX)
    	set dist=SquareRoot((hisX-myX)*(hisX-myX)+(hisY-myY)*(hisY-myY))
        set loc2=Location(myX+perc*i*dist*Cos(angle),myY+perc*i*dist*Sin(angle))
        call SetUnitPositionLoc(ut,loc2)
        call SaveInteger(YDHT,p,4,i+1)
    else
        call WuGongShangHai(u,uc,shanghai)
        call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl",uc,"overhead"))
        call PauseTimer(t)
        call DestroyTimer(t)
        call FlushChildHashtable(YDHT,p)
        call KillUnit(ut)
        call RemoveUnit(ut)
        if GetUnitState(shenghuoling_1, UNIT_STATE_LIFE)<1 and GetUnitState(shenghuoling_2, UNIT_STATE_LIFE)<1 and GetUnitState(shenghuoling_3, UNIT_STATE_LIFE)<1 then
        	call UnitRemoveAbility(u, 'A035')
			call UnitAddAbility(u, 'A034')
			call SetUnitAbilityLevel(u, 'A034', LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 'A034'*5))
		endif
        call RemoveLocation(loc)
    endif
    call RemoveLocation(loc2)
    set t=null
    set u=null
    set uc=null
    set ut=null
    set loc=null
    set loc2=null
endfunction
function RengShengHuoLing takes nothing returns nothing
	local unit u=GetTriggerUnit()
    local unit uc=GetSpellTargetUnit()
    local location loc = null
    local timer t=CreateTimer()
    local integer p=GetHandleId(t)
    local unit ut=null
    if GetUnitState(shenghuoling_1, UNIT_STATE_LIFE)>0 then
	    set ut = shenghuoling_1
	    set ling1zhuan = false
	elseif GetUnitState(shenghuoling_2, UNIT_STATE_LIFE)>0 then
		set ut = shenghuoling_2
		set ling2zhuan = false
	else
		set ut = shenghuoling_3
		set ling3zhuan = false
	endif
	set loc = GetUnitLoc(ut)
    call SaveUnitHandle(YDHT,p,0,u)
    call SaveUnitHandle(YDHT,p,1,uc)
    call SaveUnitHandle(YDHT,p,2,ut)
    call SaveLocationHandle(YDHT,p,3,loc)
    call SaveInteger(YDHT,p,4,0)
    call TimerStart(t,0.03,true,function RengShengHuoLing_Action)
    set u=null
    set uc=null
    set ut=null
    set loc=null
endfunction
//乾坤大挪移 25级技2
function IsQianKunTan takes nothing returns boolean
	return (IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))) and GetUnitAbilityLevel(GetTriggerUnit(),'A07W')>=2
endfunction
function QianKunTan_Condition takes nothing returns boolean
	return (IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))) and IsUnitAliveBJ(GetFilterUnit()) and GetUnitAbilityLevel(GetFilterUnit(),'Avul') < 1
endfunction

function QianKunTan takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local unit uc = GetEventDamageSource()
	local unit ut = null
	local group g = CreateGroup()
	local location loc = GetUnitLoc(u)
	local real shanghai = GetEventDamage()
	if GetRandomInt(0,100)<10+5*GetUnitAbilityLevel(u, 'A07W') then
		call WuDi(u)
		call GroupEnumUnitsInRangeOfLoc(g, loc, 1000, Condition(function QianKunTan_Condition))
		if g!=null then
			set ut = GroupPickRandomUnit(g)
			call WuGongShangHai(u, ut, shanghai*50*GetUnitAbilityLevel(u, 'A07W'))
			call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl",ut,"overhead"))
		endif
		call WuGongShengChong(u, 'A07W', 8000)
	endif
	call RemoveLocation(loc)
	call DestroyGroup(g)
	set u = null
	set uc = null
	set ut = null
	set loc = null
	set g = null
endfunction
//事件
function VIPMingJiao_Trigger takes nothing returns nothing
	local trigger t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t,Condition(function IsYingZhao))
    call TriggerAddAction(t,function YingZhaoGong)
    set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsYingZhaoZhuDong))
    call TriggerAddAction(t,function YingZhaoGongZhuDong)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsFuYi))
    call TriggerAddAction(t,function FuYiZong)
    set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsShiZi))
    call TriggerAddAction(t,function ShiZiHou)
    set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsShengHuo))
    call TriggerAddAction(t,function ShengHuoLing)
    set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t,Condition(function IsRengShengHuo))
    call TriggerAddAction(t,function RengShengHuoLing)
    set t=CreateTrigger()
	call YDWESyStemAnyUnitDamagedRegistTrigger( t )
	call TriggerAddCondition(t,Condition(function IsQianKunTan))
    call TriggerAddAction(t,function QianKunTan)
    set t =null
endfunction
