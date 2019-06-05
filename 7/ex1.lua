n=1
m=10

-- for i = n, m do
--     print(i)
-- end

function fromto(i,j)
    return function ()
        while i <= j do
            i = i + 1
            return i - 1
        end
    end
end

for i in fromto(n, m) do
    print(i)
end