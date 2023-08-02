function [x y] = f_runge_kutta4(x_inicial, y_inicial, f, a, b, n)
    
    x(1) = x_inicial;
    y(1) = y_inicial;
    
    h = (b-a)/n;
    
    for i = 1 : n
        K1 = f(x(i)        , y(i)           ); #K1 é a derivada no início do intervalo de cada h
        K2 = f(x(i) + 0.5*h, y(i) + 0.5*h*K1); #K2 é a derivada no meio do intervalo de cada h
        K3 = f(x(i) + 0.5*h, y(i) + 0.5*h*K2); #K3 é a derivada no meio do intervalo de cada h com o K2
        K4 = f(x(i) +     h, y(i) +     h*K3); #K4 é a derivada no final do intervalo de cada h com o K3
        K_medio = (K1 + 2*(K2 + K3) + K4)/6;
        x(i+1) = x(i) + h;
        y(i+1) = y(i) + K_medio*h;
    end
    
    
end