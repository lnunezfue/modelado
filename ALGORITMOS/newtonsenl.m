function y=newtonsenl
xo=[0;0];
syms x y 
fname=[x-0.7*sin(x)-0.2*cos(y);y-0.7*cos(x)+0.2*sin(y)];
fprima=jacobian(fname);
tolerancia=0.001;
maxiter=30;
iter=1;
f=inline(fname);
jf=inline(fprima);
error=norm(f(xo(1),xo(2)),2);
fprintf('error=%12.8f\n',error);
while error >= tolerancia
   fxo=f(xo(1),xo(2));
   fpxo=jf(xo(1),xo(2));
   xi=xo-inv(fpxo)*fxo;
   fxi=f(xi(1),xi(2));
   error=norm((fxi),2);
   if iter > maxiter
       fprintf('Numero maximo de iteraciones excedido \n');
   return;
   end
   xo=xi;
   iter=iter+1;
end
fprintf('Conjunto solucion:  raiz x=(%14.9f,%14.9f) f(x)=(%14.9f,%14.9f)\n',iter,xi(1),xi(2),fxi(1),fxi(2));
end