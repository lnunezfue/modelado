function s=falsa_posicion(f,a,b,e)
    c = (a*f(b) - b*f(a)) / (f(b) - f(a));

    while abs(f(c)) > e
        if f(a)*f(c) < 0
            b = c;
        else
            a = c;
        end

        c = (a*f(b) - b*f(a)) / (f(b) - f(a));
    end

    s = c;

end