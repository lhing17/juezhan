jass = require 'jass.common'

local bag = require 'util.collection.bag'
local set = require 'util.collection.set'

local hero = {}

setmetatable(hero, hero)
et.hero = hero

--- @class hero
local mt = {}
hero.__index = mt

mt.type = 'hero'

-- 存储jass的unit对象
--- @type j_unit
mt.handle = 0

-- 守家积分
mt.def_point = 0

-- 游戏积分
mt.game_point = 0

-- 声望
mt.reputation = 0

mt['武学修为'] = 0

mt['自由属性'] = 10

mt['悟性'] = 0
mt['根骨'] = 0
mt['医术'] = 0
mt['胆魄'] = 0
mt['福缘'] = 0
mt['经脉'] = 0
mt['绝学领悟'] = 0

-- A类性格
mt.char_a = 0

-- B类性格
mt.char_b = 0

mt['历练'] = 0
mt['历练系数'] = 1

mt['伤害加成'] = 0
mt['伤害吸收'] = 0
mt['暴击率'] = 0
mt['暴击伤害'] = 0
mt['闪避'] = 0
mt['技能吸血'] = 0
mt['生命回复'] = 0
mt['法力回复'] = 0
mt['杀怪回复'] = 0
mt['伤害回复'] = 0

-- 性别 0-女 1-男
mt.gender = 0

mt['门派'] = nil
mt['武功'] = nil
mt['伴侣'] = nil

-- 结拜兄弟
mt.brother = nil

-- 是否烧过黄纸
mt.burned_paper = false

-- 修行过门派内功
mt.learned_internal = false

-- 最大伤害
mt.max_damage = 0

-- 激活残章清单（存技能ID）
mt.activated = nil

-- 武魂石激活对话
mt.wuhun = nil

-- 最大武功数
mt.kongfu_limit = 11

mt.practice = 0 -- 修行/历练

mt.practice_eff = 1 -- 历练系数，影响伤害

mt.pellet = 0 -- 服用丹药数

mt.max_pellet = 10

mt.revive_time = 15

mt.sword_sense = 0 -- 剑意

--- @type table
mt.part_times = nil

--- @type set 套装
mt.suits = nil

--- @type item 养武
mt.growable = nil

function hero:__tostring()
    return '英雄handle:' .. tostring(self.handle) .. 'owner:' .. tostring(self.owner)
end

