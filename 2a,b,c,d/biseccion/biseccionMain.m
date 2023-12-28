clc
clear
%La ecuaci�n n�mero 1 no funciona porque el m�todo de
%buscar intervalo no reconoce su dominio
f1 = @(x) sqrt((x+5)/2);
%La ecuaci�n n�mero 4 no funciona porque el m�todo de
%buscar intervalo no reconoce su dominio
f4=@(x) x - exp(1-x)*(1+log(x));

f2=@(x) cos(x)-3*x;
f3=@(x) x^3+2*x^2+10*x-20;


%cambiar donde dice f3, dependiendo de la ecuaci�n que necesites
a=buscar_intervalo(f4,0,1,100);


disp(a);

%cambiar donde dice f3, dependiendo de la ecuaci�n que necesites
y=biseccion(f4,a(1),a(2),0.0001);
disp('La raiz se encuentra en: ');
disp(y);