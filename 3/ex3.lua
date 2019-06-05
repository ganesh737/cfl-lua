function poly_comp (coeff, x)
    res = 0
    if #coeff > 0 then
        for i = 1, #coeff do
            res = res + (coeff[i] * (x^(i-1)))
        end
    end
    return res
end

coeff = {0, 1, 1, 1}
x = 10

print(poly_comp(coeff, x))