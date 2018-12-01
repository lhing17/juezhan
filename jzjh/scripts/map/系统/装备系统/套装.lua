local suits = {
    ['精钢套装'] = {
        items = { 1227895116, 1227895117 },
        hint = "|cffFF4d00※精钢套装※|R\n|CFFB2FF00招式伤害+150\n暴击率+4%\n暴击伤害+30%\n杀怪回复+500\n根骨+1\n胆魄+1|r",
        trick_damage = 150,
        critical_rate = 4,
        critical_damage = 30,
        kill_regen = 500,
        constitution = 1,
        courage = 1,
    },
    ['新年快乐套装'] = {
        items = { 1227899192, 1227899193 },
        hint = "|cffFF4d00※新年快乐套装※|R\n|CFFB2FF00全属性+1000\n全性格属性+5|r",
        trick_damage = 1000,
        internal = 1000,
        real_damage = 1000,
        perception = 5,
        constitution = 5,
        courage = 5,
        luck = 5,
        healing_skill = 5,
        channel = 5,
    },
    ['七星套装'] = {
        items = { 1227895118, 1227895119, 1227895120 },
        hint = "|cffFF4d00※七星套装※|R\n|CFFB2FF00招式伤害+200\n魔法上限+15\n法力恢复+5\n气血+10000\n每秒恢复+130\n医术+1\n悟性+1|R",
    },
    ['破军套装'] = {
        items = { 1227895121, 1227895122 },
        hint = "|cffFF4d00※破军套装※|R\n|CFFB2FF00攻击速度+30%\n气血+10000\n每秒回复+400\n防御+30\n胆魄+1\n福缘+1",
    },
    ['绝恋套装'] = {
        items = { 1227894872, 1227894873 },
        hint = "|cffFF4d00※绝恋套装※|R\n|CFFB2FF00招式伤害+150\n真实伤害+100\n绝学领悟力+1\n气血+15000\n每秒回复+300\n伤害回复+300\n全性格属性+1",
    },
    ['倾城套装'] = {
        items = {1227894874, 1227895088},
        hint = "|cffFF4d00※倾城套装※|R\n|CFFB2FF00防御+170\n绝学领悟力+1\n暴击率+4%\n暴击伤害+30%\n杀怪回复+600\n全性格属性+1",
    },
    ['江湖套装'] = {
        items = {1227896918, 1227896919, 1227896920},
        hint = "|cffFF4d00※江湖套装※|R\n|CFFB2FF00内力+300\n真实伤害+200\n暴击伤害+150%\n法力恢复+10\n暴击率+20%\n绝学领悟力+4\n全性格属性+3\n武功伤害+60%",
    },
    ['决战套装'] = {
        items = {1227897136, 1227896922, 1227896921},
        hint = "|cffFF4d00※决战套装※|R\n|CFFB2FF00招式伤害+1000\n伤害回复+600\n气血+100000\n每秒恢复+1000\n防御+1000\n绝学领悟力+4\n全性格属性+3\n伤害吸收+30%",
    }

}

