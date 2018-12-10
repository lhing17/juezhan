local PLAYER_DECENT = et.player(6) -- 正派武林
local PLAYER_ATTACKER = et.player(7) -- 进攻怪
local PLAYER_HOSTILE = et.player(13) -- 中立敌对
local PLAYER_PASSIVE = et.player(16) -- 中立被动

--===========================================================================
-- 玩家5
--===========================================================================
--传送石
local function create_transport_stones()
    local p = PLAYER_DECENT
    -- 传送石
    p:create_unit('nbse', et.point(-5920.0, -224.0)) --传送石
    p:create_unit('nbse', et.point(-4448.0, -2976.0)) --传送石
    p:create_unit('nbse', et.point(1888.0, -224.0)) --传送石
    p:create_unit('nbse', et.point(-1440.0, 8160.0))--传送石
    p:create_unit('nbse', et.point(-2336.0, -3872.0)) --传送石
    p:create_unit('nbse', et.point(1632.0, -2464.0)) --传送石
    p:create_unit('nbse', et.point(3616.0, -8928.0))--传送石
    p:create_unit('nbse', et.point(-13024.0, -15264.0)) --传送石
    p:create_unit('nbse', et.point(1184.0, -6048.0))--传送石
    p:create_unit('nbse', et.point(-288.0, -13088.0)) --传送石
    p:create_unit('nbse', et.point(544.0, -13024.0))--传送石
end
local function create_units_for_decent()
    --- @type player
    local p = PLAYER_DECENT
    -- 驿站
    p:create_unit('o02D', et.point(-101.7, -1403.0), 105.88) --|cffffff00驿站|r
    -- 贼哥
    ZEI_KALE = p:create_unit('N00B', et.point(287.2, -405.3), 352.62) --你咬我啊
    -- 副本传送员
    p:create_unit('o00K', et.point(-1309.2, -1901.3), 303.52) --副本传送员
    -- 神器副本传送员
    p:create_unit('o02M', et.point(-1132.4, -1892.3), 270.0) --|cffff9900神器副本传送员|r
    -- 守家积分兑换奖励商店
    p:create_unit('o01I', et.point(430.0, 206.6), 180.0) --守家积分兑换奖励商店
    -- 江湖声望兑换奖励商店
    p:create_unit('o025', et.point(434.5, 41.8), 180.0) --|cff00ff00江湖声望兑换奖励商店|r
    -- 伤害测试桩
    gg_unit_N00I_0116 = p:create_unit('N00I', et.point(1315.2, -13118.7), 343.22) --|cff00ff00伤害测试桩|r
    -- 正派武林
    udg_ZhengPaiWL = p:create_unit('nfrm', et.point(-768.0, -768.0)) --正派武林
    -- 名人堂
    p:create_unit('n00H', et.point(-8960.0, -14016.0)) --|cff00ff00决战江湖名人堂|r
    create_transport_stones()

end
--===========================================================================
-- 玩家6
--===========================================================================
local function create_units_for_attacker()
    local p = PLAYER_ATTACKER
    -- bug非我莫属
    DOU_ZHAI = p:create_unit('N008', et.point(460.8, -417.6), 180.0) --bug非我莫属
    -- 依葛仁
    YI_GEREN = p:create_unit('N009', et.point(445.4, -223.3), 225.0) --依葛仁
end
--===========================================================================
-- 玩家13
--===========================================================================
local function create_ryukyu()
    local p = PLAYER_HOSTILE
    -- 琉球矮人
    p:create_unit('hrif', et.point(12079.0, 8383.5), 94.211) --琉球矮人|n|cFFFFCC33类别：神秘
    p:create_unit('hrif', et.point(12335.5, 8511.9), 240.795) --琉球矮人|n|cFFFFCC33类别：神秘
    p:create_unit('hrif', et.point(12570.7, 8503.7), 296.64) --琉球矮人|n|cFFFFCC33类别：神秘
    p:create_unit('hrif', et.point(12861.9, 8465.7), 235.587) --琉球矮人|n|cFFFFCC33类别：神秘
    p:create_unit('hrif', et.point(12475.3, 8890.0), 139.454) --琉球矮人|n|cFFFFCC33类别：神秘
    p:create_unit('hrif', et.point(12093.4, 8917.0), 343.234) --琉球矮人|n|cFFFFCC33类别：神秘
    p:create_unit('hrif', et.point(12054.8, 8075.7), 247.892) --琉球矮人|n|cFFFFCC33类别：神秘
    p:create_unit('hrif', et.point(11377.5, 7797.7), 310.505) --琉球矮人|n|cFFFFCC33类别：神秘
    p:create_unit('hrif', et.point(11017.6, 7781.0), 204.451) --琉球矮人|n|cFFFFCC33类别：神秘
    p:create_unit('hrif', et.point(11104.1, 8067.7), 215.416) --琉球矮人|n|cFFFFCC33类别：神秘
    p:create_unit('hrif', et.point(11202.7, 8446.2), 52.648) --琉球矮人|n|cFFFFCC33类别：神秘
    p:create_unit('hrif', et.point(12905.5, 9070.1), 1.956) --琉球矮人|n|cFFFFCC33类别：神秘
    p:create_unit('hrif', et.point(13889.7, 9209.3), 246.541) --琉球矮人|n|cFFFFCC33类别：神秘
    p:create_unit('hrif', et.point(13320.3, 9412.1), 170.48) --琉球矮人|n|cFFFFCC33类别：神秘
    p:create_unit('hrif', et.point(13040.2, 9945.3), 320.393) --琉球矮人|n|cFFFFCC33类别：神秘
    p:create_unit('hrif', et.point(12964.0, 10367.6), 268.042) --琉球矮人|n|cFFFFCC33类别：神秘

    -- 琉球矮人首领
    p:create_unit('Hmkg', et.point(12555.2, 9450.8), 0.04) --琉球矮人首领|n|cFFFFCC33类别：神秘
