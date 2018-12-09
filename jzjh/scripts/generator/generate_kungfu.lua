---
--- Generated by EmmyLua(https://github.com/EmmyLua
--- Created by G_Seinfeld.
--- DateTime: 2018/11/17 0017 11:24
---

-- 生成伴侣的ini文件

require('util.id')

-- 字符串分割
local function split(str, p)
    local rt = {}
    str:gsub('[^' .. p .. ']+', function(w)
        table.insert(rt, w)
    end)
    return rt
end

local function main()
    local file = io.open('generator/source.txt', 'r')
    local dest = io.open('lni/table/herb.ini', 'a+')
    local dest2 = io.open('generator/dest2.txt', 'a+')
    local tab = {}

    for line in file:lines() do
        local strs = split(line, '\t')
        local name = strs[1]
        local item_id = base.id2string(strs[2])
        local ability_id = base.id2string(strs[3])
        local type = strs[4]
        local dp = strs[5]
        local fy = strs[6]
        local gg = strs[7]
        local jm = strs[8]
        local wx = strs[9]
        local ys = strs[10]

        dest:write("['" .. name .. "']", '\n')
        dest:write("item_id = '", item_id, "'\n")
        dest:write("ability_id = '", ability_id, "'\n")
        dest:write("type = ", type, '\n')
        dest:write("courage = ", dp, '\n')
        dest:write("luck = ", fy, '\n')
        dest:write("constitution = ", gg, '\n')
        dest:write("channel = ", jm, '\n')
        dest:write("perception = ", wx, '\n')
        dest:write("healing_skill = ", ys, '\n')
        --dest2:write(item_id, '\n')
    end
    file:close()
end

main()