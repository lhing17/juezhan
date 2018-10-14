//=================================================
//神龙教
//男性角色：子胥举鼎A04W、鲁达拔柳A04Z、狄青降龙A051
//女性角色：贵妃回眸A04X、飞燕回翔A054、小怜横陈A056
//内功：神龙八式A057、神龙心法A059
//=================================================

//子胥举鼎
function IsZiXuBeiDong takes nothing returns boolean
	return IsUnitEnemy(GetAttacker(),GetOwningPlayer(GetTriggerUnit())) and GetUnitAbilityLevel(GetTriggerUnit(), 'A04W')>=1
endfunction
function ZiXuBeiDong takes nothing returns nothing
	local integer i = GetPlayerId(GetOwningPlayer(GetTriggerUnit())) + 1
	if GetRandomReal(1, 300) < 15 + fuyuan[i]/5 then
		call maJiaUseAbilityAtEnemysLoc(GetTriggerUnit(), 'e000', 'A04W', $D0102, GetAttacker(), 15.)
	endif
endfunction
function IsZiXuJuDing takes nothing returns boolean
	return((GetEventDamage()==.95))
endfunction
function ZiXuJuDing takes nothing returns nothing
	local unit u=udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))]
    local unit uc=GetTriggerUnit()
    local real shxishu=1.
    local real shanghai=0.
    local location loc=GetUnitLoc(uc)
    if((GetUnitAbilityLevel(u,'A06L')!=0))then//加化骨绵掌
        set shxishu=shxishu+.6
    endif
    if((GetUnitAbilityLevel(u,'A03N')!=0))then//加神行百变
        set shxishu=shxishu+.7
    endif
    set shanghai=ShangHaiGongShi(u,uc,24,40,shxishu,'A04W')
    call WuGongShangHai(u,uc,shanghai)
    if((GetUnitAbilityLevel(u,'A06J')!=0)and(GetRandomInt(1,100)<=30)and(UnitHasBuffBJ(uc,1111844210)==false))then //加连城走火入魔
        call WanBuff(u, uc, 2)
    endif
    if((GetUnitAbilityLevel(u,'A04V')!=0)and(GetRandomInt(1,100)<=30)and(UnitHasBuffBJ(uc,1110454323)==false))then //加夫妻神经错乱
         call WanBuff(u, uc, 10)
    endif
    if(GetUnitAbilityLevel(u,'S002')!=0)and(GetRandomInt(1,100)<=25) and IsUnitAliveBJ(uc) then //加龙象几率连环爆裂
	    call PolledWait(0.15)
	    call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(u),loc,bj_UNIT_FACING)
	    call ShowUnitHide(bj_lastCreatedUnit)
		call UnitAddAbility(bj_lastCreatedUnit, 'A04W')
		call IssueTargetOrderById(bj_lastCreatedUnit,$D0102, uc)
		call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',15.)

    endif
    call RemoveLocation(loc)
    call WuGongShengChong(u,'A04W',2400.)
    call WuGongShengChong(u,'A059',2500.)
    set u=null
    set uc=null
    set loc=null
endfunction
//小怜横陈
function IsXiaoLianHengChen takes nothing returns boolean
	return((GetUnitAbilityLevel(GetAttacker(),'A056')>=1)and(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))))
endfunction
function XiaoLian_Condition takes nothing returns boolean
	return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetAttacker()))and(IsUnitAliveBJ(GetFilterUnit()))
endfunction
function XiaoLian_Action takes nothing returns nothing
	local unit uc=GetEnumUnit()
	local unit u=GetAttacker()
	local real x=GetUnitX(uc)
	local real y=GetUnitY(uc)
	local location loc = GetUnitLoc(uc)
	local real shxishu=1.
	local real shanghai=0.
	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Polymorph\\PolyMorphDoneGround.mdl", x, y))
	set shanghai=ShangHaiGongShi(u,uc,8,11,shxishu,'A056')
	if GetUnitAbilityLevel(u, 'A059')!=0 and GetRandomReal(1, 100)<=30 then //加美人心法
		call CreateNUnitsAtLoc(1,'e000',  GetOwningPlayer(u), loc, bj_UNIT_FACING)
	    call ShowUnitHide(bj_lastCreatedUnit)
		call UnitAddAbility(bj_lastCreatedUnit, 'A05A')
		call IssueTargetOrderById(bj_lastCreatedUnit,$D0216, uc)
		call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',15.)
	endif
	if((GetUnitAbilityLevel(u,'A07S')!=0))then//加九阴
        set shxishu=shxishu+.7
    endif
	call WuGongShangHai(u,uc,shanghai)
	call RemoveLocation(loc)
	set loc = null
	set u=null
	set uc=null
endfunction
function XiaoLianHengChen takes nothing returns nothing
	local unit u=GetAttacker()
	local unit uc=GetTriggerUnit()
	local location loc1=GetUnitLoc(u)
	local location loc2=GetUnitLoc(uc)
	local integer i = 1 + GetPlayerId(GetOwningPlayer(u))
	if (GetRandomReal(.0,100.) <= 22. + fuyuan[i]/3 )then
		//加双手加范围
	    call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(500+300*(GetUnitAbilityLevel(u,'A07U')),loc1,Condition(function XiaoLian_Condition)),function XiaoLian_Action)
	    call WuGongShengChong(u,'A056',900.)
	    call WuGongShengChong(u,'A059',2500.)
	    if((GetUnitAbilityLevel(u,'A07N')!=0))then//加九爪
		    call SetUnitState(u, UNIT_STATE_MANA, (GetUnitState(u,UNIT_STATE_MANA)+(.2*GetUnitState(u,UNIT_STATE_MAX_MANA))))
		endif
	endif
	call RemoveLocation(loc1)
	call RemoveLocation(loc2)
