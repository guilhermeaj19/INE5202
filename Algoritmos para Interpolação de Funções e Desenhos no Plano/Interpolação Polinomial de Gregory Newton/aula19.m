format long
#Aproxime a função de f(x) com erro menor que 1e-6
#f(x) = ln(x)
f = @(x)log(x);
a = 0.1;
b = 1.9;
n = 5 #erro na ordem de 1e-7 com n = 45
h = (b - a)/n;
x = [a : h : b];
c = coeficientes_greg_nwtn(n, a, b, f);
#c = [-2.302585092994045; 2.558427881104495; -1.02514272060278] #Valor para n = 2

x_plot = [a : h/10 : b];
y_plot = func_pol_gn(n, c, x, x_plot);
y_exato = f(x_plot);
erro_local = abs(y_plot - y_exato);
plot(x_plot, erro_local, "- r")
[erro_max, pos_erro] = max(abs(y_plot - y_exato))
#plot(x, y, "* r", x_plot, y_plot, "- b", x_plot, y_exato, "- k");

