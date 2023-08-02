#Resolução de sistema de equações lineares pelo método de eliminação gaussiana

A = [2  3  4;
     1 -1  1;
     3 -3 -1]
B = [9; 1;-1]

#X = inv(A)*B

C = [1 1 0 0;
     1 2 1 0;
     0 1 2 1;
     0 0 1 4];
D = [-1; -2; -3; 5];

t = [0 1 1 1];
r = [1 2 2 4];
d = [1 1 1 0];
b = [-1 -2 -3 -5];

X = met_gauss(A,B)
Y = met_Thomas(t,r,d,b);
Xe=[ 1; 1; 1]
Erro_X = max(X - Xe) # Erro da solução X, entre o valor obtido e o valor exato (normalmente indisponivel)
Residuo_eq = max((A*X)-B) # Residuo das equações
