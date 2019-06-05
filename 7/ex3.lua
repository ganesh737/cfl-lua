
function allwords()
    local line = io.read()
    local pos = 1
    return function()
        while line do
            local s, e = string.find(line, "%w+", pos)
            if s then
                pos = e + 1
                return string.sub(line, s, e)
            else
                line = io.read()
                pos = 1
            end
        end
        return nil
    end
end

function uniquewords()
    local line = io.read()
    local pos = 1
    local words = {}
    return function()
        while line do
            local s, e = string.find(line, "%w+", pos)
            if s then
                pos = e + 1
                local str = string.sub(line, s, e)
                if (words[str] == nil) then
                    words[str] = true
                    return str
                end
            else
                line = io.read()
                pos = 1
            end
        end
        return nil
    end
end

for word in uniquewords() do
    print(word)
end