end
local function create_npc_hostile()
    local p = PLAYER_HOSTILE
    p:create_unit('nubw', et.point(-11610.2, 13396.9), 263.12) --段延庆|n|cFFFFCC33类别：BOSS
    p:create_unit('nsqo', et.point(-13636.9, 12292.7), 269.383) --南海鳄神|n|cFFFFCC33类别：BOSS
    p:create_unit('nhrr', et.point(-12256.3, 10995.4), 135.256) --叶二娘|n|cFFFFCC33类别：BOSS
    p:create_unit('nomg', et.point(-15162.7, 13751.3), 266.022) --云中鹤|n|cFFFFCC33类别：BOSS

    p:create_unit('hsor', et.point(-3478.0, -4354.1), 273.75) --韩小莹|n|cFFFFCC33类别：BOSS
    p:create_unit('owar', et.point(-5591.7, -5366.8), 357.78) --柯镇恶|n|cFFFFCC33类别：BOSS
    p:create_unit('ntkt', et.point(-3401.8, -6576.7), 342.687) --张阿生|n|cFFFFCC33类别：BOSS
    p:create_unit('nogm', et.point(-5597.7, -6398.5), 6.971) --韩宝驹|n|cFFFFCC33类别：BOSS
    p:create_unit('opeo', et.point(-2411.9, -6253.7), 107.714) --全金发|n|cFFFFCC33类别：BOSS
    p:create_unit('ohun', et.point(-4541.3, -4202.2), 273.77) --南希仁|n|cFFFFCC33类别：BOSS
    p:create_unit('nw2w', et.point(-5653.5, -4360.4), 343.67) --朱聪|n|cFFFFCC33类别：BOSS

    p:create_unit('nfov', et.point(-8901.9, 14908.1), 277.826) --极恶领主|n|cFFFFCC33类别：BOSS

    p:create_unit('odoc', et.point(-11632.9, 3526.4), 248.33):set_mana(0) --恶道头子|n|cFFFFCC33类别：BOSS
    p:create_unit('orai', et.point(-15073.4, 627.9), 69.342) --马贼王中王|n|cFFFFCC33类别：BOSS

    p:create_unit('nqb3', et.point(1916.5, -5171.2), 190.732) --野猪首领|n|cFFFFCC33类别：BOSS

    p:create_unit('ndrw', et.point(-11769.7, 8626.3), 184.141) --关能|n|cFFFFCC33类别：BOSS
    p:create_unit('nbdw', et.point(-14468.8, 9138.2), 271.753) --唐文亮|n|cFFFFCC33类别：BOSS

    p:create_unit('ndqs', et.point(-9301.8, -2486.7), 309.187) --林朝英|n|cFFFFCC33类别：BOSS

    p:create_unit('nsrh', et.point(6788.6, -2224.5), 179.099) --扫地神僧|n|cFFFFCC33类别：稀有

    p:create_unit('nrzb', et.point(-13378.5, -4721.9), 338.837) --长须老鬼|n|cFFFFCC33类别：BOSS
    p:create_unit('nfpu', et.point(-12407.6, -2143.8), 284.172) --公孙止|n|cFFFFCC33类别：BOSS

    p:create_unit('ntkc', et.point(-2634.1, 12329.1), 91.114) --白眉鹰王|n|cFFFFCC33类别：BOSS
    p:create_unit('nsgn', et.point(-1488.0, 14913.8), 271.232) --金毛狮王|n|cFFFFCC33类别：BOSS
    p:create_unit('nsgb', et.point(-742.8, 12726.2), 92.938) --青翼蝠王|n|cFFFFCC33类别：BOSS
    p:create_unit('nwzr', et.point(-4659.9, 14915.5), 273.386) --阳顶天|n|cFFFFCC33类别：BOSS
    p:create_unit('nsgt', et.point(200.0, 14891.6), 267.94) --紫杉龙王|n|cFFFFCC33类别：BOSS

    p:create_unit('nfpc', et.point(-7846.3, -9418.4), 285.423) --查小庸|n|cFFFFCC33类别：BOSS
    p:create_unit('nfpc', et.point(-7499.2, -9250.3), 285.423) --查小庸|n|cFFFFCC33类别：BOSS

    p:create_unit('ngh2', et.point(4457.5, 12995.6), 272.607) --李秋水|n|cFFFFCC33类别：普通
    p:create_unit('nmgd', et.point(4343.0, 14740.7), 263.536) --无崖子|n|cFFFFCC33类别：BOSS
    p:create_unit('nfsp', et.point(2347.2, 14172.4), 350.717) --天山童姥|n|cFFFFCC33类别：BOSS

    p:create_unit('nwnr', et.point(4287.7, 10151.4), 228.747) --洪七公|n|cFFFFCC33类别：BOSS
    p:create_unit('nslf', et.point(2236.8, 9150.8), 298.574) --欧阳锋|n|cFFFFCC33类别：BOSS
    p:create_unit('nwzg', et.point(3039.0, 7028.4), 17.448) --一灯大师|n|cFFFFCC33类别：BOSS
    p:create_unit('ogrk', et.point(5348.0, 8028.0), 129.94) --黄药师|n|cFFFFCC33类别：BOSS

    p:create_unit('nvdl', et.point(9795.2, 15164.8), 286.575) --叶孤城|n|cFFFFCC33类别：BOSS
    p:create_unit('nogl', et.point(9398.7, 14965.4), 317.012) --楚留香|n|cFFFFCC33类别：BOSS
    p:create_unit('nbld', et.point(10511.7, 15018.8), 208.698) --陆小凤|n|cFFFFCC33类别：BOSS
    p:create_unit('nrvi', et.point(10235.4, 15096.9), 245.749) --西门吹雪|n|cFFFFCC33类别：BOSS

    p:create_unit('hspt', et.point(-14692.2, -15042.8), 287.223) --黄裳|n|cFFFFCC33类别：稀有
    p:create_unit('uktn', et.point(7282.8, 13564.4), 268.457) --东方不败|n|cFFFFCC33类别：BOSS

    p:create_unit('hfoo', et.point(-6426.9, 4526.3), 259.71) --辽国第一先锋|n|cFFFFCC33类别：BOSS

    -- 七绝胜手
    p:create_unit('h00N', et.point(-4898.7, -12198.6), 90.0) --七绝胜手|n|cFFFFCC33类别：BOSS
    -- 木桑道人
    p:create_unit('n00T', et.point(-3273.7, -12211.5), 90.0) --木桑道人|n|cFFFFCC33类别：普通
    -- 天王老子
    p:create_unit('n00U', et.point(-2284.7, -11132.1), 270.0) --天王老子|n|cFFFFCC33类别：稀有
    -- 璇玑道长
    p:create_unit('n00S', et.point(-4088.4, -11124.8), 270.0) --璇玑道长|n|cFFFFCC33类别：BOSS
    -- 白猿
    gg_unit_n00M_0131 = p:create_unit('n00M', et.point(-3348.2, -15208.4), 56.22) --白猿|n|cffffcc33类别：BOSS|r
    gg_unit_n00M_0131:show(false)
    -- 曾阿牛
    gg_unit_n00N_0132 = p:create_unit('n00N', et.point(-3272.5, -15268.8), 90.0) --曾阿牛|n|cffffcc33类别：BOSS|r
    gg_unit_n00N_0132:show(false)
end
local function create_wolves()
    local p = PLAYER_HOSTILE
    p:create_unit('nwlt', et.point(1456.2, -2702.9), 345.717) --野狼|n|cFFFFCC33类别：普通
    p:create_unit('nwlt', et.point(1292.4, -3062.2), 282.159) --野狼|n|cFFFFCC33类别：普通
    p:create_unit('nwlt', et.point(976.0, -2795.9), 171.798) --野狼|n|cFFFFCC33类别：普通
    p:create_unit('nwlt', et.point(792.7, -3097.9), 308.143) --野狼|n|cFFFFCC33类别：普通
    p:create_unit('nwlt', et.point(588.4, -2846.8), 286.411) --野狼|n|cFFFFCC33类别：普通
    p:create_unit('nwlt', et.point(1704.9, -3005.6), 253.407) --野狼|n|cFFFFCC33类别：普通
end
local function create_boars()
    local p = PLAYER_HOSTILE
    p:create_unit('nqb2', et.point(776.3, -4506.1), 213.306) --野猪|n|cFFFFCC33类别：普通
    p:create_unit('nqb2', et.point(1226.6, -4653.2), 40.651) --野猪|n|cFFFFCC33类别：普通
    p:create_unit('nqb2', et.point(1169.5, -5100.4), 263.867) --野猪|n|cFFFFCC33类别：普通
end
local function create_jackals()
    local p = PLAYER_HOSTILE
    p:create_unit('ngns', et.point(-2913.8, -3328.4), 206.494) --豺狼|n|cFFFFCC33类别：普通
    p:create_unit('ngns', et.point(-2932.2, -2943.6), 51.099) --豺狼|n|cFFFFCC33类别：普通
    p:create_unit('ngns', et.point(-3329.7, -2739.6), 66.305) --豺狼|n|cFFFFCC33类别：普通
    p:create_unit('ngns', et.point(-3756.6, -2500.1), 303.023) --豺狼|n|cFFFFCC33类别：普通
    p:create_unit('ngns', et.point(-4586.6, -2442.0), 262.746) --豺狼|n|cFFFFCC33类别：普通
    p:create_unit('ngns', et.point(-4257.5, -2708.6), 40.244) --豺狼|n|cFFFFCC33类别：普通
    p:create_unit('ngns', et.point(-4614.6, -2148.9), 22.665) --豺狼|n|cFFFFCC33类别：普通
    p:create_unit('ngns', et.point(-4901.0, -2249.5), 356.319) --豺狼|n|cFFFFCC33类别：普通
    p:create_unit('ngns', et.point(-4918.3, -1944.5), 194.332) --豺狼|n|cFFFFCC33类别：普通
    p:create_unit('ngns', et.point(-5489.1, -1749.5), 165.119) --豺狼|n|cFFFFCC33类别：普通
    p:create_unit('ngns', et.point(-5874.2, -1506.0), 159.153) --豺狼|n|cFFFFCC33类别：普通
    p:create_unit('ngns', et.point(-3780.6, -2955.4), 310.736) --豺狼|n|cFFFFCC33类别：普通
    p:create_unit('ngns', et.point(-4115.4, -2177.3), 294.234) --豺狼|n|cFFFFCC33类别：普通
end
local function create_scorpions()
    local p = PLAYER_HOSTILE
    p:create_unit('nanb', et.point(1371.9, -6049.3), 12.558) --蝎子王|n|cFFFFCC33类别：普通
    p:create_unit('nanb', et.point(1417.5, -6407.0), 323.14) --蝎子王|n|cFFFFCC33类别：普通
    p:create_unit('nanb', et.point(1739.3, -6366.4), 183.631) --蝎子王|n|cFFFFCC33类别：普通
    p:create_unit('nanb', et.point(2001.2, -6587.5), 65.327) --蝎子王|n|cFFFFCC33类别：普通
    p:create_unit('nanb', et.point(2270.7, -6280.2), 124.116) --蝎子王|n|cFFFFCC33类别：普通
    p:create_unit('nanb', et.point(2507.1, -6397.7), 272.118) --蝎子王|n|cFFFFCC33类别：普通
    p:create_unit('nanb', et.point(2838.3, -6375.6), 87.223) --蝎子王|n|cFFFFCC33类别：普通
end
local function create_horse_thieves()
    local p = PLAYER_HOSTILE
    p:create_unit('nass', et.point(-12157.0, 824.7), 21.907) --马贼|n|cFFFFCC33类别：普通
    p:create_unit('nass', et.point(-11958.4, 1297.8), 328.292) --马贼|n|cFFFFCC33类别：普通
    p:create_unit('nass', et.point(-11556.2, 1961.9), 151.616) --马贼|n|cFFFFCC33类别：普通
    p:create_unit('nass', et.point(-12041.7, 2502.1), 354.408) --马贼|n|cFFFFCC33类别：普通
    p:create_unit('nass', et.point(-11753.8, 2970.5), 343.564) --马贼|n|cFFFFCC33类别：普通
    p:create_unit('nass', et.point(-12365.2, 3640.6), 246.98) --马贼|n|cFFFFCC33类别：普通
    p:create_unit('nass', et.point(-13564.5, 3750.5), 309.626) --马贼|n|cFFFFCC33类别：普通
    p:create_unit('nass', et.point(-14561.2, 3817.1), 338.675) --马贼|n|cFFFFCC33类别：普通
    p:create_unit('nass', et.point(-14973.8, 2948.4), 164.437) --马贼|n|cFFFFCC33类别：普通
    p:create_unit('nass', et.point(-15112.2, 2181.7), 248.617) --马贼|n|cFFFFCC33类别：普通
