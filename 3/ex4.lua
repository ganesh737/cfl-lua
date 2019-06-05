function poly_comp (coeff, x)
    res = 0
    if #coeff > 0 then
        for i = 1, #coeff do
            res = res + (coeff[i] * (x^(i-1)))
        end
    end
    return res
end

function poly_comp_rec (coeff, x)
    res = 0
    if #coeff > 0 then
        if #coeff > 1 then
            coeff_tmp = {}
            for i = 2, #coeff do
                coeff_tmp[i-1] = coeff[i]
            end
            res = coeff[1] + x * poly_comp_rec(coeff_tmp, x)
        else
            res = coeff[1]
        end
    end
    return res
end

coeff = {0, 1, 1, 1}
x = 10

print(poly_comp(coeff, x))
print(poly_comp_rec(coeff, x))