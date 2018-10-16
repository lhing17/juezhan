--=================================================
--神龙教
--男性角色：子胥举鼎A04W、鲁达拔柳A04Z、狄青降龙A051
--女性角色：贵妃回眸A04X、飞燕回翔A054、小怜横陈A056
--内功：神龙八式A057、神龙心法A059
--=================================================
--子胥举鼎
function IsZiXuBeiDong()
	return IsUnitEnemy(GetAttacker(), GetOwningPlayer(GetTriggerUnit())) and GetUnitAbilityLevel(GetTriggerUnit(), 1093678167) >= 1
end
function ZiXuBeiDong()
	local i = GetPlayerId(GetOwningPlayer(GetTriggerUnit())) + 1
	if GetRandomReal(1, 300) < 15 + fuyuan[i] // 5 then
		maJiaUseAbilityAtEnemysLoc(GetTriggerUnit(), 1697656880, 1093678167, 852226, GetAttacker(), 15.0)
	end
end
function IsZiXuJuDing()
	return GetEventDamage() == 0.95
end
function ZiXuJuDing()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local uc = GetTriggerUnit()
	local shxishu = 1.0
	local shanghai = 0.0
	local loc = GetUnitLoc(uc)
	if GetUnitAbilityLevel(u, 1093678668) ~= 0 then --加化骨绵掌
		shxishu = shxishu + 0.6
	end
	if GetUnitAbilityLevel(u, 1093677902) ~= 0 then --加神行百变
		shxishu = shxishu + 0.7
	end
	shanghai = ShangHaiGongShi(u, uc, 24, 40, shxishu, 1093678167)
	WuGongShangHai(u, uc, shanghai)
	if GetUnitAbilityLevel(u, 1093678666) ~= 0 and GetRandomInt(1, 100) <= 30 and UnitHasBuffBJ(uc, 1111844210) == false then --加连城走火入魔
		WanBuff(u, uc, 2)
	end
	if GetUnitAbilityLevel(u, 1093678166) ~= 0 and GetRandomInt(1, 100) <= 30 and UnitHasBuffBJ(uc, 1110454323) == false then --加夫妻神经错乱
		WanBuff(u, uc, 10)
	end
	if GetUnitAbilityLevel(u, 1395666994) ~= 0 and GetRandomInt(1, 100) <= 25 and IsUnitAliveBJ(uc) then --加龙象几率连环爆裂
		YDWEPolledWaitNull(0.15)
		CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc, bj_UNIT_FACING)
		ShowUnitHide(bj_lastCreatedUnit)
		UnitAddAbility(bj_lastCreatedUnit, 1093678167)
		IssueTargetOrderById(bj_lastCreatedUnit, 852226, uc)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 15.0)
	end
	RemoveLocation(loc)
	WuGongShengChong(u, 1093678167, 2400.0)
	WuGongShengChong(u, 1093678393, 2500.0)
	u = nil
	uc = nil
	loc = nil
end
--小怜横陈
function IsXiaoLianHengChen()
	return GetUnitAbilityLevel(GetAttacker(), 1093678390) >= 1 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function XiaoLian_Condition()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetAttacker())) and IsUnitAliveBJ(GetFilterUnit())
end
function XiaoLian_Action()
	local uc = GetEnumUnit()
	local u = GetAttacker()
	local x = GetUnitX(uc)
	local y = GetUnitY(uc)
	local loc = GetUnitLoc(uc)
	local shxishu = 1.0
	local shanghai = 0.0
	DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Polymorph\\PolyMorphDoneGround.mdl", x, y))
	shanghai = ShangHaiGongShi(u, uc, 8, 11, shxishu, 1093678390)
	if GetUnitAbilityLevel(u, 1093678393) ~= 0 and GetRandomReal(1, 100) <= 30 then --加美人心法
		CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc, bj_UNIT_FACING)
		ShowUnitHide(bj_lastCreatedUnit)
		UnitAddAbility(bj_lastCreatedUnit, 1093678401)
		IssueTargetOrderById(bj_lastCreatedUnit, 852502, uc)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 15.0)
	end
	if GetUnitAbilityLevel(u, 1093678931) ~= 0 then --加九阴
		shxishu = shxishu + 0.7
	end
	WuGongShangHai(u, uc, shanghai)
	RemoveLocation(loc)
	loc = nil
	u = nil
	uc = nil
end
function XiaoLianHengChen()
	local u = GetAttacker()
	local uc = GetTriggerUnit()
	local loc1 = GetUnitLoc(u)
	local loc2 = GetUnitLoc(uc)
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	if GetRandomReal(0.0, 100.0) <= 22.0 + fuyuan[i] // 3 then
		--加双手加范围
		ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(500 + 300 * GetUnitAbilityLevel(u, 1093678933), loc1, Condition(XiaoLian_Condition)), XiaoLian_Action)
		WuGongShengChong(u, 1093678390, 900.0)
		WuGongShengChong(u, 1093678393, 2500.0)
		if GetUnitAbilityLevel(u, 1093678926) ~= 0 then --加九爪
			SetUnitState(u, UNIT_STATE_MANA, GetUnitState(u, UNIT_STATE_MANA) + 0.2 * GetUnitState(u, UNIT_STATE_MAX_MANA))
		end
	end
	RemoveLocation(loc1)
	RemoveLocation(loc2)
end
--贵妃回眸
function IsGuiFeiHuiMou()
	return GetSpellAbilityId() == 1093678168