function hero.init_pick_table()
    local pick_table = {}
    pick_table[RUO_DIE] = {
        ['name'] = '若蝶',
        ['pick_hint'] = '恭喜获得英雄：|CFFCCFF00若蝶|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 星宿 灵鹫宫 姑苏慕容 明教 神龙教|r\n',
        ['select_hint'] = '|CFFCCFF00若蝶|r\n可加入门派：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 灵鹫宫 姑苏慕容 明教 神龙教|r\n基础全属性+9\n额外属性\n|cFF00FF00悟性+5 福缘+2 医术+3\n|r\n',
        ['handle'] = RUO_DIE,
        ['悟性'] = 5,
        ['福缘'] = 2,
        ['医术'] = 3,
        ['char_a'] = GetRandomInt(1, 3),
        ['char_b'] = GetRandomInt(3, 5),
        gender = 0,
    }
    pick_table[LANG_YUN] = {
        ['name'] = '潇侠',
        ['pick_hint'] = '恭喜获得英雄：|CFFCCFF00潇侠|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC少林 古墓 丐帮 华山 全真 峨眉 武当 灵鹫宫 姑苏慕容 明教 神龙教|r\n',
        ['select_hint'] = '|CFFCCFF00潇侠|r\n可加入门派：\n|CFF00FFCC少林 古墓 丐帮 华山 全真 峨眉 武当 灵鹫宫 姑苏慕容 明教 神龙教|r\n基础全属性+9\n额外属性\n|cFF00FF00根骨+2 悟性+2 福缘+5 胆魄+1\n|r\n',
        ['handle'] = LANG_YUN,
        ['悟性'] = 2,
        ['根骨'] = 2,
        ['胆魄'] = 1,
        ['福缘'] = 5,
        ['char_a'] = GetRandomInt(2, 4),
        ['char_b'] = GetRandomInt(2, 4),
        gender = 1,
    }
    pick_table[XIAO_XIA] = {
        ['name'] = '莫言',
        ['pick_hint'] = '恭喜获得英雄：|CFFCCFF00若蝶|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 星宿 灵鹫宫 姑苏慕容 明教 神龙教|r\n\n',
        ['select_hint'] = '|CFFCCFF00莫言|r\n可加入门派：\n|CFF00FFCC古墓 丐帮 华山 血刀 恒山 峨眉 灵鹫宫 姑苏慕容 明教 神龙教|r\n基础全属性+9\n额外属性\n|cFF00FF00悟性+2 经脉+1 胆魄+5 医术+2\n|r\n',
        ['handle'] = XIAO_XIA,
        ['悟性'] = 2,
        ['胆魄'] = 5,
        ['经脉'] = 1,
        ['医术'] = 2,
        ['char_a'] = GetRandomInt(3, 5),
        ['char_b'] = GetRandomInt(1, 3),
        gender = 0,
    }
    pick_table[MO_YAN] = {
        ['name'] = '浪云',
        ['pick_hint'] = '恭喜获得英雄：|CFFCCFF00浪云|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC少林 古墓 丐帮 华山 血刀 武当 灵鹫宫 姑苏慕容 明教 神龙教|r\n\n',
        ['select_hint'] = '|CFFCCFF00浪云|r\n可加入门派：\n|CFF00FFCC少林 古墓 丐帮 华山 血刀 武当 灵鹫宫 姑苏慕容 明教 神龙教|r\n基础全属性+9\n额外属性\n|cFF00FF00根骨+3 经脉+5 医术+2\n|r\n',
        ['handle'] = MO_YAN,
        ['根骨'] = 3,
        ['经脉'] = 5,
        ['医术'] = 2,
        ['char_a'] = GetRandomInt(2, 4),
        ['char_b'] = GetRandomInt(2, 4),
        gender = 1,
    }
    pick_table[MO_JUN] = {
        ['name'] = '魔君',
        ['pick_hint'] = '恭喜获得英雄：|CFFCCFF00魔君|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC少林 华山 全真 血刀 峨眉 武当 灵鹫宫 姑苏慕容 明教 神龙|r\n\n',
        ['select_hint'] = '|CFFCCFF00魔君|r\n可加入门派：\n|CFF00FFCC少林 华山 全真 血刀 峨眉 武当 灵鹫宫 姑苏慕容 明教 神龙教|r\n基础全属性+9\n额外属性\n|cFF00FF00根骨+5 经脉+3 胆魄+2\n|r\n',
        ['handle'] = MO_JUN,
        ['根骨'] = 5,
        ['胆魄'] = 2,
        ['经脉'] = 3,
        ['char_a'] = GetRandomInt(1, 3),
        ['char_b'] = GetRandomInt(3, 5),
        gender = 1,
    }
    pick_table[LAN_XIN] = {
        ['name'] = '兰馨',
        ['pick_hint'] = '恭喜获得英雄：|CFFCCFF00兰馨|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC全部门派|r\n\n',
        ['select_hint'] = '|CFFCCFF00兰馨|r\n可加入门派：\n|CFF00FFCC全部门派|r\n基础全属性+9\n额外属性\n|cFF00FF00全属性+3\n|r\n',
        ['handle'] = LAN_XIN,
        ['悟性'] = 3,
        ['根骨'] = 3,
        ['胆魄'] = 3,
        ['经脉'] = 3,
        ['福缘'] = 3,
        ['医术'] = 3,
        ['char_a'] = GetRandomInt(3, 5),
        ['char_b'] = GetRandomInt(3, 5),
        gender = 0,
    }
    pick_table[JIN_XUAN] = {
        ['name'] = '瑾轩',
        ['pick_hint'] = '恭喜获得英雄：|CFFCCFF00瑾轩|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC全部门派|r\n\n',
        ['select_hint'] = '|CFFCCFF00瑾轩|r\n可加入门派：\n|CFF00FFCC全部门派|r\n基础全属性+9\n额外属性\n|cFF00FF00全属性+3\n|r\n',
        ['handle'] = JIN_XUAN,
        ['悟性'] = 3,
        ['根骨'] = 3,
        ['胆魄'] = 3,
        ['经脉'] = 3,
        ['福缘'] = 3,
        ['医术'] = 3,
        ['char_a'] = GetRandomInt(3, 5),
        ['char_b'] = GetRandomInt(3, 5),
        gender = 1,
    }
    return pick_table