end
local function create_evil_monks()
    local p = PLAYER_HOSTILE
    p:create_unit('oshm', et.point(-12090.6, 1743.3), 71.435):set_mana(0) --破戒僧|n|cFFFFCC33类别：普通
    p:create_unit('oshm', et.point(-12505.3, 2980.7), 214.515):set_mana(0) --破戒僧|n|cFFFFCC33类别：普通
    p:create_unit('oshm', et.point(-14040.9, 3503.2), 7.614):set_mana(0) --破戒僧|n|cFFFFCC33类别：普通
    p:create_unit('oshm', et.point(-14836.4, 3400.2), 71.556):set_mana(0) --破戒僧|n|cFFFFCC33类别：普通
    p:create_unit('oshm', et.point(-14612.9, 1634.5), 166.679):set_mana(0) --破戒僧|n|cFFFFCC33类别：普通
    p:create_unit('oshm', et.point(-14526.5, 1094.6), 196.222):set_mana(0) --破戒僧|n|cFFFFCC33类别：普通
    p:create_unit('oshm', et.point(-15071.7, 985.4), 304.803):set_mana(0) --破戒僧|n|cFFFFCC33类别：普通
    p:create_unit('oshm', et.point(-14683.9, 639.0), 126.676):set_mana(0) --破戒僧|n|cFFFFCC33类别：普通
    p:create_unit('oshm', et.point(-14255.2, 334.2), 347.453):set_mana(0) --破戒僧|n|cFFFFCC33类别：普通
    p:create_unit('oshm', et.point(-13786.0, 618.3), 225.853):set_mana(0) --破戒僧|n|cFFFFCC33类别：普通
    p:create_unit('oshm', et.point(-13406.7, 303.3), 217.964):set_mana(0) --破戒僧|n|cFFFFCC33类别：普通
end
local function create_bears()
    local p = PLAYER_HOSTILE
    p:create_unit('nfrl', et.point(-14365.7, 11054.6), 266.525) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-13768.6, 11013.8), 26.939) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-13337.3, 11162.0), 296.266) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-14512.9, 11751.2), 329.105) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-14160.7, 12171.9), 70.359) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-13369.4, 12026.6), 351.057) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-12020.4, 11812.1), 44.243) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-11481.9, 11877.2), 0.352) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-11688.9, 12311.7), 39.684) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-11930.7, 12808.3), 36.915) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-13449.4, 13827.7), 89.377) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-13699.4, 14328.7), 123.963) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-13048.2, 14421.4), 285.434) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-11933.3, 14513.9), 354.946) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-12259.8, 13985.9), 268.119) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-12522.3, 13591.6), 341.257) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-12901.2, 12929.9), 71.117) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-12411.2, 12526.1), 248.299) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-12639.8, 11877.0), 73.611) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-15307.9, 11731.7), 126.105) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-14938.0, 12761.9), 338.082) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-14360.7, 13212.6), 204.605) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-13428.5, 13047.6), 65.151) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-14331.4, 13670.1), 55.208) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-14481.8, 14188.4), 25.841) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-14987.0, 14628.0), 116.558) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-15144.8, 12236.8), 202.253) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-15278.3, 13248.3), 134.158) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-13600.1, 14777.7), 226.831) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-13929.8, 13124.6), 111.174) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-13845.3, 11670.9), 12.909) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-12193.3, 11352.5), 181.093) --熊|n|cFFFFCC33类别：普通
    p:create_unit('nfrl', et.point(-11587.7, 13124.9), 205.725) --熊|n|cFFFFCC33类别：普通
end
local function create_rascals_and_betrayers()
    local p = PLAYER_HOSTILE

    p:create_unit('nnwr', et.point(-9026.4, 6848.3), 6.229) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-8413.3, 6831.6), 357.671) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-9222.1, 7754.9), 312.823) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-8778.8, 8595.9), 212.251) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-7732.1, 9779.6), 12.953) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-9095.2, 9803.3), 14.843) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-9590.0, 10390.3), 34.026) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-8770.0, 10894.8), 16.733) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-8873.2, 12457.8), 12.843) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-8064.7, 12827.7), 216.448) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-7131.5, 14976.5), 344.41) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-8742.7, 13760.7), 202.693) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-9158.8, 14291.0), 5.405) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-6670.2, 7880.8), 182.532) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-6507.8, 7078.0), 77.731) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-6750.7, 9551.3), 295.574) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-6876.6, 10806.8), 250.979) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-6716.6, 10259.8), 226.077) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-6934.1, 13520.0), 325.927) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-7804.9, 6826.0), 357.671) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-7059.5, 12869.6), 332.412) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-7928.6, 13708.7), 251.375) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-7733.6, 14469.6), 149.012) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-7485.8, 15140.4), 225.776) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-9156.5, 13784.7), 118.227) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-9477.2, 14666.3), 308.758) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-9374.9, 12165.6), 275.095) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-8682.5, 9543.0), 11.327) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-6911.5, 8331.2), 331.501) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-6744.8, 7382.2), 271.689) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-7044.7, 6821.3), 190.827) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-8181.9, 7160.5), 160.471) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-9481.9, 7072.3), 16.425) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-9651.9, 7969.8), 16.414) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-7944.7, 10934.6), 6.9) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nnwr', et.point(-7815.7, 12057.6), 355.276) --武林恶徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-7305.8, 11421.5), 344.509) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-8338.2, 9687.3), 190.146) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-7765.8, 7729.0), 266.734) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-8648.5, 6633.5), 95.101) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-8930.8, 7902.6), 154.297) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-8937.6, 8268.5), 174.809) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-8329.2, 8666.6), 326.062) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-7775.5, 8544.4), 33.52) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-7470.8, 8841.2), 59.987) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-8179.3, 10039.3), 27.533) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-7226.8, 10843.3), 309.681) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-8024.7, 12369.3), 11.195) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-6540.4, 13723.9), 115.228) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-7792.1, 7248.4), 266.734) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-7908.6, 8889.9), 207.176) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-8798.7, 10099.6), 190.146) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-8226.0, 10636.6), 187.224) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-7940.4, 11474.2), 155.582) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-8601.1, 11872.3), 344.509) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-9570.8, 12514.5), 287.136) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-9480.5, 11722.3), 215.383) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-9477.6, 13831.8), 188.63) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-8579.4, 14378.1), 7.438) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-7831.1, 14977.0), 304.88) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-7802.7, 13997.0), 135.762) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-6817.4, 13990.2), 137.201) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-6783.1, 13080.5), 187.784) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-7076.7, 12152.2), 345.289) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-7617.0, 12300.3), 86.872) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-9621.0, 8505.5), 50.901) --门派叛徒|n|cFFFFCC33类别：普通
    p:create_unit('nfor', et.point(-7081.3, 7260.3), 129.555) --门派叛徒|n|cFFFFCC33类别：普通
end
local function create_water_monsters()
    local p = PLAYER_HOSTILE
    p:create_unit('hwat', et.point(-4757.9, -6079.6), 213.987) --江南水怪|n|cFFFFCC33类别：普通
    p:create_unit('hwat', et.point(-4500.9, -5803.9), 111.855) --江南水怪|n|cFFFFCC33类别：普通
    p:create_unit('hwat', et.point(-4999.7, -5294.7), 357.121) --江南水怪|n|cFFFFCC33类别：普通
    p:create_unit('hwat', et.point(-4356.5, -5113.1), 160.581) --江南水怪|n|cFFFFCC33类别：普通
    p:create_unit('hwat', et.point(-4790.6, -4519.7), 4.45) --江南水怪|n|cFFFFCC33类别：普通
    p:create_unit('hwat', et.point(-3694.3, -5386.9), 13.656) --江南水怪|n|cFFFFCC33类别：普通
    p:create_unit('hwat', et.point(-3358.8, -4973.8), 135.982) --江南水怪|n|cFFFFCC33类别：普通
    p:create_unit('hwat', et.point(-3280.4, -5722.1), 100.912) --江南水怪|n|cFFFFCC33类别：普通
    p:create_unit('hwat', et.point(-2808.8, -5243.2), 5.57) --江南水怪|n|cFFFFCC33类别：普通
    p:create_unit('hwat', et.point(-3162.6, -6179.2), 143.563) --江南水怪|n|cFFFFCC33类别：普通
    p:create_unit('hwat', et.point(-5086.2, -6464.6), 294.201) --江南水怪|n|cFFFFCC33类别：普通
    p:create_unit('hwat', et.point(-5132.0, -4311.6), 70.205) --江南水怪|n|cFFFFCC33类别：普通