endfunction

//贵妃回眸
function IsGuiFeiHuiMou takes nothing returns boolean
	return GetSpellAbilityId()=='A04X'
endfunction
function XiaoLian_Condition_1 takes nothing returns boolean
	return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetEventDamageSource()))and(IsUnitAliveBJ(GetFilterUnit()))
endfunction
function XiaoLian_Action_1 takes nothing returns nothing
	local unit uc=GetEnumUnit()
	local unit u=udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))]
	local real x=GetUnitX(uc)
	local real y=GetUnitY(uc)
	local location loc = GetUnitLoc(uc)
	local real shxishu=1.
	local real shanghai=0.
	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Polymorph\\PolyMorphDoneGround.mdl", x, y))
	set shanghai=ShangHaiGongShi(u,uc,8,11,shxishu,'A056')
	if GetUnitAbilityLevel(u, 'A059')!=0 and GetRandomReal(1, 100)<=30 then //加神龙心法
		call CreateNUnitsAtLoc(1,'e000' , GetOwningPlayer(u), loc, bj_UNIT_FACING)
	    call ShowUnitHide(bj_lastCreatedUnit)
		call UnitAddAbility(bj_lastCreatedUnit, 'A05A')
		call IssueTargetOrderById(bj_lastCreatedUnit,$D0216, uc)
		call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',15.)
	endif
	if((GetUnitAbilityLevel(u,'A07S')!=0))then//加九阴
        set shxishu=shxishu+.7
    endif

	call WuGongShangHai(u,uc,shanghai)
	call RemoveLocation(loc)
	set loc = null
	set u=null
	set uc=null
endfunction
function GuiFeiHuiMou takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local unit ut = GetSpellTargetUnit()
	local player p = GetOwningPlayer(u)
	local location loc = GetUnitLoc(u)
	call CreateNUnitsAtLoc(1,'e000',p,loc,bj_UNIT_FACING)
    call ShowUnitHide(bj_lastCreatedUnit)
	call UnitAddAbility(bj_lastCreatedUnit, 'A04Y')
    call IssueTargetOrderById(bj_lastCreatedUnit, $D007F, ut)
    call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',10.)
    call RemoveLocation(loc)
    set loc = null
    set u = null
    set ut = null
    set p = null
endfunction
function IsGuiFeiHuiMouSH takes nothing returns boolean
	return((GetEventDamage()==.96))
endfunction
function GuiFeiHuiMouSH takes nothing returns nothing
	local unit u=udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))]
    local unit uc=GetTriggerUnit()
    local location loc=GetUnitLoc(uc)
    local location loc2 = GetUnitLoc(u)
    local integer i = 1 + GetPlayerId(GetOwningPlayer(u))
    local real shxishu= RMinBJ(DistanceBetweenPoints(loc, loc2)/500, 4)
    local real shanghai=0.
    call WuGongShengChong(u,'A04X',500.)
    call WuGongShengChong(u,'A059',2500.)
    if (GetUnitAbilityLevel(u,'A03V')!=0) then //加擒龙
	    set shxishu= RMinBJ(DistanceBetweenPoints(loc, loc2)/300, 10)
    endif
    if (GetUnitAbilityLevel(u,'A0D4')!=0) then //加医疗篇
	    set shxishu= shxishu + 1
    endif
    if (GetUnitAbilityLevel(u,'A0D2')!=0) then //加逆九阴
	    set shxishu= shxishu + 1.2
    endif
	if (GetUnitAbilityLevel(u,'A056')!=0) and (GetRandomReal(.0,100.) <= 22. + fuyuan[i]/3 ) then //加小怜横陈
	    call ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(500+300*(GetUnitAbilityLevel(u,'A07U')),loc,Condition(function XiaoLian_Condition_1)),function XiaoLian_Action_1)
	    call WuGongShengChong(u,'A056',900.)
	    call WuGongShengChong(u,'A059',2500.)
	    if((GetUnitAbilityLevel(u,'A07N')!=0))then//加九爪
		    call SetUnitState(u, UNIT_STATE_MANA, (GetUnitState(u,UNIT_STATE_MANA)+(.2*GetUnitState(u,UNIT_STATE_MAX_MANA))))
		endif
	endif
    set shanghai=ShangHaiGongShi(u,uc,80,90,shxishu,'A04X')
    call WuGongShangHai(u,uc,shanghai)
    call RemoveLocation(loc)
    call RemoveLocation(loc2)

    set u=null
    set uc=null
    set loc=null
	set loc2=null
endfunction
//鲁达拔柳
function IsLuDaBaLiu takes nothing returns boolean
	return UnitHasBuffBJ(GetAttacker(), 'B016') and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))
endfunction
function LuDaBaLiuYun takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local unit ut = LoadUnitHandle(YDHT, GetHandleId(t), 1)
	if((GetUnitAbilityLevel(u,'A06L')!=0))then//加化骨穴位全封
		call WanBuff(u, ut, 12)
	else
		call WanBuff(u, ut, 11)
	endif
	call FlushChildHashtable(YDHT, GetHandleId(t))
	call DestroyTimer(t)
	set t = null
	set u = null
	set ut = null
