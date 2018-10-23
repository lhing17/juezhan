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
