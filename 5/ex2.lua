function printNum(...)
    local str = ""
    for i, v in ipairs{...} do
        str = str .. tostring(v)
    end
    return str
end

print(printNum())
print(printNum(10, 11, 12, 13, 14, 15))