endfunction
function LuDaBaLiu takes nothing returns nothing
	local unit u=GetAttacker()
	local unit ut=GetTriggerUnit()
	local timer t =CreateTimer()
	local real shxishu= 1
    local real shanghai=0.
    if((GetUnitAbilityLevel(u,'A057')!=0))then//加神龙八式
        set shxishu=shxishu+.6
    endif
    if((GetUnitAbilityLevel(u,'A0CE')!=0))then//加龟息功
        set shxishu=shxishu+1.
    endif
    set shanghai=ShangHaiGongShi(u,ut,80,100,shxishu,'A04Z')
    call WuGongShangHai(u,ut,shanghai)
    call WuGongShengChong(u,'A04Z',200.)
    call WuGongShengChong(u,'A059',2500.)
    if GetUnitAbilityLevel(u, 'A082')>=1 or (GetUnitAbilityLevel(u, 'A06J')>=1 and GetRandomInt(1, 100)<=30) then //加北冥或连城几率，BUFF不消失
	else
		call UnitRemoveBuffBJ('B016', u)
	endif
	call YDWEJumpTimer( ut, 0, 0.00, 1.00, 0.01, 500.00 )
	call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	call SaveUnitHandle(YDHT, GetHandleId(t), 1, ut)
	call TimerStart(t, 1., false, function LuDaBaLiuYun)
	set u = null
	set ut = null
	set t = null
endfunction
//狄青降龙
function IsDiQingXiangLong takes nothing returns boolean
	return GetSpellAbilityId()=='A051'
endfunction
function DiQingXiangLongCai takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local location loc = GetUnitLoc(u)
	call CreateNUnitsAtLoc(1,'e000',GetOwningPlayer(u),loc,bj_UNIT_FACING)
    call ShowUnitHide(bj_lastCreatedUnit)
    call UnitAddAbility(bj_lastCreatedUnit, 'A050')
    call IssueImmediateOrderById(bj_lastCreatedUnit, $D0080)
    call UnitApplyTimedLife(bj_lastCreatedUnit,'BHwe',10.)
    call FlushChildHashtable(YDHT, GetHandleId(t))
	call DestroyTimer(t)
	set t = null
	set u = null
	set ut = null
endfunction
function DiQingXiaoWu takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local integer i = LoadInteger(YDHT, GetHandleId(t), 0)
	set udg_shanghaixishou[i] = udg_shanghaixishou[i] - .1
    call FlushChildHashtable(YDHT, GetHandleId(t))
	call DestroyTimer(t)
	set t = null
endfunction
function DiQingXiangLong takes nothing returns nothing
	local unit u = GetTriggerUnit()
	local unit ut = GetSpellTargetUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	local location loc = GetUnitLoc(u)
	local location loc2 = GetUnitLoc(ut)
	local timer t =CreateTimer()
	local timer tm =CreateTimer()
	call WuGongShengChong(u,'A051',150.)
	call WuGongShengChong(u,'A059',2500.)
	if GetUnitAbilityLevel(u, 'A03O')!=0 and GetRandomInt(1, 100) <= 10+GetUnitLevel(ut)/2 then //妙手空空偷珍稀币
		call AdjustPlayerStateBJ(GetRandomInt(1, 5),GetOwningPlayer(u),PLAYER_STATE_RESOURCE_LUMBER)
	endif
	if GetUnitAbilityLevel(u, 'A07R')!=0 and GetRandomInt(1, 100) <= 10+GetUnitLevel(ut)/2 then //吸星大法加内力
		call ModifyHeroStat(1,u,0,GetRandomInt(1, 10))
	endif
	if GetUnitAbilityLevel(u, 'A083')!=0 and GetRandomInt(1, 100) <= 10+GetUnitLevel(ut)/2 then //小无相加伤害吸收
		set udg_shanghaixishou[i] = udg_shanghaixishou[i] + .1
		call SaveInteger(YDHT, GetHandleId(tm), 0, i)
		call TimerStart(tm, 15, false, function DiQingXiaoWu)
	endif
	call YDWEJumpTimer( u,  AngleBetweenPoints(loc, loc2),DistanceBetweenPoints(loc, loc2), 0.70, 0.02, 500.00 )
	call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	call TimerStart(t,0.7, false, function DiQingXiangLongCai)
    call RemoveLocation(loc)
    call RemoveLocation(loc2)
    set loc = null
    set loc2 = null
    set u = null
    set ut = null
    set p = null
    set t = null
    set tm = null
endfunction
function IsDiQingXiangLongSH takes nothing returns boolean
	return((GetEventDamage()==.97))
endfunction
function DiQingXiangLongSH takes nothing returns nothing
	local unit u=udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))]
    local unit ut=GetTriggerUnit()
    local real shxishu= 1
    local real shanghai=0.
    if((GetUnitAbilityLevel(u,'A07M')!=0))then//加七伤拳
	    call WanBuff(u, ut, GetRandomInt(1, 13))
	else
		call WanBuff(u, ut, 9)
    endif

    if((GetUnitAbilityLevel(u,'A03T')!=0))then//加须弥山掌
        set shxishu=shxishu+1.2
    endif
    set shanghai=ShangHaiGongShi(u,ut,100,140,shxishu,'A051')
    call WuGongShangHai(u,ut,shanghai)

    set u=null
    set ut=null
endfunction

// //飞燕回翔
// function IsFeiYanHuiXiang takes nothing returns boolean
    // return ((GetSpellAbilityId() == 'A054'))
// endfunction

// function Trig_Wild_Axes_aFunc026Func021002003 takes nothing returns boolean
    // return (((IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false) and ((IsUnitAliveBJ(GetFilterUnit()) == true) and ((IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0xB95F828C))) == true) and (IsUnitInGroup(GetFilterUnit(), YDTriggerGetEx(group, YDTriggerH2I(GetExpiredTimer()), 0x93FE3865)) == false)))))
