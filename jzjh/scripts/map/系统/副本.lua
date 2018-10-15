----------------------------------
--   
--    副  本  系  统
--
----------------------------------
--杀野猪首领
function WI()
	return GetUnitTypeId(GetTriggerUnit()) == 1852924467
end
function XI()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(1, 100) <= udg_baolv[1] then
			createitemloc(1227895345, LoadLocationHandle(YDHT, id * cx, 392811314))
			udg_baolv[1] = udg_baolv[1] * 9 // 10 - 1
		else
			udg_baolv[1] = udg_baolv[1] * 11 // 10 + 1
			if udg_baolv[1] < 0 then
				udg_baolv[1] = 0
			end
			if udg_baolv[1] > 100 then
				udg_baolv[1] = 100
			end
		end
		N7 = N7 + 1
	end
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit())))
	if e8[LoadInteger(YDHT, id * cx, -1587459251)] == 1 then
		unitadditembyidswapped(1227896391, GetKillingUnit())
		if GetRandomInt(1, 50) <= 25 then
			unitadditembyidswapped(1227895347, GetKillingUnit())
		else
			unitadditembyidswapped(1227895346, GetKillingUnit())
		end
		AddHeroXP(GetKillingUnit(), 150, true)
		PlaySoundOnUnitBJ(Hh, 100, GetKillingUnit())
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|CFF34FF00完成任务获得经验+150、江湖声望+50、富可敌国令和" .. (GetItemName(bj_lastCreatedItem) or ""))
		shengwang[LoadInteger(YDHT, id * cx, -1587459251)] = shengwang[LoadInteger(YDHT, id * cx, -1587459251)] + 50
		e8[LoadInteger(YDHT, id * cx, -1587459251)] = 0
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--杀豺狼
function ZI()
	return GetUnitTypeId(GetTriggerUnit()) == 1852272243
end
function dl()
	BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit(), 0, 0, 0, 0, 0, 8, YaoCao[1])
end
--杀江南水怪
function fl()
	return GetUnitTypeId(GetTriggerUnit()) == 1752654196
end
function gl()
	BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit(), 0, 0, 0, 0, 0, 8, YaoCao[2])
end
--FB1
function il()
	return GetUnitTypeId(GetTriggerUnit()) == 1869834349 or GetUnitTypeId(GetTriggerUnit()) == 1851880307 or GetUnitTypeId(GetTriggerUnit()) == 1868853091 or GetUnitTypeId(GetTriggerUnit()) == 1869767017 or GetUnitTypeId(GetTriggerUnit()) == 1869898101 or GetUnitTypeId(GetTriggerUnit()) == 1868852084 or GetUnitTypeId(GetTriggerUnit()) == 1969316719
end
function jl()
	if GetUnitTypeId(GetTriggerUnit()) == 1869834349 or GetUnitTypeId(GetTriggerUnit()) == 1851880307 then
		BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit(), 8, 1227895370, 1227895369, 0, 0, 8, YaoCao[3])
		BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit(), 1, 1227895127, 0, 0, 0, 0, 0)
	elseif GetUnitTypeId(GetTriggerUnit()) == 1868853091 then
		BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit(), 100, 1227895125, 1227895130, 0, 0, 0, 0)
	elseif GetUnitTypeId(GetTriggerUnit()) == 1869767017 then
		BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit(), 100, 1227895123, 1227895129, 1227895128, 0, 0, 0)
	--火功头陀
	elseif GetUnitTypeId(GetTriggerUnit()) == 1869898101 then
		BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit(), 100, 1227895386, 1227895620, 0, 0, 0, 0)
		if GetRandomReal(1, 100) <= 3.0 or GetRandomReal(1, 100) <= 6.0 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 8 then
			createitemloc(1227899701, GetUnitLoc(GetKillingUnit()))
		end
	elseif GetUnitTypeId(GetTriggerUnit()) == 1868852084 then
		BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit(), 100, 1227895381, 1227895623, 1227895383, 0, 0, 0)
	--毒手药王
	elseif GetUnitTypeId(GetTriggerUnit()) == 1969316719 then
		BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit(), 100, 1227895372, 1227895374, 1227895371, 0, 0, 0)
		if GetRandomReal(1, 100) <= 50.0 or Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 8 then
			createitemloc(1227899714, GetUnitLoc(GetKillingUnit()))
		end
	end
end
--FB2
function al()
	return GetUnitTypeId(GetTriggerUnit()) == 1701212014 or GetUnitTypeId(GetTriggerUnit()) == 1852798818
end
function Bl()
	BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit(), 8, 1227895113, 1227895365, 1227895368, 0, 0, 0)
--call BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit() , 1, 'I01J', 0, 0, 0, 0, 0)
end
--杀唐文亮
function cl()
	return GetUnitTypeId(GetTriggerUnit()) == 1851942007
end
function KillTangWenLiang()
	BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit(), 100, 1227895116, 1227895117, 1227895121, 1227895122, 0, 0)
end
--杀关能
function Fl()
	return GetUnitTypeId(GetTriggerUnit()) == 1852076663
end
function Gl()
	BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit(), 100, 1227895118, 1227895120, 1227895119, 0, 0, 0)
end
--杀李莫愁
function Il()
	return GetUnitTypeId(GetTriggerUnit()) == 1702258030
end
function ll()
	BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit(), 100, 1227895621, 1227895626, 0, 0, 0, 0)
end
--杀木灵子
function Kl()
	return GetUnitTypeId(GetTriggerUnit()) == 1700884333
end
function Ll()
	BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit(), 100, 1227895628, 1227895382, 0, 0, 0, 0)
end
--杀狄云
function Nl()
	return GetUnitTypeId(GetTriggerUnit()) == 1852007777
end
function Ol()
	BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit(), 100, 1227895603, 1227895627, 0, 0, 0, 0)
end
--杀林朝英
function Ql()
	return GetUnitTypeId(GetTriggerUnit()) == 1852076403
end
function Rl()
	local loc = GetUnitLoc(GetTriggerUnit())
	local loc2 = nil
	local i = 1
	shengwang[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] = shengwang[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] + 50
	DisplayTextToPlayer(GetOwningPlayer(GetKillingUnit()), 0, 0, "|cff00ff00击杀林朝英，获得江湖声望+50")
	--call BJDebugMsg(I2S(LoadInteger(YDHT, StringHash("武学")+GetRandomInt(42, 46), 2)))
	BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit(), 100, udg_jianghu[GetRandomInt(1, 18)], 0, 0, 0, 0, 0)
	if Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 8 then
		if GetRandomReal(1, 100) <= 10.0 then
			createitemloc(1227899700, loc)
		end
		if GetRandomReal(1, 100) <= 10.0 then
			createitemloc(1227899701, loc)
		end
		if GetRandomReal(1, 100) <= 10.0 then
			createitemloc(1227899704, loc)
		end
		if GetRandomReal(1, 100) <= 10.0 then
			createitemloc(1227899722, loc)
		end
	else
		if GetRandomReal(1, 100) <= 5.0 then
			createitemloc(1227899700, loc)
		end
		if GetRandomReal(1, 100) <= 5.0 then
			createitemloc(1227899701, loc)
		end
		if GetRandomReal(1, 100) <= 5.0 then
			createitemloc(1227899704, loc)
		end
		if GetRandomReal(1, 100) <= 5.0 then
			createitemloc(1227899722, loc)
		end
	end
	if udg_lddsbool[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == true then
		createitemloc(YaoCao[9], loc)
	end
	i = 0
	for _ in _loop_() do
		if i >= 5 then break end
		AdjustPlayerStateBJ(16 * (10 - GetNumPlayer()) // 10, Player(i), PLAYER_STATE_RESOURCE_LUMBER)
		i = i + 1
	end
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "击杀林朝英，每位玩家奖励珍稀" .. (I2S(16 * (10 - GetNumPlayer()) // 10) or "") .. "个")
	loc2 = pu(loc, GetRandomReal(30.0, 200.0), GetRandomReal(0, 360.0))
	createitemloc(gudong[GetRandomInt(4, 6)], loc2)
	RemoveLocation(loc2)
	loc2 = pu(loc, GetRandomReal(30.0, 200.0), GetRandomReal(0, 360.0))
	createitemloc(gudong[GetRandomInt(1, 6)], loc2)
	RemoveLocation(loc2)
	loc2 = pu(loc, GetRandomReal(30.0, 200.0), GetRandomReal(0, 360.0))
	createitemloc(gudong[GetRandomInt(1, 6)], loc2)
	RemoveLocation(loc2)
	loc2 = pu(loc, GetRandomReal(30.0, 200.0), GetRandomReal(0, 360.0))
	createitemloc(1227895897, loc2)
	RemoveLocation(loc2)
	loc2 = pu(loc, GetRandomReal(30.0, 200.0), GetRandomReal(0, 360.0))
	createitemloc(1227895897, loc2)
	RemoveLocation(loc2)
	loc2 = pu(loc, GetRandomReal(30.0, 200.0), GetRandomReal(0, 360.0))
	createitemloc(1227895897, loc2)
	RemoveLocation(loc2)
	loc2 = pu(loc, GetRandomReal(30.0, 200.0), GetRandomReal(0, 360.0))
	createitemloc(1227895897, loc2)
	RemoveLocation(loc2)
	loc2 = pu(loc, GetRandomReal(30.0, 200.0), GetRandomReal(0, 360.0))
	createitemloc(1227895897, loc2)
	RemoveLocation(loc2)
	RemoveLocation(loc)
	loc = nil
	loc2 = nil
end
--杀古墓弟子
function Tl()
	return GetUnitTypeId(GetTriggerUnit()) == 1852076406
end
function Ul()
	BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit(), 25, 1227895897, 0, 0, 0, 15, YaoCao[11])
	BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit(), fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] // 4, gudong[GetRandomInt(1, 6)], 0, 0, 0, 0, 0)
end
--FB3杀南海鳄神
function Wl()
	return GetUnitTypeId(GetTriggerUnit()) == 1853059439
end
function Xl()
	BaoWuDiaoLuo(GetKillingUnit(), GetTriggerUnit(), 100, 1227895095, 1227895107, 1227895097, 0, 0, 0)
end
--FB3杀叶二娘
function Zl()
	return GetUnitTypeId(GetTriggerUnit()) == 1852338802
end
function dd1()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(1, 60) <= 20 then
			createitemloc(1227895877, LoadLocationHandle(YDHT, id * cx, 392811314))
			SaveInteger(YDHT, id * cx, -1587459251, 0)
			SaveInteger(YDHT, id * cx, 1686469032, GetRandomInt(1, 5))
			SaveInteger(YDHT, id * cx, -403594577, GetRandomInt(1, 5))
			SaveInteger(YDHT, id * cx, -2002008616, 0)
			SaveInteger(YDHT, id * cx, -758038261, 0)
			SaveInteger(YDHT, id * cx, 1732931645, GetRandomInt(0, 2))
			SaveInteger(YDHT, id * cx, -1313985866, 0)
			SaveInteger(YDHT, id * cx, 1141342265, 0)
			SaveInteger(YDHT, id * cx, -1872571105, 0)
			SetItemUserData(bj_lastCreatedItem, LoadInteger(YDHT, id * cx, -1587459251) * 100000000 + LoadInteger(YDHT, id * cx, 1686469032) * 10000000 + LoadInteger(YDHT, id * cx, -403594577) * 1000000 + LoadInteger(YDHT, id * cx, -2002008616) * 100000 + LoadInteger(YDHT, id * cx, -758038261) * 10000 + LoadInteger(YDHT, id * cx, 1732931645) * 1000 + LoadInteger(YDHT, id * cx, -1313985866) * 100 + LoadInteger(YDHT, id * cx, 1141342265) * 10 + LoadInteger(YDHT, id * cx, -1872571105))
		else
			if GetRandomInt(1, 50) <= 25 then
				createitemloc(1227895096, LoadLocationHandle(YDHT, id * cx, 392811314))
			else
				createitemloc(1227895106, LoadLocationHandle(YDHT, id * cx, 392811314))
			end
		end
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--FB3杀段延庆
function f1()
	return GetUnitTypeId(GetTriggerUnit()) == 1853186679
end
function g1()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(1, 60) <= 60 then
			createitemloc(1227895878, LoadLocationHandle(YDHT, id * cx, 392811314))
			SaveInteger(YDHT, id * cx, -1587459251, 0)
			SaveInteger(YDHT, id * cx, 1686469032, GetRandomInt(1, 5))
			SaveInteger(YDHT, id * cx, -403594577, GetRandomInt(1, 5))
			SaveInteger(YDHT, id * cx, -2002008616, 0)
			SaveInteger(YDHT, id * cx, -758038261, 0)
			SaveInteger(YDHT, id * cx, 1732931645, GetRandomInt(0, 1))
			SaveInteger(YDHT, id * cx, -1313985866, 0)
			SaveInteger(YDHT, id * cx, 1141342265, 0)
			SaveInteger(YDHT, id * cx, -1872571105, 0)
			SetItemUserData(bj_lastCreatedItem, LoadInteger(YDHT, id * cx, -1587459251) * 100000000 + LoadInteger(YDHT, id * cx, 1686469032) * 10000000 + LoadInteger(YDHT, id * cx, -403594577) * 1000000 + LoadInteger(YDHT, id * cx, -2002008616) * 100000 + LoadInteger(YDHT, id * cx, -758038261) * 10000 + LoadInteger(YDHT, id * cx, 1732931645) * 1000 + LoadInteger(YDHT, id * cx, -1313985866) * 100 + LoadInteger(YDHT, id * cx, 1141342265) * 10 + LoadInteger(YDHT, id * cx, -1872571105))
		else
		--call createitemloc(1227895108,LoadLocationHandle(YDHT,id*cx,$1769D332))
		end
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--FB3杀梅超风
function i1()
	return GetUnitTypeId(GetTriggerUnit()) == 1702061422
end
function j1()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(1, 60) <= 20 then
			createitemloc(1227895624, LoadLocationHandle(YDHT, id * cx, 392811314))
		else
			if GetRandomInt(1, 50) <= 25 then
				createitemloc(1227895625, LoadLocationHandle(YDHT, id * cx, 392811314))
			else
				createitemloc(1227895384, LoadLocationHandle(YDHT, id * cx, 392811314))
			end
		end
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--FB3杀云中鹤
function m1()
	return GetUnitTypeId(GetTriggerUnit()) == 1852796263
end
function nn1()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(1, 50) <= 25 then
			createitemloc(1227895105, LoadLocationHandle(YDHT, id * cx, 392811314))
		else
			createitemloc(1227895094, LoadLocationHandle(YDHT, id * cx, 392811314))
		end
		--擒龙控鹤
		if GetRandomReal(1, 100) <= 10.0 or GetRandomReal(1, 100) <= 20.0 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 8 then
			createitemloc(1227899715, LoadLocationHandle(YDHT, id * cx, 392811314))
		end
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--FB3杀张无忌
function p1()
	return GetUnitTypeId(GetTriggerUnit()) == 1701672039
end
function q1()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(1, 50) <= 25 then
			createitemloc(1227895600, LoadLocationHandle(YDHT, id * cx, 392811314))
		else
			createitemloc(1227895385, LoadLocationHandle(YDHT, id * cx, 392811314))
		end
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--FB3杀武三通
function t1()
	return GetUnitTypeId(GetTriggerUnit()) == 1970169187
end
function u1()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(1, 50) <= 25 then
			createitemloc(1227895622, LoadLocationHandle(YDHT, id * cx, 392811314))
		else
			createitemloc(1227895601, LoadLocationHandle(YDHT, id * cx, 392811314))
		end
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--杀门派叛徒和武林恶徒
function ww1()
	return GetUnitTypeId(GetTriggerUnit()) == 1852206962 or GetUnitTypeId(GetTriggerUnit()) == 1852733298
end
function z1()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(1, 500) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] then
			createitemloc(gudong[GetRandomInt(4, 9)], LoadLocationHandle(YDHT, id * cx, 392811314))
		end
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit())))
	if Td[LoadInteger(YDHT, id * cx, -1587459251)] == 1 then
		if GetUnitTypeId(GetTriggerUnit()) == 1852206962 then
			if Vd[LoadInteger(YDHT, id * cx, -1587459251)] < 10 then
				Vd[LoadInteger(YDHT, id * cx, -1587459251)] = Vd[LoadInteger(YDHT, id * cx, -1587459251)] + 1
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "门派叛徒：" .. (I2S(Vd[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 10")
			else
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "门派叛徒：" .. (I2S(Vd[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 10")
			end
		else
			if Ud[LoadInteger(YDHT, id * cx, -1587459251)] < 10 then
				Ud[LoadInteger(YDHT, id * cx, -1587459251)] = Ud[LoadInteger(YDHT, id * cx, -1587459251)] + 1
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "武林恶徒：" .. (I2S(Ud[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 10")
			else
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "武林恶徒：" .. (I2S(Ud[LoadInteger(YDHT, id * cx, -1587459251)]) or "") .. " / 10")
			end
		end
	end
	FlushChildHashtable(YDHT, id * cx)
end
--杀极恶领主
function a1()
	return GetUnitTypeId(GetTriggerUnit()) == 1852206966
end
function B1()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	createitemloc(1227895379, LoadLocationHandle(YDHT, id * cx, 392811314))
	SaveInteger(YDHT, id * cx, -1587459251, 0)
	SaveInteger(YDHT, id * cx, 1686469032, GetRandomInt(1, 5))
	SaveInteger(YDHT, id * cx, -403594577, GetRandomInt(1, 6))
	SaveInteger(YDHT, id * cx, -2002008616, 0)
	SaveInteger(YDHT, id * cx, -758038261, 0)
	SaveInteger(YDHT, id * cx, 1732931645, GetRandomInt(0, 1))
	SaveInteger(YDHT, id * cx, -1313985866, 0)
	SaveInteger(YDHT, id * cx, 1141342265, 0)
	SaveInteger(YDHT, id * cx, -1872571105, 0)
	SetItemUserData(bj_lastCreatedItem, LoadInteger(YDHT, id * cx, -1587459251) * 100000000 + LoadInteger(YDHT, id * cx, 1686469032) * 10000000 + LoadInteger(YDHT, id * cx, -403594577) * 1000000 + LoadInteger(YDHT, id * cx, -2002008616) * 100000 + LoadInteger(YDHT, id * cx, -758038261) * 10000 + LoadInteger(YDHT, id * cx, 1732931645) * 1000 + LoadInteger(YDHT, id * cx, -1313985866) * 100 + LoadInteger(YDHT, id * cx, 1141342265) * 10 + LoadInteger(YDHT, id * cx, -1872571105))
	SaveLocationHandle(YDHT, id * cx, -408723394, pu(LoadLocationHandle(YDHT, id * cx, 392811314), GetRandomReal(30.0, 120.0), GetRandomReal(0, 360.0)))
	createitemloc(gudong[GetRandomInt(4, 9)], LoadLocationHandle(YDHT, id * cx, -408723394))
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -408723394))
	SaveLocationHandle(YDHT, id * cx, -408723394, pu(LoadLocationHandle(YDHT, id * cx, 392811314), GetRandomReal(30.0, 120.0), GetRandomReal(0, 360.0)))
	createitemloc(gudong[GetRandomInt(4, 9)], LoadLocationHandle(YDHT, id * cx, -408723394))
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -408723394))
	SaveLocationHandle(YDHT, id * cx, -408723394, pu(LoadLocationHandle(YDHT, id * cx, 392811314), GetRandomReal(30.0, 120.0), GetRandomReal(0, 360.0)))
	createitemloc(gudong[GetRandomInt(4, 9)], LoadLocationHandle(YDHT, id * cx, -408723394))
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -408723394))
	SaveLocationHandle(YDHT, id * cx, -408723394, pu(LoadLocationHandle(YDHT, id * cx, 392811314), GetRandomReal(30.0, 120.0), GetRandomReal(0, 360.0)))
	createitemloc(gudong[GetRandomInt(4, 9)], LoadLocationHandle(YDHT, id * cx, -408723394))
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -408723394))
	SaveLocationHandle(YDHT, id * cx, -408723394, pu(LoadLocationHandle(YDHT, id * cx, 392811314), GetRandomReal(30.0, 120.0), GetRandomReal(0, 360.0)))
	createitemloc(1952807024, LoadLocationHandle(YDHT, id * cx, -408723394))
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -408723394))
	SaveLocationHandle(YDHT, id * cx, -408723394, pu(LoadLocationHandle(YDHT, id * cx, 392811314), GetRandomReal(30.0, 120.0), GetRandomReal(0, 360.0)))
	createitemloc(1952807024, LoadLocationHandle(YDHT, id * cx, -408723394))
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -408723394))
	SaveLocationHandle(YDHT, id * cx, -408723394, pu(LoadLocationHandle(YDHT, id * cx, 392811314), GetRandomReal(30.0, 120.0), GetRandomReal(0, 360.0)))
	createitemloc(1952807024, LoadLocationHandle(YDHT, id * cx, -408723394))
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -408723394))
	SaveLocationHandle(YDHT, id * cx, -408723394, pu(LoadLocationHandle(YDHT, id * cx, 392811314), GetRandomReal(30.0, 120.0), GetRandomReal(0, 360.0)))
	createitemloc(1952807024, LoadLocationHandle(YDHT, id * cx, -408723394))
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -408723394))
	SaveLocationHandle(YDHT, id * cx, -408723394, pu(LoadLocationHandle(YDHT, id * cx, 392811314), GetRandomReal(30.0, 120.0), GetRandomReal(0, 360.0)))
	createitemloc(1952807024, LoadLocationHandle(YDHT, id * cx, -408723394))
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -408723394))
	SaveLocationHandle(YDHT, id * cx, -408723394, pu(LoadLocationHandle(YDHT, id * cx, 392811314), GetRandomReal(30.0, 120.0), GetRandomReal(0, 360.0)))
	createitemloc(1952807024, LoadLocationHandle(YDHT, id * cx, -408723394))
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -408723394))
	SaveLocationHandle(YDHT, id * cx, -408723394, pu(LoadLocationHandle(YDHT, id * cx, 392811314), GetRandomReal(30.0, 120.0), GetRandomReal(0, 360.0)))
	createitemloc(1952807024, LoadLocationHandle(YDHT, id * cx, -408723394))
	createitemloc(YaoCao[10], LoadLocationHandle(YDHT, id * cx, 392811314))
	if udg_lddsbool[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] then
		createitemloc(YaoCao[10], LoadLocationHandle(YDHT, id * cx, 392811314))
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -408723394))
	FlushChildHashtable(YDHT, id * cx)
