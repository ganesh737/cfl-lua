function newpoly(coeff)
    return function (x)
        res = 0
        if #coeff > 0 then
            for i = 1, #coeff do
                res = res + (coeff[i] * (x^(i-1)))
            end
        end
        return res
    end
end

f = newpoly({1, 0, 3})
print(f(0))
print(f(5))
print(f(10))