end
local function create_beasts_and_wood_piles()
    local p = PLAYER_HOSTILE
    p:create_unit('nowb', et.point(-14654.6, 7353.7), 60.537) --野兽|n|cFFFFCC33类别：普通
    p:create_unit('nowb', et.point(-14662.7, 8675.2), 241.893) --野兽|n|cFFFFCC33类别：普通
    p:create_unit('nowb', et.point(-14024.6, 8955.4), 54.505) --野兽|n|cFFFFCC33类别：普通
    p:create_unit('nowb', et.point(-12790.0, 8932.6), 257.516) --野兽|n|cFFFFCC33类别：普通
    p:create_unit('nowb', et.point(-12185.4, 8447.7), 46.474) --野兽|n|cFFFFCC33类别：普通
    p:create_unit('nowb', et.point(-12203.5, 6950.2), 119.161) --野兽|n|cFFFFCC33类别：普通
    p:create_unit('nowb', et.point(-12755.9, 7098.6), 128.83) --野兽|n|cFFFFCC33类别：普通
    p:create_unit('nowb', et.point(-11582.2, 6792.9), 44.584) --野兽|n|cFFFFCC33类别：普通
    p:create_unit('nowb', et.point(-12616.1, 6183.4), 12.481) --野兽|n|cFFFFCC33类别：普通
    p:create_unit('nowb', et.point(-12123.6, 6321.7), 269.558) --野兽|n|cFFFFCC33类别：普通
    p:create_unit('efon', et.point(-14785.0, 6073.2), 119.634) --木桩|n|cFFFFCC33类别：普通
    p:create_unit('efon', et.point(-14431.2, 5863.3), 242.794) --木桩|n|cFFFFCC33类别：普通
    p:create_unit('efon', et.point(-14211.2, 7038.3), 212.856) --木桩|n|cFFFFCC33类别：普通
    p:create_unit('efon', et.point(-14342.6, 7650.2), 333.83) --木桩|n|cFFFFCC33类别：普通
    p:create_unit('efon', et.point(-15000.2, 8911.7), 137.432) --木桩|n|cFFFFCC33类别：普通
    p:create_unit('efon', et.point(-14472.1, 8182.7), 92.574) --木桩|n|cFFFFCC33类别：普通
    p:create_unit('efon', et.point(-12125.2, 9114.6), 172.524) --木桩|n|cFFFFCC33类别：普通
    p:create_unit('efon', et.point(-12009.1, 7651.9), 66.678) --木桩|n|cFFFFCC33类别：普通
    p:create_unit('efon', et.point(-12495.2, 8221.5), 61.767) --木桩|n|cFFFFCC33类别：普通
end
local function create_gumu_followers()
    local p = PLAYER_HOSTILE
    p:create_unit('ndqv', et.point(-9388.5, -5304.5), 198.232) --古墓弟子|n|cFFFFCC33类别：普通
    p:create_unit('ndqv', et.point(-8863.6, -5460.6), 69.216) --古墓弟子|n|cFFFFCC33类别：普通
    p:create_unit('ndqv', et.point(-8668.9, -5152.1), 168.645) --古墓弟子|n|cFFFFCC33类别：普通
    p:create_unit('ndqv', et.point(-8108.6, -5453.9), 143.486) --古墓弟子|n|cFFFFCC33类别：普通
    p:create_unit('ndqv', et.point(-8539.6, -4553.2), 156.582) --古墓弟子|n|cFFFFCC33类别：普通
    p:create_unit('ndqv', et.point(-9058.9, -4334.5), 294.41) --古墓弟子|n|cFFFFCC33类别：普通
    p:create_unit('ndqv', et.point(-9488.1, -4526.7), 91.772) --古墓弟子|n|cFFFFCC33类别：普通
    p:create_unit('ndqv', et.point(-8023.1, -4337.1), 336.95) --古墓弟子|n|cFFFFCC33类别：普通
    p:create_unit('ndqv', et.point(-7781.9, -3873.8), 43.244) --古墓弟子|n|cFFFFCC33类别：普通
    p:create_unit('ndqv', et.point(-7443.1, -3536.5), 195.607) --古墓弟子|n|cFFFFCC33类别：普通
    p:create_unit('ndqv', et.point(-8000.7, -3194.8), 98.034) --古墓弟子|n|cFFFFCC33类别：普通
    p:create_unit('ndqv', et.point(-8475.3, -3172.2), 359.615) --古墓弟子|n|cFFFFCC33类别：普通
    p:create_unit('ndqv', et.point(-7977.2, -2488.3), 258.077) --古墓弟子|n|cFFFFCC33类别：普通
    p:create_unit('ndqv', et.point(-9304.3, -3327.9), 235.345) --古墓弟子|n|cFFFFCC33类别：普通
    p:create_unit('ndqv', et.point(-9644.6, -2873.3), 12.964) --古墓弟子|n|cFFFFCC33类别：普通
    p:create_unit('ndqv', et.point(-9223.6, -2715.1), 168.502) --古墓弟子|n|cFFFFCC33类别：普通
    p:create_unit('ndqv', et.point(-9642.7, -3627.5), 235.895) --古墓弟子|n|cFFFFCC33类别：普通
    p:create_unit('ndqv', et.point(-7527.3, -5484.4), 242.223) --古墓弟子|n|cFFFFCC33类别：普通
    p:create_unit('ndqv', et.point(-7100.4, -5219.8), 207.373) --古墓弟子|n|cFFFFCC33类别：普通
    p:create_unit('ndqv', et.point(-7622.2, -2609.1), 94.507) --古墓弟子|n|cFFFFCC33类别：普通
end
local function create_ten_sins()
    local p = PLAYER_HOSTILE
    p:create_unit('ndtb', et.point(-4275.0, 7430.0), 167.536) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-4215.6, 7142.6), 171.227) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-4002.8, 7510.9), 35.575) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-3901.1, 7125.6), 328.534) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-3743.5, 7585.4), 98.957) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-3570.7, 7302.6), 273.392) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-3351.4, 7576.7), 146.727) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-3471.9, 7869.4), 44.309) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-3687.5, 8033.3), 217.338) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-3759.1, 8222.6), 345.047) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-4007.4, 8314.9), 126.632) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-4053.2, 8118.3), 131.983) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-4262.5, 8283.8), 244.168) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-4428.8, 8154.5), 289.949) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-4693.5, 8253.5), 85.191) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-4879.0, 8138.2), 328.183) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-5042.9, 8425.5), 215.778) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-5269.5, 8521.1), 153.198) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-5107.7, 8810.2), 288.773) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-5212.1, 9096.6), 180.577) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-4998.6, 9432.3), 260.549) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-5007.5, 9906.4), 36.695) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-4810.6, 9362.7), 153.758) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-4796.5, 9810.0), 322.634) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-4644.5, 9562.9), 270.415) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-4754.2, 10103.3), 50.022) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-4849.7, 10395.4), 83.839) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-4475.7, 10340.8), 269.887) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-4523.7, 10058.6), 10.734) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-4389.9, 9811.2), 237.367) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-4329.0, 9586.7), 355.979) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-4203.1, 10252.9), 264.163) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-4121.5, 9939.9), 97.111) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-4117.4, 9676.2), 52.494) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-4155.7, 9450.6), 169.612) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-3861.7, 9485.7), 207.615) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-3839.6, 9845.2), 274.161) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-3815.7, 10318.2), 206.78) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-3944.2, 10167.6), 253.177) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-3478.5, 10294.0), 8.416) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-3615.5, 9959.3), 260.757) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-3546.1, 9642.5), 298.233) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-3656.1, 9414.1), 246.98) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-3417.8, 9482.1), 161.141) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-3365.3, 10142.6), 37.695) --十恶不赦|n|cFFFFCC33类别：普通
    p:create_unit('ndtb', et.point(-3395.2, 9888.4), 51.989) --十恶不赦|n|cFFFFCC33类别：普通
end
local function create_protect_monks()
    local p = PLAYER_HOSTILE
    p:create_unit('nogr', et.point(6435.0, -1894.1), 95.969) --护院僧|n|cFFFFCC33类别：普通
    p:create_unit('nogr', et.point(6438.7, -2248.3), 158.724) --护院僧|n|cFFFFCC33类别：普通
    p:create_unit('nogr', et.point(6154.1, -2604.0), 111.833) --护院僧|n|cFFFFCC33类别：普通
    p:create_unit('nogr', et.point(6038.2, -2199.1), 109.273) --护院僧|n|cFFFFCC33类别：普通
    p:create_unit('nogr', et.point(5904.8, -1786.5), 311.263) --护院僧|n|cFFFFCC33类别：普通
    p:create_unit('nogr', et.point(5551.3, -1965.8), 254.506) --护院僧|n|cFFFFCC33类别：普通
    p:create_unit('nogr', et.point(5381.7, -2323.9), 353.639) --护院僧|n|cFFFFCC33类别：普通
    p:create_unit('nogr', et.point(5257.4, -2641.1), 310.263) --护院僧|n|cFFFFCC33类别：普通
    p:create_unit('nogr', et.point(5213.1, -1761.3), 234.148) --护院僧|n|cFFFFCC33类别：普通
    p:create_unit('nogr', et.point(6757.6, -1645.8), 145.892) --护院僧|n|cFFFFCC33类别：普通