end
--边境掉落
function C1()
	if GetRandomInt(1, 4) == 1 then
		Zd = 1227896396
	else
		if GetRandomInt(1, 3) == 1 then
			Zd = 1227896397
		else
			if GetRandomInt(1, 2) == 1 then
				Zd = 1227896395
			else
				Zd = 1227895379
			end
		end
	end
	createitemloc(Zd, v7[11])
	DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cFFFFCC33边境刷新掉落：|cFF33FFFF" .. (GetItemName(bj_lastCreatedItem) or ""))
	RemoveItem(bj_lastCreatedItem)
end
--边境掉落
function D1()
	return RectContainsUnit(df, GetTriggerUnit())
end
function E1()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(1, 100) <= 5 then
			createitemloc(Zd, LoadLocationHandle(YDHT, id * cx, 392811314))
			if Zd == 1227895379 then
				SaveInteger(YDHT, id * cx, -1587459251, 0)
				SaveInteger(YDHT, id * cx, 1686469032, GetRandomInt(1, 5))
				SaveInteger(YDHT, id * cx, -403594577, GetRandomInt(1, 6))
				SaveInteger(YDHT, id * cx, -2002008616, 0)
				SaveInteger(YDHT, id * cx, -758038261, 0)
				SaveInteger(YDHT, id * cx, 1732931645, GetRandomInt(0, 1))
				SaveInteger(YDHT, id * cx, -1313985866, 0)
				SaveInteger(YDHT, id * cx, 1141342265, 0)
				SaveInteger(YDHT, id * cx, -1872571105, 0)
				SetItemUserData(bj_lastCreatedItem, LoadInteger(YDHT, id * cx, -1587459251) * 100000000 + LoadInteger(YDHT, id * cx, 1686469032) * 10000000 + LoadInteger(YDHT, id * cx, -403594577) * 1000000 + LoadInteger(YDHT, id * cx, -2002008616) * 100000 + LoadInteger(YDHT, id * cx, -758038261) * 10000 + LoadInteger(YDHT, id * cx, 1732931645) * 1000 + LoadInteger(YDHT, id * cx, -1313985866) * 100 + LoadInteger(YDHT, id * cx, 1141342265) * 10 + LoadInteger(YDHT, id * cx, -1872571105))
			end
		end
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--杀扫地神僧
function G1()
	return GetUnitTypeId(GetTriggerUnit()) == 1853059688
end
function H1()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(GetKillingUnit())
	local i = 1 + GetPlayerId(p)
	local loc = GetUnitLoc(u)
	shengwang[i] = shengwang[i] + 100
	DisplayTextToPlayer(p, 0, 0, "|cff00ff00击杀扫地神僧，获得江湖声望+100")
	if GetRandomInt(1, 1000) <= fuyuan[i] or GetRandomInt(1, 100) <= 30 and Ce[i] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		createitemloc(udg_juexue[GetRandomInt(1, 10)], loc)
		createitemloc(YaoCao[9], loc)
		if Ce[i] == 8 then
			if GetRandomReal(1, 100) <= 10.0 then
				createitemloc(1227899699, loc)
			end
			if GetRandomReal(1, 100) <= 10.0 then
				createitemloc(1227899705, loc)
			end
			if GetRandomReal(1, 100) <= 10.0 then
				createitemloc(1227899716, loc)
			end
		else
			if GetRandomReal(1, 100) <= 5.0 then
				createitemloc(1227899699, loc)
			end
			if GetRandomReal(1, 100) <= 5.0 then
				createitemloc(1227899705, loc)
			end
			if GetRandomReal(1, 100) <= 5.0 then
				createitemloc(1227899716, loc)
			end
		end
		if udg_lddsbool[i] == true then
			createitemloc(YaoCao[9], loc)
		end
		N7 = N7 + 1
	end
	RemoveLocation(loc)
	u = nil
	p = nil
	loc = nil
end
--FB4杀南海神尼
function l1()
	return GetUnitTypeId(GetTriggerUnit()) == 1852140642
end
function J1()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		createitemloc(1227897161, LoadLocationHandle(YDHT, id * cx, 392811314))
		if GetRandomInt(1, 50) <= 30 then
			createitemloc(YaoCao[6], LoadLocationHandle(YDHT, id * cx, 392811314))
			if udg_lddsbool[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] then
				createitemloc(YaoCao[6], LoadLocationHandle(YDHT, id * cx, 392811314))
			end
		end
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--FB4杀公孙止
function L1()
	return GetUnitTypeId(GetTriggerUnit()) == 1852207221
end
function MM1()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(1, 60) <= 25 then
			createitemloc(1227895089, LoadLocationHandle(YDHT, id * cx, 392811314))
			SaveInteger(YDHT, id * cx, -1587459251, 0)
			SaveInteger(YDHT, id * cx, 1686469032, GetRandomInt(1, 5))
			SaveInteger(YDHT, id * cx, -403594577, GetRandomInt(1, 6))
			SaveInteger(YDHT, id * cx, -2002008616, 0)
			SaveInteger(YDHT, id * cx, -758038261, 0)
			SaveInteger(YDHT, id * cx, 1732931645, GetRandomInt(0, 2))
			SaveInteger(YDHT, id * cx, -1313985866, 0)
			SaveInteger(YDHT, id * cx, 1141342265, 0)
			SaveInteger(YDHT, id * cx, -1872571105, 0)
			SetItemUserData(bj_lastCreatedItem, LoadInteger(YDHT, id * cx, -1587459251) * 100000000 + LoadInteger(YDHT, id * cx, 1686469032) * 10000000 + LoadInteger(YDHT, id * cx, -403594577) * 1000000 + LoadInteger(YDHT, id * cx, -2002008616) * 100000 + LoadInteger(YDHT, id * cx, -758038261) * 10000 + LoadInteger(YDHT, id * cx, 1732931645) * 1000 + LoadInteger(YDHT, id * cx, -1313985866) * 100 + LoadInteger(YDHT, id * cx, 1141342265) * 10 + LoadInteger(YDHT, id * cx, -1872571105))
		else
			if GetRandomInt(1, 50) <= 30 then
				createitemloc(1227895091, LoadLocationHandle(YDHT, id * cx, 392811314))
			else
				createitemloc(1227895371, LoadLocationHandle(YDHT, id * cx, 392811314))
			end
		end
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--FB4杀裘千仞
function O1()
	return GetUnitTypeId(GetTriggerUnit()) == 1852663666
