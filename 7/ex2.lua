n=1
m=10
step=3

-- for i = n, m do
--     print(i)
-- end

function fromto(i,j,k)
    k = k or 1
    return function ()
        while i <= j do
            i = i + k
            return i - k
        end
    end
end

for i in fromto(n, m, step) do
    print(i)
end