-- 判断值是否在表中
function is_in(value, tab)
    for _, v in ipairs(tab) do
        if v == value then
            return true
        end
    end
    return false
end

function contains(t1, t2)
    for _, v in ipairs(t1) do
        if not is_in(v, t2) then
            return false
        end
    end
    return true
end

function table_equals(t1, t2)
    return contains(t1, t2) and contains(t2, t1)
end

--- @param tab table
--- @return boolean
function table.is_empty(tab)
    if tab == nil then
        return true
    end
    return next(tab) == nil
end

--- @param tab table
--- @return table key set
function table.keys(tab)
    local keys = {}
    for k, _ in pairs(tab) do
        keys[#keys + 1] = k
    end
    return keys
end

--- 将一个表t2中所有的元素加入另一个表t1中
--- @param t1 table
--- @param t2 table
function table.add_all(t1, t2, override)
    for k, v in pairs(t2) do
        if override then
            t1[k] = v
        else
            t1[k] = t1[k] or v
        end
    end
end