end
function P1()
	local loc = GetUnitLoc(GetTriggerUnit())
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(0, 100) <= 5 then
			createitemloc(1227895090, loc)
			SetItemUserData(bj_lastCreatedItem, GetRandomInt(1, 6) * 10000000 + GetRandomInt(1, 5) * 1000000 + GetRandomInt(0, 2) * 1000)
		else
			createitemloc(1227897145, loc)
		end
		N7 = N7 + 1
	end
	RemoveLocation(loc)
	loc = nil
end
--FB4杀裘千尺
function R1()
	return GetUnitTypeId(GetTriggerUnit()) == 1852335728
end
function S1()
	local loc = GetUnitLoc(GetTriggerUnit())
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(0, 100) <= 5 then
			createitemloc(1227895372, loc)
		else
			createitemloc(1227897153, loc)
		end
		N7 = N7 + 1
	end
	RemoveLocation(loc)
	loc = nil
end
--FB4杀长须老鬼
function U1()
	return GetUnitTypeId(GetTriggerUnit()) == 1852996194
end
function V1()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(1, 100) <= 25 then
			createitemloc(1227895092, LoadLocationHandle(YDHT, id * cx, 392811314))
		else
			if GetRandomInt(1, 75) <= 25 then
				createitemloc(1227895093, LoadLocationHandle(YDHT, id * cx, 392811314))
			else
				if GetRandomInt(1, 50) <= 25 then
					createitemloc(1227894874, LoadLocationHandle(YDHT, id * cx, 392811314))
				else
					createitemloc(1227895088, LoadLocationHandle(YDHT, id * cx, 392811314))
				end
			end
		end
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--FB5杀李秋水
function X1()
	return GetUnitTypeId(GetTriggerUnit()) == 1852270642
end
function Y1()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(1, 50) <= 25 then
			createitemloc(1227894870, LoadLocationHandle(YDHT, id * cx, 392811314))
		else
			createitemloc(1227894869, LoadLocationHandle(YDHT, id * cx, 392811314))
		end
		SaveInteger(YDHT, id * cx, -1587459251, 0)
		SaveInteger(YDHT, id * cx, 1686469032, GetRandomInt(1, 5))
		SaveInteger(YDHT, id * cx, -403594577, GetRandomInt(1, 7))
		SaveInteger(YDHT, id * cx, -2002008616, GetRandomInt(1, 5))
		SaveInteger(YDHT, id * cx, -758038261, GetRandomInt(1, 7))
		SaveInteger(YDHT, id * cx, 1732931645, GetRandomInt(0, 2))
		SaveInteger(YDHT, id * cx, -1313985866, 0)
		SaveInteger(YDHT, id * cx, 1141342265, 0)
		SaveInteger(YDHT, id * cx, -1872571105, 0)
		SetItemUserData(bj_lastCreatedItem, LoadInteger(YDHT, id * cx, -1587459251) * 100000000 + LoadInteger(YDHT, id * cx, 1686469032) * 10000000 + LoadInteger(YDHT, id * cx, -403594577) * 1000000 + LoadInteger(YDHT, id * cx, -2002008616) * 100000 + LoadInteger(YDHT, id * cx, -758038261) * 10000 + LoadInteger(YDHT, id * cx, 1732931645) * 1000 + LoadInteger(YDHT, id * cx, -1313985866) * 100 + LoadInteger(YDHT, id * cx, 1141342265) * 10 + LoadInteger(YDHT, id * cx, -1872571105))
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--FB5杀天山童姥
function dJ()
	return GetUnitTypeId(GetTriggerUnit()) == 1852207984
end
function eJ()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(0, 100) <= 100 then
			createitemloc(1227894871, LoadLocationHandle(YDHT, id * cx, 392811314))
		else
		--call createitemloc('I00T',LoadLocationHandle(YDHT,id*cx,$1769D332))
		end
		SaveInteger(YDHT, id * cx, -1587459251, 0)
		SaveInteger(YDHT, id * cx, 1686469032, GetRandomInt(1, 5))
		SaveInteger(YDHT, id * cx, -403594577, GetRandomInt(1, 7))
		SaveInteger(YDHT, id * cx, -2002008616, GetRandomInt(1, 5))
		SaveInteger(YDHT, id * cx, -758038261, GetRandomInt(1, 7))
		SaveInteger(YDHT, id * cx, 1732931645, GetRandomInt(0, 2))
		SaveInteger(YDHT, id * cx, -1313985866, 0)
		SaveInteger(YDHT, id * cx, 1141342265, 0)
		SaveInteger(YDHT, id * cx, -1872571105, 0)
		SetItemUserData(bj_lastCreatedItem, LoadInteger(YDHT, id * cx, -1587459251) * 100000000 + LoadInteger(YDHT, id * cx, 1686469032) * 10000000 + LoadInteger(YDHT, id * cx, -403594577) * 1000000 + LoadInteger(YDHT, id * cx, -2002008616) * 100000 + LoadInteger(YDHT, id * cx, -758038261) * 10000 + LoadInteger(YDHT, id * cx, 1732931645) * 1000 + LoadInteger(YDHT, id * cx, -1313985866) * 100 + LoadInteger(YDHT, id * cx, 1141342265) * 10 + LoadInteger(YDHT, id * cx, -1872571105))
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--FB5杀无崖子
function gJ()
	return GetUnitTypeId(GetTriggerUnit()) == 1852663652
end
function hJ()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(1, 50) <= 25 then
			createitemloc(1227894864, LoadLocationHandle(YDHT, id * cx, 392811314))
		else
			createitemloc(1227894863, LoadLocationHandle(YDHT, id * cx, 392811314))
		end
		if GetRandomReal(1, 100) <= 3.0 or GetRandomReal(1, 100) <= 6.0 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 8 then
			createitemloc(1227899713, LoadLocationHandle(YDHT, id * cx, 392811314))
		end
		SaveInteger(YDHT, id * cx, -1587459251, 0)
		SaveInteger(YDHT, id * cx, 1686469032, GetRandomInt(1, 5))
		SaveInteger(YDHT, id * cx, -403594577, GetRandomInt(1, 7))
		SaveInteger(YDHT, id * cx, -2002008616, GetRandomInt(1, 5))
		SaveInteger(YDHT, id * cx, -758038261, GetRandomInt(1, 7))
		SaveInteger(YDHT, id * cx, 1732931645, GetRandomInt(0, 2))
		SaveInteger(YDHT, id * cx, -1313985866, 0)
		SaveInteger(YDHT, id * cx, 1141342265, 0)
		SaveInteger(YDHT, id * cx, -1872571105, 0)
		SetItemUserData(bj_lastCreatedItem, LoadInteger(YDHT, id * cx, -1587459251) * 100000000 + LoadInteger(YDHT, id * cx, 1686469032) * 10000000 + LoadInteger(YDHT, id * cx, -403594577) * 1000000 + LoadInteger(YDHT, id * cx, -2002008616) * 100000 + LoadInteger(YDHT, id * cx, -758038261) * 10000 + LoadInteger(YDHT, id * cx, 1732931645) * 1000 + LoadInteger(YDHT, id * cx, -1313985866) * 100 + LoadInteger(YDHT, id * cx, 1141342265) * 10 + LoadInteger(YDHT, id * cx, -1872571105))
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--FB5杀闪电蜥蜴
function jJ()
	return GetUnitTypeId(GetTriggerUnit()) == 1853058166
end
function kJ()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		createitemloc(1227895861, LoadLocationHandle(YDHT, id * cx, 392811314))
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--FB5杀千山雪母
function nJ()
	return GetUnitTypeId(GetTriggerUnit()) == 1853055597
end
function oJ()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = GetUnitLoc(u)
	if GetRandomInt(1, 1000) <= fuyuan[i] or GetRandomInt(1, 100) <= 30 and Ce[i] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		createitemloc(1227895860, loc)
		N7 = N7 + 1
	end
	RemoveLocation(loc)
	u = nil
	p = nil
	loc = nil
end
--杀黄裳
function qJ()
	return GetUnitTypeId(GetTriggerUnit()) == 1752395892
end
function rJ()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	shengwang[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] = shengwang[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] + 200
	DisplayTextToPlayer(GetOwningPlayer(GetKillingUnit()), 0, 0, "|cff00ff00击杀黄裳，获得江湖声望+200")
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(1, 80) <= 10 then
			createitemloc(1227895635, LoadLocationHandle(YDHT, id * cx, 392811314))
		else
			if GetRandomInt(1, 70) <= 10 then
				createitemloc(1227895629, LoadLocationHandle(YDHT, id * cx, 392811314))
			else
				if GetRandomInt(1, 60) <= 10 then
					createitemloc(1227895637, LoadLocationHandle(YDHT, id * cx, 392811314))
				else
					if GetRandomInt(1, 50) <= 10 then
						createitemloc(1227895634, LoadLocationHandle(YDHT, id * cx, 392811314))
					else
						if GetRandomInt(1, 40) <= 10 then
							createitemloc(1227895632, LoadLocationHandle(YDHT, id * cx, 392811314))
						else
							if GetRandomInt(1, 30) <= 10 then
								createitemloc(1227895633, LoadLocationHandle(YDHT, id * cx, 392811314))
							else
								if GetRandomInt(1, 20) <= 10 then
									createitemloc(1227895631, LoadLocationHandle(YDHT, id * cx, 392811314))
								else
									createitemloc(1227895636, LoadLocationHandle(YDHT, id * cx, 392811314))
								end
							end
						end
					end
				end
			end
		end
		createitemloc(YaoCao[12], LoadLocationHandle(YDHT, id * cx, 392811314))
		if udg_lddsbool[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] then
			createitemloc(YaoCao[12], LoadLocationHandle(YDHT, id * cx, 392811314))
		end
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--FB6杀令狐冲
function tJ()
	return GetUnitTypeId(GetTriggerUnit()) == 1751672179
end
function uJ()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(1, 50) <= 25 then
			createitemloc(1227894857, LoadLocationHandle(YDHT, id * cx, 392811314))
		else
			createitemloc(1227894862, LoadLocationHandle(YDHT, id * cx, 392811314))
		end
		SaveInteger(YDHT, id * cx, -1587459251, GetRandomInt(1, 4))
		SaveInteger(YDHT, id * cx, 1686469032, GetRandomInt(1, 5))
		SaveInteger(YDHT, id * cx, -403594577, GetRandomInt(1, 8))
		SaveInteger(YDHT, id * cx, -2002008616, GetRandomInt(1, 5))
		SaveInteger(YDHT, id * cx, -758038261, GetRandomInt(1, 8))
		SaveInteger(YDHT, id * cx, 1732931645, GetRandomInt(0, 3))
		SaveInteger(YDHT, id * cx, -1313985866, 0)
		SaveInteger(YDHT, id * cx, 1141342265, 0)
		SaveInteger(YDHT, id * cx, -1872571105, 0)
		SetItemUserData(bj_lastCreatedItem, LoadInteger(YDHT, id * cx, -1587459251) * 100000000 + LoadInteger(YDHT, id * cx, 1686469032) * 10000000 + LoadInteger(YDHT, id * cx, -403594577) * 1000000 + LoadInteger(YDHT, id * cx, -2002008616) * 100000 + LoadInteger(YDHT, id * cx, -758038261) * 10000 + LoadInteger(YDHT, id * cx, 1732931645) * 1000 + LoadInteger(YDHT, id * cx, -1313985866) * 100 + LoadInteger(YDHT, id * cx, 1141342265) * 10 + LoadInteger(YDHT, id * cx, -1872571105))
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--FB6杀风清扬
function wJ()
	return GetUnitTypeId(GetTriggerUnit()) == 1851942252
end
function xJ()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(1, 50) <= 25 then
			createitemloc(1227895874, LoadLocationHandle(YDHT, id * cx, 392811314))
		else
			createitemloc(1227894855, LoadLocationHandle(YDHT, id * cx, 392811314))
			SaveInteger(YDHT, id * cx, -1587459251, GetRandomInt(1, 4))
			SaveInteger(YDHT, id * cx, 1686469032, GetRandomInt(1, 5))
			SaveInteger(YDHT, id * cx, -403594577, GetRandomInt(1, 8))
			SaveInteger(YDHT, id * cx, -2002008616, GetRandomInt(1, 5))
			SaveInteger(YDHT, id * cx, -758038261, GetRandomInt(1, 8))
			SaveInteger(YDHT, id * cx, 1732931645, GetRandomInt(0, 3))
			SaveInteger(YDHT, id * cx, -1313985866, 0)
			SaveInteger(YDHT, id * cx, 1141342265, 0)
			SaveInteger(YDHT, id * cx, -1872571105, 0)
			SetItemUserData(bj_lastCreatedItem, LoadInteger(YDHT, id * cx, -1587459251) * 100000000 + LoadInteger(YDHT, id * cx, 1686469032) * 10000000 + LoadInteger(YDHT, id * cx, -403594577) * 1000000 + LoadInteger(YDHT, id * cx, -2002008616) * 100000 + LoadInteger(YDHT, id * cx, -758038261) * 10000 + LoadInteger(YDHT, id * cx, 1732931645) * 1000 + LoadInteger(YDHT, id * cx, -1313985866) * 100 + LoadInteger(YDHT, id * cx, 1141342265) * 10 + LoadInteger(YDHT, id * cx, -1872571105))
		end
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--FB6杀独孤求败
function zJ()
	return GetUnitTypeId(GetTriggerUnit()) == 1852142199
end
function AJ()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(1, 50) <= 25 then
			createitemloc(1227895873, LoadLocationHandle(YDHT, id * cx, 392811314))
		else
			createitemloc(1227894851, LoadLocationHandle(YDHT, id * cx, 392811314))
			SaveInteger(YDHT, id * cx, -1587459251, GetRandomInt(1, 4))
			SaveInteger(YDHT, id * cx, 1686469032, GetRandomInt(1, 5))
			SaveInteger(YDHT, id * cx, -403594577, GetRandomInt(1, 8))
			SaveInteger(YDHT, id * cx, -2002008616, GetRandomInt(1, 5))
			SaveInteger(YDHT, id * cx, -758038261, GetRandomInt(1, 8))
			SaveInteger(YDHT, id * cx, 1732931645, GetRandomInt(0, 3))
			SaveInteger(YDHT, id * cx, -1313985866, 0)
			SaveInteger(YDHT, id * cx, 1141342265, 0)
			SaveInteger(YDHT, id * cx, -1872571105, 0)
			SetItemUserData(bj_lastCreatedItem, LoadInteger(YDHT, id * cx, -1587459251) * 100000000 + LoadInteger(YDHT, id * cx, 1686469032) * 10000000 + LoadInteger(YDHT, id * cx, -403594577) * 1000000 + LoadInteger(YDHT, id * cx, -2002008616) * 100000 + LoadInteger(YDHT, id * cx, -758038261) * 10000 + LoadInteger(YDHT, id * cx, 1732931645) * 1000 + LoadInteger(YDHT, id * cx, -1313985866) * 100 + LoadInteger(YDHT, id * cx, 1141342265) * 10 + LoadInteger(YDHT, id * cx, -1872571105))
		end
		createitemloc(YaoCao[8], LoadLocationHandle(YDHT, id * cx, 392811314))
		if udg_lddsbool[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] then
			createitemloc(YaoCao[8], LoadLocationHandle(YDHT, id * cx, 392811314))
		end
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--FB6杀东方不败
function BJ()
	return GetUnitTypeId(GetTriggerUnit()) == 1969976430
