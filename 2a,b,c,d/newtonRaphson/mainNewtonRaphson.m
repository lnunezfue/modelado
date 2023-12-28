clc
clear

%La ecuación número 1 no funciona porque el método de
%buscar intervalo no reconoce su dominio
f1 = @(x) sqrt((x+5)/2);
fd1= @(x) 1/(2*sqrt(2)*sqrt(x+5));
%La ecuación número 4 no funciona porque el método de
%buscar intervalo no reconoce su dominio
f4=@(x) x - exp(1-x)*(1+log(x));
fd4=@(x) 1+exp(1-x)+exp(1-x)*log(x)-(exp(1-x))/x;

f2=@(x) cos(x)-3*x;
fd2=@(x) -sin(x)-3;
f3=@(x) x^3+2*x^2+10*x-20;
fd3=@(x) 3*x^2+4*x+10;



y=newton_raphson(f3,fd3,0,0.0001,100);
disp('La raiz se encuentra en: ');
disp(y);