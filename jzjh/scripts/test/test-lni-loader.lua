package.path = package.path .. ';D:\\MPQEditor\\jzjh1.6\\juezhan\\jzjh\\scripts\\?.lua'
local loader = require 'lni.lni-loader'
require 'util.lua-util'
funcs = loader.local_funcs


local function test_trim()
    assert(funcs.trim(' aadfdb  ') == 'aadfdb', 'trim不正确！')
end

local function test_split()
    t = {'a', ' b', ' c', ' d', ' e'}
    r = funcs.split('a, b, c, d, e', ',')
    assert(table_equals(r, t))

end

local function test_dostring()
    funcs.dostring(file, ln, str, env)
end

local function test_table_copy()
    t = {1, 2, 3, 4, 5}
    a = t
    b = funcs.table_copy(t)
    assert(a == t)
    assert(b ~= t)
    assert(table_equals(a, t))
    assert(table_equals(b, t))
end

local function test_compile_computed()
    line = [[id = 'h001']]
    env = {['max_level'] = 3}
    a, b, c = funcs.compile_computed(line, env)
    print(a, b, c)
end

local function test_format()
    result = funcs.format(1.234)
    assert(result == '1.2')
end

local function storm_load(filename)
    file = io.open(filename)
    if file then
        return file:read('*a')
    end
    return nil
end

local function test_packager()
    loader:set_marco('TableSearcher', '$MapPath$lni\\table\\')
    for _, path in ipairs(funcs.split(package.path, ';')) do
        -- 把packagepath的?.lua替换成lni\table\.iniconfig
        local buf = storm_load(path:gsub('%?%.lua', 'lni\\table\\.iniconfig'))
        -- 如果找到了.iniconfig文件，将当前路径设置为地图搜索路径
        if buf then
            loader:set_marco('MapPath', path:gsub('%?%.lua', ''))
            break
        end
    end
    l = loader:packager('denomination', storm_load)
    print('读取lni文件'..'denomination')
    q = funcs.table_copy(l)
    for k, v in pairs(q) do
        v.name = k
        if v.item_id then
            q[v.item_id] = v
        end

    end
    for k, v in pairs(q) do
        print(k)
        for k1, v1 in pairs(v) do
            print('\t', k1, v1)
        end
    end
end

local function main()
    test_trim()
    test_split()
    test_table_copy()
    test_compile_computed()
    test_format()
    test_packager()
end

main()