end
function XiaoLian_Condition_1()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetEventDamageSource())) and IsUnitAliveBJ(GetFilterUnit())
end
function XiaoLian_Action_1()
	local uc = GetEnumUnit()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local x = GetUnitX(uc)
	local y = GetUnitY(uc)
	local loc = GetUnitLoc(uc)
	local shxishu = 1.0
	local shanghai = 0.0
	DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Polymorph\\PolyMorphDoneGround.mdl", x, y))
	shanghai = ShangHaiGongShi(u, uc, 8, 11, shxishu, 1093678390)
	if GetUnitAbilityLevel(u, 1093678393) ~= 0 and GetRandomReal(1, 100) <= 30 then --加神龙心法
		CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc, bj_UNIT_FACING)
		ShowUnitHide(bj_lastCreatedUnit)
		UnitAddAbility(bj_lastCreatedUnit, 1093678401)
		IssueTargetOrderById(bj_lastCreatedUnit, 852502, uc)
		UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 15.0)
	end
	if GetUnitAbilityLevel(u, 1093678931) ~= 0 then --加九阴
		shxishu = shxishu + 0.7
	end
	WuGongShangHai(u, uc, shanghai)
	RemoveLocation(loc)
	loc = nil
	u = nil
	uc = nil
end
function GuiFeiHuiMou()
	local u = GetTriggerUnit()
	local l__ut = GetSpellTargetUnit()
	local p = GetOwningPlayer(u)
	local loc = GetUnitLoc(u)
	CreateNUnitsAtLoc(1, 1697656880, p, loc, bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, 1093678169)
	IssueTargetOrderById(bj_lastCreatedUnit, 852095, l__ut)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 10.0)
	RemoveLocation(loc)
	loc = nil
	u = nil
	l__ut = nil
	p = nil
end
function IsGuiFeiHuiMouSH()
	return GetEventDamage() == 0.96
end
function GuiFeiHuiMouSH()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local uc = GetTriggerUnit()
	local loc = GetUnitLoc(uc)
	local loc2 = GetUnitLoc(u)
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	local shxishu = RMinBJ(DistanceBetweenPoints(loc, loc2) / 500, 4)
	local shanghai = 0.0
	WuGongShengChong(u, 1093678168, 500.0)
	WuGongShengChong(u, 1093678393, 2500.0)
	if GetUnitAbilityLevel(u, 1093677910) ~= 0 then --加擒龙
		shxishu = RMinBJ(DistanceBetweenPoints(loc, loc2) / 300, 10)
	end
	if GetUnitAbilityLevel(u, 1093682228) ~= 0 then --加医疗篇
		shxishu = shxishu + 1
	end
	if GetUnitAbilityLevel(u, 1093682226) ~= 0 then --加逆九阴
		shxishu = shxishu + 1.2
	end
	if GetUnitAbilityLevel(u, 1093678390) ~= 0 and GetRandomReal(0.0, 100.0) <= 22.0 + fuyuan[i] // 3 then --加小怜横陈
		ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(500 + 300 * GetUnitAbilityLevel(u, 1093678933), loc, Condition(XiaoLian_Condition_1)), XiaoLian_Action_1)
		WuGongShengChong(u, 1093678390, 900.0)
		WuGongShengChong(u, 1093678393, 2500.0)
		if GetUnitAbilityLevel(u, 1093678926) ~= 0 then --加九爪
			SetUnitState(u, UNIT_STATE_MANA, GetUnitState(u, UNIT_STATE_MANA) + 0.2 * GetUnitState(u, UNIT_STATE_MAX_MANA))
		end
	end
	shanghai = ShangHaiGongShi(u, uc, 80, 90, shxishu, 1093678168)
	WuGongShangHai(u, uc, shanghai)
	RemoveLocation(loc)
	RemoveLocation(loc2)
	u = nil
	uc = nil
	loc = nil
	loc2 = nil
end
--鲁达拔柳
function IsLuDaBaLiu()
	return UnitHasBuffBJ(GetAttacker(), 1110454582) and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function LuDaBaLiuYun()
	local t = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local l__ut = LoadUnitHandle(YDHT, GetHandleId(t), 1)
	if GetUnitAbilityLevel(u, 1093678668) ~= 0 then --加化骨穴位全封
		WanBuff(u, l__ut, 12)
	else
		WanBuff(u, l__ut, 11)
	end
	FlushChildHashtable(YDHT, GetHandleId(t))
	DestroyTimer(t)
	t = nil
	u = nil
	l__ut = nil
end
function LuDaBaLiu()
	local u = GetAttacker()
	local l__ut = GetTriggerUnit()
	local t = CreateTimer()
	local shxishu = 1
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1093678391) ~= 0 then --加神龙八式
		shxishu = shxishu + 0.6
	end
	if GetUnitAbilityLevel(u, 1093681989) ~= 0 then --加龟息功
		shxishu = shxishu + 1.0
	end
	shanghai = ShangHaiGongShi(u, l__ut, 80, 100, shxishu, 1093678170)
	WuGongShangHai(u, l__ut, shanghai)
	WuGongShengChong(u, 1093678170, 200.0)
	WuGongShengChong(u, 1093678393, 2500.0)
	if GetUnitAbilityLevel(u, 1093679154) >= 1 or GetUnitAbilityLevel(u, 1093678666) >= 1 and GetRandomInt(1, 100) <= 30 then --加北冥或连城几率，BUFF不消失
	else
		UnitRemoveBuffBJ(1110454582, u)
	end
	YDWEJumpTimer(l__ut, 0, 0.0, 1.0, 0.01, 500.0)
	SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	SaveUnitHandle(YDHT, GetHandleId(t), 1, l__ut)
	TimerStart(t, 1.0, false, LuDaBaLiuYun)
	u = nil
	l__ut = nil
	t = nil
