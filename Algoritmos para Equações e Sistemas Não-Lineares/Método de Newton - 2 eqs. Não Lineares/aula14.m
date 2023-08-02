format long


f1 = @(x) exp(x(1)) + x(2) - 1
f2 = @(x) x(1).*x(1) + x(2).*x(2) - 4

xi = [1; -1;]
x = newtonSistema(f1, f2, xi)

residuomax = max(abs([f1(x), f2(x)]))



xi = [complex(-1, 1); complex(1, 1);]
x = newtonSistema(f1, f2, xi)

residuomax = max(abs([f1(x), f2(x)]))