---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2018/10/29 10:23
---

a = 3
t = { a = 2, [a] = 3}

for k, v in pairs(t) do
    print(k, v)
    print(t.a)
end