end
--狄青降龙
function IsDiQingXiangLong()
	return GetSpellAbilityId() == 1093678385
end
function DiQingXiangLongCai()
	local t = GetExpiredTimer()
	local u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
	local loc = GetUnitLoc(u)
	CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc, bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, 1093678384)
	IssueImmediateOrderById(bj_lastCreatedUnit, 852096)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 10.0)
	FlushChildHashtable(YDHT, GetHandleId(t))
	DestroyTimer(t)
	t = nil
	u = nil
	ut = nil
end
function DiQingXiaoWu()
	local t = GetExpiredTimer()
	local i = LoadInteger(YDHT, GetHandleId(t), 0)
	udg_shanghaixishou[i] = udg_shanghaixishou[i] - 0.1
	FlushChildHashtable(YDHT, GetHandleId(t))
	DestroyTimer(t)
	t = nil
end
function DiQingXiangLong()
	local u = GetTriggerUnit()
	local l__ut = GetSpellTargetUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = GetUnitLoc(u)
	local loc2 = GetUnitLoc(l__ut)
	local t = CreateTimer()
	local tm = CreateTimer()
	WuGongShengChong(u, 1093678385, 150.0)
	WuGongShengChong(u, 1093678393, 2500.0)
	if GetUnitAbilityLevel(u, 1093677903) ~= 0 and GetRandomInt(1, 100) <= 10 + GetUnitLevel(l__ut) // 2 then --妙手空空偷珍稀币
		AdjustPlayerStateBJ(GetRandomInt(1, 5), GetOwningPlayer(u), PLAYER_STATE_RESOURCE_LUMBER)
	end
	if GetUnitAbilityLevel(u, 1093678930) ~= 0 and GetRandomInt(1, 100) <= 10 + GetUnitLevel(l__ut) // 2 then --吸星大法加内力
		ModifyHeroStat(1, u, 0, GetRandomInt(1, 10))
	end
	if GetUnitAbilityLevel(u, 1093679155) ~= 0 and GetRandomInt(1, 100) <= 10 + GetUnitLevel(l__ut) // 2 then --小无相加伤害吸收
		udg_shanghaixishou[i] = udg_shanghaixishou[i] + 0.1
		SaveInteger(YDHT, GetHandleId(tm), 0, i)
		TimerStart(tm, 15, false, DiQingXiaoWu)
	end
	YDWEJumpTimer(u, AngleBetweenPoints(loc, loc2), DistanceBetweenPoints(loc, loc2), 0.7, 0.02, 500.0)
	SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
	TimerStart(t, 0.7, false, DiQingXiangLongCai)
	RemoveLocation(loc)
	RemoveLocation(loc2)
	loc = nil
	loc2 = nil
	u = nil
	l__ut = nil
	p = nil
	t = nil
	tm = nil
end
function IsDiQingXiangLongSH()
	return GetEventDamage() == 0.97
end
function DiQingXiangLongSH()
	local u = udg_hero[1 + GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
	local l__ut = GetTriggerUnit()
	local shxishu = 1
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1093678925) ~= 0 then --加七伤拳
		WanBuff(u, l__ut, GetRandomInt(1, 13))
	else
		WanBuff(u, l__ut, 9)
	end
	if GetUnitAbilityLevel(u, 1093677908) ~= 0 then --加须弥山掌
		shxishu = shxishu + 1.2
	end
	shanghai = ShangHaiGongShi(u, l__ut, 100, 140, shxishu, 1093678385)
	WuGongShangHai(u, l__ut, shanghai)
	u = nil
	l__ut = nil
