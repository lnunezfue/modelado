clc
clear

%La ecuación número 1 no funciona porque el método de
%buscar intervalo no reconoce su dominio
f1 = @(x) sqrt((x+5)/2);
%La ecuación número 4 no funciona porque el método de
%buscar intervalo no reconoce su dominio
f4=@(x) x - exp(1-x)*(1+log(x));

f2=@(x) cos(x)-3*x;
f3=@(x) x^3+2*x^2+10*x-20;

a=buscar_intervalo(f3,-8,-4,100);


disp(a);

y=falsa_posicion(f3,a(1),a(2),0.0001);
disp('La raiz se encuentra en: ');
disp(y);