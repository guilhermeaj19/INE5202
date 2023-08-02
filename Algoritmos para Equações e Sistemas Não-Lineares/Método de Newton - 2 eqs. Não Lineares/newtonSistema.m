function Xf = newtonSistema(f1, f2, Xi)

    # Refinar até a precisão desejada
    
    # Calculando df (f') numericamente
    
    # Xi(indice) Valor inicial
    
    dx = [1e-5; 1e-5];
    contador_reps = 0;
    
    
    while max(abs(dx)) > 1e-10 && contador_reps < 10
        
        # Para caso haja divergência, contar
        # as repetições
        contador_reps = contador_reps + 1;
        
        # Pela série de taylor simplificada 
        
        # Obtendo uma derivada numérica
        # Pela definição de limite, com dx pequeno
        # num_df = (f(Xi() + dx) - f(Xi()))/dx;
        
        
        %A = [exp(Xi(1)) 1;
        %     2.*Xi(1) 2.*Xi(2)];
        A(1, 1) = (f1([Xi(1) + dx(1); Xi(2)         ]) - f1(Xi)) / dx(1);
        A(1, 2) = (f1([Xi(1)        ; Xi(2) + dx(2) ]) - f1(Xi)) / dx(2);
        A(2, 1) = (f2([Xi(1) + dx(1); Xi(2)         ]) - f2(Xi)) / dx(1);
        A(2, 2) = (f2([Xi(1)        ; Xi(2) + dx(2) ]) - f2(Xi)) / dx(2);
             
        B = -[f1(Xi); f2(Xi)];
        
        dx = A \ B;
    
        Xf = Xi + dx;
        
        Xi = Xf;
        
        Xf;
        abs(dx);
        # printf("\n");
        
    end
    contador_reps

end