end
-- //飞燕回翔
-- function IsFeiYanHuiXiang takes nothing returns boolean
-- return ((GetSpellAbilityId() == 'A054'))
-- endfunction
-- function Trig_Wild_Axes_aFunc026Func021002003 takes nothing returns boolean
-- return (((IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false) and ((IsUnitAliveBJ(GetFilterUnit()) == true) and ((IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0xB95F828C))) == true) and (IsUnitInGroup(GetFilterUnit(), YDTriggerGetEx(group, YDTriggerH2I(GetExpiredTimer()), 0x93FE3865)) == false)))))
-- endfunction
-- function Trig_Wild_Axes_aFunc026Func022002003 takes nothing returns boolean
-- return (((IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) == false) and ((IsUnitAliveBJ(GetFilterUnit()) == true) and ((IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0xB95F828C))) == true) and (IsUnitInGroup(GetFilterUnit(), YDTriggerGetEx(group, YDTriggerH2I(GetExpiredTimer()), 0xF3DA78D7)) == false)))))
-- endfunction
-- //function Trig_Wild_Axes_aFunc026Func023003 takes nothing returns nothing
-- //    if (((GetDestructableTypeId(GetEnumDestructable()) != 'YTlb') and (GetDestructableTypeId(GetEnumDestructable()) != 'Ytlc'))) then
-- //        call KillDestructable( GetEnumDestructable() )
-- //    else
-- //        call DoNothing(  )
-- //    endif
-- //endfunction
-- //function Trig_Wild_Axes_aFunc026Func024003 takes nothing returns nothing
-- //    if (((GetDestructableTypeId(GetEnumDestructable()) != 'YTlb') and (GetDestructableTypeId(GetEnumDestructable()) != 'Ytlc'))) then
-- //        call KillDestructable( GetEnumDestructable() )
-- //    else
-- //        call DoNothing(  )
-- //    endif
-- //endfunction
-- function Trig_Wild_Axes_aFunc026Func025A takes nothing returns nothing
-- local unit u = YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0xB95F828C)
-- local unit ut = GetEnumUnit()
-- local real shxishu= 1
-- local real shanghai=0.
-- if((GetUnitAbilityLevel(u,'A07P')!=0))then//加化功
-- set shxishu=shxishu+.7
-- endif
-- if((GetUnitAbilityLevel(u,'A0D6')!=0))then//加锻骨篇
-- set shxishu=shxishu+1.3
-- endif
-- if((GetUnitAbilityLevel(u,'A0D1')!=0))then//加摧坚神抓
-- call WanBuff(u, ut, 9)
-- endif
-- if((GetUnitAbilityLevel(u,'A0D3')!=0))then//加摧心掌
-- call WanBuff(u, ut, 7)
-- endif
-- set shanghai=ShangHaiGongShi(u,ut,60,40,shxishu,'A054')
-- call WuGongShangHai(u,ut,shanghai)
-- call GroupAddUnit( YDTriggerGetEx(group, YDTriggerH2I(GetExpiredTimer()), 0x93FE3865), GetEnumUnit() )
-- //call UnitDamageTarget( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0xB95F828C), GetEnumUnit(), ( ( I2R(GetUnitAbilityLevel(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0xB95F828C), 'AUcs')) * 30.00 ) + 60.00 ), true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_METAL_MEDIUM_SLICE )
-- call DestroyEffect( AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl", GetEnumUnit(), "overhead") )
-- endfunction
-- function Trig_Wild_Axes_aFunc026Func026A takes nothing returns nothing
-- local unit u = YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0xB95F828C)
-- local unit ut = GetEnumUnit()
-- local real shxishu= 1
-- local real shanghai=0.
-- set shanghai=ShangHaiGongShi(u,ut,120,80,shxishu,'A054')
-- call WuGongShangHai(u,ut,shanghai)
-- call GroupAddUnit( YDTriggerGetEx(group, YDTriggerH2I(GetExpiredTimer()), 0xF3DA78D7), GetEnumUnit() )
-- //call UnitDamageTarget( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0xB95F828C), GetEnumUnit(), ( ( I2R(GetUnitAbilityLevel(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0xB95F828C), 'AUcs')) * 30.00 ) + 60.00 ), true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_METAL_MEDIUM_SLICE )
-- call DestroyEffect( AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl", GetEnumUnit(), "overhead") )
-- endfunction
-- function Trig_Wild_Axes_aFunc026T takes nothing returns nothing
-- local group ydl_group
-- local unit ydl_unit
-- call YDWESetLocalVariableRealArray( "x", 0, YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0x324AE96A) )
-- call YDWESetLocalVariableRealArray( "y", 0, YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0x058682B9) )
-- call YDWESetLocalVariableRealArray( "x", 1, YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0x2392447A) )
-- call YDWESetLocalVariableRealArray( "y", 1, YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0xB0897302) )
-- call YDWESetLocalVariableRealArray( "x", 2, YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0x41713DA3) )
-- call YDWESetLocalVariableRealArray( "y", 2, YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0x71CA3531) )
-- call YDWESetLocalVariableRealArray( "x", 3, YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0xD310CF7A) )
-- call YDWESetLocalVariableRealArray( "y", 3, YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0x7D73FF94) )
-- call YDWESetLocalVariableReal( "a", YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0xD5CF2EF3) )
-- call YDWESetLocalVariableReal( "b", ( 1.00 - YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0xD5CF2EF3) ) )
-- call SetUnitX( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x5FB96E0B), ( ( YDWEGetLocalVariableRealArray("x", 0) * ( YDWEGetLocalVariableReal("a") * YDWEGetLocalVariableReal("a") ) ) + ( ( ( YDWEGetLocalVariableRealArray("x", 2) * 2.00 ) * ( YDWEGetLocalVariableReal("a") * YDWEGetLocalVariableReal("b") ) ) + ( YDWEGetLocalVariableRealArray("x", 1) * ( YDWEGetLocalVariableReal("b") * YDWEGetLocalVariableReal("b") ) ) ) ) )
-- call SetUnitY( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x5FB96E0B), ( ( YDWEGetLocalVariableRealArray("y", 0) * ( YDWEGetLocalVariableReal("a") * YDWEGetLocalVariableReal("a") ) ) + ( ( ( YDWEGetLocalVariableRealArray("y", 2) * 2.00 ) * ( YDWEGetLocalVariableReal("a") * YDWEGetLocalVariableReal("b") ) ) + ( YDWEGetLocalVariableRealArray("y", 1) * ( YDWEGetLocalVariableReal("b") * YDWEGetLocalVariableReal("b") ) ) ) ) )
-- call SetUnitX( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x3893EA54), ( ( YDWEGetLocalVariableRealArray("x", 0) * ( YDWEGetLocalVariableReal("a") * YDWEGetLocalVariableReal("a") ) ) + ( ( ( YDWEGetLocalVariableRealArray("x", 3) * 2.00 ) * ( YDWEGetLocalVariableReal("a") * YDWEGetLocalVariableReal("b") ) ) + ( YDWEGetLocalVariableRealArray("x", 1) * ( YDWEGetLocalVariableReal("b") * YDWEGetLocalVariableReal("b") ) ) ) ) )
-- call SetUnitY( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x3893EA54), ( ( YDWEGetLocalVariableRealArray("y", 0) * ( YDWEGetLocalVariableReal("a") * YDWEGetLocalVariableReal("a") ) ) + ( ( ( YDWEGetLocalVariableRealArray("y", 3) * 2.00 ) * ( YDWEGetLocalVariableReal("a") * YDWEGetLocalVariableReal("b") ) ) + ( YDWEGetLocalVariableRealArray("y", 1) * ( YDWEGetLocalVariableReal("b") * YDWEGetLocalVariableReal("b") ) ) ) ) )
-- if ((GetUnitX(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x5FB96E0B)) > ( GetRectMaxX(bj_mapInitialPlayableArea) - 50.00 ))) then
-- call SetUnitX( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x5FB96E0B), ( GetRectMaxX(bj_mapInitialPlayableArea) - 50.00 ) )
-- else
-- if ((GetUnitX(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x5FB96E0B)) < ( GetRectMinX(bj_mapInitialPlayableArea) + 50.00 ))) then
-- call SetUnitX( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x5FB96E0B), ( GetRectMinX(bj_mapInitialPlayableArea) + 50.00 ) )
-- else
-- call DoNothing(  )
-- endif
-- endif
-- if ((GetUnitY(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x5FB96E0B)) > ( GetRectMaxY(bj_mapInitialPlayableArea) - 50.00 ))) then
-- call SetUnitY( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x5FB96E0B), ( GetRectMaxY(bj_mapInitialPlayableArea) - 50.00 ) )
-- else
-- if ((GetUnitY(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x5FB96E0B)) < ( GetRectMinY(bj_mapInitialPlayableArea) + 50.00 ))) then
-- call SetUnitY( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x5FB96E0B), ( GetRectMinY(bj_mapInitialPlayableArea) + 50.00 ) )
-- else
-- call DoNothing(  )
-- endif
-- endif
-- if ((GetUnitX(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x3893EA54)) > ( GetRectMaxX(bj_mapInitialPlayableArea) - 50.00 ))) then
-- call SetUnitX( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x3893EA54), ( GetRectMaxX(bj_mapInitialPlayableArea) - 50.00 ) )
-- else
-- if ((GetUnitX(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x3893EA54)) < ( GetRectMinX(bj_mapInitialPlayableArea) + 50.00 ))) then
-- call SetUnitX( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x3893EA54), ( GetRectMinX(bj_mapInitialPlayableArea) + 50.00 ) )
-- else
-- call DoNothing(  )
-- endif
-- endif
-- if ((GetUnitY(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x3893EA54)) > ( GetRectMaxY(bj_mapInitialPlayableArea) - 50.00 ))) then
-- call SetUnitY( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x3893EA54), ( GetRectMaxY(bj_mapInitialPlayableArea) - 50.00 ) )
-- else
-- if ((GetUnitY(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x3893EA54)) < ( GetRectMinY(bj_mapInitialPlayableArea) + 50.00 ))) then
-- call SetUnitY( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x3893EA54), ( GetRectMinY(bj_mapInitialPlayableArea) + 50.00 ) )
-- else
-- call DoNothing(  )
-- endif
-- endif
-- call YDTriggerSetEx(location, YDTriggerH2I(GetExpiredTimer()), 0x247CC5E5, GetUnitLoc(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x5FB96E0B)))
-- call YDTriggerSetEx(location, YDTriggerH2I(GetExpiredTimer()), 0xF4C4BD37, GetUnitLoc(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x3893EA54)))
-- call YDWESetLocalVariableGroup( "L1", GetUnitsInRangeOfLocMatching(115.00, YDTriggerGetEx(location, YDTriggerH2I(GetExpiredTimer()), 0x247CC5E5), Condition(function Trig_Wild_Axes_aFunc026Func021002003)) )
-- call YDWESetLocalVariableGroup( "L1", GetUnitsInRangeOfLocMatching(115.00, YDTriggerGetEx(location, YDTriggerH2I(GetExpiredTimer()), 0xF4C4BD37), Condition(function Trig_Wild_Axes_aFunc026Func022002003)) )
-- //call EnumDestructablesInCircleBJ( 115.00, YDTriggerGetEx(location, YDTriggerH2I(GetExpiredTimer()), 0x247CC5E5), function Trig_Wild_Axes_aFunc026Func023003 )
-- //call EnumDestructablesInCircleBJ( 115.00, YDTriggerGetEx(location, YDTriggerH2I(GetExpiredTimer()), 0xF4C4BD37), function Trig_Wild_Axes_aFunc026Func024003 )
-- call ForGroupBJ( YDWEGetLocalVariableGroup("L1"), function Trig_Wild_Axes_aFunc026Func025A )
-- call ForGroupBJ( YDWEGetLocalVariableGroup("L2"), function Trig_Wild_Axes_aFunc026Func026A )
-- call DestroyGroup( YDWEGetLocalVariableGroup("L1") )
-- call DestroyGroup( YDWEGetLocalVariableGroup("L2") )
-- if ((YDTriggerGetEx(boolean, YDTriggerH2I(GetExpiredTimer()), 0xA32DA6CF) == true)) then
-- call YDTriggerSetEx(real, YDTriggerH2I(GetExpiredTimer()), 0xD5CF2EF3, ( YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0xD5CF2EF3) - 0.02 ))
-- else
-- call YDWESetLocalVariableRealArray( "x", 0, GetUnitX(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0xB95F828C)) )
-- call YDWESetLocalVariableRealArray( "y", 0, GetUnitY(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0xB95F828C)) )
-- call YDTriggerSetEx(real, YDTriggerH2I(GetExpiredTimer()), 0xD5CF2EF3, ( YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0xD5CF2EF3) + 0.02 ))
-- call YDTriggerSetEx(real, YDTriggerH2I(GetExpiredTimer()), 0x324AE96A, GetUnitX(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0xB95F828C)))
-- call YDTriggerSetEx(real, YDTriggerH2I(GetExpiredTimer()), 0x058682B9, GetUnitY(YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0xB95F828C)))
-- call YDWESetLocalVariableReal( "comp", Atan2(( YDWEGetLocalVariableRealArray("y", 1) - YDWEGetLocalVariableRealArray("y", 0) ), ( YDWEGetLocalVariableRealArray("x", 1) - YDWEGetLocalVariableRealArray("x", 0) )) )
-- call YDTriggerSetEx(real, YDTriggerH2I(GetExpiredTimer()), 0x236B99A8, YDWEGetLocalVariableReal("comp"))
-- endif
-- if (((YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0xD5CF2EF3) <= 0.00) and (YDTriggerGetEx(boolean, YDTriggerH2I(GetExpiredTimer()), 0xA32DA6CF) == true))) then
-- call YDTriggerSetEx(boolean, YDTriggerH2I(GetExpiredTimer()), 0xA32DA6CF, false)
-- call YDWESetLocalVariableRealArray( "x", 2, ( YDWEGetLocalVariableRealArray("x", 0) + ( 300.00 * Cos(( YDWEGetLocalVariableReal("comp") - 45.00 )) ) ) )
-- call YDWESetLocalVariableRealArray( "y", 2, ( YDWEGetLocalVariableRealArray("y", 0) + ( 300.00 * Sin(( YDWEGetLocalVariableReal("comp") - 45.00 )) ) ) )
-- call YDWESetLocalVariableRealArray( "x", 3, ( YDWEGetLocalVariableRealArray("x", 0) + ( 300.00 * Cos(( YDWEGetLocalVariableReal("comp") + 45.00 )) ) ) )
-- call YDWESetLocalVariableRealArray( "y", 3, ( YDWEGetLocalVariableRealArray("y", 0) + ( 300.00 * Sin(( YDWEGetLocalVariableReal("comp") + 45.00 )) ) ) )
-- call YDTriggerSetEx(real, YDTriggerH2I(GetExpiredTimer()), 0x41713DA3, YDWEGetLocalVariableRealArray("x", 2))
-- call YDTriggerSetEx(real, YDTriggerH2I(GetExpiredTimer()), 0x71CA3531, YDWEGetLocalVariableRealArray("y", 2))
-- call YDTriggerSetEx(real, YDTriggerH2I(GetExpiredTimer()), 0xD310CF7A, YDWEGetLocalVariableRealArray("x", 3))
-- call YDTriggerSetEx(real, YDTriggerH2I(GetExpiredTimer()), 0x7D73FF94, YDWEGetLocalVariableRealArray("y", 3))
-- else
-- endif
-- if (((YDTriggerGetEx(real, YDTriggerH2I(GetExpiredTimer()), 0xD5CF2EF3) >= 1.00) and (YDTriggerGetEx(boolean, YDTriggerH2I(GetExpiredTimer()), 0xA32DA6CF) == false))) then
-- call RemoveLocation( YDWEGetLocalVariableLocation("point3") )
-- call RemoveLocation( YDWEGetLocalVariableLocation("point4") )
-- call RemoveUnit( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x5FB96E0B) )
-- call RemoveUnit( YDTriggerGetEx(unit, YDTriggerH2I(GetExpiredTimer()), 0x3893EA54) )
-- call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetExpiredTimer()), 0x93FE3865) )
-- call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetExpiredTimer()), 0xF3DA78D7) )
-- call YDTriggerClearTable(YDTriggerH2I(GetExpiredTimer()))
-- call DestroyTimer(GetExpiredTimer())
-- else
-- endif
-- set ydl_group = null
-- set ydl_unit = null
-- endfunction
-- function FeiYanHuiXiang takes nothing returns nothing
-- local timer ydl_timer
-- local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
-- call WuGongShengChong(GetTriggerUnit(),'A054',300.)
-- call WuGongShengChong(GetTriggerUnit(),'A059',1500.)
-- set ydl_localvar_step = ydl_localvar_step + 3
-- call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
-- call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
-- call YDWESetLocalVariableRealArray( "x", 0, GetUnitX(GetTriggerUnit()) )
-- call YDWESetLocalVariableRealArray( "y", 0, GetUnitY(GetTriggerUnit()) )
-- call YDWESetLocalVariableRealArray( "x", 1, GetSpellTargetX() )
-- call YDWESetLocalVariableRealArray( "y", 1, GetSpellTargetY() )
-- call YDTriggerSetEx(unit, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xB95F828C, GetTriggerUnit())
-- call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x324AE96A, GetUnitX(GetTriggerUnit()))
-- call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x058682B9, GetUnitY(GetTriggerUnit()))
-- call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x2392447A, GetSpellTargetX())
-- call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xB0897302, GetSpellTargetY())
-- call YDWESetLocalVariableReal( "comp", Atan2(( YDWEGetLocalVariableRealArray("y", 1) - YDWEGetLocalVariableRealArray("y", 0) ), ( YDWEGetLocalVariableRealArray("x", 1) - YDWEGetLocalVariableRealArray("x", 0) )) )
-- call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x236B99A8, YDWEGetLocalVariableReal("comp"))
-- call YDWESetLocalVariableRealArray( "x", 2, ( YDWEGetLocalVariableRealArray("x", 0) + ( 300.00 * Cos(( YDWEGetLocalVariableReal("comp") + 45.00 )) ) ) )
-- call YDWESetLocalVariableRealArray( "y", 2, ( YDWEGetLocalVariableRealArray("y", 0) + ( 300.00 * Sin(( YDWEGetLocalVariableReal("comp") + 45.00 )) ) ) )
-- call YDWESetLocalVariableRealArray( "x", 3, ( YDWEGetLocalVariableRealArray("x", 0) + ( 300.00 * Cos(( YDWEGetLocalVariableReal("comp") - 45.00 )) ) ) )
-- call YDWESetLocalVariableRealArray( "y", 3, ( YDWEGetLocalVariableRealArray("y", 0) + ( 300.00 * Sin(( YDWEGetLocalVariableReal("comp") - 45.00 )) ) ) )
-- call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x41713DA3, YDWEGetLocalVariableRealArray("x", 2))
-- call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x71CA3531, YDWEGetLocalVariableRealArray("y", 2))
-- call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xD310CF7A, YDWEGetLocalVariableRealArray("x", 3))
-- call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x7D73FF94, YDWEGetLocalVariableRealArray("y", 3))
-- call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xD5CF2EF3, 1.00)
-- call YDTriggerSetEx(boolean, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA32DA6CF, true)
-- call YDTriggerSetEx(unit, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5FB96E0B, CreateUnit(GetTriggerPlayer(), 'h00L', YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x324AE96A), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x058682B9), 270.00))
-- call YDTriggerSetEx(unit, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x3893EA54, CreateUnit(GetTriggerPlayer(), 'h00L', YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x324AE96A), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x058682B9), 270.00))
-- call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x93FE3865, CreateGroup())
-- call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xF3DA78D7, CreateGroup())
-- set ydl_timer = CreateTimer()
-- call YDTriggerSetEx(boolean, YDTriggerH2I(ydl_timer), 0xA32DA6CF, YDTriggerGetEx(boolean, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA32DA6CF))
-- call YDTriggerSetEx(unit, YDTriggerH2I(ydl_timer), 0xB95F828C, YDTriggerGetEx(unit, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xB95F828C))
-- call YDTriggerSetEx(group, YDTriggerH2I(ydl_timer), 0x93FE3865, YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x93FE3865))
-- call YDTriggerSetEx(group, YDTriggerH2I(ydl_timer), 0xF3DA78D7, YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xF3DA78D7))
-- call YDTriggerSetEx(real, YDTriggerH2I(ydl_timer), 0xD5CF2EF3, YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xD5CF2EF3))
-- call YDTriggerSetEx(unit, YDTriggerH2I(ydl_timer), 0x5FB96E0B, YDTriggerGetEx(unit, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5FB96E0B))
-- call YDTriggerSetEx(unit, YDTriggerH2I(ydl_timer), 0x3893EA54, YDTriggerGetEx(unit, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x3893EA54))
-- call YDTriggerSetEx(location, YDTriggerH2I(ydl_timer), 0x247CC5E5, YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x247CC5E5))
-- call YDTriggerSetEx(location, YDTriggerH2I(ydl_timer), 0xF4C4BD37, YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xF4C4BD37))
-- call YDTriggerSetEx(real, YDTriggerH2I(ydl_timer), 0x324AE96A, YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x324AE96A))
-- call YDTriggerSetEx(real, YDTriggerH2I(ydl_timer), 0x2392447A, YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x2392447A))
-- call YDTriggerSetEx(real, YDTriggerH2I(ydl_timer), 0x41713DA3, YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x41713DA3))
-- call YDTriggerSetEx(real, YDTriggerH2I(ydl_timer), 0xD310CF7A, YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xD310CF7A))
-- call YDTriggerSetEx(real, YDTriggerH2I(ydl_timer), 0x058682B9, YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x058682B9))
-- call YDTriggerSetEx(real, YDTriggerH2I(ydl_timer), 0xB0897302, YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xB0897302))
-- call YDTriggerSetEx(real, YDTriggerH2I(ydl_timer), 0x71CA3531, YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x71CA3531))
-- call YDTriggerSetEx(real, YDTriggerH2I(ydl_timer), 0x7D73FF94, YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x7D73FF94))
-- call TimerStart(ydl_timer, ( 0.25 / 10.00 ), true, function Trig_Wild_Axes_aFunc026T)
-- call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
-- set ydl_timer = null
-- endfunction
--神龙八式
function Trig_ciZhenSaoSheConditions()
	return GetSpellAbilityId() == 1093678391