end
function bJ()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(1, 125) <= 25 then
			createitemloc(1227894852, LoadLocationHandle(YDHT, id * cx, 392811314))
		else
			if GetRandomInt(1, 100) <= 25 then
				createitemloc(1227894850, LoadLocationHandle(YDHT, id * cx, 392811314))
			else
				if GetRandomInt(1, 75) <= 25 then
					createitemloc(1227894854, LoadLocationHandle(YDHT, id * cx, 392811314))
				else
					if GetRandomInt(1, 50) <= 25 then
						createitemloc(1227894860, LoadLocationHandle(YDHT, id * cx, 392811314))
					else
						createitemloc(1227894856, LoadLocationHandle(YDHT, id * cx, 392811314))
					end
				end
			end
		end
		SaveInteger(YDHT, id * cx, -1587459251, GetRandomInt(1, 4))
		SaveInteger(YDHT, id * cx, 1686469032, GetRandomInt(1, 5))
		SaveInteger(YDHT, id * cx, -403594577, GetRandomInt(1, 8))
		SaveInteger(YDHT, id * cx, -2002008616, GetRandomInt(1, 5))
		SaveInteger(YDHT, id * cx, -758038261, GetRandomInt(1, 8))
		SaveInteger(YDHT, id * cx, 1732931645, GetRandomInt(0, 3))
		SaveInteger(YDHT, id * cx, -1313985866, 0)
		SaveInteger(YDHT, id * cx, 1141342265, 0)
		SaveInteger(YDHT, id * cx, -1872571105, 0)
		SetItemUserData(bj_lastCreatedItem, LoadInteger(YDHT, id * cx, -1587459251) * 100000000 + LoadInteger(YDHT, id * cx, 1686469032) * 10000000 + LoadInteger(YDHT, id * cx, -403594577) * 1000000 + LoadInteger(YDHT, id * cx, -2002008616) * 100000 + LoadInteger(YDHT, id * cx, -758038261) * 10000 + LoadInteger(YDHT, id * cx, 1732931645) * 1000 + LoadInteger(YDHT, id * cx, -1313985866) * 100 + LoadInteger(YDHT, id * cx, 1141342265) * 10 + LoadInteger(YDHT, id * cx, -1872571105))
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--杀矮人得决战魁、杀矮子王得江湖忠
function IsAiRen()
	return GetUnitTypeId(GetTriggerUnit()) == 1752328550 or GetUnitTypeId(GetTriggerUnit()) == 1215130471
end
function KillAiRen()
	local u = GetTriggerUnit()
	local loc = GetUnitLoc(u)
	if GetUnitTypeId(u) == 1752328550 then
		if GetRandomReal(0, 30) <= 2 then
			createitemloc(1227896921, loc)
		end
	else
		createitemloc(1227896918, loc)
	end
	RemoveLocation(loc)
	loc = nil
	u = nil
end
--杀牛妖得残章第一式
function cJ()
	return GetUnitTypeId(GetTriggerUnit()) == 1852467042
end
function DJ()
	local u = GetTriggerUnit()
	local loc = GetUnitLoc(u)
	local i = 0
	i = GetRandomInt(1, 10)
	if GetRandomReal(0, 27) <= 3 then
		createitemloc(udg_canzhang[i], loc)
	end
	RemoveLocation(loc)
	loc = nil
	u = nil
end
--杀渣小庸只掉落江湖套
function FJ()
	return GetUnitTypeId(GetTriggerUnit()) == 1852207203
end
function GJ()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		--渣小庸只掉落江湖套
		if GetRandomInt(1, 75) <= 25 then
			createitemloc(1227896920, LoadLocationHandle(YDHT, id * cx, 392811314))
		else
			if GetRandomInt(1, 50) <= 30 then
				createitemloc(1227896922, LoadLocationHandle(YDHT, id * cx, 392811314))
			else
				createitemloc(1227897136, LoadLocationHandle(YDHT, id * cx, 392811314))
			end
		end
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--FB3
--杀熊、桃花岛哑仆、灭火（救火）
function JK()
	return GetUnitTypeId(GetTriggerUnit()) == 1852207724 or GetUnitTypeId(GetTriggerUnit()) == 1853253996 or GetUnitTypeId(GetTriggerUnit()) == 1852601907
end
function KK()
	local u = GetKillingUnit()
	local uc = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = GetUnitLoc(uc)
	if GetUnitTypeId(uc) == 1852207724 then
		if GetRandomInt(1, 50) <= 3 then
			createitemloc(1227895363, loc)
		end
		if GetRandomInt(1, 50) <= 3 then
			createitemloc(1227895375, loc)
		end
		if rd[i] == 1 then
			ud[i] = ud[i] + 1
			if ud[i] >= 30 then
				rd[i] = 2
				unitadditembyidswapped(1227895372, u)
				PlaySoundOnUnitBJ(Hh, 100, u)
				DisplayTextToPlayer(p, 0, 0, "|CFF34FF00完成任务获得江湖声望+150和" .. (GetItemName(bj_lastCreatedItem) or ""))
				shengwang[i] = shengwang[i] + 150
			else
				DisplayTextToPlayer(p, 0, 0, "熊：" .. (I2S(ud[i]) or "") .. " / 30")
			end
		end
	elseif GetUnitTypeId(uc) == 1853253996 then
		if LoadInteger(YDHT, StringHash("哑仆任务"), i) == 1 then
			SaveInteger(YDHT, StringHash("哑仆"), i, LoadInteger(YDHT, StringHash("哑仆"), i) + 1)
			if LoadInteger(YDHT, StringHash("哑仆"), i) >= 10 then
				SaveInteger(YDHT, StringHash("哑仆任务"), i, 0)
				SaveInteger(YDHT, StringHash("哑仆"), i, 0)
				unitadditembyidswapped(1227897174, u)
				PlaySoundOnUnitBJ(Hh, 100, u)
				DisplayTextToPlayer(p, 0, 0, "|CFF34FF00完成任务获得" .. (GetItemName(bj_lastCreatedItem) or ""))
			else
				DisplayTextToPlayer(p, 0, 0, "哑仆：" .. (I2S(LoadInteger(YDHT, StringHash("哑仆"), i)) or "") .. " / 10")
			end
		end
		if GetRandomReal(1, 100) <= 5 then
			unitadditembyidswapped(1227897163, u)
		end
	elseif GetUnitTypeId(uc) == 1852601907 then
		if GetRandomInt(0, 100) <= 100 - GetNumPlayer() * 10 then
			AdjustPlayerStateBJ(2, Player(0), PLAYER_STATE_RESOURCE_LUMBER)
			AdjustPlayerStateBJ(2, Player(1), PLAYER_STATE_RESOURCE_LUMBER)
			AdjustPlayerStateBJ(2, Player(2), PLAYER_STATE_RESOURCE_LUMBER)
			AdjustPlayerStateBJ(2, Player(3), PLAYER_STATE_RESOURCE_LUMBER)
			AdjustPlayerStateBJ(2, Player(4), PLAYER_STATE_RESOURCE_LUMBER)
		end
		if GetRandomReal(1, 100) <= 2.5 then
			unitadditembyidswapped(1227897161, u)
		end
	end
	RemoveLocation(loc)
	u = nil
	uc = nil
	p = nil
	loc = nil
end
---------副本系统开始-------//
function IsFuBen(it)
	if GetItemTypeId(it) == 1227895366 or GetItemTypeId(it) == 1227895638 or GetItemTypeId(it) == 1227895875 or GetItemTypeId(it) == 1227895881 or GetItemTypeId(it) == 1227895894 or GetItemTypeId(it) == 1227896140 then
		return true
	end
	return false
end
function ShenMiGuaiWu(u, loc, FBNum, gw1, gw2, gw3)
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	if GetRandomInt(1, 100) <= 20 and udg_jddsbool[i] == false then
		DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cFFFFCC33载入神秘怪物：|cFF33FFFF无")
	else
		if GetRandomInt(1, 60) <= 20 then
			CreateNUnitsAtLoc(1, gw1, Player(12), loc, bj_UNIT_FACING)
		elseif GetRandomInt(1, 40) <= 20 then
			CreateNUnitsAtLoc(1, gw2, Player(12), loc, bj_UNIT_FACING)
		else
			CreateNUnitsAtLoc(1, gw3, Player(12), loc, bj_UNIT_FACING)
		end
		DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cFFFFCC33载入神秘怪物：|cFF33FFFF" .. (GetUnitName(bj_lastCreatedUnit) or ""))
		p8[FBNum] = bj_lastCreatedUnit
	end
end
function XiYouDiaoLuo(u, FBNum, dl1, dl2, dl3, dl4)
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	if GetRandomInt(1, 100) <= 20 and udg_jddsbool[i] == false then
		DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cFFFFCC33载入稀有掉落：|cFF33FFFF无")
		q8[FBNum] = 1668446579
	else
		if GetRandomInt(1, 60) <= 15 then
			q8[FBNum] = dl1
		elseif GetRandomInt(1, 45) <= 15 then
			q8[FBNum] = dl2
		elseif GetRandomInt(1, 30) <= 25 then
			q8[FBNum] = dl3
		else
			q8[FBNum] = dl4
		end
		createitemloc(q8[FBNum], v7[11])
		DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cFFFFCC33载入稀有掉落：|cFF33FFFF" .. (GetItemName(bj_lastCreatedItem) or ""))
		RemoveItem(bj_lastCreatedItem)
	end
end
function QiYuanNPC(u, FBNum, id, id2, rt1, rt2, rt3, rt4, rt5, rt6)
	local loc3 = nil
	local i = 1 + GetPlayerId(GetOwningPlayer(u))
	if GetRandomInt(1, 100) <= 50 and udg_jddsbool[i] == false then
		DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cFFFFCC33载入奇缘NPC：|cFF33FFFF无")
	else
		if id ~= 1668446579 then
			if GetRandomInt(1, 120) <= 20 then
				loc3 = GetRectCenter(rt1)
			elseif GetRandomInt(1, 100) <= 20 then
				loc3 = GetRectCenter(rt2)
			elseif GetRandomInt(1, 80) <= 20 then
				loc3 = GetRectCenter(rt3)
			elseif GetRandomInt(1, 60) <= 20 then
				loc3 = GetRectCenter(rt4)
			elseif GetRandomInt(1, 40) <= 20 then
				loc3 = GetRectCenter(rt5)
			else
				loc3 = GetRectCenter(rt6)
			end
			if GetRandomInt(1, 2) == 1 then
				CreateNUnitsAtLoc(1, id, Player(15), loc3, bj_UNIT_FACING)
			else
				CreateNUnitsAtLoc(1, id2, Player(15), loc3, bj_UNIT_FACING)
			end
			DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cFFFFCC33载入奇缘NPC：|cFF33FFFF" .. (GetUnitName(bj_lastCreatedUnit) or ""))
			r8[FBNum] = bj_lastCreatedUnit
			RemoveLocation(loc3)
		end
	end
	loc3 = nil