end

function mt:get_owner()
    return self.owner
end

function mt:add_xp(xp)
    jass.AddHeroXP(self.handle, xp, true)
end

function mt:join_denomination(denomination_name)
    h['门派'] = et.lni.denomination[denomination_name]
end

function mt:add_all_attr(n)
    n = n or 1
    self['悟性'] = self['悟性'] + n
    self['福缘'] = self['福缘'] + n
    self['医术'] = self['医术'] + n
    self['根骨'] = self['根骨'] + n
    self['经脉'] = self['经脉'] + n
    self['胆魄'] = self['胆魄'] + n
end

--- 增加悟性
--- @param num number
function mt:add_perception(num)
    self['悟性'] = self['悟性'] + num
end

--- 增加根骨
--- @param num number
function mt:add_constitution(num)
    self['根骨'] = self['根骨'] + num
end

--- 增加医术
--- @param num number
function mt:add_healing_skill(num)
    self['医术'] = self['医术'] + num
end

--- 增加胆魄
--- @param num number
function mt:add_courage(num)
    self['胆魄'] = self['胆魄'] + num
end

--- 增加福缘
--- @param num number
function mt:add_luck(num)
    self['福缘'] = self['福缘'] + num
end

--- 增加经脉
--- @param num number
function mt:add_channel(num)
    self['经脉'] = self['经脉'] + num
end

function mt:join_part_time(pt)
    self['悟性'] = self['悟性'] + pt['悟性']
    self['福缘'] = self['福缘'] + pt['福缘']
    self['医术'] = self['医术'] + pt['医术']
    self['根骨'] = self['根骨'] + pt['根骨']
    self['经脉'] = self['经脉'] + pt['经脉']
    self['胆魄'] = self['胆魄'] + pt['胆魄']
    self:get_owner():send_message(pt.hint, 5)
    self.part_times[pt.name] = { level = 1 } -- 1级兼职 5级为宗师
    if pt.name == '炼丹师' then
        self.herb_bag = bag:new()
    end
end

function mt:get_kongfu_num()
    local counter = 0
    for k, v in pairs(self['武功']) do
        counter = counter + 1
    end
    return counter
end

function mt:add_kongfu(ability_id)
    local u = et.unit(self.handle)
    if not u:has_ability(ability_id) then
        u:add_ability(ability_id)
    end
    self['武功'][ability_id] = et.kongfu.create(ability_id)
end

--- @param growable item 养武
function mt:set_growable(growable)
    self.growable = growable
end

