function substr(str)
    local pos = 1
    return function()
        while (pos < str:len()) do
            local s, e = string.find(str, "%w+", pos)
            if s then
                pos = e + 1
                return string.sub(str, s, e)
            end
        end
        return nil
    end
end

str1 = "hello world"
for word in substr(str1) do
    print(word)
end