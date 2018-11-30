
local buffs = {
    { ability_id = 1093678903, order_id = 852111, name = "内伤" },
    { ability_id = 1093678905, order_id = 852668, name = "走火入魔" },
    { ability_id = 1093678901, order_id = 852527, name = "流血" },
    { ability_id = 1093678665, order_id = 852189, name = "混乱" },
    { ability_id = 1093681498, order_id = 852075, name = "昏迷" },
    { ability_id = 1093678902, order_id = 852075, name = "重伤" },
    { ability_id = 1093678904, order_id = 852527, name = "血流不止" },
    { ability_id = 1093681497, order_id = 852190, name = "麻痹" },
    { ability_id = 1093677369, order_id = 852149, name = "破防" },
    { ability_id = 1093678414, order_id = 852190, name = "神经错乱" },
    { ability_id = 1093678412, order_id = 852095, name = "封穴" },
    { ability_id = 1093678412, order_id = 852095, name = "穴位全封" },
    { ability_id = 1093678900, order_id = 852527, name = "中毒" },
    { ability_id = 1093678900, order_id = 852527, name = "深度中毒" },
}

--- @param dest unit
--- @param num (number or string)
function et.unit.__index:apply_buff(dest, num)
    -- 如果num是buff名，寻找相应的下标
    if type(num) == 'string' then
        for i, v in ipairs(buffs) do
            if v.name == num then
                num = i
            end
        end
        assert(type(num) == 'number', 'num的类型不正确')
    end
    local p = self:get_owner()
    local last = p:create_unit(1697656880, dest:get_point())
    last:show(false)
    local level = is_in(num, { 12, 14 }) and 2 or 1
    last:add_ability(buffs[num].ability_id, level)
    last:issue_order(buffs[num].order_id, dest)
    last:set_lifetime(2)
    tag.create(buffs[num].name, dest:get_point(), 12, 60, 65, 55, 42, 0, 3, 100, 90)
end

--- @param source j_unit
--- @param dest j_unit
--- @param num number
function WanBuff(source, dest, num)
    et.unit.j_unit(source):apply_buff(et.unit(dest), num)
end