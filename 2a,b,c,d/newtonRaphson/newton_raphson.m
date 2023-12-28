function s = newton_raphson(f, fd, x0, e, num)
    x(1) = x0;
    i = 2;
    
    while i <= num
        x(i) = x(i - 1) - f(x(i - 1)) / fd(x(i - 1));
        
        if abs(x(i) - x(i - 1)) < e
            s = x(i);
            return;
        end
        
        i = i + 1;
    end
    
    disp('El elemento no converge después de alcanzar el número máximo de iteraciones.');
    s = NaN;
end
