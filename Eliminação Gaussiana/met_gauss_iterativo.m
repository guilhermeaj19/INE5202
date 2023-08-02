function X_iterativo = met_gauss_iterativo(A,B)
    n = size(A,1);
    L = A;
    U = A;
    
    for i = 1 : n
        L(i,i:n) = 0
        U(i,1:i) = 0
        
    D = A - L - U
    
    
end