end
local function create_puppets()
    local p = PLAYER_HOSTILE
    p:create_unit('nwrg', et.point(-14793.9, -6329.7), 92.98) --傀儡|n|cFFFFCC33类别：普通
    p:create_unit('nwrg', et.point(-14461.8, -6133.7), 100.286) --傀儡|n|cFFFFCC33类别：普通
    p:create_unit('nwrg', et.point(-14048.8, -6240.6), 292.806) --傀儡|n|cFFFFCC33类别：普通
    p:create_unit('nwrg', et.point(-13679.4, -6068.1), 32.279) --傀儡|n|cFFFFCC33类别：普通
    p:create_unit('nwrg', et.point(-13264.4, -6194.2), 145.244) --傀儡|n|cFFFFCC33类别：普通
    p:create_unit('nwrg', et.point(-12990.6, -5855.3), 332.995) --傀儡|n|cFFFFCC33类别：普通
    p:create_unit('nwrg', et.point(-12556.6, -5669.8), 146.65) --傀儡|n|cFFFFCC33类别：普通
    p:create_unit('nwrg', et.point(-12244.7, -5274.1), 99.341) --傀儡|n|cFFFFCC33类别：普通
    p:create_unit('nwrg', et.point(-12518.3, -4890.1), 101.385) --傀儡|n|cFFFFCC33类别：普通
    p:create_unit('nwrg', et.point(-12006.7, -4710.6), 182.335) --傀儡|n|cFFFFCC33类别：普通
    p:create_unit('nwrg', et.point(-12417.5, -4207.4), 157.087) --傀儡|n|cFFFFCC33类别：普通
    p:create_unit('nwrg', et.point(-11997.7, -3996.8), 52.912) --傀儡|n|cFFFFCC33类别：普通
    p:create_unit('nwrg', et.point(-12504.3, -3156.4), 304.906) --傀儡|n|cFFFFCC33类别：普通
    p:create_unit('nwrg', et.point(-12029.9, -3093.7), 259.173) --傀儡|n|cFFFFCC33类别：普通
    p:create_unit('nwrg', et.point(-12048.2, -2660.6), 264.761) --傀儡|n|cFFFFCC33类别：普通
    p:create_unit('nwrg', et.point(-12611.5, -2650.1), 294.612) --傀儡|n|cFFFFCC33类别：普通
    p:create_unit('nwrg', et.point(-12922.2, -2340.6), 300.307) --傀儡|n|cFFFFCC33类别：普通
    p:create_unit('nwrg', et.point(-11869.2, -2237.3), 259.289) --傀儡|n|cFFFFCC33类别：普通
    p:create_unit('nwrg', et.point(-12823.6, -3845.9), 358.967) --傀儡|n|cFFFFCC33类别：普通
    p:create_unit('nwrg', et.point(-13324.0, -3563.9), 123.424) --傀儡|n|cFFFFCC33类别：普通
    p:create_unit('nwrg', et.point(-13850.1, -3490.5), 266.976) --傀儡|n|cFFFFCC33类别：普通
    p:create_unit('nwrg', et.point(-14336.5, -4002.0), 319.91) --傀儡|n|cFFFFCC33类别：普通
    p:create_unit('nwrg', et.point(-14679.1, -4034.5), 297.936) --傀儡|n|cFFFFCC33类别：普通
    p:create_unit('nwrg', et.point(-14482.3, -4620.8), 260.197) --傀儡|n|cFFFFCC33类别：普通
    p:create_unit('nwrg', et.point(-13082.1, -4518.5), 324.962) --傀儡|n|cFFFFCC33类别：普通
    p:create_unit('nwrg', et.point(-13083.6, -5033.5), 12.554) --傀儡|n|cFFFFCC33类别：普通

end
local function create_aliens()
    local p = PLAYER_HOSTILE
    p:create_unit('nmpg', et.point(-14815.3, -10078.4), 103.615) --异种|n|cFFFFCC33类别：普通
    p:create_unit('nmpg', et.point(-14436.5, -10108.6), 252.616) --异种|n|cFFFFCC33类别：普通
    p:create_unit('nmpg', et.point(-14339.3, -9787.8), 337.664) --异种|n|cFFFFCC33类别：普通
    p:create_unit('nmpg', et.point(-13835.3, -9856.3), 35.926) --异种|n|cFFFFCC33类别：普通
    p:create_unit('nmpg', et.point(-13992.8, -9321.1), 260.648) --异种|n|cFFFFCC33类别：普通
    p:create_unit('nmpg', et.point(-13581.6, -9598.2), 359.176) --异种|n|cFFFFCC33类别：普通
    p:create_unit('nmpg', et.point(-13879.4, -8845.2), 240.454) --异种|n|cFFFFCC33类别：普通
    p:create_unit('nmpg', et.point(-14246.3, -9049.0), 278.094) --异种|n|cFFFFCC33类别：普通
    p:create_unit('nmpg', et.point(-13576.5, -8492.8), 185.828) --异种|n|cFFFFCC33类别：普通
    p:create_unit('nmpg', et.point(-13830.7, -8241.2), 86.959) --异种|n|cFFFFCC33类别：普通
    p:create_unit('nmpg', et.point(-14189.9, -8505.9), 10.196) --异种|n|cFFFFCC33类别：普通
    p:create_unit('nmpg', et.point(-14597.9, -8710.5), 40.936) --异种|n|cFFFFCC33类别：普通
end
local function create_mingjiao_followers()
    local p = PLAYER_HOSTILE
    p:create_unit('nstl', et.point(-4783.8, 14102.9), 277.997) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-4427.0, 14063.4), 265.895) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-4819.5, 13523.7), 283.794) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-4429.5, 13494.9), 263.889) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-4777.4, 12827.1), 298.967) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-4437.1, 12816.9), 255.093) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-4545.6, 12201.1), 234.192) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-4069.5, 12294.7), 330.127) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-2869.3, 12660.5), 353.21) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-2509.5, 13262.8), 302.023) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-2772.6, 13610.9), 96.254) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-2812.0, 13096.1), 305.023) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-2433.1, 12741.7), 110.46) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-2443.0, 13759.6), 136.685) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-2738.5, 14172.5), 308.495) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-2473.9, 14246.3), 217.877) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-2760.9, 15020.9), 197.101) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-2379.6, 14865.7), 335.533) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-2001.7, 15075.5), 168.393) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-1784.0, 14374.5), 2.922) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-1429.4, 14281.8), 188.685) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-1688.6, 13921.2), 147.111) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-1401.8, 13660.9), 233.862) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-1736.4, 13398.7), 88.596) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-1467.2, 13180.2), 64.843) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-1789.5, 12909.6), 97.979) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-1493.3, 12733.9), 39.069) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-1776.5, 12407.5), 10.602) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-1414.2, 12260.0), 5.647) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-978.7, 12463.7), 63.129) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-668.0, 12251.4), 112.273) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-642.1, 13261.8), 301.496) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-924.3, 13448.1), 29.972) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-629.9, 13829.5), 167.931) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-872.2, 14201.3), 86.883) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-587.9, 14519.1), 102.297) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-833.4, 14795.4), 223.732) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-587.0, 15076.0), 300.32) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-233.4, 14971.1), 168.997) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(362.3, 14587.0), 177.237) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(12.8, 14449.1), 288.202) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(240.1, 14185.1), 326.612) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-68.2, 14037.9), 151.429) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(315.7, 13742.0), 209.593) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(0.0, 13524.8), 86.707) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(308.0, 13193.0), 83.389) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-19.7, 13055.2), 184.752) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(333.8, 12762.7), 314.735) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-7.6, 12558.8), 82.795) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(350.2, 12368.5), 278.193) --明教弟子|n|cFFFFCC33类别：普通
    p:create_unit('nstl', et.point(-2867.7, 14559.8), 20.974) --明教弟子|n|cFFFFCC33类别：普通
end
local function create_ice_bears()
    local p = PLAYER_HOSTILE
    p:create_unit('nplb', et.point(2765.4, 11990.3), 354.551) --冰熊|n|cFFFFCC33类别：普通
    p:create_unit('nplb', et.point(3192.8, 11863.9), 36.509) --冰熊|n|cFFFFCC33类别：普通
    p:create_unit('nplb', et.point(4320.7, 11980.7), 281.852) --冰熊|n|cFFFFCC33类别：普通
    p:create_unit('nplb', et.point(4503.5, 12242.4), 158.274) --冰熊|n|cFFFFCC33类别：普通
    p:create_unit('nplb', et.point(4039.0, 13071.9), 42.694) --冰熊|n|cFFFFCC33类别：普通
    p:create_unit('nplb', et.point(3593.1, 13185.8), 82.752) --冰熊|n|cFFFFCC33类别：普通
    p:create_unit('nplb', et.point(2454.7, 13204.6), 98.045) --冰熊|n|cFFFFCC33类别：普通
    p:create_unit('nplb', et.point(3069.1, 14146.7), 288.477) --冰熊|n|cFFFFCC33类别：普通
    p:create_unit('nplb', et.point(3607.9, 14145.5), 323.887) --冰熊|n|cFFFFCC33类别：普通
    p:create_unit('nplb', et.point(3902.4, 14598.5), 316.921) --冰熊|n|cFFFFCC33类别：普通
    p:create_unit('nplb', et.point(4668.3, 14134.5), 317.932) --冰熊|n|cFFFFCC33类别：普通
    p:create_unit('nplb', et.point(4812.6, 14612.9), 339.092) --冰熊|n|cFFFFCC33类别：普通
