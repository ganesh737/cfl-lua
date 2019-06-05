function integral(f, a, b)
    return  function(a,b)
                return (b - a) * (f(a) - f(b)) / 2
            end
end

c = integral(math.cos)

print(math.cos(0.001))
print(c(0,0.001), math.sin(0.001))