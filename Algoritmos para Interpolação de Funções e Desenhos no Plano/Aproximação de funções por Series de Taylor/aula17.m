

%Função: f(x) = ln(x)
%x = [0,1:2]

xi = 1;  #Ponto médio do intervalo e concede valores conhecidos para ln(x) e suas derivadas


%c(n) = ((-1)^(n-1))/n

% M = max(abs(f^(n+1)))
% Erro <= (abs(x-xi)^(n+1))*M/(n+1)!

#Vamos calcular manualmente os coeficientes da série de Taylor de grau n

#c = [0; 1; -1/2; 1/3; -1/4; 1/5;....]

#Calculado o valor do coeficientes, podemos aplicá-lo em qualquer hardware que tenha ULA
    
x = [0.1 : 0.01 : 1.9];

y = ln_aula(x);
y_exato = log(x);

[erro_max, pos_erroMax] = max(abs(y - y_exato))

#erro = abs(y - y_exato)
#plot(x, erro);

plot(x, y, "- r", x, y_exato, "- b", xi, 0, "* k");
grid on;
    
    