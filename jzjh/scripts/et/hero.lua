
local player = require 'et.player'

local hero = {}

setmetatable(hero, hero)
local mt = {}
hero.__index = mt

mt.type = 'hero'

-- 存储jass的unit对象
mt.handle = 0

-- 守家积分
mt.def_point = 0

-- 游戏积分
mt.game_point = 0

mt['声望'] = 0

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

mt['门派'] = ''
mt['武功'] = {}

-- 最大伤害
mt.max_damage = 0

-- TODO 替换英雄属性
function hero.init_pick_list()
    pick_list[Ls] = {
        ['name'] = '若蝶',
        ['pick_hint'] = [[恭喜获得英雄：|CFFCCFF00若蝶|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 星宿 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊） 神龙教（女）|r\n\n]],
        ['select_hint'] = [[|CFFCCFF00若蝶|r\n可加入门派：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 灵鹫宫 姑苏慕容 明教  神龙教（女）|r\n基础全属性+9\n额外属性\n|cFF00FF00悟性+5 福缘+2 医术+3\n|r\n]]
        ['handle'] = Ls,
        ['悟性'] = 5,
        ['福缘'] = 2,
        ['医术'] = 3,
        ['char_a'] = GetRandomInt(1, 3),
        ['char_b'] = GetRandomInt(3, 5),
    }
    pick_list[Ns] = {
        ['name'] = '若蝶',
        ['pick_hint'] = [[恭喜获得英雄：|CFFCCFF00若蝶|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 星宿 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊） 神龙教（女）|r\n\n]],
        ['select_hint'] = [[|CFFCCFF00若蝶|r\n可加入门派：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 灵鹫宫 姑苏慕容 明教  神龙教（女）|r\n基础全属性+9\n额外属性\n|cFF00FF00悟性+5 福缘+2 医术+3\n|r\n]]
        ['handle'] = Ls,
        ['悟性'] = 5,
        ['福缘'] = 2,
        ['医术'] = 3,
        ['char_a'] = GetRandomInt(1, 3),
        ['char_b'] = GetRandomInt(3, 5),
    }
    pick_list[Qs] = {
        ['name'] = '若蝶',
        ['pick_hint'] = [[恭喜获得英雄：|CFFCCFF00若蝶|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 星宿 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊） 神龙教（女）|r\n\n]],
        ['select_hint'] = [[|CFFCCFF00若蝶|r\n可加入门派：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 灵鹫宫 姑苏慕容 明教  神龙教（女）|r\n基础全属性+9\n额外属性\n|cFF00FF00悟性+5 福缘+2 医术+3\n|r\n]]
        ['handle'] = Ls,
        ['悟性'] = 5,
        ['福缘'] = 2,
        ['医术'] = 3,
        ['char_a'] = GetRandomInt(1, 3),
        ['char_b'] = GetRandomInt(3, 5),
    }
    pick_list[Os] = {
        ['name'] = '若蝶',
        ['pick_hint'] = [[恭喜获得英雄：|CFFCCFF00若蝶|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 星宿 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊） 神龙教（女）|r\n\n]],
        ['select_hint'] = [[|CFFCCFF00若蝶|r\n可加入门派：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 灵鹫宫 姑苏慕容 明教  神龙教（女）|r\n基础全属性+9\n额外属性\n|cFF00FF00悟性+5 福缘+2 医术+3\n|r\n]]
        ['handle'] = Ls,
        ['悟性'] = 5,
        ['福缘'] = 2,
        ['医术'] = 3,
        ['char_a'] = GetRandomInt(1, 3),
        ['char_b'] = GetRandomInt(3, 5),
    }
    pick_list[Ps] = {
        ['name'] = '若蝶',
        ['pick_hint'] = [[恭喜获得英雄：|CFFCCFF00若蝶|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 星宿 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊） 神龙教（女）|r\n\n]],
        ['select_hint'] = [[|CFFCCFF00若蝶|r\n可加入门派：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 灵鹫宫 姑苏慕容 明教  神龙教（女）|r\n基础全属性+9\n额外属性\n|cFF00FF00悟性+5 福缘+2 医术+3\n|r\n]]
        ['handle'] = Ls,
        ['悟性'] = 5,
        ['福缘'] = 2,
        ['医术'] = 3,
        ['char_a'] = GetRandomInt(1, 3),
        ['char_b'] = GetRandomInt(3, 5),
    }
    pick_list[LanXin] = {
        ['name'] = '若蝶',
        ['pick_hint'] = [[恭喜获得英雄：|CFFCCFF00若蝶|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 星宿 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊） 神龙教（女）|r\n\n]],
        ['select_hint'] = [[|CFFCCFF00若蝶|r\n可加入门派：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 灵鹫宫 姑苏慕容 明教  神龙教（女）|r\n基础全属性+9\n额外属性\n|cFF00FF00悟性+5 福缘+2 医术+3\n|r\n]]
        ['handle'] = Ls,
        ['悟性'] = 5,
        ['福缘'] = 2,
        ['医术'] = 3,
        ['char_a'] = GetRandomInt(1, 3),
        ['char_b'] = GetRandomInt(3, 5),
    }
    pick_list[XuanJin] = {
        ['name'] = '若蝶',
        ['pick_hint'] = [[恭喜获得英雄：|CFFCCFF00若蝶|r\n请选择下列门派后开启江湖之旅：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 星宿 灵鹫宫（隐藏） 姑苏慕容（隐藏） 明教（特殊） 神龙教（女）|r\n\n]],
        ['select_hint'] = [[|CFFCCFF00若蝶|r\n可加入门派：\n|CFF00FFCC古墓 丐帮 全真 恒山 峨眉 武当 灵鹫宫 姑苏慕容 明教  神龙教（女）|r\n基础全属性+9\n额外属性\n|cFF00FF00悟性+5 福缘+2 医术+3\n|r\n]]
        ['handle'] = Ls,
        ['悟性'] = 5,
        ['福缘'] = 2,
        ['医术'] = 3,
        ['char_a'] = GetRandomInt(1, 3),
        ['char_b'] = GetRandomInt(3, 5),
    }
end


function mt:getOwner()
    return self.owner
end

function hero.create(jUnit)
    local h = {}
    setmetatable(h, hero)
    h.handle = jUnit
    -- 获取player对象
    p = et.player(jass.GetOwningPlayer(jUnit))
    -- 将hero设为player对象的hero属性
    p.hero = h
    h.owner = p
    return h

end



return hero