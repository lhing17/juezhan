
//===================================================
//决战江湖1.6之掌门传奇
//===================================================

//少林：如来神掌
function RuLaiShenZhang_Conditions takes nothing returns boolean
    return GetUnitAbilityLevel(GetAttacker(), 'A04L')>=1
endfunction

function RuLaiShenZhang_Actions takes nothing returns nothing
    local location array p
    local real r
    local real r1
    local real r2
    local integer a
    local integer b
    local integer i = 0
    local unit u = GetAttacker()
    local unit ut = null
    local unit array uuu
    local player ppl = GetOwningPlayer(u)
    local integer id = 0
    local real dist = RMinBJ(GetCameraField(CAMERA_FIELD_TARGET_DISTANCE), 2500)
    if((GetUnitTypeId(GetAttacker())=='O004'))then
		set id = 1747988533
	elseif((GetUnitTypeId(GetAttacker())=='O001'))then
		set id = 1747988535
	elseif((GetUnitTypeId(GetAttacker())=='O002'))then
		set id = 1747988536
	elseif((GetUnitTypeId(GetAttacker())=='O003'))then
		set id = 1747988537
	elseif((GetUnitTypeId(GetAttacker())=='O000'))then
		set id = 1747988534
	elseif((GetUnitTypeId(GetAttacker())=='O023' or GetUnitTypeId(GetAttacker())=='O02H' or GetUnitTypeId(GetAttacker())=='O02I'))then
		set id = 'h00I'
	elseif((GetUnitTypeId(GetAttacker())=='O02J'))then
		set id = 'h00K'
	endif
	set p[0] = GetUnitLoc(u)
    call CreateNUnitsAtLoc(1, id, ppl, p[0], GetUnitFacing(u))
    set ut = bj_lastCreatedUnit
    set p[17] = PolarProjectionBJ(p[0], 300, GetUnitFacing(u))
    set r = GetUnitFacing(u)+270
    set p[0] = p[17]
    set p[1] = PolarProjectionBJ(p[0], 241.96, ( -47.89 + r ))
    set p[2] = PolarProjectionBJ(p[0], 258.87, ( -66.01 + r ))
    set p[3] = PolarProjectionBJ(p[0], 263.73, ( -82.54 + r ))
    set p[4] = PolarProjectionBJ(p[0], 238.72, ( -111.24 + r ))
    set p[5] = PolarProjectionBJ(p[0], 219.18, ( -139.53 + r ))
    set p[6] = PolarProjectionBJ(p[0], 220.88, ( -170.75 + r ))
    set p[7] = PolarProjectionBJ(p[0], 237.01, ( 159.50 + r ))
    set p[8] = PolarProjectionBJ(p[0], 432.59, ( 159.71 + r ))
    set p[9] = PolarProjectionBJ(p[0], 257.35, ( 133.15 + r ))
    set p[10] = PolarProjectionBJ(p[0], 639.01, ( 117.27 + r ))
    set p[11] = PolarProjectionBJ(p[0], 238.57, ( 104.94 + r ))
    set p[12] = PolarProjectionBJ(p[0], 775.44, ( 102.34 + r ))
    set p[13] = PolarProjectionBJ(p[0], 208.18, ( 67.62 + r ))
    set p[14] = PolarProjectionBJ(p[0], 687.95, ( 87.44 + r ))
    set p[15] = PolarProjectionBJ(p[0], 208.61, ( -29.12 + r ))
    set p[16] = PolarProjectionBJ(p[0], 521.16, ( 65.24 + r ))
    call UnitAddAbilityBJ( 'Aloc', ut )
    call SetCameraFieldForPlayer( ppl, CAMERA_FIELD_TARGET_DISTANCE, 4000.00, 2.00 )
    call SetUnitFlyHeight( ut, 2000.00, 400.00 )
    call IssuePointOrderLoc( ut, "move", p[0] )
    call PolledWait( 2.00 )
    call SetUnitFlyHeight( ut, 0.00, 800.00 )
    set a = 1
    set b = 6
    loop
        exitwhen a > b
        set p[18] = PolarProjectionBJ(p[0], 110.00, ( 60.00 * I2R(a) ))
        call CreateNUnitsAtLoc( 1, 'e019', ppl, p[18] , 0 )
        call IssueImmediateOrderById(bj_lastCreatedUnit,$D00D1)
        set a = a + 1
        set uuu[i] = bj_lastCreatedUnit
        set i = i + 1
        call RemoveLocation( p[18] )
    endloop
    set a = 0
    set b = 16
    loop
        exitwhen a > b
        call CreateNUnitsAtLoc( 1, 'e019', ppl, p[a], 0 )
        call IssueImmediateOrderById(bj_lastCreatedUnit,$D00D1)
        set uuu[i] = bj_lastCreatedUnit
        set i = i + 1
        set a = a + 1
    endloop
    set a = 1
    set b = 3
    loop
        exitwhen a > b
        set r1 = DistanceBetweenPoints(p[9], p[10]) * ( I2R(a) / 4.00 )
        set r2 = AngleBetweenPoints(p[9], p[10])
        set p[18] = PolarProjectionBJ(p[9], r1 , r2 )
        call CreateNUnitsAtLoc( 1, 'e019', ppl, p[18] , 0 )
        call IssueImmediateOrderById(bj_lastCreatedUnit,$D00D1)
        set uuu[i] = bj_lastCreatedUnit
        set i = i + 1
        set r1 = DistanceBetweenPoints(p[13], p[14]) * ( I2R(a) / 4.00 )
        set r2 = AngleBetweenPoints(p[13], p[14])
        set p[18] = PolarProjectionBJ(p[13], r1 , r2 )
        call CreateNUnitsAtLoc( 1, 'e019', ppl, p[18] , 0 )
        call IssueImmediateOrderById(bj_lastCreatedUnit,$D00D1)
        set uuu[i] = bj_lastCreatedUnit
        set i = i + 1
        set a = a + 1
    endloop
    set a = 1
    set b = 4
    loop
        exitwhen a > b
        set r1 = DistanceBetweenPoints(p[11], p[12]) * ( I2R(a) / 5.00 )
        set r2 = AngleBetweenPoints(p[11], p[12])
        set p[18] = PolarProjectionBJ(p[11], r1 , r2 )
        call CreateNUnitsAtLoc( 1, 'e019', ppl, p[18] , 0 )
        call IssueImmediateOrderById(bj_lastCreatedUnit,$D00D1)
        set uuu[i] = bj_lastCreatedUnit
        set i = i + 1
        set a = a + 1
    endloop
    set a = 1
    set b = 5
    loop
        exitwhen a > b
        set r1 = DistanceBetweenPoints(p[15], p[16]) * ( I2R(a) / 6.00 )
        set r2 = AngleBetweenPoints(p[15], p[16])
        set p[18] = PolarProjectionBJ(p[15], r1 , r2 )
        call CreateNUnitsAtLoc( 1, 'e019', ppl, p[18] , 0 )
        call IssueImmediateOrderById(bj_lastCreatedUnit,$D00D1)
        set uuu[i] = bj_lastCreatedUnit
        set i = i + 1
        set a = a + 1
    endloop
    set r1 = DistanceBetweenPoints(p[7], p[8]) / 2.00
    set r2 = AngleBetweenPoints(p[7], p[8])
    set p[18] = PolarProjectionBJ(p[7], r1 , r2 )
    call CreateNUnitsAtLoc( 1, 'e019', ppl, p[18] , 0 )
    call IssueImmediateOrderById(bj_lastCreatedUnit,$D00D1)
    set uuu[i] = bj_lastCreatedUnit
    call CameraSetEQNoiseForPlayer( ppl, 10.00 )
    call SetCameraFieldForPlayer( GetOwningPlayer(u), CAMERA_FIELD_TARGET_DISTANCE, dist, 5.00 )
    call CinematicFilterGenericBJ( 5.00, BLEND_MODE_BLEND, "ReplaceableTextures\\CameraMasks\\DreamFilter_Mask.blp", 0.00, 0.00, 0.00, 0.00, 100.00, 100.00, 100.00, 100.00 )
    set a = 0
    set b = i
    loop
        exitwhen a>b
        call SetUnitTimeScale( uuu[a], 0.80 )
        set a = a + 1
    endloop
    call PolledWait( 2.20 )
    set a = 0
    set b = i
    loop
        exitwhen a>b
        call SetUnitTimeScale( uuu[a], 0.02 )
        set a = a + 1
    endloop
    call UnitRemoveAbilityBJ( 'Aloc', ut )
    call ShowUnitHide( ut )
    call ShowUnitShow( ut )
    call RemoveUnit(ut)
    call PolledWait( 4.00 )
    call CameraClearNoiseForPlayer( ppl )
    set a = 0
    set b = 18
    loop
        exitwhen a>b
        call RemoveLocation( p[a] )
        set p[a] = null
        set a = a + 1
    endloop
    set a = 0
    set b = i
    loop
        exitwhen a>b
        set uuu[a] = null
        set a = a + 1
    endloop
    set u = null
    set a = 0
    set b = 0
    set i = 0
    set r = 0.00
    set r1 = 0.00
    set r2 = 0.00
    set ppl = null
endfunction
function IsRuLaiShenZhang takes nothing returns boolean
	return (GetEventDamage()==5.17) and (GetUnitAbilityLevel(udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))], 'A04L')>=1)
endfunction
function RuLaiShenZhang takes nothing returns nothing
	local unit u=udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))]
    local unit uc=GetTriggerUnit()
    local real shxishu=1.
    local real shanghai=0.
    set shanghai=ShangHaiGongShi(u,uc,65,75,shxishu,'A04L')
    call WuGongShangHai(u,uc,shanghai)
    set u=null
    set uc=null
endfunction
//===========================================================================
function InitTrig_ZhangMenSkill takes nothing returns nothing
	local trigger t = CreateTrigger()
	//少林：如来神掌
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t, Condition(function RuLaiShenZhang_Conditions))
	call TriggerAddAction(t, function RuLaiShenZhang_Actions)
	set t=CreateTrigger()
	call Ov(t)
	call TriggerAddCondition(t,Condition(function IsRuLaiShenZhang))
	call TriggerAddAction(t,function RuLaiShenZhang)
	//武当：太极剑
	set t = null
endfunction
