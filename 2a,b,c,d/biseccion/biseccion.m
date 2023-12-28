function s = biseccion(f, a, b, e)
    while (b - a) > e
        c = (a + b) / 2;

        if f(c) == 0
            s = c;
            return;
        elseif f(a) * f(c) < 0
            b = c;
        else
            a = c;
        end
    end

    if abs(f(a) - f(b)) > 1
        disp('Se encontró un punto singular.');
    end

    s = (a + b) / 2;
end
