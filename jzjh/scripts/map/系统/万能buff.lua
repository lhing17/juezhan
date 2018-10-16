function WanBuff_1(buffnum, num, uc, id, orderid, l__ut, s)
	local u
	local p
	local loc
	if buffnum == num then
		p = GetOwningPlayer(uc)
		loc = GetUnitLoc(l__ut)
		CreateNUnitsAtLoc(1, 1697656880, p, loc, bj_UNIT_FACING)
		u = bj_lastCreatedUnit
		ShowUnitHide(u)
		UnitAddAbility(u, id)
		if num == 12 or num == 14 then
			IncUnitAbilityLevel(u, id)
		end
		IssueTargetOrderById(u, orderid, l__ut)
		UnitApplyTimedLife(u, 1112045413, 2.0)
		CreateTextTagLocBJ(s, loc, 60.0, 12.0, 65.0, 55.0, 42.0, 0)
		Nw(3.0, bj_lastCreatedTextTag)
		SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100.0, 90)
		RemoveLocation(loc)
	end
	loc = nil
	p = nil
	u = nil
end
function WanBuff(u, l__ut, buffnum)
	WanBuff_1(buffnum, 1, u, 1093678903, 852111, l__ut, "内伤")
	WanBuff_1(buffnum, 2, u, 1093678905, 852668, l__ut, "走火入魔")
	WanBuff_1(buffnum, 3, u, 1093678901, 852527, l__ut, "流血")
	WanBuff_1(buffnum, 4, u, 1093678665, 852189, l__ut, "混乱")
	WanBuff_1(buffnum, 5, u, 1093681498, 852075, l__ut, "昏迷")
	WanBuff_1(buffnum, 6, u, 1093678902, 852075, l__ut, "重伤")
	WanBuff_1(buffnum, 7, u, 1093678904, 852527, l__ut, "血流不止")
	WanBuff_1(buffnum, 8, u, 1093681497, 852190, l__ut, "麻痹")
	WanBuff_1(buffnum, 9, u, 1093677369, 852149, l__ut, "破防")
	WanBuff_1(buffnum, 10, u, 1093678414, 852190, l__ut, "神经错乱")
	WanBuff_1(buffnum, 11, u, 1093678412, 852095, l__ut, "封穴")
	WanBuff_1(buffnum, 12, u, 1093678412, 852095, l__ut, "穴位全封")
	WanBuff_1(buffnum, 13, u, 1093678900, 852527, l__ut, "中毒")
	WanBuff_1(buffnum, 14, u, 1093678900, 852527, l__ut, "深度中毒")
end