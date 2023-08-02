function Y = met_Thomas(t,r,d,b)
    n = size(t,2);
    
    for i = 2 : n
        aux = t(i)/r(i-1);
        r(i) = r(i) - aux*d(i-1);
        b(i) = b(i) - aux*b(i-1);
    endfor
    
    Y(n) = b(n)/r(n);
    for j = n-1 : -1 : 1
        Y(j) = (b(j) - d(j)*Y(j+1))/r(j);
    endfor
end