
escTbl = {
    ["\\a"] = "\a",
    ["\\b"] = "\b",
    ["\\f"] = "\f",
    ["\\n"] = "\n",
    ["\\r"] = "\r",
    ["\\t"] = "\t",
    ["\\v"] = "\v",
}

for key, value in pairs(escTbl) do
    print ("Key=" .. key)
    print ("Value=" .. value)
end