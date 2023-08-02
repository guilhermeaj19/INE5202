function y = ln_aula(x)

    c(1) = 0; c(2) = 1;

    n = 1000    # para n = 1000, o erro máximo está na ordem de 10^-4
    
    xi = 1;

    for i = 2 : n
       c(i+1) = ((-1)^(i+1))/i;
    end #for
    
    y = c(1);
    aux = 1;
    
    for i = 2 : n + 1
        aux = aux .* (x-xi);
        y = y + c(i).*aux;
    end #for

end #function
    
    