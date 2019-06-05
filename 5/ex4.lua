
function combination(...)
    local arg = table.pack(...)
    if #arg > 1 then
        for i, v in ipairs(arg) do
            -- print("i=" .. i .. ";v=" .. v)
            for j = i+1, #arg do
                print(v .. arg[j])
            end
        end
    end
end

combination("a")
combination("a", "b")
combination("a", "b", "c")
combination("a", "b", "c", "d")