
function loadwithprefix(prefix, code)
    return load(prefix .. code)
end

f = loadwithprefix("return", "8 + 5")
print(f)