// endfunction

// function Trig_Wild_Axes_aFunc026Func022002003 takes nothing returns boolean
    // return (((IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false) and ((IsUnitAliveBJ(GetFilterUnit()) == true) and ((IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0xB95F828C))) == true) and (IsUnitInGroup(GetFilterUnit(), YDTriggerGetEx(group, YDTriggerH2I(GetExpiredTimer()), 0xF3DA78D7)) == false)))))
// endfunction

// //function Trig_Wild_Axes_aFunc026Func023003 takes nothing returns nothing
// //    if (((GetDestructableTypeId(GetEnumDestructable()) != 'YTlb') and (GetDestructableTypeId(GetEnumDestructable()) != 'Ytlc'))) then
// //        call KillDestructable( GetEnumDestructable() )
// //    else
// //        call DoNothing(  )
// //    endif
// //endfunction

// //function Trig_Wild_Axes_aFunc026Func024003 takes nothing returns nothing
// //    if (((GetDestructableTypeId(GetEnumDestructable()) != 'YTlb') and (GetDestructableTypeId(GetEnumDestructable()) != 'Ytlc'))) then
// //        call KillDestructable( GetEnumDestructable() )
// //    else
// //        call DoNothing(  )
// //    endif
// //endfunction

// function Trig_Wild_Axes_aFunc026Func025A takes nothing returns nothing
	// local unit u = YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0xB95F828C)
	// local unit ut = GetEnumUnit()
	// local real shxishu= 1
    // local real shanghai=0.
    // if((GetUnitAbilityLevel(u,'A07P')!=0))then//加化功
        // set shxishu=shxishu+.7
    // endif
    // if((GetUnitAbilityLevel(u,'A0D6')!=0))then//加锻骨篇
        // set shxishu=shxishu+1.3
    // endif
    // if((GetUnitAbilityLevel(u,'A0D1')!=0))then//加摧坚神抓
        // call WanBuff(u, ut, 9)
    // endif
    // if((GetUnitAbilityLevel(u,'A0D3')!=0))then//加摧心掌
       // call WanBuff(u, ut, 7)
    // endif
    // set shanghai=ShangHaiGongShi(u,ut,60,40,shxishu,'A054')
    // call WuGongShangHai(u,ut,shanghai)

    // call GroupAddUnit( YDTriggerGetEx(group, YDTriggerH2I(GetExpiredTimer()), 0x93FE3865), GetEnumUnit() )
    // //call UnitDamageTarget( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0xB95F828C), GetEnumUnit(), ( ( I2R(GetUnitAbilityLevel(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0xB95F828C), 'AUcs')) * 30.00 ) + 60.00 ), true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_METAL_MEDIUM_SLICE )
    // call DestroyEffect( AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl", GetEnumUnit(), "overhead") )
// endfunction

// function Trig_Wild_Axes_aFunc026Func026A takes nothing returns nothing
	// local unit u = YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0xB95F828C)
	// local unit ut = GetEnumUnit()
	// local real shxishu= 1
    // local real shanghai=0.
    // set shanghai=ShangHaiGongShi(u,ut,120,80,shxishu,'A054')
    // call WuGongShangHai(u,ut,shanghai)
    // call GroupAddUnit( YDTriggerGetEx(group, YDTriggerH2I(GetExpiredTimer()), 0xF3DA78D7), GetEnumUnit() )
    // //call UnitDamageTarget( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0xB95F828C), GetEnumUnit(), ( ( I2R(GetUnitAbilityLevel(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0xB95F828C), 'AUcs')) * 30.00 ) + 60.00 ), true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_METAL_MEDIUM_SLICE )
    // call DestroyEffect( AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl", GetEnumUnit(), "overhead") )
// endfunction