end
function Trig_ciZhenSaoSheFunc007Func001Func002Func007T()
	local u = LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0)
	if LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 20000) > 0 then
		SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 20000, LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 20000) - 1)
	--call BJDebugMsg(I2S(LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 20000)))
	end
	DestroyTimer(GetExpiredTimer())
end
function Trig_ciZhenSaoSheFunc007Conditions()
	local ydl_timer
	local u = LoadUnitHandle(YDHT, GetHandleId(GetTriggeringTrigger()), 0)
	local l__ut = GetTriggerUnit()
	local i = LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 20000)
	local shxishu = 1.0
	local shanghai = 0.0
	if EVENT_UNIT_DAMAGED == GetTriggerEventId() == false then
		--call BJDebugMsg("123")
		FlushChildHashtable(YDHT, GetHandleId(GetTriggeringTrigger()))
		DestroyTrigger(GetTriggeringTrigger())
		SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 20000, 0)
	else
		if GetEventDamage() == 0.98 and GetEventDamageSource() == u then
			--call BJDebugMsg("456")
			shxishu = 1 + I2R(i) * 0.1
			shanghai = ShangHaiGongShi(u, l__ut, 15, 18, shxishu, 1093678391)
			WuGongShangHai(u, l__ut, shanghai)
			if GetUnitAbilityLevel(u, 1093677900) ~= 0 then --加寒冰真气昏迷
				WanBuff(u, l__ut, 5)
			end
			if GetUnitAbilityLevel(u, 1093678935) ~= 0 then --加乾坤
				shxishu = shxishu + 0.6
			end
			if GetUnitAbilityLevel(u, 1093678930) ~= 0 then --加吸星
				shxishu = shxishu + 0.7
			end
			if GetUnitAbilityLevel(u, 1093679156) ~= 0 then --加蛤蟆
				shxishu = shxishu + 1.2
			end
			SaveInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 20000, i + 1)
			ydl_timer = CreateTimer()
			SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0, u)
			TimerStart(ydl_timer, 14.0, false, Trig_ciZhenSaoSheFunc007Func001Func002Func007T)
		else
		end
	end
	ydl_timer = nil
	return false