end
local function create_xiaoyao_followers()
    local p = PLAYER_HOSTILE
    p:create_unit('nfpl', et.point(2489.2, 11815.6), 61.8) --逍遥弟子|n|cFFFFCC33类别：普通
    p:create_unit('nfpl', et.point(3505.0, 11993.9), 335.785) --逍遥弟子|n|cFFFFCC33类别：普通
    p:create_unit('nfpl', et.point(3983.6, 11873.8), 156.527) --逍遥弟子|n|cFFFFCC33类别：普通
    p:create_unit('nfpl', et.point(4561.7, 12712.3), 177.687) --逍遥弟子|n|cFFFFCC33类别：普通
    p:create_unit('nfpl', et.point(3142.1, 13153.1), 145.112) --逍遥弟子|n|cFFFFCC33类别：普通
    p:create_unit('nfpl', et.point(2714.3, 13246.9), 83.268) --逍遥弟子|n|cFFFFCC33类别：普通
    p:create_unit('nfpl', et.point(2471.0, 13575.8), 222.304) --逍遥弟子|n|cFFFFCC33类别：普通
    p:create_unit('nfpl', et.point(2605.0, 14035.9), 105.45) --逍遥弟子|n|cFFFFCC33类别：普通
    p:create_unit('nfpl', et.point(3899.3, 14099.0), 310.637) --逍遥弟子|n|cFFFFCC33类别：普通
    p:create_unit('nfpl', et.point(4277.5, 14233.6), 261.131) --逍遥弟子|n|cFFFFCC33类别：普通
    p:create_unit('nfpl', et.point(4886.9, 14357.2), 189.08) --逍遥弟子|n|cFFFFCC33类别：普通
end
local function create_robbers()
    local p = PLAYER_HOSTILE
    p:create_unit('nenf', et.point(-10306.4, 4076.3), 272.722) --江洋大盗|n|cFFFFCC33类别：普通
    p:create_unit('nenf', et.point(-10005.8, 3398.9), 59.207) --江洋大盗|n|cFFFFCC33类别：普通
    p:create_unit('nenf', et.point(-10118.7, 2897.8), 107.911) --江洋大盗|n|cFFFFCC33类别：普通
    p:create_unit('nenf', et.point(-9694.7, 2524.1), 84.729) --江洋大盗|n|cFFFFCC33类别：普通
    p:create_unit('nenf', et.point(-9428.9, 1948.5), 265.603) --江洋大盗|n|cFFFFCC33类别：普通
    p:create_unit('nenf', et.point(-7637.7, 1943.7), 26.357) --江洋大盗|n|cFFFFCC33类别：普通
    p:create_unit('nenf', et.point(-8193.2, 1672.9), 257.934) --江洋大盗|n|cFFFFCC33类别：普通
    p:create_unit('nenf', et.point(-8126.7, 2372.8), 283.451) --江洋大盗|n|cFFFFCC33类别：普通
    p:create_unit('nenf', et.point(-8402.5, 2766.0), 258.582) --江洋大盗|n|cFFFFCC33类别：普通
    p:create_unit('nenf', et.point(-8881.8, 2708.9), 297.695) --江洋大盗|n|cFFFFCC33类别：普通
    p:create_unit('nenf', et.point(-8811.2, 3189.8), 258.329) --江洋大盗|n|cFFFFCC33类别：普通
    p:create_unit('nenf', et.point(-9304.6, 3306.9), 323.964) --江洋大盗|n|cFFFFCC33类别：普通
    p:create_unit('nenf', et.point(-9142.7, 3832.2), 4.098) --江洋大盗|n|cFFFFCC33类别：普通
    p:create_unit('nenf', et.point(-9673.4, 4347.6), 9.02) --江洋大盗|n|cFFFFCC33类别：普通
    p:create_unit('nenf', et.point(-9456.6, 3835.1), 224.985) --江洋大盗|n|cFFFFCC33类别：普通
    p:create_unit('nenf', et.point(-9612.5, 4663.0), 120.776) --江洋大盗|n|cFFFFCC33类别：普通
    p:create_unit('nenf', et.point(-9928.1, 4934.5), 66.887) --江洋大盗|n|cFFFFCC33类别：普通
    p:create_unit('nenf', et.point(-9738.6, 5210.6), 344.421) --江洋大盗|n|cFFFFCC33类别：普通
    p:create_unit('nenf', et.point(-9288.5, 4243.4), 122.622) --江洋大盗|n|cFFFFCC33类别：普通
    p:create_unit('nenf', et.point(-8529.3, 2186.1), 139.959) --江洋大盗|n|cFFFFCC33类别：普通
end
local function create_sacrificers()
    local p = PLAYER_HOSTILE
    p:create_unit('ospw', et.point(7140.3, 14205.1), 272.252) --日月死士|n|cFFFFCC33类别：普通
    p:create_unit('ospw', et.point(7428.2, 14196.2), 270.132) --日月死士|n|cFFFFCC33类别：普通
    p:create_unit('ospw', et.point(7139.1, 13752.0), 272.252) --日月死士|n|cFFFFCC33类别：普通
    p:create_unit('ospw', et.point(7427.0, 13743.1), 270.132) --日月死士|n|cFFFFCC33类别：普通
    p:create_unit('ospw', et.point(7163.0, 13336.6), 272.252) --日月死士|n|cFFFFCC33类别：普通
    p:create_unit('ospw', et.point(7450.9, 13327.7), 270.132) --日月死士|n|cFFFFCC33类别：普通
    p:create_unit('ospw', et.point(7163.2, 12871.5), 272.252) --日月死士|n|cFFFFCC33类别：普通
    p:create_unit('ospw', et.point(7451.1, 12862.6), 270.132) --日月死士|n|cFFFFCC33类别：普通
    p:create_unit('ospw', et.point(7154.8, 12443.3), 272.252) --日月死士|n|cFFFFCC33类别：普通
    p:create_unit('ospw', et.point(7442.7, 12434.4), 270.132) --日月死士|n|cFFFFCC33类别：普通
end
local function create_ox_monsters()
    local p = PLAYER_HOSTILE
    p:create_unit('njgb', et.point(5236.1, -12937.8), 1.681) --传说的牛妖|n|cFFFFCC33类别：神秘
    p:create_unit('njgb', et.point(4818.5, -12457.3), 10.108) --传说的牛妖|n|cFFFFCC33类别：神秘
    p:create_unit('njgb', et.point(5432.7, -12048.3), 259.197) --传说的牛妖|n|cFFFFCC33类别：神秘
    p:create_unit('njgb', et.point(4864.3, -11493.7), 285.939) --传说的牛妖|n|cFFFFCC33类别：神秘
    p:create_unit('njgb', et.point(5190.9, -10875.7), 21.841) --传说的牛妖|n|cFFFFCC33类别：神秘
    p:create_unit('njgb', et.point(5575.9, -11433.9), 43.123) --传说的牛妖|n|cFFFFCC33类别：神秘
    p:create_unit('njgb', et.point(6112.7, -11116.9), 196.464) --传说的牛妖|n|cFFFFCC33类别：神秘
    p:create_unit('njgb', et.point(5871.2, -10670.6), 352.529) --传说的牛妖|n|cFFFFCC33类别：神秘
    p:create_unit('njgb', et.point(5516.4, -10235.7), 253.539) --传说的牛妖|n|cFFFFCC33类别：神秘
    p:create_unit('njgb', et.point(6100.6, -10189.3), 65.942) --传说的牛妖|n|cFFFFCC33类别：神秘
    p:create_unit('njgb', et.point(6007.0, -9673.8), 169.623) --传说的牛妖|n|cFFFFCC33类别：神秘
    p:create_unit('njgb', et.point(5210.1, -10415.4), 297.5) --传说的牛妖|n|cFFFFCC33类别：神秘