// function Trig_Wild_Axes_aFunc026T takes nothing returns nothing
    // local group ydl_group
    // local unit ydl_unit
    // call YDWESetLocalVariableRealArray( "x", 0, YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0x324AE96A) )
    // call YDWESetLocalVariableRealArray( "y", 0, YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0x058682B9) )
    // call YDWESetLocalVariableRealArray( "x", 1, YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0x2392447A) )
    // call YDWESetLocalVariableRealArray( "y", 1, YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0xB0897302) )
    // call YDWESetLocalVariableRealArray( "x", 2, YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0x41713DA3) )
    // call YDWESetLocalVariableRealArray( "y", 2, YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0x71CA3531) )
    // call YDWESetLocalVariableRealArray( "x", 3, YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0xD310CF7A) )
    // call YDWESetLocalVariableRealArray( "y", 3, YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0x7D73FF94) )
    // call YDWESetLocalVariableReal( "a", YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0xD5CF2EF3) )
    // call YDWESetLocalVariableReal( "b", ( 1.00 - YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0xD5CF2EF3) ) )
    // call SetUnitX( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x5FB96E0B), ( ( YDWEGetLocalVariableRealArray("x", 0) * ( YDWEGetLocalVariableReal("a") * YDWEGetLocalVariableReal("a") ) ) + ( ( ( YDWEGetLocalVariableRealArray("x", 2) * 2.00 ) * ( YDWEGetLocalVariableReal("a") * YDWEGetLocalVariableReal("b") ) ) + ( YDWEGetLocalVariableRealArray("x", 1) * ( YDWEGetLocalVariableReal("b") * YDWEGetLocalVariableReal("b") ) ) ) ) )
    // call SetUnitY( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x5FB96E0B), ( ( YDWEGetLocalVariableRealArray("y", 0) * ( YDWEGetLocalVariableReal("a") * YDWEGetLocalVariableReal("a") ) ) + ( ( ( YDWEGetLocalVariableRealArray("y", 2) * 2.00 ) * ( YDWEGetLocalVariableReal("a") * YDWEGetLocalVariableReal("b") ) ) + ( YDWEGetLocalVariableRealArray("y", 1) * ( YDWEGetLocalVariableReal("b") * YDWEGetLocalVariableReal("b") ) ) ) ) )
    // call SetUnitX( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x3893EA54), ( ( YDWEGetLocalVariableRealArray("x", 0) * ( YDWEGetLocalVariableReal("a") * YDWEGetLocalVariableReal("a") ) ) + ( ( ( YDWEGetLocalVariableRealArray("x", 3) * 2.00 ) * ( YDWEGetLocalVariableReal("a") * YDWEGetLocalVariableReal("b") ) ) + ( YDWEGetLocalVariableRealArray("x", 1) * ( YDWEGetLocalVariableReal("b") * YDWEGetLocalVariableReal("b") ) ) ) ) )
    // call SetUnitY( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x3893EA54), ( ( YDWEGetLocalVariableRealArray("y", 0) * ( YDWEGetLocalVariableReal("a") * YDWEGetLocalVariableReal("a") ) ) + ( ( ( YDWEGetLocalVariableRealArray("y", 3) * 2.00 ) * ( YDWEGetLocalVariableReal("a") * YDWEGetLocalVariableReal("b") ) ) + ( YDWEGetLocalVariableRealArray("y", 1) * ( YDWEGetLocalVariableReal("b") * YDWEGetLocalVariableReal("b") ) ) ) ) )
    // if ((GetUnitX(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x5FB96E0B)) > ( GetRectMaxX(bj_mapInitialPlayableArea) - 50.00 ))) then
        // call SetUnitX( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x5FB96E0B), ( GetRectMaxX(bj_mapInitialPlayableArea) - 50.00 ) )
    // else
        // if ((GetUnitX(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x5FB96E0B)) < ( GetRectMinX(bj_mapInitialPlayableArea) + 50.00 ))) then
            // call SetUnitX( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x5FB96E0B), ( GetRectMinX(bj_mapInitialPlayableArea) + 50.00 ) )
        // else
            // call DoNothing(  )
        // endif
    // endif
    // if ((GetUnitY(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x5FB96E0B)) > ( GetRectMaxY(bj_mapInitialPlayableArea) - 50.00 ))) then
        // call SetUnitY( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x5FB96E0B), ( GetRectMaxY(bj_mapInitialPlayableArea) - 50.00 ) )
    // else
        // if ((GetUnitY(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x5FB96E0B)) < ( GetRectMinY(bj_mapInitialPlayableArea) + 50.00 ))) then
            // call SetUnitY( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x5FB96E0B), ( GetRectMinY(bj_mapInitialPlayableArea) + 50.00 ) )
        // else
            // call DoNothing(  )
        // endif
    // endif
    // if ((GetUnitX(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x3893EA54)) > ( GetRectMaxX(bj_mapInitialPlayableArea) - 50.00 ))) then
        // call SetUnitX( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x3893EA54), ( GetRectMaxX(bj_mapInitialPlayableArea) - 50.00 ) )
    // else
        // if ((GetUnitX(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x3893EA54)) < ( GetRectMinX(bj_mapInitialPlayableArea) + 50.00 ))) then
            // call SetUnitX( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x3893EA54), ( GetRectMinX(bj_mapInitialPlayableArea) + 50.00 ) )
        // else
            // call DoNothing(  )
        // endif
    // endif
    // if ((GetUnitY(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x3893EA54)) > ( GetRectMaxY(bj_mapInitialPlayableArea) - 50.00 ))) then
        // call SetUnitY( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x3893EA54), ( GetRectMaxY(bj_mapInitialPlayableArea) - 50.00 ) )
    // else
        // if ((GetUnitY(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x3893EA54)) < ( GetRectMinY(bj_mapInitialPlayableArea) + 50.00 ))) then
            // call SetUnitY( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x3893EA54), ( GetRectMinY(bj_mapInitialPlayableArea) + 50.00 ) )
        // else
            // call DoNothing(  )
        // endif
    // endif
    // call YDTriggerSetEx(location, YDTriggerH2I(GetExpiredTimer()), 0x247CC5E5, GetUnitLoc(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x5FB96E0B)))
    // call YDTriggerSetEx(location, YDTriggerH2I(GetExpiredTimer()), 0xF4C4BD37, GetUnitLoc(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x3893EA54)))
    // call YDWESetLocalVariableGroup( "L1", GetUnitsInRangeOfLocMatching(115.00, YDTriggerGetEx(location, YDTriggerH2I(GetExpiredTimer()), 0x247CC5E5), Condition(function Trig_Wild_Axes_aFunc026Func021002003)) )
    // call YDWESetLocalVariableGroup( "L1", GetUnitsInRangeOfLocMatching(115.00, YDTriggerGetEx(location, YDTriggerH2I(GetExpiredTimer()), 0xF4C4BD37), Condition(function Trig_Wild_Axes_aFunc026Func022002003)) )
    // //call EnumDestructablesInCircleBJ( 115.00, YDTriggerGetEx(location, YDTriggerH2I(GetExpiredTimer()), 0x247CC5E5), function Trig_Wild_Axes_aFunc026Func023003 )
    // //call EnumDestructablesInCircleBJ( 115.00, YDTriggerGetEx(location, YDTriggerH2I(GetExpiredTimer()), 0xF4C4BD37), function Trig_Wild_Axes_aFunc026Func024003 )
    // call ForGroupBJ( YDWEGetLocalVariableGroup("L1"), function Trig_Wild_Axes_aFunc026Func025A )
    // call ForGroupBJ( YDWEGetLocalVariableGroup("L2"), function Trig_Wild_Axes_aFunc026Func026A )
    // call DestroyGroup( YDWEGetLocalVariableGroup("L1") )
    // call DestroyGroup( YDWEGetLocalVariableGroup("L2") )
    // if ((YDTriggerGetEx(boolean, YDTriggerH2I(GetExpiredTimer()), 0xA32DA6CF) == true)) then
        // call YDTriggerSetEx(real, YDTriggerH2I(GetExpiredTimer()), 0xD5CF2EF3, ( YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0xD5CF2EF3) - 0.02 ))
    // else
        // call YDWESetLocalVariableRealArray( "x", 0, GetUnitX(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0xB95F828C)) )
        // call YDWESetLocalVariableRealArray( "y", 0, GetUnitY(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0xB95F828C)) )
        // call YDTriggerSetEx(real, YDTriggerH2I(GetExpiredTimer()), 0xD5CF2EF3, ( YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0xD5CF2EF3) + 0.02 ))
        // call YDTriggerSetEx(real, YDTriggerH2I(GetExpiredTimer()), 0x324AE96A, GetUnitX(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0xB95F828C)))
        // call YDTriggerSetEx(real, YDTriggerH2I(GetExpiredTimer()), 0x058682B9, GetUnitY(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0xB95F828C)))
        // call YDWESetLocalVariableReal( "comp", Atan2(( YDWEGetLocalVariableRealArray("y", 1) - YDWEGetLocalVariableRealArray("y", 0) ), ( YDWEGetLocalVariableRealArray("x", 1) - YDWEGetLocalVariableRealArray("x", 0) )) )
        // call YDTriggerSetEx(real, YDTriggerH2I(GetExpiredTimer()), 0x236B99A8, YDWEGetLocalVariableReal("comp"))
    // endif
    // if (((YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0xD5CF2EF3) <= 0.00) and (YDTriggerGetEx(boolean, YDTriggerH2I(GetExpiredTimer()), 0xA32DA6CF) == true))) then
        // call YDTriggerSetEx(boolean, YDTriggerH2I(GetExpiredTimer()), 0xA32DA6CF, false)
        // call YDWESetLocalVariableRealArray( "x", 2, ( YDWEGetLocalVariableRealArray("x", 0) + ( 300.00 * Cos(( YDWEGetLocalVariableReal("comp") - 45.00 )) ) ) )
        // call YDWESetLocalVariableRealArray( "y", 2, ( YDWEGetLocalVariableRealArray("y", 0) + ( 300.00 * Sin(( YDWEGetLocalVariableReal("comp") - 45.00 )) ) ) )
        // call YDWESetLocalVariableRealArray( "x", 3, ( YDWEGetLocalVariableRealArray("x", 0) + ( 300.00 * Cos(( YDWEGetLocalVariableReal("comp") + 45.00 )) ) ) )
        // call YDWESetLocalVariableRealArray( "y", 3, ( YDWEGetLocalVariableRealArray("y", 0) + ( 300.00 * Sin(( YDWEGetLocalVariableReal("comp") + 45.00 )) ) ) )
        // call YDTriggerSetEx(real, YDTriggerH2I(GetExpiredTimer()), 0x41713DA3, YDWEGetLocalVariableRealArray("x", 2))
        // call YDTriggerSetEx(real, YDTriggerH2I(GetExpiredTimer()), 0x71CA3531, YDWEGetLocalVariableRealArray("y", 2))
        // call YDTriggerSetEx(real, YDTriggerH2I(GetExpiredTimer()), 0xD310CF7A, YDWEGetLocalVariableRealArray("x", 3))
        // call YDTriggerSetEx(real, YDTriggerH2I(GetExpiredTimer()), 0x7D73FF94, YDWEGetLocalVariableRealArray("y", 3))
    // else
    // endif
    // if (((YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0xD5CF2EF3) >= 1.00) and (YDTriggerGetEx(boolean, YDTriggerH2I(GetExpiredTimer()), 0xA32DA6CF) == false))) then
        // call RemoveLocation( YDWEGetLocalVariableLocation("point3") )
        // call RemoveLocation( YDWEGetLocalVariableLocation("point4") )
        // call RemoveUnit( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x5FB96E0B) )
        // call RemoveUnit( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x3893EA54) )
        // call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetExpiredTimer()), 0x93FE3865) )
        // call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetExpiredTimer()), 0xF3DA78D7) )
        // call YDTriggerClearTable(YDTriggerH2I(GetExpiredTimer()))
        // call DestroyTimer(GetExpiredTimer())
    // else
    // endif
    // set ydl_group = null
    // set ydl_unit = null
