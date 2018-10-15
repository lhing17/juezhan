--韦陀棍法
function IsWeiTuo()
	return GetUnitAbilityLevel(GetAttacker(), 1093678407) >= 1 and IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetAttacker()))
end
function WeiTuo_Condition()
	return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetAttacker())) and IsUnitAliveBJ(GetFilterUnit())
end
function WeiTuo_Action()
	local uc = GetEnumUnit()
	local u = GetAttacker()
	local x = GetUnitX(uc)
	local y = GetUnitY(uc)
	local shxishu = 1.0
	local shanghai = 0.0
	if GetUnitAbilityLevel(u, 1395666992) ~= 0 then
		shxishu = shxishu + 0.5
	end
	if GetUnitAbilityLevel(u, 1093678927) ~= 0 then
		shxishu = shxishu + 0.7
	end
	if UnitHaveItem(u, 1227899212) then
		shxishu = shxishu * 8
	end
	--if((GetUnitAbilityLevel(u,'A05G')==9))then
	--    set shxishu=shxishu*8.
	--endif
	DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl", x, y))
	shanghai = ShangHaiGongShi(u, uc, 10, 12, shxishu, 1093678407)
	--call BJDebugMsg("伤害="+R2S(shanghai))
	WuGongShangHai(u, uc, shanghai)
	u = nil
	uc = nil
end
function WeiTuoGun()
	local u = GetAttacker()
	local uc = GetTriggerUnit()
	local loc1 = GetUnitLoc(u)
	local loc2 = GetUnitLoc(uc)
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	if UnitHasBuffBJ(u, 1113746543) then
		ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(300.0 + I2R(jingmai[1 + GetPlayerId(GetOwningPlayer(u))]) * 8.0, loc1, Condition(WeiTuo_Condition)), WeiTuo_Action)
		if GetUnitAbilityLevel(u, 1093682254) ~= 0 then
			SetWidgetLife(u, GetUnitState(u, UNIT_STATE_LIFE) + 0.02 * GetUnitState(u, UNIT_STATE_MAX_LIFE))
		end
	else
		if GetRandomReal(0.0, 100.0) <= 22.0 + fuyuan[i] // 3 then
			ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(300.0 + I2R(jingmai[1 + GetPlayerId(GetOwningPlayer(u))]) * 8.0, loc1, Condition(WeiTuo_Condition)), WeiTuo_Action)
			if GetUnitAbilityLevel(u, 1093682254) ~= 0 then
				SetWidgetLife(u, GetUnitState(u, UNIT_STATE_LIFE) + 0.02 * GetUnitState(u, UNIT_STATE_MAX_LIFE))
			end
			if GetUnitAbilityLevel(u, 1093678933) ~= 0 and GetRandomReal(0.0, 100.0) <= 15.0 then
				CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(u), loc1, bj_UNIT_FACING)
				ShowUnitHide(bj_lastCreatedUnit)
				UnitAddAbility(bj_lastCreatedUnit, 1093681496)
				IssueTargetOrderById(bj_lastCreatedUnit, 852101, u)
				UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 3.0)
			end
			WuGongShengChong(u, 1093678407, 1200.0)
		end
	end
	RemoveLocation(loc1)
	RemoveLocation(loc2)
	u = nil
	uc = nil
	loc1 = nil
	loc2 = nil
end