end
local function create_liao_knights()
    local p = PLAYER_HOSTILE
    p:create_unit('hkni', et.point(-6915.4, 3983.4), 272.767) --辽国骑兵|n|cFFFFCC33类别：普通
    p:create_unit('hkni', et.point(-6857.0, 3524.6), 272.767) --辽国骑兵|n|cFFFFCC33类别：普通
    p:create_unit('hkni', et.point(-7127.3, 3460.5), 272.767) --辽国骑兵|n|cFFFFCC33类别：普通
    p:create_unit('hkni', et.point(-6397.8, 3139.2), 233.41) --辽国骑兵|n|cFFFFCC33类别：普通
    p:create_unit('hkni', et.point(-6544.0, 3469.7), 233.41) --辽国骑兵|n|cFFFFCC33类别：普通
    p:create_unit('hkni', et.point(-6331.6, 3799.7), 233.41) --辽国骑兵|n|cFFFFCC33类别：普通
    p:create_unit('hkni', et.point(-6722.1, 4353.1), 253.553) --辽国骑兵|n|cFFFFCC33类别：普通
    p:create_unit('hkni', et.point(-6231.4, 4227.2), 253.553) --辽国骑兵|n|cFFFFCC33类别：普通
    p:create_unit('hkni', et.point(-7045.6, 2863.2), 253.553) --辽国骑兵|n|cFFFFCC33类别：普通
    p:create_unit('hkni', et.point(-6644.2, 2934.8), 253.553) --辽国骑兵|n|cFFFFCC33类别：普通
end

-- 中立敌对
local function create_instance_creeps()
    create_ryukyu()
    create_npc_hostile()
    create_wolves()
    create_boars()
    create_jackals()
    create_scorpions()
    create_horse_thieves()
    create_evil_monks()
    create_bears()
    create_rascals_and_betrayers()
    create_water_monsters()
    create_beasts_and_wood_piles()
    create_gumu_followers()
    create_ten_sins()
    create_protect_monks()
    create_puppets()
    create_aliens()
    create_mingjiao_followers()
    create_ice_bears()
    create_xiaoyao_followers()
    create_robbers()
    create_sacrificers()
    create_ox_monsters()
    create_liao_knights()
    PLAYER_HOSTILE:create_unit('hmtt', et.point(-12201.0, -15223.2), 248.28) --城门
end
--===========================================================================
-- 玩家16
--===========================================================================

local function create_dummy_servant()
    local p = PLAYER_PASSIVE
    p:create_unit('nvil', et.point(9481.5, 2020.6), 153.11) --哑仆
    p:create_unit('nvil', et.point(11946.6, 1409.1), 153.11) --哑仆
    p:create_unit('nvil', et.point(13162.3, -376.3), 358.11) --哑仆
    p:create_unit('nvil', et.point(10161.2, 3604.7), 103.352) --哑仆
    p:create_unit('nvil', et.point(11325.7, 3482.4), 240.168) --哑仆
    p:create_unit('nvil', et.point(11322.3, 743.0), 84.356) --哑仆
    p:create_unit('nvil', et.point(10865.2, -59.7), 238.96) --哑仆
    p:create_unit('nvil', et.point(12978.8, -742.5), 322.47) --哑仆
    p:create_unit('nvil', et.point(13486.5, -796.9), 151.045) --哑仆
    p:create_unit('nvil', et.point(13883.7, -1122.0), 87.959) --哑仆
    p:create_unit('nvil', et.point(14401.0, -496.5), 7.174) --哑仆
    p:create_unit('nvil', et.point(12518.7, -847.8), 224.183) --哑仆
    p:create_unit('nvil', et.point(11989.6, -691.0), 48.506) --哑仆
    p:create_unit('nvil', et.point(10697.4, 1028.4), 2.142) --哑仆
    p:create_unit('nvil', et.point(9993.2, 838.7), 130.62) --哑仆
    p:create_unit('nvil', et.point(9880.9, -312.0), 83.993) --哑仆