end
function EnterFB(u, goldnum, rt0, rt1, rt2, FBNum, FBName)
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = nil
	local loc2 = nil
	local gws = _array_(0)
	local dls = _array_(0)
	local qys = _array_(0)
	local qylocs = _array_()
	--神秘怪物
	gws[1] = 1869898101
	gws[2] = 1868852084
	gws[3] = 1969316719
	gws[4] = 1702258030
	gws[5] = 1700884333
	gws[6] = 1852007777
	gws[7] = 1701672039
	gws[8] = 1702061422
	gws[9] = 1970169187
	gws[10] = 1852140642
	gws[11] = 1852335728
	gws[12] = 1852663666
	gws[13] = 1853058166
	gws[14] = 1853055597
	gws[15] = 1853055597
	gws[16] = 1852142199
	gws[17] = 1851942252
	gws[18] = 1751672179
	--稀有掉落
	dls[1] = 1227895345
	dls[2] = 1227895116
	dls[3] = 1227895117
	dls[4] = 1227895110
	dls[5] = 1227895109
	dls[6] = 1227895379
	dls[7] = 1227895111
	dls[8] = 1227895371
	dls[9] = 1227895379
	dls[10] = 1227895379
	dls[11] = 1227895380
	dls[12] = 1227895857
	dls[13] = 1227895859
	dls[14] = 1227895858
	dls[15] = 1227895092
	dls[16] = 1227895092
	dls[17] = 1227894865
	dls[18] = 1227894867
	dls[19] = 1227894866
	dls[20] = 1227894866
	dls[21] = 1227894859
	dls[22] = 1227894861
	dls[23] = 1227894861
	dls[24] = 1227894859
	dls[25] = 1668446579
	dls[26] = 1668446579
	dls[27] = 1668446579
	dls[28] = 1668446579
	--奇缘NPC
	qys[1] = 1865429068
	qys[2] = 1865429068
	qys[3] = 1865429071
	qys[4] = 1865429059
	qys[5] = 1865429073
	qys[6] = 1865429073
	qys[7] = 1865429076
	qys[8] = 1865429558
	qys[9] = 1865429080
	qys[10] = 1865429080
	qys[11] = 1668446579
	qys[12] = 1668446579
	qylocs[1] = gf
	qylocs[2] = hf
	qylocs[3] = jf
	qylocs[4] = kf
	qylocs[5] = mf
	qylocs[6] = nf
	qylocs[7] = Af
	qylocs[8] = af
	qylocs[9] = Bf
	qylocs[10] = bf
	qylocs[11] = Cf
	qylocs[12] = cf
	qylocs[13] = Zf
	qylocs[14] = Zf
	qylocs[15] = Zf
	qylocs[16] = Zf
	qylocs[17] = Zf
	qylocs[18] = Zf
	qylocs[19] = Fg
	qylocs[20] = Fg
	qylocs[21] = Fg
	qylocs[22] = Fg
	qylocs[23] = Fg
	qylocs[24] = Fg
	qylocs[25] = Pg
	qylocs[26] = Pg
	qylocs[27] = Pg
	qylocs[28] = Pg
	qylocs[29] = Pg
	qylocs[30] = Pg
	qylocs[31] = Pg
	qylocs[32] = Pg
	qylocs[33] = Pg
	qylocs[34] = Pg
	qylocs[35] = Pg
	qylocs[36] = Pg
	if xiuxing[i] <= FBNum - 2 then
		AdjustPlayerStateBJ(goldnum, p, PLAYER_STATE_RESOURCE_GOLD)
		DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00修行达到" .. (I2S(FBNum - 1) or "") .. "才可以进入,你的修行不足，请前往地图指示点修行去吧")
		loc = GetRectCenter(rt0)
		PingMinimapLocForForce(ov(p), loc, 5.0)
		RemoveLocation(loc)
	else
		if IsUnitType(u, UNIT_TYPE_HERO) ~= nil then -- INLINED!!
			loc = GetRectCenter(rt1)
			loc2 = GetRectCenter(rt2)
			SetUnitPositionLoc(u, loc)
			PanCameraToTimedLocForPlayer(p, loc, 0)
			if m8[FBNum] == false then
				RemoveUnit(r8[FBNum])
				q8[FBNum] = 1668446579
				RemoveUnit(p8[FBNum])
				DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cFFFFCC00开始载入动态副本：|r |cFF99FFCC" .. (FBName or "") .. "|r")
				DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cFFcc99ff――――――――――")
				ShenMiGuaiWu(u, loc2, FBNum, gws[FBNum * 3 - 2], gws[FBNum * 3 - 1], gws[FBNum * 3])
				XiYouDiaoLuo(u, FBNum, dls[FBNum * 4 - 3], dls[FBNum * 4 - 2], dls[FBNum * 4 - 1], dls[FBNum * 4])
				QiYuanNPC(u, FBNum, qys[FBNum * 2 - 1], qys[FBNum * 2], qylocs[FBNum * 6 - 5], qylocs[FBNum * 6 - 4], qylocs[FBNum * 6 - 3], qylocs[FBNum * 6 - 2], qylocs[FBNum * 6 - 1], qylocs[FBNum * 6])
				DisplayTimedTextToPlayer(p, 0, 0, 30, "|cFFFFCC33小怪武功：|cFF33FFFF暂未制作此玩法")
				DisplayTimedTextToPlayer(p, 0, 0, 30, "|cFFFFCC33BOSS武功：|cFF33FFFF暂未制作此玩法")
				StartTimerBJ(Hd[FBNum], false, 150.0)
				DisplayTimedTextToPlayer(p, 0, 0, 30, "|cFFFF0033副本重置倒计时：|cFF33FFFF" .. (I2S(R2I(TimerGetRemaining(Hd[FBNum]))) or "") .. "秒")
				m8[FBNum] = true
				YDWEPolledWaitNull(150.0)
				m8[FBNum] = false
			else
				DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cFFFFCC00进入动态副本：|r |cFF99FFCC" .. (FBName or "") .. "|r")
				DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cFFcc99ff――――――――――")
				DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cFFFFCC33神秘怪物：|cFF33FFFF" .. (GetUnitName(p8[FBNum]) or ""))
				createitemloc(q8[FBNum], v7[11])
				DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cFFFFCC33稀有掉落：|cFF33FFFF" .. (GetItemName(bj_lastCreatedItem) or ""))
				RemoveItem(bj_lastCreatedItem)
				DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cFFFFCC33载入奇缘NPC：|cFF33FFFF" .. (GetUnitName(r8[FBNum]) or ""))
				DisplayTimedTextToPlayer(p, 0, 0, 30, "|cFFFFCC33小怪武功：|cFF33FFFF暂未制作此玩法")
				DisplayTimedTextToPlayer(p, 0, 0, 30, "|cFFFFCC33BOSS武功：|cFF33FFFF暂未制作此玩法")
				DisplayTimedTextToPlayer(p, 0, 0, 30, "|cFFFF0033副本重置倒计时：|cFF33FFFF" .. (I2S(R2I(TimerGetRemaining(Hd[FBNum]))) or "") .. "秒")
			end
			RemoveLocation(loc)
			RemoveLocation(loc2)
		else
			AdjustPlayerStateBJ(100, p, PLAYER_STATE_RESOURCE_GOLD)
			DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00只能由主角亲自购买前往")
		end
	end
	p = nil
	u = nil
	loc = nil
	loc2 = nil
end
--进入FB
function IL()
	return IsFuBen(GetManipulatedItem())
end
function lL()
	local u = GetTriggerUnit()
	local it = GetManipulatedItem()
	if GetItemTypeId(it) == 1227895366 then
		EnterFB(u, 100, Te, Ze, ef, 1, "马贼洞")
	elseif GetItemTypeId(it) == 1227895638 then
		EnterFB(u, 300, Te, yf, zf, 2, "崆峒山")
	elseif GetItemTypeId(it) == 1227895875 then
		EnterFB(u, 1000, ag, Xf, Yf, 3, "塞北")
	elseif GetItemTypeId(it) == 1227895881 then
		EnterFB(u, 3000, Bg, Eg, Dg, 4, "绝情谷")
	elseif GetItemTypeId(it) == 1227895894 then
		EnterFB(u, 6000, Lg, Ng, Og, 5, "逍遥宫")
	elseif GetItemTypeId(it) == 1227896140 then
		EnterFB(u, 10000, Rg, Wg, Xg, 6, "黑木崖")
	end
	u = nil
	it = nil
end
function KL()
	return RectContainsUnit(of, GetTriggerUnit())
end
function LL()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	local loc = GetUnitLoc(u)
	if GetRandomInt(1, 1000) <= fuyuan[i] or GetRandomInt(1, 100) <= 30 and Ce[i] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(1, 100) >= 98 and q8[1] ~= 1668446579 then
			createitemloc(q8[1], loc)
		end
		N7 = N7 + 1
	end
	RemoveLocation(loc)
	p = nil
	u = nil
	loc = nil
end
---------副本系统结束-------//
---------各种副本开始-------//
--韦小宝赌博
function NL()
	return GetUnitTypeId(GetTriggerUnit()) == 1865429068 and DistanceBetweenPoints(GetUnitLoc(GetTriggerUnit()), GetUnitLoc(udg_hero[1 + GetPlayerId(GetTriggerPlayer())])) <= 250.0
end
function OL()
	s8 = GetTriggerPlayer()
	t8 = true
	RemoveUnit(GetTriggerUnit())
	DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 30, "|cFFFFCC33韦小宝想邀请你同他赌一局，你是否愿意呢？|cFF33FFFF15秒钟内操作键盘选择  \n↑：同意并将身上的钱全部下注\n←：同意并将身上50%的钱下注\n→：同意并将身上25%的钱下注\n↓：拒绝")
	YDWEPolledWaitNull(15.0)
	t8 = false
end
function QL()
	return GetTriggerPlayer() == s8 and t8
end
function RL()
	local p = GetTriggerPlayer()
	local i = 1 + GetPlayerId(p)
	if GetRandomInt(1, 10) <= 5 then
		SetPlayerStateBJ(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(s8, PLAYER_STATE_RESOURCE_GOLD) * 2)
		DisplayTextToPlayer(p, 0, 0, "赌赢了~")
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFF66FF00有玩家和韦小宝赌博赢得了大量的金钱，停怪就靠他了")
	--if Ce[i]==4 then
	--	if udg_jdds[i]<1 then
	--		set udg_jdds[i] = udg_jdds[i]+1
	--		call DisplayTextToPlayer(p, 0, 0, "|CFF66FF00恭喜您和韦小宝赌赢了"+I2S(udg_jdds[i])+"次，赌赢2次可获得鉴定大师哦")
	--	else
	--		if udg_jddsbool[i] == false then
	--			set udg_jddsbool[i] = true
	--			if udg_zhangmen[i]==true then
	--			else
	--				call SaveStr(YDHT, GetHandleId(p), GetHandleId(p),"〓鉴定大师〓"+LoadStr(YDHT, GetHandleId(p), GetHandleId(p)))
	--			endif
	--			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜"+GetPlayerName(p)+"获得鉴定大师")
	--			call SetPlayerName(p, "〓鉴定大师〓"+GetPlayerName(p))
	--		endif
	--	endif
	--endif
	else
		SetPlayerStateBJ(p, PLAYER_STATE_RESOURCE_GOLD, 0)
		DisplayTextToPlayer(p, 0, 0, "赌输了！！")
		if GetRandomInt(1, 100) <= 50 or Ce[i] == 8 then
			createitemloc(1227899698, GetUnitLoc(udg_hero[i]))
		end
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFF66FF00有玩家和韦小宝输得一踏糊涂，大家祈祷吧")
	end
	s8 = Player(15)
	p = nil
end
function TL()
	return GetTriggerPlayer() == s8 and t8
end
function UL()
	local p = GetTriggerPlayer()
	local i = 1 + GetPlayerId(p)
	if GetRandomInt(1, 10) <= 7 then
		SetPlayerStateBJ(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) * 5 // 4)
		DisplayTextToPlayer(p, 0, 0, "赌赢了~")
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFF66FF00有玩家和韦小宝赌博赢得了大量的金钱，停怪就靠他了")
	--if Ce[i]==4 then
	--	if udg_jdds[i]<6 then
	--		set udg_jdds[i] = udg_jdds[i]+1
	--	else
	--		if udg_jddsbool[i] == false then
	--			set udg_jddsbool[i] = true
	--			if udg_zhangmen[i]==true then
	--			else
	--				call SaveStr(YDHT, GetHandleId(p), GetHandleId(p),"〓鉴定大师〓"+LoadStr(YDHT, GetHandleId(p), GetHandleId(p)))
	--			endif
	--			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜"+GetPlayerName(p)+"获得鉴定大师")
	--			call SetPlayerName(p, "〓鉴定大师〓"+GetPlayerName(p))
	--		endif
	--	endif
	--endif
	else
		SetPlayerStateBJ(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) * 3 // 4)
		DisplayTextToPlayer(p, 0, 0, "赌输了！！")
		if GetRandomInt(1, 100) <= 50 or Ce[i] == 8 then
			createitemloc(1227899698, GetUnitLoc(udg_hero[i]))
		end
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFF66FF00有玩家和韦小宝输得一踏糊涂，大家祈祷吧")
	end
	s8 = Player(15)
	p = nil
end
function WL()
	return GetTriggerPlayer() == s8 and t8
end
function XL()
	local p = GetTriggerPlayer()
	local i = 1 + GetPlayerId(p)
	if GetRandomInt(1, 10) <= 6 then
		SetPlayerStateBJ(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) * 3 // 2)
		DisplayTextToPlayer(p, 0, 0, "赌赢了~")
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFF66FF00有玩家和韦小宝赌博赢得了大量的金钱，停怪就靠他了")
	--if Ce[i]==4 then
	--	if udg_jdds[i]<6 then
	--		set udg_jdds[i] = udg_jdds[i]+1
	--	else
	--		if udg_jddsbool[i] == false then
	--			set udg_jddsbool[i] = true
	--			if udg_zhangmen[i]==true then
	--			else
	--				call SaveStr(YDHT, GetHandleId(p), GetHandleId(p),"〓鉴定大师〓"+LoadStr(YDHT, GetHandleId(p), GetHandleId(p)))
	--			endif
	--			call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜"+GetPlayerName(p)+"获得鉴定大师")
	--			call SetPlayerName(p, "〓鉴定大师〓"+GetPlayerName(p))
	--		endif
	--	endif
	--endif
	else
		SetPlayerStateBJ(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) // 2)
		DisplayTextToPlayer(p, 0, 0, "赌输了！！")
		if GetRandomInt(1, 100) <= 50 or Ce[i] == 8 then
			createitemloc(1227899698, GetUnitLoc(udg_hero[i]))
		end
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFF66FF00有玩家和韦小宝输得一踏糊涂，大家祈祷吧")
	end
	s8 = Player(15)
	p = nil
end
function ZL()
	return GetTriggerPlayer() == s8 and t8
end
function dM()
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFF66FF00有玩家放弃和韦小宝赌博")
	s8 = Player(15)
end
--FB2稀有掉落
function iM()
	return RectContainsUnit(xf, GetTriggerUnit())
end
function jM()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(1, 100) >= 98 and q8[2] ~= 1668446579 then
			createitemloc(q8[2], LoadLocationHandle(YDHT, id * cx, 392811314))
			if q8[2] == 1227895379 then
				SaveInteger(YDHT, id * cx, -1587459251, 0)
				SaveInteger(YDHT, id * cx, 1686469032, GetRandomInt(1, 5))
				SaveInteger(YDHT, id * cx, -403594577, GetRandomInt(1, 6))
				SaveInteger(YDHT, id * cx, -2002008616, 0)
				SaveInteger(YDHT, id * cx, -758038261, 0)
				SaveInteger(YDHT, id * cx, 1732931645, GetRandomInt(0, 1))
				SaveInteger(YDHT, id * cx, -1313985866, 0)
				SaveInteger(YDHT, id * cx, 1141342265, 0)
				SaveInteger(YDHT, id * cx, -1872571105, 0)
				SetItemUserData(bj_lastCreatedItem, LoadInteger(YDHT, id * cx, -1587459251) * 100000000 + LoadInteger(YDHT, id * cx, 1686469032) * 10000000 + LoadInteger(YDHT, id * cx, -403594577) * 1000000 + LoadInteger(YDHT, id * cx, -2002008616) * 100000 + LoadInteger(YDHT, id * cx, -758038261) * 10000 + LoadInteger(YDHT, id * cx, 1732931645) * 1000 + LoadInteger(YDHT, id * cx, -1313985866) * 100 + LoadInteger(YDHT, id * cx, 1141342265) * 10 + LoadInteger(YDHT, id * cx, -1872571105))
			end
		end
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--FB2奇缘NPC
function mM()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895639 -- INLINED!!
end
function nM()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	RemoveUnit(r8[2])
	SaveUnitHandle(YDHT, id * cx, 1505665227, GetTriggerUnit())
	SaveLocationHandle(YDHT, id * cx, -860413970, GetUnitLoc(GetTriggerUnit()))
	CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)), LoadLocationHandle(YDHT, id * cx, -860413970), bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, 1093677875)
	IssueImmediateOrderById(bj_lastCreatedUnit, 852164)
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 3.0)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -860413970))
	FlushChildHashtable(YDHT, id * cx)