// endfunction

// function FeiYanHuiXiang takes nothing returns nothing
    // local timer ydl_timer
    // local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    // call WuGongShengChong(GetTriggerUnit(),'A054',300.)
    // call WuGongShengChong(GetTriggerUnit(),'A059',1500.)
    // set ydl_localvar_step = ydl_localvar_step + 3
    // call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    // call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    // call YDWESetLocalVariableRealArray( "x", 0, GetUnitX(GetTriggerUnit()) )
    // call YDWESetLocalVariableRealArray( "y", 0, GetUnitY(GetTriggerUnit()) )
    // call YDWESetLocalVariableRealArray( "x", 1, GetSpellTargetX() )
    // call YDWESetLocalVariableRealArray( "y", 1, GetSpellTargetY() )
    // call YDTriggerSetEx(unit, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
    // call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x324AE96A, GetUnitX(GetTriggerUnit()))
    // call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x058682B9, GetUnitY(GetTriggerUnit()))
    // call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x2392447A, GetSpellTargetX())
    // call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xB0897302, GetSpellTargetY())
    // call YDWESetLocalVariableReal( "comp", Atan2(( YDWEGetLocalVariableRealArray("y", 1) - YDWEGetLocalVariableRealArray("y", 0) ), ( YDWEGetLocalVariableRealArray("x", 1) - YDWEGetLocalVariableRealArray("x", 0) )) )
    // call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x236B99A8, YDWEGetLocalVariableReal("comp"))
    // call YDWESetLocalVariableRealArray( "x", 2, ( YDWEGetLocalVariableRealArray("x", 0) + ( 300.00 * Cos(( YDWEGetLocalVariableReal("comp") + 45.00 )) ) ) )
    // call YDWESetLocalVariableRealArray( "y", 2, ( YDWEGetLocalVariableRealArray("y", 0) + ( 300.00 * Sin(( YDWEGetLocalVariableReal("comp") + 45.00 )) ) ) )
    // call YDWESetLocalVariableRealArray( "x", 3, ( YDWEGetLocalVariableRealArray("x", 0) + ( 300.00 * Cos(( YDWEGetLocalVariableReal("comp") - 45.00 )) ) ) )
    // call YDWESetLocalVariableRealArray( "y", 3, ( YDWEGetLocalVariableRealArray("y", 0) + ( 300.00 * Sin(( YDWEGetLocalVariableReal("comp") - 45.00 )) ) ) )
    // call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x41713DA3, YDWEGetLocalVariableRealArray("x", 2))
    // call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x71CA3531, YDWEGetLocalVariableRealArray("y", 2))
    // call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xD310CF7A, YDWEGetLocalVariableRealArray("x", 3))
    // call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x7D73FF94, YDWEGetLocalVariableRealArray("y", 3))
    // call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xD5CF2EF3, 1.00)
    // call YDTriggerSetEx(boolean, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA32DA6CF, true)
    // call YDTriggerSetEx(unit, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5FB96E0B, CreateUnit(GetTriggerPlayer(), 'h00L', YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x324AE96A), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x058682B9), 270.00))
    // call YDTriggerSetEx(unit, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x3893EA54, CreateUnit(GetTriggerPlayer(), 'h00L', YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x324AE96A), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x058682B9), 270.00))
    // call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x93FE3865, CreateGroup())
    // call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xF3DA78D7, CreateGroup())
    // set ydl_timer = CreateTimer()
    // call YDTriggerSetEx(boolean, YDTriggerH2I(ydl_timer), 0xA32DA6CF, YDTriggerGetEx(boolean, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA32DA6CF))
    // call YDTriggerSetEx(unit, YDTriggerH2I(ydl_timer), 0xB95F828C, YDTriggerGetEx(unit, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xB95F828C))
    // call YDTriggerSetEx(group, YDTriggerH2I(ydl_timer), 0x93FE3865, YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x93FE3865))
    // call YDTriggerSetEx(group, YDTriggerH2I(ydl_timer), 0xF3DA78D7, YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xF3DA78D7))
    // call YDTriggerSetEx(real, YDTriggerH2I(ydl_timer), 0xD5CF2EF3, YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xD5CF2EF3))
    // call YDTriggerSetEx(unit, YDTriggerH2I(ydl_timer), 0x5FB96E0B, YDTriggerGetEx(unit, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5FB96E0B))
    // call YDTriggerSetEx(unit, YDTriggerH2I(ydl_timer), 0x3893EA54, YDTriggerGetEx(unit, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x3893EA54))
    // call YDTriggerSetEx(location, YDTriggerH2I(ydl_timer), 0x247CC5E5, YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x247CC5E5))
    // call YDTriggerSetEx(location, YDTriggerH2I(ydl_timer), 0xF4C4BD37, YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xF4C4BD37))
    // call YDTriggerSetEx(real, YDTriggerH2I(ydl_timer), 0x324AE96A, YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x324AE96A))
    // call YDTriggerSetEx(real, YDTriggerH2I(ydl_timer), 0x2392447A, YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x2392447A))
    // call YDTriggerSetEx(real, YDTriggerH2I(ydl_timer), 0x41713DA3, YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x41713DA3))
    // call YDTriggerSetEx(real, YDTriggerH2I(ydl_timer), 0xD310CF7A, YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xD310CF7A))
    // call YDTriggerSetEx(real, YDTriggerH2I(ydl_timer), 0x058682B9, YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x058682B9))
    // call YDTriggerSetEx(real, YDTriggerH2I(ydl_timer), 0xB0897302, YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xB0897302))
    // call YDTriggerSetEx(real, YDTriggerH2I(ydl_timer), 0x71CA3531, YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x71CA3531))
    // call YDTriggerSetEx(real, YDTriggerH2I(ydl_timer), 0x7D73FF94, YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x7D73FF94))
    // call TimerStart(ydl_timer, ( 0.25 / 10.00 ), true, function Trig_Wild_Axes_aFunc026T)
    // call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
    // set ydl_timer = null