--- @param mode number 0增加 1减少
--- @param bonus_table { trick_damage:number, internal:number, real_damage:number, critical_rate:number, critical_damage: number, kill_regen:number, constitution:number, courage:number, perception:number, luck:number, healing_skill:number, channel:number, max_mana:number, mana_regen:number, max_life:number, life_regen:number, attack_speed:number, armor:number, unique_perception:number, damage_regen:number, damage_addition:number, damage_absorb:number }
function mt:add_bonus(bonus_table, mode)
    --- @type unit
    local hu = et.unit(h.handle)
    mode = mode or 0
    local fun
    if mode == 0 then
        fun = function(a, b)
            return a + b
        end
    elseif mode == 1 then
        fun = function(a, b)
            return a - b
        end
    else
        return
    end
    if bonus_table.trick_damage then
        hu:set_str(fun(hu:get_str(), bonus_table.trick_damage))
    end
    if bonus_table.internal then
        hu:set_agi(fun(hu:get_agi()), bonus_table.internal)
    end
    if bonus_table.real_damage then
        hu:set_int(fun(hu:get_int()), bonus_table.real_damage)
    end
    if bonus_table.critical_rate then
        self['暴击率'] = fun(self['暴击率'], bonus_table.critical_rate)
    end
    if bonus_table.critical_damage then
        self['暴击伤害'] = fun(self['暴击伤害'], bonus_table.critical_damage)
    end
    if bonus_table.kill_regen then
        self['伤害回复'] = fun(self['伤害回复'], bonus_table.kill_regen)
    end
    if bonus_table.constitution then
        self['根骨'] = fun(self['根骨'], bonus_table.constitution)
    end
    if bonus_table.perception then
        self['悟性'] = fun(self['悟性'], bonus_table.perception)
    end
    if bonus_table.healing_skill then
        self['医术'] = fun(self['医术'], bonus_table.healing_skill)
    end
    if bonus_table.courage then
        self['胆魄'] = fun(self['胆魄'], bonus_table.courage)
    end
    if bonus_table.channel then
        self['经脉'] = fun(self['经脉'], bonus_table.channel)
    end
    if bonus_table.luck then
        self['福缘'] = fun(self['福缘'], bonus_table.luck)
    end
    if bonus_table.max_mana then
        hu:set_max_state('mana', fun(hu:get_max_mana(), bonus_table.max_mana))
    end
    if bonus_table.mana_regen then
        self['法力回复'] = fun(self['法力回复'], bonus_table.mana_regen)
    end
    if bonus_table.max_life then
        hu:set_max_state('life', fun(hu:get_max_life(), bonus_table.max_life))
    end
    if bonus_table.life_regen then
        self['生命回复'] = fun(self['生命回复'], bonus_table.life_regen)
    end
    -- FIXME 万能属性系统没有攻速和移速
    if bonus_table.attack_speed then
        hu:add_bonus('attack_speed', fun(0, bonus_table.attack_speed))
    end
    if bonus_table.attack then
        hu:add_bonus('attack', fun(0, bonus_table.attack))
    end
    if bonus_table.armor then
        hu:add_bonus('armor', fun(0, bonus_table.armor))
    end
    if bonus_table.unique_perception then
        self['绝学领悟'] = fun(self['绝学领悟'], bonus_table.unique_perception)
    end
    if bonus_table.damage_regen then
        self['伤害回复'] = fun(self['伤害回复'] + damage_regen)
    end
    if bonus_table.damage_addition then
        self['伤害加成'] = fun(self['伤害加成'], bonus_table.damage_addition)
    end
    if bonus_table.damage_absorb then
        self['伤害吸收'] = fun(self['伤害吸收'], bonus_table.damage_absorb)
    end
end

function hero.create(jUnit, pick)
    local h = {}
    setmetatable(h, hero)
    h.handle = jUnit
    -- 获取player对象

    p = et.player(jass.GetOwningPlayer(jUnit))
    -- 将hero设为player对象的hero属性
    p.hero = h
    h.owner = p
    h.unit = et.unit(h.handle)

    p:send_message(pick.pick_hint)
    h['悟性'] = h['悟性'] + pick['悟性']
    h['福缘'] = h['福缘'] + pick['福缘']
    h['医术'] = h['医术'] + pick['医术']
    h['根骨'] = h['根骨'] + pick['根骨']
    h['经脉'] = h['经脉'] + pick['经脉']
    h['胆魄'] = h['胆魄'] + pick['胆魄']
    h.char_a = pick.char_a
    h.char_b = pick.char_b

    -- 性别
    h.gender = pick.gender
    -- 武功列表
    h['武功'] = {}

    -- 已经遗忘的武功
    h['遗忘武功'] = {}
    -- 激活残章清单
    h.activated = {}

    -- 副职
    h.part_times = {}

    -- 历练任务
    h.practice_tasks = {}

    -- 套装
    h.suits = set:new()

    h.wuhun = jass.DialogCreate()
    local t = war3.CreateTrigger(function()
        et.event_notify(h.wuhun, '对话框-点击', jass.GetTriggerPlayer(), jass.GetClickedButton())
    end)
    jass.TriggerRegisterDialogEvent(t, h.wuhun)

    jass.RemoveUnit(pick.handle)
    return h

end

return hero