end
function Trig_ciZhenSaoSheActions()
	local ydl_trigger
	local u = GetTriggerUnit()
	WuGongShengChong(u, 1093678391, 900.0)
	if LoadInteger(YDHT, GetHandleId(GetOwningPlayer(u)), 20000) <= 0 then
		ydl_trigger = CreateTrigger()
		SaveUnitHandle(YDHT, GetHandleId(ydl_trigger), 0, GetTriggerUnit())
		Ov(ydl_trigger)
		TriggerRegisterTimerEventSingle(ydl_trigger, 30.0)
		TriggerAddCondition(ydl_trigger, Condition(Trig_ciZhenSaoSheFunc007Conditions))
	end
	ydl_trigger = nil
end
--function IsShenLongBaShiSH takes nothing returns boolean
--	return((GetEventDamage()==.98))
--endfunction
--function ShenLongBaShiSH takes nothing returns nothing
--	local unit u=udg_hero[(1+GetPlayerId(GetOwningPlayer(GetEventDamageSource())))]
--    local unit ut=GetTriggerUnit()
--    local real shxishu= 1
--    local real shanghai=0.
--    set shanghai=ShangHaiGongShi(u,ut,7.2,8.9,shxishu,'A057')
--    call WuGongShangHai(u,ut,shanghai)
--    set u=null
--    set ut=null
--endfunction
function ShenLong_Trigger()
	local t = CreateTrigger()
	--子胥举鼎
	Ov(t)
	TriggerAddCondition(t, Condition(IsZiXuJuDing))
	TriggerAddAction(t, ZiXuJuDing)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsZiXuBeiDong))
	TriggerAddAction(t, ZiXuBeiDong)
	--贵妃回眸
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsGuiFeiHuiMou))
	TriggerAddAction(t, GuiFeiHuiMou)
	t = CreateTrigger()
	Ov(t)
	TriggerAddCondition(t, Condition(IsGuiFeiHuiMouSH))
	TriggerAddAction(t, GuiFeiHuiMouSH)
	--鲁达拔柳
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsLuDaBaLiu))
	TriggerAddAction(t, LuDaBaLiu)
	--狄青降龙
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(IsDiQingXiangLong))
	TriggerAddAction(t, DiQingXiangLong)
	t = CreateTrigger()
	Ov(t)
	TriggerAddCondition(t, Condition(IsDiQingXiangLongSH))
	TriggerAddAction(t, DiQingXiangLongSH)
	-- //飞燕回翔
	-- set t = CreateTrigger()
	-- call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_SPELL_EFFECT )
	-- call TriggerAddCondition(t, Condition(function IsFeiYanHuiXiang))
	-- call TriggerAddAction(t, function FeiYanHuiXiang)
	--小怜横陈
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	TriggerAddCondition(t, Condition(IsXiaoLianHengChen))
	TriggerAddAction(t, XiaoLianHengChen)
	--神龙八式
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	TriggerAddCondition(t, Condition(Trig_ciZhenSaoSheConditions))
	TriggerAddAction(t, Trig_ciZhenSaoSheActions)
	--    set t= CreateTrigger()
	--   call Ov(t)
	--call TriggerAddCondition(t,Condition(function IsShenLongBaShiSH))
	--   call TriggerAddAction(t,function ShenLongBaShiSH)
	--神龙心法
	t = nil
end

ShenLong_Trigger() --神龙教武功触发