function [x y] = f_euler(x_inicial, y_inicial, f, a, b, n)
    
    x(1) = x_inicial;
    y(1) = y_inicial;
    
    h = (b-a)/n;
    
    for i = 1 : n
        K1 = f(x(i), y(i)); #K1 é a derivada no início do intervalo de cada h
        x(i+1) = x(i) + h;
        y(i+1) = y(i) + K1*h;
    end
    
    
end