// endfunction

//神龙八式
function Trig_ciZhenSaoSheConditions takes nothing returns boolean
    return ((GetSpellAbilityId() == 'A057'))
endfunction

function Trig_ciZhenSaoSheFunc007Func001Func002Func007T takes nothing returns nothing
	local unit u = LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0)
    if LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 20000)>0 then
	    call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 20000, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 20000)-1)
	    //call BJDebugMsg(I2S(LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 20000)))
    endif
    call DestroyTimer(GetExpiredTimer())
endfunction

function Trig_ciZhenSaoSheFunc007Conditions takes nothing returns boolean
	local timer ydl_timer
	local unit u = LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0)
	local unit ut = GetTriggerUnit()
	local integer i = LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 20000)
	local real shxishu=1.
	local real shanghai=0.
    if (YDWEIsTriggerEventId(EVENT_UNIT_DAMAGED) == false) then
	    //call BJDebugMsg("123")
	    call FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
        call DestroyTrigger(GetTriggeringTrigger())
        call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 20000, 0)
    else
        if (GetEventDamage() == .98) and GetEventDamageSource()== u then
	        //call BJDebugMsg("456")
	        set shxishu = 1+I2R(i)*0.1
	        set shanghai=ShangHaiGongShi(u,ut,15,18,shxishu,'A057')
			call WuGongShangHai(u,ut,shanghai)
			if((GetUnitAbilityLevel(u,'A03L')!=0))then//加寒冰真气昏迷
	   			call WanBuff(u, ut, 5)
   			endif
   			if((GetUnitAbilityLevel(u,'A07W')!=0))then//加乾坤
    		    set shxishu=shxishu+.6
    		endif
    		if((GetUnitAbilityLevel(u,'A07R')!=0))then//加吸星
    		    set shxishu=shxishu+.7
    		endif
    		if((GetUnitAbilityLevel(u,'A084')!=0))then//加蛤蟆
    		    set shxishu=shxishu+1.2
    		endif
			call SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 20000, i+1)
            set ydl_timer = CreateTimer()
            call SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0, u)
            call TimerStart(ydl_timer, 14.00, false, function Trig_ciZhenSaoSheFunc007Func001Func002Func007T)
        else
        endif
    endif
    set ydl_timer = null
    return false