end
function pM()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895640 -- INLINED!!
end
function qM()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	RemoveUnit(r8[2])
	SaveUnitHandle(YDHT, id * cx, 1505665227, GetTriggerUnit())
	SaveLocationHandle(YDHT, id * cx, -860413970, GetUnitLoc(GetTriggerUnit()))
	CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(LoadUnitHandle(YDHT, id * cx, 1505665227)), LoadLocationHandle(YDHT, id * cx, -860413970), bj_UNIT_FACING)
	ShowUnitHide(bj_lastCreatedUnit)
	UnitAddAbility(bj_lastCreatedUnit, 1093678673)
	IssueTargetOrderById(bj_lastCreatedUnit, 852066, GetTriggerUnit())
	UnitApplyTimedLife(bj_lastCreatedUnit, 1112045413, 3.0)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, -860413970))
	FlushChildHashtable(YDHT, id * cx)
end
--进入古墓
function sM()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function tM()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	if shengwang[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] >= 800 and fuyuan[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] >= 15 then
		SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Gf))
		SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
		PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	else
		DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cffff0000进入古墓条件：\n福缘15，江湖声望800")
	end
	FlushChildHashtable(YDHT, id * cx)
end
function vM()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function wM()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(If))
	SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
	PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	FlushChildHashtable(YDHT, id * cx)
end
function yM()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function zM()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Lf))
	SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
	PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	FlushChildHashtable(YDHT, id * cx)
end
function aM()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function BM()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Jf))
	SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
	PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	FlushChildHashtable(YDHT, id * cx)
end
function CM()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function cM()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Sf))
	SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
	PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	FlushChildHashtable(YDHT, id * cx)
end
function EM()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function FM()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Pf))
	SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
	PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	FlushChildHashtable(YDHT, id * cx)
end
function HM()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function IM()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Wf))
	SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
	PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	FlushChildHashtable(YDHT, id * cx)
end
function JM()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function KM()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Uf))
	SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
	PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	FlushChildHashtable(YDHT, id * cx)
end
--FB3稀有掉落
function PM()
	return RectContainsUnit(Nf, GetTriggerUnit())
end
function QM()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(1, 100) <= 5 and q8[3] ~= 1668446579 then
			createitemloc(q8[3], LoadLocationHandle(YDHT, id * cx, 392811314))
			if q8[3] == 1227895379 then
				SaveInteger(YDHT, id * cx, -1587459251, 0)
				SaveInteger(YDHT, id * cx, 1686469032, GetRandomInt(1, 5))
				SaveInteger(YDHT, id * cx, -403594577, GetRandomInt(1, 6))
				SaveInteger(YDHT, id * cx, -2002008616, 0)
				SaveInteger(YDHT, id * cx, -758038261, 0)
				SaveInteger(YDHT, id * cx, 1732931645, GetRandomInt(0, 1))
				SaveInteger(YDHT, id * cx, -1313985866, 0)
				SaveInteger(YDHT, id * cx, 1141342265, 0)
				SaveInteger(YDHT, id * cx, -1872571105, 0)
				SetItemUserData(bj_lastCreatedItem, LoadInteger(YDHT, id * cx, -1587459251) * 100000000 + LoadInteger(YDHT, id * cx, 1686469032) * 10000000 + LoadInteger(YDHT, id * cx, -403594577) * 1000000 + LoadInteger(YDHT, id * cx, -2002008616) * 100000 + LoadInteger(YDHT, id * cx, -758038261) * 10000 + LoadInteger(YDHT, id * cx, 1732931645) * 1000 + LoadInteger(YDHT, id * cx, -1313985866) * 100 + LoadInteger(YDHT, id * cx, 1141342265) * 10 + LoadInteger(YDHT, id * cx, -1872571105))
			end
		end
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--高昌迷宫
function SM()
	return GetItemTypeId(GetManipulatedItem()) == 1227895876
end
function TM()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	if IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil then -- INLINED!!
		if shengwang[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] >= 2000 and fuyuan[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] >= 18 then
			SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(zg))
			SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
			PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
			RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
		else
			DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cffff0000进入高昌迷宫条件：\n福缘18，江湖声望2000")
		end
	else
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00只能由主角亲自前往")
	end
	FlushChildHashtable(YDHT, id * cx)
end
function VM()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function WM()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(dg))
	SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
	PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	FlushChildHashtable(YDHT, id * cx)
end
function YM()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function ZM()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(fg))
	SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
	PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	FlushChildHashtable(YDHT, id * cx)
end
function eN()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function fN()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(hg))
	SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
	PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	FlushChildHashtable(YDHT, id * cx)
end
function hN()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function iN()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(kg))
	SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
	PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	FlushChildHashtable(YDHT, id * cx)
end
function kN()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function mN()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(mg))
	SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
	PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	FlushChildHashtable(YDHT, id * cx)
end
function oN()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function pN()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(og))
	SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
	PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	FlushChildHashtable(YDHT, id * cx)
end
function rN()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function sN()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(rg))
	SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
	PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	FlushChildHashtable(YDHT, id * cx)
end
function uN()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function vN()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(tg))
	SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
	PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	FlushChildHashtable(YDHT, id * cx)
end
function xN()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function yN()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(vg))
	SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
	PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	FlushChildHashtable(YDHT, id * cx)
end
function AN()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function aN()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(tg))
	SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
	PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	FlushChildHashtable(YDHT, id * cx)
end
function bN()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function CN()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(vg))
	SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
	PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	FlushChildHashtable(YDHT, id * cx)
end
function DN()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function EN()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(og))
	SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
	PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	FlushChildHashtable(YDHT, id * cx)
end
--藏经阁
function GN()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227895880
end
function HN()
	return GetUnitTypeId(GetFilterUnit()) == 1853059688
end
function IN()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	if IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil == false then -- INLINED!!
		AdjustPlayerStateBJ(20000, Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), PLAYER_STATE_RESOURCE_GOLD)
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00只能由主角亲自前往")
	else
		if CountUnitsInGroup(wv(cg, Condition(HN))) == 0 then
			AdjustPlayerStateBJ(20000, Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), PLAYER_STATE_RESOURCE_GOLD)
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00扫地神僧目前不在藏经阁，你稍作等待再来吧")
		else
			if xiuxing[LoadInteger(YDHT, id * cx, -1587459251)] < 3 then
				AdjustPlayerStateBJ(20000, Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), PLAYER_STATE_RESOURCE_GOLD)
				SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Bg))
				PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
				RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFF0000你尚未完成历练3之勇闯十恶不赦岛任务")
			else
				SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Cg))
				SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
				PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFADFF2F进入藏经阁")
				RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
			end
		end
	end
	FlushChildHashtable(YDHT, id * cx)
end
--FB4稀有掉落
function MN()
	return RectContainsUnit(Gg, GetTriggerUnit())
end
function NN()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(1, 100) >= 98 and q8[4] ~= 1668446579 then
			createitemloc(q8[4], LoadLocationHandle(YDHT, id * cx, 392811314))
		end
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--绝情谷底买丹
function PN()
	return GetItemTypeId(GetManipulatedItem()) == 1227895885
end
function QN()
	if IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil then -- INLINED!!
		unitadditembyidswapped(1227895371, GetTriggerUnit())
	else
		AdjustPlayerStateBJ(20, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
		DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 10.0, "|CFFFF0000该道具只能由主角亲自购买")
	end
end
function SN()
	return GetItemTypeId(GetManipulatedItem()) == 1227895884
end
function TN()
	if IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil then -- INLINED!!
		unitadditembyidswapped(1227895372, GetTriggerUnit())
	else
		AdjustPlayerStateBJ(20, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
		DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 10.0, "|CFFFF0000该道具只能由主角亲自购买")
	end
end
function VN()
	return GetItemTypeId(GetManipulatedItem()) == 1227895883
end
function WN()
	if IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil then -- INLINED!!
		unitadditembyidswapped(1227895374, GetTriggerUnit())
	else
		AdjustPlayerStateBJ(20, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
		DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 10.0, "|CFFFF0000该道具只能由主角亲自购买")
	end
end
--绝情谷底异种
function YN()
	return GetUnitTypeId(GetTriggerUnit()) == 1852665959
end
function ZN()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetKillingUnit()))
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetKillingUnit())))
	u9 = u9 + 1
	if u9 >= 7 then
		u9 = 0
		if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
			MM7 = 2
		else
			MM7 = 1
		end
		N7 = 1
		for _ in _loop_() do
			if N7 > MM7 then break end
			if GetRandomInt(1, 100) <= 25 then
				createitemloc(1227895889, LoadLocationHandle(YDHT, id * cx, 392811314))
			else
				if GetRandomInt(1, 60) <= 20 then
					createitemloc(1227895887, LoadLocationHandle(YDHT, id * cx, 392811314))
				else
					if GetRandomInt(1, 50) <= 25 then
						createitemloc(1227895886, LoadLocationHandle(YDHT, id * cx, 392811314))
					else
						createitemloc(1227895888, LoadLocationHandle(YDHT, id * cx, 392811314))
					end
				end
			end
			N7 = N7 + 1
		end
	else
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "下次出现灵丹：" .. (I2S(u9) or "") .. " / 7")
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--进入绝情谷底
function eO()
	return GetItemTypeId(GetManipulatedItem()) == 1227895882
end
function fO()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	if IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil then -- INLINED!!
		if shengwang[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] >= 3000 and danpo[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] >= 20 then
			SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Ig))
			SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
			PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
			RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
		else
			DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cffff0000进入绝情谷底条件：\n胆魄20，江湖声望3000")
		end
	else
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00只能由主角亲自前往")
	end
	FlushChildHashtable(YDHT, id * cx)
end
--FB5稀有掉落
function kO()
	return RectContainsUnit(Mg, GetTriggerUnit())
end
function mO()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(1, 100) >= 98 and q8[5] ~= 1668446579 then
			createitemloc(q8[5], LoadLocationHandle(YDHT, id * cx, 392811314))
			SaveInteger(YDHT, id * cx, -1587459251, 0)
			SaveInteger(YDHT, id * cx, 1686469032, GetRandomInt(1, 5))
			SaveInteger(YDHT, id * cx, -403594577, GetRandomInt(1, 7))
			SaveInteger(YDHT, id * cx, -2002008616, GetRandomInt(1, 5))
			SaveInteger(YDHT, id * cx, -758038261, GetRandomInt(1, 7))
			SaveInteger(YDHT, id * cx, 1732931645, GetRandomInt(0, 2))
			SaveInteger(YDHT, id * cx, -1313985866, 0)
			SaveInteger(YDHT, id * cx, 1141342265, 0)
			SaveInteger(YDHT, id * cx, -1872571105, 0)
			SetItemUserData(bj_lastCreatedItem, LoadInteger(YDHT, id * cx, -1587459251) * 100000000 + LoadInteger(YDHT, id * cx, 1686469032) * 10000000 + LoadInteger(YDHT, id * cx, -403594577) * 1000000 + LoadInteger(YDHT, id * cx, -2002008616) * 100000 + LoadInteger(YDHT, id * cx, -758038261) * 10000 + LoadInteger(YDHT, id * cx, 1732931645) * 1000 + LoadInteger(YDHT, id * cx, -1313985866) * 100 + LoadInteger(YDHT, id * cx, 1141342265) * 10 + LoadInteger(YDHT, id * cx, -1872571105))
		end
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--探索琅环玉洞
function oO()
	return GetItemTypeId(GetManipulatedItem()) == 1227895895
end
function pO()
	if IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil then -- INLINED!!
		if GetRandomInt(1, 60) <= 35 then
			DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 10.0, "|CFFFF0000经过一番探索，竟然什么都没有得到，看来你的诚意还不够哦~")
		else
			if GetRandomInt(1, 40) <= 10 then
				unitadditembyidswapped(1227895865, GetTriggerUnit())
			else
				if GetRandomInt(1, 30) <= 10 then
					unitadditembyidswapped(1227895864, GetTriggerUnit())
				else
					if GetRandomInt(1, 20) <= 10 then
						unitadditembyidswapped(1227895863, GetTriggerUnit())
					else
						unitadditembyidswapped(1227895862, GetTriggerUnit())
					end
				end
			end
			DisplayTextToForce(bj_FORCE_ALL_PLAYERS, (GetPlayerName(GetOwningPlayer(GetTriggerUnit())) or "") .. "在探索琅环玉洞时，无意中竟然得到了" .. (GetItemName(bj_lastCreatedItem) or ""))
		end
	else
		AdjustPlayerStateBJ(30000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
		DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 10.0, "|CFFFF0000只能有主角亲自探索")
	end
end
--梦回前朝
function rO()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896133
end
function sO()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	if IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil == false then -- INLINED!!
		AdjustPlayerStateBJ(40000, Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), PLAYER_STATE_RESOURCE_GOLD)
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00只能由主角亲自前往")
	else
		if xiuxing[LoadInteger(YDHT, id * cx, -1587459251)] < 5 or shengwang[LoadInteger(YDHT, id * cx, -1587459251)] < 5500 then
			AdjustPlayerStateBJ(40000, Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), PLAYER_STATE_RESOURCE_GOLD)
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00条件不足")
		else
			SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Vg))
			SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
			PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFADFF2F回到了前朝")
			RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
		end
	end
	FlushChildHashtable(YDHT, id * cx)
end
--FB6稀有掉落
function xO()
	return RectContainsUnit(Yg, GetTriggerUnit())
