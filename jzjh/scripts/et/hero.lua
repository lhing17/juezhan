jass = require 'jass.common'

local hero = {}

setmetatable(hero, hero)
et.hero = hero

local mt = {}
hero.__index = mt

mt.type = 'hero'

-- 存储jass的unit对象
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

mt['副职'] = {}

mt['历练'] = 0
mt['历练系数'] = 1

mt['伤害加成'] = 0
mt['伤害吸收'] = 0
mt['暴击率'] = 0
mt['暴击倍数'] = 0
mt['闪避'] = 0
mt['技能吸血'] = 0
mt['生命回复'] = 0
mt['法力回复'] = 0
mt['杀怪回复'] = 0
mt['伤害回复'] = 0

-- 性别 0-女 1-男
mt.gender = 0

mt['门派'] = {}
mt['武功'] = {}
mt['伴侣'] = {}

-- 结拜兄弟
mt.brother = nil

-- 是否烧过黄纸
mt.burned_paper = false

-- 最大伤害
mt.max_damage = 0

pick_table = {}
function hero.init_pick_table()
    pick_table[Ls] = {
        ['name'] = '若蝶',
        ['pick_hint'] = [[恭喜获得英雄：|CFFCCFF00若蝶|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 星宿 灵鹫宫 姑苏慕容 明教 神龙教|r\n]],
        ['select_hint'] = [[|CFFCCFF00若蝶|r\n可加入门派：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 灵鹫宫 姑苏慕容 明教 神龙教|r\n基础全属性+9\n额外属性\n|cFF00FF00悟性+5 福缘+2 医术+3\n|r\n]],
        ['handle'] = Ls,
        ['悟性'] = 5,
        ['福缘'] = 2,
        ['医术'] = 3,
        ['char_a'] = GetRandomInt(1, 3),
        ['char_b'] = GetRandomInt(3, 5),
    }
    pick_table[Ns] = {
        ['name'] = '潇侠',
        ['pick_hint'] = [[恭喜获得英雄：|CFFCCFF00潇侠|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC少林 古墓 丐帮 华山 全真 峨眉 武当 灵鹫宫 姑苏慕容 明教 神龙教|r\n]],
        ['select_hint'] = [[|CFFCCFF00潇侠|r\n可加入门派：\n|CFF00FFCC少林 古墓 丐帮 华山 全真 峨眉 武当 灵鹫宫 姑苏慕容 明教 神龙教|r\n基础全属性+9\n额外属性\n|cFF00FF00根骨+2 悟性+2 福缘+5 胆魄+1\n|r\n]],
        ['handle'] = Ns,
        ['悟性'] = 2,
        ['根骨'] = 2,
        ['胆魄'] = 1,
        ['福缘'] = 5,
        ['char_a'] = GetRandomInt(2, 4),
        ['char_b'] = GetRandomInt(2, 4),
    }
    pick_table[Qs] = {
        ['name'] = '莫言',
        ['pick_hint'] = [[恭喜获得英雄：|CFFCCFF00若蝶|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 星宿 灵鹫宫 姑苏慕容 明教 神龙教|r\n\n]],
        ['select_hint'] = [[|CFFCCFF00莫言|r\n可加入门派：\n|CFF00FFCC古墓 丐帮 华山 血刀 恒山 峨眉 灵鹫宫 姑苏慕容 明教 神龙教|r\n基础全属性+9\n额外属性\n|cFF00FF00悟性+2 经脉+1 胆魄+5 医术+2\n|r\n]],
        ['handle'] = Qs,
        ['悟性'] = 2,
        ['胆魄'] = 5,
        ['经脉'] = 1,
        ['医术'] = 2,
        ['char_a'] = GetRandomInt(3, 5),
        ['char_b'] = GetRandomInt(1, 3),
    }
    pick_table[Os] = {
        ['name'] = '浪云',
        ['pick_hint'] = [[恭喜获得英雄：|CFFCCFF00若蝶|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 星宿 灵鹫宫 姑苏慕容 明教 神龙教|r\n\n]],
        ['select_hint'] = [[|CFFCCFF00浪云|r\n可加入门派：\n|CFF00FFCC少林 古墓 丐帮 华山 血刀 武当 灵鹫宫 姑苏慕容 明教 神龙教|r\n基础全属性+9\n额外属性\n|cFF00FF00根骨+3 经脉+5 医术+2\n|r\n]],
        ['handle'] = Os,
        ['根骨'] = 3,
        ['经脉'] = 5,
        ['医术'] = 2,
        ['char_a'] = GetRandomInt(2, 4),
        ['char_b'] = GetRandomInt(2, 4),
    }
    pick_table[Ps] = {
        ['name'] = '魔君',
        ['pick_hint'] = [[恭喜获得英雄：|CFFCCFF00若蝶|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 星宿 灵鹫宫 姑苏慕容 明教 神龙教|r\n\n]],
        ['select_hint'] = [[|CFFCCFF00魔君|r\n可加入门派：\n|CFF00FFCC少林 华山 全真 血刀 峨眉 武当 灵鹫宫 姑苏慕容 明教 神龙教|r\n基础全属性+9\n额外属性\n|cFF00FF00根骨+5 经脉+3 胆魄+2\n|r\n]],
        ['handle'] = Ps,
        ['根骨'] = 5,
        ['胆魄'] = 2,
        ['经脉'] = 3,
        ['char_a'] = GetRandomInt(1, 3),
        ['char_b'] = GetRandomInt(3, 5),
    }
    pick_table[LanXin] = {
        ['name'] = '兰馨',
        ['pick_hint'] = [[恭喜获得英雄：|CFFCCFF00若蝶|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 星宿 灵鹫宫 姑苏慕容 明教 神龙教|r\n\n]],
        ['select_hint'] = [[|CFFCCFF00兰馨|r\n可加入门派：\n|CFF00FFCC全部门派|r\n基础全属性+9\n额外属性\n|cFF00FF00全属性+3\n|r\n]],
        ['handle'] = LanXin,
        ['悟性'] = 3,
        ['根骨'] = 3,
        ['胆魄'] = 3,
        ['经脉'] = 3,
        ['福缘'] = 3,
        ['医术'] = 3,
        ['char_a'] = GetRandomInt(3, 5),
        ['char_b'] = GetRandomInt(3, 5),
    }
    pick_table[XuanJin] = {
        ['name'] = '瑾轩',
        ['pick_hint'] = [[恭喜获得英雄：|CFFCCFF00若蝶|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 星宿 灵鹫宫 姑苏慕容 明教 神龙教|r\n\n]],
        ['select_hint'] = [[|CFFCCFF00瑾轩|r\n可加入门派：\n|CFF00FFCC全部门派|r\n基础全属性+9\n额外属性\n|cFF00FF00全属性+3\n|r\n]],
        ['handle'] = XuanJin,
        ['悟性'] = 3,
        ['根骨'] = 3,
        ['胆魄'] = 3,
        ['经脉'] = 3,
        ['福缘'] = 3,
        ['医术'] = 3,
        ['char_a'] = GetRandomInt(3, 5),
        ['char_b'] = GetRandomInt(3, 5),
    }
end


function mt:get_owner()
    return self.owner
end

function hero.create(jUnit, pick)
    local h = {}
    setmetatable(h, hero)
    h.handle = jUnit
    -- 获取player对象

    print(jUnit)
    print(jass.GetOwningPlayer(jUnit))
    print(et.player(jass.GetOwningPlayer(jUnit)))
    print(et.player[jass.GetOwningPlayer(jUnit)])


    p = et.player(jass.GetOwningPlayer(jUnit))
    -- 将hero设为player对象的hero属性
    p.hero = h
    h.owner = p
    h.unit = unit(h.handle)

    p:send_message(pick.pick_hint)
    h['悟性'] = h['悟性'] + pick['悟性']
    h['福缘'] = h['福缘'] + pick['福缘']
    h['医术'] = h['医术'] + pick['医术']
    h['根骨'] = h['根骨'] + pick['根骨']
    h['经脉'] = h['经脉'] + pick['经脉']
    h['胆魄'] = h['胆魄'] + pick['胆魄']
    h.char_a = pick.char_a
    h.char_b = pick.char_b
    RemoveUnit(pick.handle)
    return h

end




return hero