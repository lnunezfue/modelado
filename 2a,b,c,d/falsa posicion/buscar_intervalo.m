function intervalo = buscar_intervalo(f, a, b, num)
    intervalo = [];
    
    for i = 1:num
        if f(a)*f(b) <= 0
            intervalo = [a, b];
            return;
        end
        
        a = b;
        b = b + 1;
    end

    disp('No se encontr� un intervalo en el n�mero m�ximo de iteraciones.');
end

