clc
clear all
fprintf('TRIANGULACION DE GAUSS');
fprintf('MATRIZ \n');
n=input('Ingrese la dimension de la matriz \n');
fprintf('Ingrese los datos de la matriz \n');
for i=1:n
    for j=1:n
        a(i,j)=input(['a(',num2str(i),',',num2str(j),') ->']);
    end
end
fprintf('Ingrese los resultados \n');
for i=1:n
    b(i)=input(['b(',num2str(i),') ->']);
end
for i=n:-1:2
    for j=(i-1):-1:1
        f=a(j,i)/((-1)*a(i,i));
        for k=1:i
            a(j,k)=a(j,k)+a(i,k)*f;
        end    
        b(j)=b(j)+b(i)*f;
    end        
end    
x(1)=b(1)/a(1,1);   
for i=2:n
    s=0;
    for j=1:(i-1)
        s=s+a(i,j)*x(j);
    end    
    x(i)=(b(i)-s)/a(i,i);
end    
disp(x);