end
function yO()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveLocationHandle(YDHT, id * cx, 392811314, GetUnitLoc(GetTriggerUnit()))
	if GetRandomInt(1, 1000) <= fuyuan[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] or GetRandomInt(1, 100) <= 30 and Ce[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] == 6 then
		MM7 = 2
	else
		MM7 = 1
	end
	N7 = 1
	for _ in _loop_() do
		if N7 > MM7 then break end
		if GetRandomInt(1, 100) >= 98 and q8[6] ~= 1668446579 then
			createitemloc(q8[6], LoadLocationHandle(YDHT, id * cx, 392811314))
			SaveInteger(YDHT, id * cx, -1587459251, GetRandomInt(1, 4))
			SaveInteger(YDHT, id * cx, 1686469032, GetRandomInt(1, 5))
			SaveInteger(YDHT, id * cx, -403594577, GetRandomInt(1, 8))
			SaveInteger(YDHT, id * cx, -2002008616, GetRandomInt(1, 5))
			SaveInteger(YDHT, id * cx, -758038261, GetRandomInt(1, 8))
			SaveInteger(YDHT, id * cx, 1732931645, GetRandomInt(0, 3))
			SaveInteger(YDHT, id * cx, -1313985866, 0)
			SaveInteger(YDHT, id * cx, 1141342265, 0)
			SaveInteger(YDHT, id * cx, -1872571105, 0)
			SetItemUserData(bj_lastCreatedItem, LoadInteger(YDHT, id * cx, -1587459251) * 100000000 + LoadInteger(YDHT, id * cx, 1686469032) * 10000000 + LoadInteger(YDHT, id * cx, -403594577) * 1000000 + LoadInteger(YDHT, id * cx, -2002008616) * 100000 + LoadInteger(YDHT, id * cx, -758038261) * 10000 + LoadInteger(YDHT, id * cx, 1732931645) * 1000 + LoadInteger(YDHT, id * cx, -1313985866) * 100 + LoadInteger(YDHT, id * cx, 1141342265) * 10 + LoadInteger(YDHT, id * cx, -1872571105))
		end
		N7 = N7 + 1
	end
	RemoveLocation(LoadLocationHandle(YDHT, id * cx, 392811314))
	FlushChildHashtable(YDHT, id * cx)
end
--大辽国
function AO()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function aO()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	SetUnitPosition(udg_hero[i], -13000, -15500)
	PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()), -13000, -15500, 0)
	DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|CFF00ff33传送至大辽国")
end
--聚贤山庄
function bO()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function CO()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	SetUnitPosition(udg_hero[i], -9000, -14000)
	PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()), -9000, -14000, 0)
	DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|CFF00ff33传送至聚贤庄")
--call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cffff0000聚贤山庄（当前版本暂未开放此地图）")
end
--大清藏宝洞
function DO()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function EO()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	--call SetUnitPosition(udg_hero[i],2091,-13158)
	--call PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()),2091,-13158,0)
	--call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cffff0000你已进入到大清藏宝洞，看看有什么发现吧")
	DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cffff0000大清藏宝洞（当前版本暂未开放此地图）")
end
--琉球岛
function GO()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function HO()
	local i = 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
	if xiuxing[i] <= 5 then
		DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFFCC00修行达到6才可以进入,你的修行不足，请前往地图指示点修行去吧")
	else
		SetUnitPosition(udg_hero[i], 10943, 6760)
		PanCameraToTimedForPlayer(GetOwningPlayer(GetTriggerUnit()), 10943, 6760, 0)
		DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cffff0000你已深入到海外琉球岛，看看有什么发现吧")
	--call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0,0,"|cffff0000琉球岛（当前版本暂未开放此地图）")
	end
end
--一品居
function lO()
	return GetItemTypeId(GetManipulatedItem()) == 1227897137
end
function JO()
	local id = GetHandleId(GetTriggeringTrigger())
	local cx = LoadInteger(YDHT, id, -807506826)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, 1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit())))
	SaveUnitHandle(YDHT, id * cx, -784714656, GetTriggerUnit())
	if xiuxing[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] <= 5 then
		AdjustPlayerStateBJ(50000, Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), PLAYER_STATE_RESOURCE_GOLD)
		DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00修行达到6才可以进入,你的修行不足，请前往地图指示点修行去吧")
		SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(Zg))
		PingMinimapLocForForce(ov(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251))), LoadLocationHandle(YDHT, id * cx, 1585647951), 5.0)
		RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
	else
		if UnitHaveItem(GetTriggerUnit(), 1227897138) == false then
			AdjustPlayerStateBJ(50000, Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), PLAYER_STATE_RESOURCE_GOLD)
			DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00需要一品居请帖才可以进入")
		else
			if IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil then -- INLINED!!
				SaveLocationHandle(YDHT, id * cx, 1585647951, GetRectCenter(vh))
				SetUnitPositionLoc(LoadUnitHandle(YDHT, id * cx, -784714656), LoadLocationHandle(YDHT, id * cx, 1585647951))
				PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTriggerUnit()), LoadLocationHandle(YDHT, id * cx, 1585647951), 0)
				RemoveLocation(LoadLocationHandle(YDHT, id * cx, 1585647951))
				RemoveItem(YDWEGetItemOfTypeFromUnitBJNull(GetTriggerUnit(), 1227897138))
			else
				AdjustPlayerStateBJ(50000, Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), PLAYER_STATE_RESOURCE_GOLD)
				DisplayTextToPlayer(Player(-1 + LoadInteger(YDHT, id * cx, -1587459251)), 0, 0, "|cFFFFCC00只能由主角亲自购买前往")
			end
		end
	end
	FlushChildHashtable(YDHT, id * cx)
end
--------------------九阳真经系统----------------------------
--特殊事件：九阳真经系统
--事件1：1~30分钟内的随机时间少林藏经阁出现尹克西和潇湘子（夜间隐身）   击杀尹克西和潇湘子: 两本奇武——潇湘子的《寿木长生功》或尹克西的《黄沙万里鞭法》 全击杀事件结束
--事件2：事件1后10~25分钟内的随机时间，若尹克西和潇湘子未全死，九阳真经被二人偷走，觉远大师和张君宝去追  击杀觉远大师和张君宝：几率获得奇武《九阳真经散篇》 不击杀事件结束，少林高价卖《九阳真经残卷》
--事件3：事件2后10~25分钟内的随机时间，如果觉远大师和张君宝都被击杀，则尹克西和潇湘子逃走并将经书藏入白猿腹中，二人斗殴而死   击杀白猿——得到伴侣白猿 事件结束
--事件4：事件3后20~50分钟内的随机时， 若白猿存活，发生曾阿牛剖腹取书事件，白猿死亡，FB BOSS 替换为曾阿牛——此后可以重复刷新，击杀后获得《九阳真经残卷》
--尹克西和潇湘子在藏经阁偷取九阳神功
--尹克西坐标：6100,-1900
--潇湘子坐标：6100,-2500
--偷书成功
function stealSuccess()
	local ykx = LoadUnitHandle(YDHT, GetHandleId(jiuyangTimer1), 0)
	local xxz = LoadUnitHandle(YDHT, GetHandleId(jiuyangTimer1), 1)
	if IsUnitAliveBJ(ykx) or IsUnitAliveBJ(xxz) then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFCC00江湖小报：潇湘子和尹克西将九阳真经从少林寺藏经阁中窃出，震惊武林！！少林寺已派出觉远和张君宝缉拿潇湘子和尹克西！")
		ExecuteFunc("seekStealers")
	else
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFCC00江湖小报：由于潇湘子和尹克西被江湖英雄击杀，九阳真经未从少林寺藏经阁中窃出！")
	end
	RemoveUnit(ykx)
	RemoveUnit(xxz)
	DestroyQuest(defeatStealer)
	PauseTimer(jiuyangTimer1)
	DestroyTimer(jiuyangTimer1)
	DestroyTimerDialog(jiuyangTimerDialog1)
