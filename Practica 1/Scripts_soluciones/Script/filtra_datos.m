function [y]=filtra_datos(x,n)
y(1:n)=x(1:n);
for i=n:length(x)
    y(i)=sum(x(i+1-n:i))/n;
end
