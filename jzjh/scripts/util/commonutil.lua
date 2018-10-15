-- 判断值是否在表中
function is_in(value, tab)
    for _, v in ipairs(tab) do
        if v == value then
            return true
        end
    end
    return false
end
