sun = "mon"; mon = "sun"
t = {sun = "mon", [sun] = mon}
print(t.sun, t[sun], t[t.sun])