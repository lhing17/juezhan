---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/11/1 11:30
---


local common_util = require 'jass.util.common_util'
local unit = {}
unit.all_units = {}
unit.removed_units = {}

local mt = {}
unit.__index = mt

mt.type = 'unit'

-- 是否存活 alive dead removed
mt.status = 'alive'

-- 默认不隐藏
mt.hidden = false

mt.x = 0
mt.y = 0

mt.face = 270
-- 移动速度
mt.speed = 300

-- 转向速度（花费时间）
mt.turn_speed = 2

-- 是否可以飞行
mt.flyable = false

-- 飞行高度
mt.fly_height = 0

-- 主动攻击范围
mt.acquire_range = 500

-- 警戒范围
mt.creep_guard = 200

-- 队伍颜色
mt.color = 'red'

-- 单位着色
mt.red = 128
mt.green = 128
mt.blue = 128
mt.alpha = 128

-- 动画速度
mt.time_scale = 1

-- 是否为英雄
mt.hero = false
-- 永久力量
mt.per_str = 10
-- 临时附加力量
mt.tmp_str = 0
-- 敏捷
mt.per_agi = 10
mt.tmp_agi = 10
-- 智力
mt.per_int = 10
mt.tmp_int = 10


function mt:die()
    self.status = 'dead'
end

function mt:remove()
    self.status = 'removed'
    unit.all_units[self.handle_id] = nil
    unit.removed_units[self.handle_id] = self
    local p = self:get_owner()
    p.units[self.handle_id] = nil
end

function mt:show()
    self.hidden = false
end

function mt:hide()
    self.hidden = true
end

function mt:is_hero()
    return self.hero
end

function mt:set_str(str)
    self.per_str = str
end

function mt:set_agi(agi)
    self.per_agi = agi
end

function mt:set_int(int)
    self.per_int = int
end

function mt:set_x(x)
    self.x = x
end

function mt:set_y(y)
    self.y = y
end

function mt:set_position(x, y)
    self:set_x(x)
    self:set_y(y)
end

function mt:set_facing(face)
    self.face = face
end

function mt:set_move_speed(speed)
    if speed > 522 then
        speed = 522
    end
    if speed < 100 then
        speed = 100
    end
    self.speed = speed
end

function mt:set_turn_speed(turn_speed)
    self.turn_speed = turn_speed
end

function mt:set_owner(p)
    local op = self.get_owner()
    op.units[self.handle_id] = nil
    self.owner = p
    p.units[self.handle_id] = self
end

function mt:set_color(pc)
    if pc.color then
        self.color = pc.color
    end
end

function mt:set_scale(x, y, z)
    self.scale = {x or 1, y or 1, z or 1}
end

function mt:set_time_scale(scale)
    self.time_scale = scale
end

function mt:set_vertex_color(red, green, blue, alpha)
    self.red = red or 128
    self.green = green or 128
    self.blue = blue or 128
    self.alpha = alpha or 128
end

function mt:get_acquire_range()
    return self.acquire_range
end

function mt:get_creep_guard()
    return self.creep_guard
end

function mt:get_turn_speed()
    return self.turn_speed
end

function mt:get_fly_height()
    return self.fly_height
end

function mt:get_str()
    return self.per_str
end

function mt:get_agi()
    return self.per_agi
end

function mt:get_int()
    return self.per_int
end

function unit:__tostring()
    return self.handle_id .. ', ' .. self.type .. ', ' .. self.id .. ', ' .. self.x .. ', ' .. self.y
end

function unit.create(p, unitid, x, y, face)
    local u = {}
    setmetatable(u, unit)
    u.owner = p
    if p.color then
        u.color = p.color
    end
    u.id = unitid
    u.handle_id = common_util.generate_handle_id()
    u.x = x
    u.y = y
    u.face = face
    u.scale = {1, 1, 1}
    unit.all_units[u.handle_id] = u
    p.units[u.handle_id] = u
    return u
end

return unit