endfunction

function Trig_ciZhenSaoSheActions takes nothing returns nothing
    local trigger ydl_trigger
    local unit u = GetTriggerUnit()
     call WuGongShengChong(u,'A057',900.)
    if LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 20000)<=0 then
    	set ydl_trigger= CreateTrigger()
    	call SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0, GetTriggerUnit())
    	call Ov( ydl_trigger )
    	call TriggerRegisterTimerEventSingle( ydl_trigger, 30.00 )
    	call TriggerAddCondition(ydl_trigger, Condition(function Trig_ciZhenSaoSheFunc007Conditions))
	endif
    set ydl_trigger = null
endfunction

//function IsShenLongBaShiSH takes nothing returns boolean
//	return((GetEventDamage()==.98))
//endfunction
//function ShenLongBaShiSH takes nothing returns nothing
//	local unit u=udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))]
//    local unit ut=GetTriggerUnit()
//    local real shxishu= 1
//    local real shanghai=0.
//    set shanghai=ShangHaiGongShi(u,ut,7.2,8.9,shxishu,'A057')
//    call WuGongShangHai(u,ut,shanghai)

//    set u=null
//    set ut=null
//endfunction
function ShenLong_Trigger takes nothing returns nothing
	local trigger t=CreateTrigger()
	//子胥举鼎
	call Ov(t)
	call TriggerAddCondition(t,Condition(function IsZiXuJuDing))
    call TriggerAddAction(t,function ZiXuJuDing)
    set t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(t,Condition(function IsZiXuBeiDong))
    call TriggerAddAction(t,function ZiXuBeiDong)
    //贵妃回眸
    set t= CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(t, Condition(function IsGuiFeiHuiMou))
    call TriggerAddAction(t,function GuiFeiHuiMou)
    set t= CreateTrigger()
    call Ov(t)
	call TriggerAddCondition(t,Condition(function IsGuiFeiHuiMouSH))
    call TriggerAddAction(t,function GuiFeiHuiMouSH)
    //鲁达拔柳
    set t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(t,Condition(function IsLuDaBaLiu))
    call TriggerAddAction(t,function LuDaBaLiu)
    //狄青降龙
    set t= CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(t, Condition(function IsDiQingXiangLong))
    call TriggerAddAction(t,function DiQingXiangLong)
    set t= CreateTrigger()
    call Ov(t)
	call TriggerAddCondition(t,Condition(function IsDiQingXiangLongSH))
    call TriggerAddAction(t,function DiQingXiangLongSH)

    // //飞燕回翔
    // set t = CreateTrigger()
    // call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    // call TriggerAddCondition(t, Condition(function IsFeiYanHuiXiang))
    // call TriggerAddAction(t, function FeiYanHuiXiang)
	//小怜横陈
    set t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(t,Condition(function IsXiaoLianHengChen))
    call TriggerAddAction(t,function XiaoLianHengChen)
    //神龙八式
    set t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddCondition(t, Condition(function Trig_ciZhenSaoSheConditions))
    call TriggerAddAction(t, function Trig_ciZhenSaoSheActions)
 //    set t= CreateTrigger()
 //   call Ov(t)
	//call TriggerAddCondition(t,Condition(function IsShenLongBaShiSH))
 //   call TriggerAddAction(t,function ShenLongBaShiSH)
    //神龙心法
    set t = null
endfunction

