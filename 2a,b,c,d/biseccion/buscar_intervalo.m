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

    disp('No se encontró un intervalo en el número máximo de iteraciones.');
end

