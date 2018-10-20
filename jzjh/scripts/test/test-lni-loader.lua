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
    print(result)
end

local function main()
    test_trim()
    test_split()
    test_table_copy()
    test_compile_computed()
    test_format()
end

main()