end
function stealJiuYang()
	local ykx = nil
	local xxz = nil
	DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFCC00江湖小报：小道消息称潇湘子和尹克西潜入少林寺藏经阁窃取九阳神功秘籍，目前还无法证实消息的真实性")
	defeatStealer = CreateQuestBJ(bj_QUESTTYPE_OPT_DISCOVERED, "击杀潇湘子和尹克西", "传闻潇湘子和尹克西正在少林寺藏经阁窃取九阳真经，目前尚不知真实性如何。少侠们可以前往藏经阁一探究竟。（提示：不一定要击杀潇湘子和尹克西）", "ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	--尹克西
	CreateNUnitsAtLoc(1, 1852993383, Player(12), Location(6100, -1900), bj_UNIT_FACING)
	ykx = bj_lastCreatedUnit
	--潇湘子
	CreateNUnitsAtLoc(1, 1851941230, Player(12), Location(6100, -2500), bj_UNIT_FACING)
	xxz = bj_lastCreatedUnit
	jiuyangTimer1 = CreateTimer()
	SaveUnitHandle(YDHT, GetHandleId(jiuyangTimer1), 0, ykx)
	SaveUnitHandle(YDHT, GetHandleId(jiuyangTimer1), 1, xxz)
	TimerStart(jiuyangTimer1, GetRandomInt(600, 1500), false, stealSuccess)
	--call TimerStart(jiuyangTimer1, 60,false, function stealSuccess)
	jiuyangTimerDialog1 = createTimerDialog(jiuyangTimer1, "二杰盗经书")
end
--击杀尹克西和潇湘子后几率获得奇武：潇湘子的《寿木长生功》或尹克西的《黄沙万里鞭法》，江湖声望+1000
function isKillStealer()
	return GetUnitTypeId(GetTriggerUnit()) == 1852993383 or GetUnitTypeId(GetTriggerUnit()) == 1851941230
end
function killStealer()
	dropItem(GetKillingUnit(), 1227899732, 1227899733, 50)
end
--随后张无忌将经书从白猿腹中取出，白猿死亡，副本7BOSS变为张无忌，击杀后得到《九阳真经残卷》
function baiYuanDeath()
	if IsUnitAliveBJ(gg_unit_n00M_0131) then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFCC00江湖小报：传闻有一名叫曾阿牛的武林新秀从百年古猿腹中得到了《九阳神功残卷》！")
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFCC00江湖小报：百年古猿死去，曾阿牛出现在地图上！")
		RemoveUnit(gg_unit_n00M_0131)
		ShowUnit(gg_unit_n00N_0132, true)
	end
	PauseTimer(jiuyangTimer3)
	DestroyTimer(jiuyangTimer3)
	DestroyTimerDialog(jiuyangTimerDialog3)
end
--不击杀尹克西和潇湘子的话二人将经书偷走，觉远大师和张君宝去追经书，若不打败觉远大师和张君宝，经书将被二人追回，经书重回少林寺藏经阁中
function seekSuccess()
	local jyds = LoadUnitHandle(YDHT, GetHandleId(jiuyangTimer1), 0)
	local zjb = LoadUnitHandle(YDHT, GetHandleId(jiuyangTimer1), 1)
	local i = GetRandomInt(1200, 3000)
	if IsUnitAliveBJ(jyds) or IsUnitAliveBJ(zjb) then
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFCC00江湖小报：觉远和张君宝已成功缉拿潇湘子和尹克西并夺回九阳真经，九阳真经现已归还藏经阁！")
	else
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFCC00江湖小报：觉远和张君宝被不知名江湖人士打败，潇湘子和尹克西逃跑！")
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFCC00江湖小报：潇湘子和尹克西互殴而死，九阳真经不知所终！传闻潇湘子和尹克西将窃走的九阳真经藏入白猿腹中！")
		DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFFFCC00江湖小报：白猿在地图上出现！！！")
		ShowUnit(gg_unit_n00M_0131, true)
		jiuyangTimer3 = CreateTimer()
		TimerStart(jiuyangTimer3, i, false, baiYuanDeath)
		jiuyangTimerDialog3 = createTimerDialog(jiuyangTimer3, "曾阿牛取腹中书")
	end
	PauseTimer(jiuyangTimer2)
	DestroyTimer(jiuyangTimer2)
	DestroyTimerDialog(jiuyangTimerDialog2)
	RemoveUnit(jyds)
	RemoveUnit(zjb)
	DestroyQuest(defeatSeeker)
end
--觉远大师坐标：-1000 -14300
--张君宝坐标：-1000 -13300
--尹克西坐标：-2000 -14300 中立无敌NPC
--潇湘子坐标：-2000 -13300 中立无敌NPC
function seekStealers()
	local ykx = nil
	local xxz = nil
	local jyds = nil
	local zjb = nil
	local i = GetRandomInt(600, 1500)
	CreateNUnitsAtLoc(1, 1852993383, Player(12), Location(-2000, -14300), bj_UNIT_FACING)
	ykx = bj_lastCreatedUnit
	CreateNUnitsAtLoc(1, 1851941230, Player(12), Location(-2000, -13300), bj_UNIT_FACING)
	xxz = bj_lastCreatedUnit
	CreateNUnitsAtLoc(1, 1848651851, Player(12), Location(-1000, -14300), bj_UNIT_FACING)
	jyds = bj_lastCreatedUnit
	CreateNUnitsAtLoc(1, 1848651852, Player(12), Location(-1000, -13300), bj_UNIT_FACING)
	zjb = bj_lastCreatedUnit
	UnitAddAbility(ykx, 1098282348)
	UnitAddAbility(xxz, 1098282348)
	defeatSeeker = CreateQuestBJ(bj_QUESTTYPE_OPT_DISCOVERED, "打败觉远大师和张君宝", "传闻潇湘子和尹克西已将九阳真经从少林寺藏经阁窃出，觉远大师和张君宝正在追赶。少侠们对九阳真经感兴趣吗？（提示：可以打败觉远大师和张君宝帮助潇湘子和尹克西逃跑，否则九阳真经将被追回藏经阁）", "ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
	jiuyangTimer2 = CreateTimer()
	SaveUnitHandle(YDHT, GetHandleId(jiuyangTimer2), 0, jyds)
	SaveUnitHandle(YDHT, GetHandleId(jiuyangTimer2), 1, zjb)
	TimerStart(jiuyangTimer2, GetRandomInt(600, 1500), false, seekSuccess)
	--call TimerStart(jiuyangTimer2, 60,false, function seekSuccess)
	jiuyangTimerDialog2 = createTimerDialog(jiuyangTimer2, "追回经书")
end
--若打败觉远大师和张君宝，可几率获得奇武《九阳真经散篇》，江湖声望-1000
function isKillSeeker()
	return GetUnitTypeId(GetTriggerUnit()) == 1848651851 or GetUnitTypeId(GetTriggerUnit()) == 1848651852
end
function killSeeker()
	--击杀者声望-500
	shengwang[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] = IMaxBJ(0, shengwang[1 + GetPlayerId(GetOwningPlayer(GetKillingUnit()))] - 500)
	dropItem(GetKillingUnit(), 1227899734, 0, 50)
end
--并且在地图上出现副本7——白猿，击杀后得到伴侣——白猿
function isKillBaiYuan()
	return GetUnitTypeId(GetTriggerUnit()) == 1848651853
end
function killBaiYuan()
	dropItem(GetKillingUnit(), 1227899731, 0, 100)
end
--击杀曾阿牛后得到九阳残卷
function isKillANiu()
	return GetUnitTypeId(GetTriggerUnit()) == 1848651854
end
function killANiu()
	dropItem(GetKillingUnit(), 1227899735, 1227896918, 50)
end
--------------------九阳真经系统结束----------------------------
---------各种副本结束-------//
function Instances_Trigger()
	local t = CreateTrigger()
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(WI))
	TriggerAddAction(t, XI)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(ZI))
	TriggerAddAction(t, dl)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(fl))
	TriggerAddAction(t, gl)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(il))
	TriggerAddAction(t, jl)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(al))
	TriggerAddAction(t, Bl)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(cl))
	TriggerAddAction(t, KillTangWenLiang)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(Fl))
	TriggerAddAction(t, Gl)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(Il))
	TriggerAddAction(t, ll)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(Kl))
	TriggerAddAction(t, Ll)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(Nl))
	TriggerAddAction(t, Ol)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(Ql))
	TriggerAddAction(t, Rl)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(Tl))
	TriggerAddAction(t, Ul)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(Wl))
	TriggerAddAction(t, Xl)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(Zl))
	TriggerAddAction(t, dd1)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(f1))
	TriggerAddAction(t, g1)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(i1))
	TriggerAddAction(t, j1)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(m1))
	TriggerAddAction(t, nn1)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(p1))
	TriggerAddAction(t, q1)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(t1))
	TriggerAddAction(t, u1)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(ww1))
	TriggerAddAction(t, z1)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(a1))
	TriggerAddAction(t, B1)
	t = CreateTrigger()
	TriggerRegisterTimerEventPeriodic(t, 500.0)
	TriggerAddAction(t, C1)
	t = CreateTrigger()
	TriggerRegisterPlayerUnitEventSimple(t, Player(12), EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(D1))
	TriggerAddAction(t, E1)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(G1))
	TriggerAddAction(t, H1)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(l1))
	TriggerAddAction(t, J1)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(L1))
	TriggerAddAction(t, MM1)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(O1))
	TriggerAddAction(t, P1)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(R1))
	TriggerAddAction(t, S1)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(U1))
	TriggerAddAction(t, V1)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(X1))
	TriggerAddAction(t, Y1)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(dJ))
	TriggerAddAction(t, eJ)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(gJ))
	TriggerAddAction(t, hJ)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(t, Condition(jJ))
	TriggerAddAction(t, kJ)
	Ao = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Ao, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Ao, Condition(nJ))
	TriggerAddAction(Ao, oJ)
	ao = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(ao, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(ao, Condition(qJ))
	TriggerAddAction(ao, rJ)
	Bo = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Bo, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Bo, Condition(tJ))
	TriggerAddAction(Bo, uJ)
	bo = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(bo, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(bo, Condition(wJ))
	TriggerAddAction(bo, xJ)
	Co = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Co, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Co, Condition(zJ))
	TriggerAddAction(Co, AJ)
	co = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(co, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(co, Condition(BJ))
	TriggerAddAction(co, bJ)
	Do = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Do, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Do, Condition(cJ))
	TriggerAddAction(Do, DJ)
	Do = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Do, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Do, Condition(IsAiRen))
	TriggerAddAction(Do, KillAiRen)
	Eo = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Eo, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Eo, Condition(FJ))
	TriggerAddAction(Eo, GJ)
	Wo = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Wo, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Wo, Condition(JK))
	TriggerAddAction(Wo, KK)
	sp = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(sp, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(sp, Condition(IL))
	TriggerAddAction(sp, lL)
	tp = CreateTrigger()
	TriggerRegisterPlayerUnitEventSimple(tp, Player(12), EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(tp, Condition(KL))
	TriggerAddAction(tp, LL)
	vp = CreateTrigger()
	TriggerRegisterPlayerSelectionEventBJ(vp, Player(0), true)
	TriggerRegisterPlayerSelectionEventBJ(vp, Player(1), true)
	TriggerRegisterPlayerSelectionEventBJ(vp, Player(2), true)
	TriggerRegisterPlayerSelectionEventBJ(vp, Player(3), true)
	TriggerRegisterPlayerSelectionEventBJ(vp, Player(4), true)
	TriggerRegisterPlayerSelectionEventBJ(vp, Player(5), true)
	TriggerAddCondition(vp, Condition(NL))
	TriggerAddAction(vp, OL)
	wp = CreateTrigger()
	TriggerRegisterPlayerKeyEventBJ(wp, Player(0), 0, 3)
	TriggerRegisterPlayerKeyEventBJ(wp, Player(1), 0, 3)
	TriggerRegisterPlayerKeyEventBJ(wp, Player(2), 0, 3)
	TriggerRegisterPlayerKeyEventBJ(wp, Player(3), 0, 3)
	TriggerRegisterPlayerKeyEventBJ(wp, Player(4), 0, 3)
	TriggerRegisterPlayerKeyEventBJ(wp, Player(5), 0, 3)
	TriggerAddCondition(wp, Condition(QL))
	TriggerAddAction(wp, RL)
	xp = CreateTrigger()
	TriggerRegisterPlayerKeyEventBJ(xp, Player(0), 0, 0)
	TriggerRegisterPlayerKeyEventBJ(xp, Player(1), 0, 0)
	TriggerRegisterPlayerKeyEventBJ(xp, Player(2), 0, 0)
	TriggerRegisterPlayerKeyEventBJ(xp, Player(3), 0, 0)
	TriggerRegisterPlayerKeyEventBJ(xp, Player(4), 0, 0)
	TriggerRegisterPlayerKeyEventBJ(xp, Player(5), 0, 0)
	TriggerAddCondition(xp, Condition(TL))
	TriggerAddAction(xp, UL)
	yp = CreateTrigger()
	TriggerRegisterPlayerKeyEventBJ(yp, Player(0), 0, 1)
	TriggerRegisterPlayerKeyEventBJ(yp, Player(1), 0, 1)
	TriggerRegisterPlayerKeyEventBJ(yp, Player(2), 0, 1)
	TriggerRegisterPlayerKeyEventBJ(yp, Player(3), 0, 1)
	TriggerRegisterPlayerKeyEventBJ(yp, Player(4), 0, 1)
	TriggerRegisterPlayerKeyEventBJ(yp, Player(5), 0, 1)
	TriggerAddCondition(yp, Condition(WL))
	TriggerAddAction(yp, XL)
	zp = CreateTrigger()
	TriggerRegisterPlayerKeyEventBJ(zp, Player(0), 0, 2)
	TriggerRegisterPlayerKeyEventBJ(zp, Player(1), 0, 2)
	TriggerRegisterPlayerKeyEventBJ(zp, Player(2), 0, 2)
	TriggerRegisterPlayerKeyEventBJ(zp, Player(3), 0, 2)
	TriggerRegisterPlayerKeyEventBJ(zp, Player(4), 0, 2)
	TriggerRegisterPlayerKeyEventBJ(zp, Player(5), 0, 2)
	TriggerAddCondition(zp, Condition(ZL))
	TriggerAddAction(zp, dM)
	ap = CreateTrigger()
	TriggerRegisterPlayerUnitEventSimple(ap, Player(12), EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(ap, Condition(iM))
	TriggerAddAction(ap, jM)
	Bp = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Bp, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(Bp, Condition(mM))
	TriggerAddAction(Bp, nM)
	bp = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(bp, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(bp, Condition(pM))
	TriggerAddAction(bp, qM)
	Cp = CreateTrigger()
	TriggerAddRect(Cp, Ff)
	TriggerAddCondition(Cp, Condition(sM))
	TriggerAddAction(Cp, tM)
	cp = CreateTrigger()
	TriggerAddRect(cp, Hf)
	TriggerAddCondition(cp, Condition(vM))
	TriggerAddAction(cp, wM)
	Dp = CreateTrigger()
	TriggerAddRect(Dp, lf)
	TriggerAddCondition(Dp, Condition(yM))
	TriggerAddAction(Dp, zM)
	Ep = CreateTrigger()
	TriggerAddRect(Ep, Kf)
	TriggerAddCondition(Ep, Condition(aM))
	TriggerAddAction(Ep, BM)
	Fp = CreateTrigger()
	TriggerAddRect(Fp, Of)
	TriggerAddCondition(Fp, Condition(CM))
	TriggerAddAction(Fp, cM)
	Gp = CreateTrigger()
	TriggerAddRect(Gp, Qf)
	TriggerAddCondition(Gp, Condition(EM))
	TriggerAddAction(Gp, FM)
	Hp = CreateTrigger()
	TriggerAddRect(Hp, Tf)
	TriggerAddCondition(Hp, Condition(HM))
	TriggerAddAction(Hp, IM)
	Ip = CreateTrigger()
	TriggerAddRect(Ip, Vf)
	TriggerAddCondition(Ip, Condition(JM))
	TriggerAddAction(Ip, KM)
	Jp = CreateTrigger()
	TriggerRegisterPlayerUnitEventSimple(Jp, Player(12), EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Jp, Condition(PM))
	TriggerAddAction(Jp, QM)
	Kp = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Kp, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(Kp, Condition(SM))
	TriggerAddAction(Kp, TM)
	Lp = CreateTrigger()
	TriggerAddRect(Lp, eg)
	TriggerAddCondition(Lp, Condition(VM))
	TriggerAddAction(Lp, WM)
	Mp = CreateTrigger()
	TriggerAddRect(Mp, gg)
	TriggerAddCondition(Mp, Condition(YM))
	TriggerAddAction(Mp, ZM)
	Np = CreateTrigger()
	TriggerAddRect(Np, ig)
	TriggerAddCondition(Np, Condition(eN))
	TriggerAddAction(Np, fN)
	Op = CreateTrigger()
	TriggerAddRect(Op, jg)
	TriggerAddCondition(Op, Condition(hN))
	TriggerAddAction(Op, iN)
	Pp = CreateTrigger()
	TriggerAddRect(Pp, ng)
	TriggerAddCondition(Pp, Condition(kN))
	TriggerAddAction(Pp, mN)
	Qp = CreateTrigger()
	TriggerAddRect(Qp, pg)
	TriggerAddCondition(Qp, Condition(oN))
	TriggerAddAction(Qp, pN)
	Rp = CreateTrigger()
	TriggerAddRect(Rp, qg)
	TriggerAddCondition(Rp, Condition(rN))
	TriggerAddAction(Rp, sN)
	Sp = CreateTrigger()
	TriggerAddRect(Sp, sg)
	TriggerAddCondition(Sp, Condition(uN))
	TriggerAddAction(Sp, vN)
	Tp = CreateTrigger()
	TriggerAddRect(Tp, ug)
	TriggerAddCondition(Tp, Condition(xN))
	TriggerAddAction(Tp, yN)
	Up = CreateTrigger()
	TriggerAddRect(Up, wg)
	TriggerAddCondition(Up, Condition(AN))
	TriggerAddAction(Up, aN)
	Vp = CreateTrigger()
	TriggerAddRect(Vp, xg)
	TriggerAddCondition(Vp, Condition(bN))
	TriggerAddAction(Vp, CN)
	Wp = CreateTrigger()
	TriggerAddRect(Wp, yg)
	TriggerAddCondition(Wp, Condition(DN))
	TriggerAddAction(Wp, EN)
	Xp = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(Xp, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(Xp, Condition(GN))
	TriggerAddAction(Xp, IN)
	Zp = CreateTrigger()
	TriggerRegisterPlayerUnitEventSimple(Zp, Player(12), EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(Zp, Condition(MN))
	TriggerAddAction(Zp, NN)
	dq = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(dq, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(dq, Condition(PN))
	TriggerAddAction(dq, QN)
	eq = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(eq, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(eq, Condition(SN))
	TriggerAddAction(eq, TN)
	fq = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(fq, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(fq, Condition(VN))
	TriggerAddAction(fq, WN)
	gq = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(gq, EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(gq, Condition(YN))
	TriggerAddAction(gq, ZN)
	hq = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(hq, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(hq, Condition(eO))
	TriggerAddAction(hq, fO)
	jq = CreateTrigger()
	TriggerRegisterPlayerUnitEventSimple(jq, Player(12), EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(jq, Condition(kO))
	TriggerAddAction(jq, mO)
	kq = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(kq, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(kq, Condition(oO))
	TriggerAddAction(kq, pO)
	mq = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(mq, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(mq, Condition(rO))
	TriggerAddAction(mq, sO)
	oq = CreateTrigger()
	TriggerRegisterPlayerUnitEventSimple(oq, Player(12), EVENT_PLAYER_UNIT_DEATH)
	TriggerAddCondition(oq, Condition(xO))
	TriggerAddAction(oq, yO)
	pq = CreateTrigger()
	TriggerAddRect(pq, gh)
	TriggerAddCondition(pq, Condition(AO))
	TriggerAddAction(pq, aO)
	qq = CreateTrigger()
	TriggerAddRect(qq, fh)
	TriggerAddCondition(qq, Condition(bO))
	TriggerAddAction(qq, CO)
	rq = CreateTrigger()
	TriggerAddRect(rq, jh)
	TriggerAddCondition(rq, Condition(DO))
	TriggerAddAction(rq, EO)
	sq = CreateTrigger()
	TriggerAddRect(sq, udg_liuqiu)
	TriggerAddCondition(sq, Condition(GO))
	TriggerAddAction(sq, HO)
	tq = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(tq, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(tq, Condition(lO))
	TriggerAddAction(tq, JO)
	-- //特殊事件：潇湘子和尹克西到藏经阁盗取九阳神功经书
	-- set t = CreateTrigger()
	-- call TriggerRegisterTimerEventSingle(t, GetRandomInt(60, 1800))
	-- //call TriggerRegisterTimerEventSingle(t, 10)
	-- call TriggerAddAction(t, function stealJiuYang)
	-- //击杀潇湘子和尹克西，获得奇武，事件结束
	-- set t=CreateTrigger()
	-- call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
	-- call TriggerAddCondition(t,Condition(function isKillStealer))
	-- call TriggerAddAction(t,function killStealer)
	-- //击杀觉远大师和张君宝，获得奇武，事件结束
	-- set t=CreateTrigger()
	-- call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
	-- call TriggerAddCondition(t,Condition(function isKillSeeker))
	-- call TriggerAddAction(t,function killSeeker)
	-- //击杀白猿，获得伴侣白猿
	-- set t=CreateTrigger()
	-- call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
	-- call TriggerAddCondition(t,Condition(function isKillBaiYuan))
	-- call TriggerAddAction(t,function killBaiYuan)
	-- //击杀曾阿牛，获得九阳残卷
	-- set t=CreateTrigger()
	-- call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
	-- call TriggerAddCondition(t,Condition(function isKillANiu))
	-- call TriggerAddAction(t,function killANiu)
	t = nil
end