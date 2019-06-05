
-- function nonils: from the boot Programming in Lua as it is
function nonils(...)
    local arg = table.pack(...)
    for i = 1, arg.n do
        if arg[i] == nil then return false end
    end
end

function concatNum(...)
    local str = ""
    if not nonils(...) then
        for i, v in ipairs{...} do
            str = str .. tostring(v)
        end
    else
        return false
    end
    return str
end

print(concatNum())
print(concatNum(10, "asdjjs", 11, 12, 13, 14, 15))