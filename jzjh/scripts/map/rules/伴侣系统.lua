---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/11/15 21:44
---
--伴侣属性
function BanLvShuXing_1(num, id1, id2, blgg, blwx, bljm, blfy, bldp, blys)
    R8[num] = id1
    S8[num] = id2
    udg_blgg[num] = blgg
    udg_blwx[num] = blwx
    udg_bljm[num] = bljm
    udg_blfy[num] = blfy
    udg_bldp[num] = bldp
    udg_blys[num] = blys
end
function LO()
    BanLvShuXing_1(1, 1697656885, 1227895865, 2, 0, 0, 0, 3, 0)
    BanLvShuXing_1(2, 1697656886, 1227895874, 2, 2, 2, 2, 2, 2)
    BanLvShuXing_1(3, 1697656887, 1227895380, 0, 0, 0, 0, 1, 1)
    BanLvShuXing_1(4, 1697656888, 1227895864, 0, 2, 2, 1, 0, 0)
    BanLvShuXing_1(5, 1697656889, 1227895858, 2, 0, 1, 0, 0, 0)
    BanLvShuXing_1(6, 1697656898, 1227895859, 0, 2, 0, 0, 0, 1)
    BanLvShuXing_1(7, 1697656897, 1227895857, 0, 0, 0, 2, 0, 0)
    BanLvShuXing_1(8, 1697656899, 1227895873, 2, 2, 2, 2, 2, 2)
    BanLvShuXing_1(9, 1697656900, 1227895863, 2, 0, 0, 2, 1, 0)
    BanLvShuXing_1(10, 1697656901, 1227895862, 0, 1, 3, 0, 0, 1)
    BanLvShuXing_1(11, 1697656902, 1227895861, 1, 1, 0, 0, 0, 2)
    BanLvShuXing_1(12, 1697656903, 1227895860, 0, 0, 2, 1, 1, 0)
    BanLvShuXing_1(13, 1697657154, 1227899728, 2, 2, 2, 2, 2, 2)
    BanLvShuXing_1(14, 1697657155, 1227899731, 3, 3, 3, 3, 3, 3) --白猿
end
--结成伴侣
function NO()
    return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemType(GetManipulatedItem()) == ITEM_TYPE_PERMANENT
end
function OO()
    local u = GetTriggerUnit()
    local p = GetOwningPlayer(u)
    local i = 1 + GetPlayerId(p)
    local j = 1
    local loc = GetUnitLoc(u)
    if IsUnitType(u, UNIT_TYPE_HERO) ~= nil then -- INLINED!!
        for _ in _loop_() do
            if j > MAX_BAN_LV_NUM then break end
            if GetUnitTypeId(k8[i]) == R8[j] then
                jingmai[i] = jingmai[i] - udg_bljm[j]
                fuyuan[i] = fuyuan[i] - udg_blfy[j]
                wuxing[i] = wuxing[i] - udg_blwx[j]
                yishu[i] = yishu[i] - udg_blys[j]
                gengu[i] = gengu[i] - udg_blgg[j]
                danpo[i] = danpo[i] - udg_bldp[j]
            end
            j = j + 1
        end
        RemoveUnit(k8[i])
        j = 1
        for _ in _loop_() do
            if j > MAX_BAN_LV_NUM then break end
            if GetItemTypeId(GetManipulatedItem()) == S8[j] then
                PlaySoundOnUnitBJ(Fh, 100, u)
                CreateNUnitsAtLoc(1, R8[j], p, loc, bj_UNIT_FACING)
                zw(bj_lastCreatedUnit, u, 1.0, 250.0, 1000.0, 1500.0, 75)
                DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00恭喜你与" .. (GetUnitName(bj_lastCreatedUnit) or "") .. "结成伴侣")
                DisplayTextToPlayer(p, 0, 0, "|cFFFFCC00查看伴侣属性输入“bl”")
                k8[i] = bj_lastCreatedUnit
                jingmai[i] = jingmai[i] + udg_bljm[j]
                fuyuan[i] = fuyuan[i] + udg_blfy[j]
                wuxing[i] = wuxing[i] + udg_blwx[j]
                yishu[i] = yishu[i] + udg_blys[j]
                gengu[i] = gengu[i] + udg_blgg[j]
                danpo[i] = danpo[i] + udg_bldp[j]
                RemoveLocation(loc)
            end
            j = j + 1
        end
    else
        unitadditembyidswapped(GetItemTypeId(GetManipulatedItem()), u)
    end
    u = nil
    p = nil
    loc = nil
end

local function init()
    -- 初始化伴侣属性
    uq = CreateTrigger()
    TriggerRegisterTimerEventSingle(uq, 0.2)
    TriggerAddAction(uq, LO)
    -- 结成伴侣
    vq = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(vq, EVENT_PLAYER_UNIT_USE_ITEM)
    TriggerAddCondition(vq, Condition(NO))
    TriggerAddAction(vq, OO)
end
init()