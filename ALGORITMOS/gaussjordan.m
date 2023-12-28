function x=gaussjordan(a,b)
clc
clear all
fprintf('GAUSS JORDAN');
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

for i=1:n
    p=a(i,i);
    for j=1:n
        a(i,j)=a(i,j)/p;
    end
    b(i)=b(i)/p;
    for h=1:n
        if h==i
        else
            if h~=i
                f=(-1)*a(h,i);
                for j=i:n
                    a(h,j)=a(h,j)+f*a(i,j);
                end    
                b(h)=b(h)+f*b(i);
            end    
        end  
    end    
end
x=b;
end