end
local function create_first_pioneer()
    local p = PLAYER_PASSIVE
    -- 辽国第一先锋
    p:create_unit('hfoo', et.point(13113.9, -12953.1), 180.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
    p:create_unit('hfoo', et.point(13098.9, -12608.4), 180.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
    p:create_unit('hfoo', et.point(13106.8, -12266.3), 180.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
    p:create_unit('hfoo', et.point(13125.6, -11941.2), 180.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
    p:create_unit('hfoo', et.point(13110.6, -11596.5), 180.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
    p:create_unit('hfoo', et.point(13118.5, -11254.4), 180.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
    p:create_unit('hfoo', et.point(10471.2, -12877.6), 0.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
    p:create_unit('hfoo', et.point(10456.2, -12532.9), 0.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
    p:create_unit('hfoo', et.point(10464.1, -12190.8), 0.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
    p:create_unit('hfoo', et.point(10482.9, -11865.7), 0.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
    p:create_unit('hfoo', et.point(10467.9, -11521.0), 0.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
    p:create_unit('hfoo', et.point(10475.8, -11178.9), 0.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
    p:create_unit('hfoo', et.point(10788.2, -13132.6), 90.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
    p:create_unit('hfoo', et.point(11123.4, -13127.2), 90.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
    p:create_unit('hfoo', et.point(11476.5, -13127.2), 90.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
    p:create_unit('hfoo', et.point(11789.3, -13119.0), 90.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
    p:create_unit('hfoo', et.point(12117.5, -13126.3), 90.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
    p:create_unit('hfoo', et.point(12752.7, -13125.3), 90.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
    p:create_unit('hfoo', et.point(12439.1, -13131.0), 90.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
    p:create_unit('hfoo', et.point(10865.3, -11041.6), 270.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
    p:create_unit('hfoo', et.point(11200.6, -11052.2), 270.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
    p:create_unit('hfoo', et.point(11553.7, -11052.2), 270.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
    p:create_unit('hfoo', et.point(11866.5, -11044.1), 270.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
    p:create_unit('hfoo', et.point(12194.7, -11051.3), 270.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
    p:create_unit('hfoo', et.point(12829.8, -11050.3), 270.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
    p:create_unit('hfoo', et.point(12516.3, -11048.0), 270.0) --辽国第一先锋|n|cFFFFCC33类别：BOSS
end
local function create_task_npc_passive()
    --- @type player
    local p = PLAYER_PASSIVE
    p:create_unit('o021', et.point(10788.7, 2432.2), 90.18) --郭靖
    QIU_CHUJI = p:create_unit('o00D', et.point(-5498.1, -3020.3), 60.353) --丘处机
    MA_YU = p:create_unit('o00E', et.point(-5054.2, -3013.2), 129.225) --马钰
    GUO_JING = p:create_unit('o00A', et.point(-2053.7, -339.5), 181.33) --郭靖
    YELV_QI = p:create_unit('o00B', et.point(347.5, -3809.3), 20.701) --耶律齐
    DAMO = p:create_unit('o00I', et.point(3414.3, -699.1), 185.39) --达摩祖师
    QIAO_FENG = p:create_unit('o00J', et.point(-4885.4, 423.9), 273.2) --乔峰

    YOU_TANZHI = p:create_unit('o02A', et.point(-9010.1, -13208.2), 270.0) --游坦之
    YOU_JI = p:create_unit('o027', et.point(-8391.7, -13686.5), 180.0) --游骥
    YOU_JU = p:create_unit('o028', et.point(-9565.3, -13673.1), 0.0) --游驹
    YOU_QI = p:create_unit('o029', et.point(-9519.1, -14831.5), 0.0) --游骐
    YOU_JUN = p:create_unit('o02B', et.point(-8490.7, -14848.6), 180.0) --游骏


    TIAN_KUN = p:create_unit('N00F', et.point(1861.0, -4063.8), 270.0) --苍穹而降
end

-- 中立被动
local function CreateNeutralPassive()
    --- @type player
    local p = PLAYER_PASSIVE
    YELV_CHUCAI = p:create_unit('nvl2', et.point(-12666.8, -12668.0), 270.0) --耶律楚材
    YELV_CHUCAI:show(false)
    FENG_SHU = p:create_unit('N007', et.point(463.2, -595.1), 135.0) --随风而逝de风
    gg_unit_n00E_0066 = p:create_unit('n00E', et.point(14666.0, 1079.2), 89.34) --中毒的洪七公|n|cFFFFCC33类别：BOSS
    gg_unit_n00E_0066:show(false)
    p:create_unit('o02C', et.point(-11675.7, -12657.2), 270.0) --|cff00ff00大辽金匠|r
    p:create_unit('hbsh', et.point(8756.7, 2231.1), 159.134) --冯衡之船
    p:create_unit('hdes', et.point(8725.7, 1444.5), 148.343) --大船
    p:create_unit('ogrk', et.point(10149.5, 2965.0), 12.49) --黄药师|n|cFFFFCC33类别：BOSS
    p:create_unit('nslf', et.point(10997.8, 3200.4), 270.0) --欧阳锋|n|cFFFFCC33类别：BOSS
    p:create_unit('nwnr', et.point(10992.4, 2448.7), 90.0) --洪七公|n|cFFFFCC33类别：BOSS
    p:create_unit('o022', et.point(10129.1, 2787.2), 0.0) --黄蓉
    p:create_unit('n00A', et.point(10780.4, 3209.3), 270.0) --欧阳克|n|cFFFFCC33类别：BOSS
    p:create_unit('o01X', et.point(12561.4, 1703.5), 225.0) --周伯通

    -- 哑仆
    create_dummy_servant()
    -- 辽国第一先锋
    create_first_pioneer()
    create_task_npc_passive()

    -- 装备店
    p:create_unit('o009', et.point(-2214.0, 469.5), 315.03) --|cffff0000装备店|r
    p:create_unit('o01Y', et.point(-2283.0, 311.9), 0.0) --|cff00ff00武器店|r
    p:create_unit('o01Z', et.point(-2063.7, 512.1), 270.04) --|cff0000ff饰品店|r


    p:create_unit('hkni', et.point(-11717.6, -13939.5), 180.0) --辽国骑兵|n|cFFFFCC33类别：普通
    p:create_unit('hkni', et.point(-12586.0, -13906.9), 0.0) --辽国骑兵|n|cFFFFCC33类别：普通
    p:create_unit('o02L', et.point(1781.6, -4106.0), 270.0) --天下门派

    p:create_unit('ncop', et.point(-6336.0, -1536.0), 270.0) -- 能量圈
    p:create_unit('ncop', et.point(-8640.0, -3776.0), 270.0) -- 能量圈
    p:create_unit('ncop', et.point(-9216.0, -3776.0), 270.0) -- 能量圈
    p:create_unit('ncop', et.point(-9984.0, -5376.0), 270.0) -- 能量圈
    p:create_unit('ncop', et.point(-13376.0, 11712.0), 270.0) -- 能量圈
    p:create_unit('ncop', et.point(-12736.0, 11200.0), 270.0) -- 能量圈
    p:create_unit('ncop', et.point(-12992.0, 13440.0), 270.0) -- 能量圈
    p:create_unit('ncop', et.point(-12352.0, 13248.0), 270.0) -- 能量圈
    p:create_unit('ncop', et.point(-10048.0, 5312.0), 270.0) -- 能量圈
    p:create_unit('ncop', et.point(-10624.0, 4800.0), 270.0) -- 能量圈
    LANG_YUN = p:create_unit('O004', et.point(1963.8, -4044.6), 226.742) --浪云
    MO_YAN = p:create_unit('O003', et.point(1655.0, -3879.3), 271.975) --莫言
    MO_JUN = p:create_unit('O000', et.point(1877.0, -4346.3), 184.495) --魔君
    XIAO_XIA = p:create_unit('O001', et.point(1387.8, -4122.2), 342.869) --潇侠
    RUO_DIE = p:create_unit('O002', et.point(1488.4, -4404.3), 48.963) --若蝶
    LAN_XIN = p:create_unit('O023', et.point(1720, -4430.3), 229) --兰馨
    JIN_XUAN = p:create_unit('O02J', et.point(1450, -3900), 256) --
    vipbanlv = {}
    vipbanlv[1] = et.player(1):create_unit('n00G', et.point(1860, -4140), 254.7) --我是赞助者|n
    vipbanlv[2] = et.player(2):create_unit('n00G', et.point(1860, -4140), 254.7) --我是赞助者|n
    vipbanlv[3] = et.player(3):create_unit('n00G', et.point(1860, -4140), 254.7) --我是赞助者|n
    vipbanlv[4] = et.player(4):create_unit('n00G', et.point(1860, -4140), 254.7) --我是赞助者|n
    vipbanlv[5] = et.player(5):create_unit('n00G', et.point(1860, -4140), 254.7) --我是赞助者|n
    Rs = p:create_unit('o005', et.point(1620, -4050), 255) --天下门派

    WAITER = p:create_unit('o007', et.point(1939.6, -2738.2), 217.84) --店小二
    ft = p:create_unit('o006', et.point(-5503.8, 5213.9), 156.857) --物品栏
    gt = p:create_unit('o006', et.point(-5538.1, 5186.3), 209.428) --物品栏
    ht = p:create_unit('o006', et.point(-5425.9, 5155.9), 280.391) --物品栏
    jt = p:create_unit('o006', et.point(-5448.9, 5202.9), 106.67) --物品栏
    kt = p:create_unit('o006', et.point(-5487.7, 5169.9), 191.717) --物品栏
    Us = p:create_unit('o006', et.point(-5517.6, 5090.4), 182.565) --物品栏
    Zs = p:create_unit('o006', et.point(-5540.2, 5134.9), 255.418) --物品栏
    Ys = p:create_unit('o006', et.point(-5483.4, 5122.9), 225.216) --物品栏
    Xs = p:create_unit('o006', et.point(-5429.8, 5108.7), 262.307) --物品栏
    Ws = p:create_unit('o006', et.point(-5453.9, 5084.4), 242.388) --物品栏
    Vs = p:create_unit('o006', et.point(-5467.9, 5207.8), 242.388) --物品栏
    p:create_unit('hhdl', et.point(-2092.9, -2759.4), 336.13) -- 无人之马
    p:create_unit('hhdl', et.point(-2095.1, -2894.8), 344.957) -- 无人之马
    LIN_YUANTU = p:create_unit('o008', et.point(-1689.9, -2919.2), 272.018) --林远图
    p:create_unit('o00F', et.point(-5514.0, -2567.8), 315.259) --郝大通
    MURONG_FU = p:create_unit('o00G', et.point(2900.8, -6110.5), 233.25) --慕容复
    p:create_unit('o00H', et.point(3065.6, -415.5), 260.325) --少林弟子
    p:create_unit('o00H', et.point(2800.7, -432.4), 260.325) --少林弟子
    p:create_unit('o00H', et.point(2554.3, -442.0), 260.325) --少林弟子
    p:create_unit('o00H', et.point(2326.7, -440.3), 260.325) --少林弟子
    p:create_unit('o00H', et.point(3095.5, -1042.9), 88.198) --少林弟子
    p:create_unit('o00H', et.point(2830.6, -1059.8), 88.075) --少林弟子
    p:create_unit('o00H', et.point(2584.1, -1069.5), 89.265) --少林弟子
    p:create_unit('o00H', et.point(2356.6, -1067.7), 91.855) --少林弟子

    --set u=CreateUnit(p,base.string2id('o00N'),503.2,467.8,218.898) --丹药店
    xt = p:create_unit('o00P', et.point(5741.1, -877.8), 224.9) --戒律院主持
    HUANG_RONG = p:create_unit('o00R', et.point(-3452.7, 153.4), 251.26) --黄蓉
    p:create_unit('o00S', et.point(4045.8, -2255.6), 181.936) --虚竹
    p:create_unit('o01Q', et.point(3070.6, -1542.5), 268.656) --少林高僧之江湖内功
    p:create_unit('o00U', et.point(-14635.1, -8394.7), 327.01) --小龙女
    GONGSUN_LUE = p:create_unit('o00V', et.point(-12182.9, -5939.8), 148.96) --公孙绿萼
    p:create_unit('o01S', et.point(3343.6, -2375.3), 5.029) --少林高僧之绝学
    p:create_unit('o01T', et.point(3322.4, -2730.6), 11.064) --少林高僧之绝内
    p:create_unit('o01R', et.point(2649.6, -1514.4), 277.06) --少林高僧之江湖武功
    p:create_unit('o01P', et.point(-134.4, 372.9), 106.56) --名门挑战
    MIE_JUE = p:create_unit('o00W', et.point(-1174.4, 11346.6), 274.031) --灭绝师太
    WANG_CHONGYANG = p:create_unit('o00Y', et.point(4580.0, 419.0), 179.83) --王重阳
    p:create_unit('o018', et.point(598.6, -2015.8), 94.58) --宝石商人
    p:create_unit('o019', et.point(-2081.6, -1962.8), 24.21) --石破天
    p:create_unit('o01A', et.point(-4242.4, -492.4), 63.2) --索额图
    LU_YOUJIAO = p:create_unit('o010', et.point(-129.2, -2927.6), 277.91) --鲁有脚
    p:create_unit('o011', et.point(670.9, -1270.5), 175.947) --古董商人
    HU_FEI = p:create_unit('o012', et.point(-11366.8, 10882.4), 86.53) --胡斐
    p:create_unit('o013', et.point(-10757.5, -9392.7), 335.57) --独孤求败20岁前
    p:create_unit('o014', et.point(-10267.3, -9397.0), 236.63) --独孤求败20~30岁
    p:create_unit('o015', et.point(-10757.4, -8828.2), 287.56) --独孤求败30~40岁
    p:create_unit('o016', et.point(-10344.1, -8824.9), 251.35) --独孤求败40~60岁
    p:create_unit('o017', et.point(-10584.5, -8441.9), 294.94) --独孤求败60岁之后
    LONG_YE = p:create_unit('o01B', et.point(-10140.6, 719.9), 154.876) --龙爷
    WANYAN_PING = p:create_unit('o01C', et.point(-9636.7, -400.7), 28.58) --完颜萍
    MIAO_RENFENG = p:create_unit('o01H', et.point(-8902.4, -26.0), 141.62) --苗人凤
    PING_YIZHI = p:create_unit('o01J', et.point(-2032.3, -1442.2), 179.83) --平一指
end

local function init()
    log.info("开始创建地图上单位...")
    create_units_for_decent()
    create_units_for_attacker()
    create_instance_creeps()
    CreateNeutralPassive()
end
init()