--失去套装
function Sz()
return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and (GetItemLevel(GetManipulatedItem()) == 3 or GetItemLevel(GetManipulatedItem()) == 6) -- INLINED!!
end
function Tz()
local u = GetTriggerUnit()
local p = GetOwningPlayer(u)
local i = 1 + GetPlayerId(p)
YDWEPolledWaitNull(0.01)
if F8[i] and (UnitHaveItem(u, 1227895116) == false or UnitHaveItem(u, 1227895117) == false) then
DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|cffff00ff失去精钢套装属性|R")
F8[i] = false
ModifyHeroStat(0, u, 1, 150)
udg_baojilv[i] = udg_baojilv[i] - 0.04
udg_baojishanghai[i] = udg_baojishanghai[i] - 0.3
shaguaihufui[i] = shaguaihufui[i] - 500.0
gengu[i] = gengu[i] - 1
danpo[i] = danpo[i] - 1
end
if XNKL[i] and (UnitHaveItem(u, 1227899192) == false or UnitHaveItem(u, 1227899193) == false) then
DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|cffff00ff失去新年快乐套装属性|R")
XNKL[i] = false
ModifyHeroStat(0, u, 1, 1000)
ModifyHeroStat(1, u, 1, 1000)
ModifyHeroStat(2, u, 1, 1000)
jingmai[i] = jingmai[i] - 5
fuyuan[i] = fuyuan[i] - 5
wuxing[i] = wuxing[i] - 5
yishu[i] = yishu[i] - 5
gengu[i] = gengu[i] - 5
danpo[i] = danpo[i] - 5
end
if H8[i] and (UnitHaveItem(u, 1227895118) == false or UnitHaveItem(u, 1227895119) == false or UnitHaveItem(u, 1227895120) == false) then
DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|cffff00ff失去七星套装属性|R")
H8[i] = false
ModifyHeroStat(0, u, 1, 200)
YDWEGeneralBounsSystemUnitSetBonus(u, 1, 1, 15)
YDWEGeneralBounsSystemUnitSetBonus(u, 0, 1, 10000)
UnitRemoveAbility(u, 1093678424)
UnitRemoveAbility(u, 1093678425)
wuxing[i] = wuxing[i] - 1
yishu[i] = yishu[i] - 1
end
if I8[i] and (UnitHaveItem(u, 1227895121) == false or UnitHaveItem(u, 1227895122) == false) then
DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|cffff00ff失去破军套装属性|R")
I8[i] = false
UnitRemoveAbility(u, 1093678426)
UnitRemoveAbility(u, 1093678640)
YDWEGeneralBounsSystemUnitSetBonus(u, 0, 1, 10000)
YDWEGeneralBounsSystemUnitSetBonus(u, 2, 1, 30)
danpo[i] = danpo[i] - 1
fuyuan[i] = fuyuan[i] - 1
end
if l8[i] and (UnitHaveItem(u, 1227894872) == false or UnitHaveItem(u, 1227894873) == false) then
DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|cffff00ff失去绝恋套装属性|R")
l8[i] = false
ModifyHeroStat(0, u, 1, 150)
ModifyHeroStat(2, u, 1, 100)
juexuelingwu[i] = juexuelingwu[i] - 1
YDWEGeneralBounsSystemUnitSetBonus(u, 0, 1, 15000)
UnitRemoveAbility(u, 1093678641)
shanghaihuifu[i] = shanghaihuifu[i] - 300.0
jingmai[i] = jingmai[i] - 1
fuyuan[i] = fuyuan[i] - 1
wuxing[i] = wuxing[i] - 1
yishu[i] = yishu[i] - 1
gengu[i] = gengu[i] - 1
danpo[i] = danpo[i] - 1
end
if G8[i] and (UnitHaveItem(u, 1227894874) == false or UnitHaveItem(u, 1227895088) == false) then
DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|cffff00ff失去倾城套装属性|R")
G8[i] = false
YDWEGeneralBounsSystemUnitSetBonus(u, 2, 1, 170)
juexuelingwu[i] = juexuelingwu[i] - 1
udg_baojilv[i] = udg_baojilv[i] - 0.04
udg_baojishanghai[i] = udg_baojishanghai[i] - 0.3
shaguaihufui[i] = shaguaihufui[i] - 600.0
jingmai[i] = jingmai[i] - 1
fuyuan[i] = fuyuan[i] - 1
wuxing[i] = wuxing[i] - 1
yishu[i] = yishu[i] - 1
gengu[i] = gengu[i] - 1
danpo[i] = danpo[i] - 1
end
if Ee[i] and (UnitHaveItem(u, 1227896918) == false or UnitHaveItem(u, 1227896919) == false or UnitHaveItem(u, 1227896920) == false) then
DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|cffff00ff失去江湖套装属性|R")
Ee[i] = false
ModifyHeroStat(1, u, 1, 300)
ModifyHeroStat(2, u, 1, 200)
UnitRemoveAbility(u, 1093681741)
udg_baojilv[i] = udg_baojilv[i] - 0.2
udg_baojishanghai[i] = udg_baojishanghai[i] - 1.5
juexuelingwu[i] = juexuelingwu[i] - 4
jingmai[i] = jingmai[i] - 3
fuyuan[i] = fuyuan[i] - 3
wuxing[i] = wuxing[i] - 3
yishu[i] = yishu[i] - 3
gengu[i] = gengu[i] - 3
danpo[i] = danpo[i] - 3
udg_shanghaijiacheng[i] = udg_shanghaijiacheng[i] - 0.6
end
if De[i] and (UnitHaveItem(u, 1227897136) == false or UnitHaveItem(u, 1227896922) == false or UnitHaveItem(u, 1227896921) == false) then
DisplayTimedTextToPlayer(p, 0, 0, 10.0, "|cffff00ff失去决战套装属性|R")
De[i] = false
ModifyHeroStat(0, u, 1, 1000)
shanghaihuifu[i] = shanghaihuifu[i] - 600.0
UnitRemoveAbility(u, 1093681742)
UnitRemoveAbility(u, 1093681743)
YDWEGeneralBounsSystemUnitSetBonus(u, 2, 1, 1000)
juexuelingwu[i] = juexuelingwu[i] - 4
jingmai[i] = jingmai[i] - 3
fuyuan[i] = fuyuan[i] - 3
wuxing[i] = wuxing[i] - 3
yishu[i] = yishu[i] - 3
gengu[i] = gengu[i] - 3
danpo[i] = danpo[i] - 3
udg_shanghaixishou[i] = udg_shanghaixishou[i] - 0.3
end
u = nil
p = nil
end
local function init()
--集齐套装
et.game:event '单位-捡起物品'( function (self, u, it)

end )
t = CreateTrigger()
TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
TriggerAddCondition(t, Condition(Pz))
TriggerAddAction(t, Qz)
--失去套装
t = CreateTrigger()
TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DROP_ITEM)
TriggerAddCondition(t, Condition(Sz))
TriggerAddAction(t, Tz)
end
init()