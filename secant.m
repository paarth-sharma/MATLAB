clc;
clear all;
format long;
f= @(x) x^2 - 17;

for i= 0:1:100
    if (f(i)*f(i+1)<0)
        a=i
        b=i+1
        break;
    end
end 

x0=(a+b)/2;
x1=x0+0.1;
e=10^(-9);
n=1000;
i=1;

while(i<=n)
   x2=x1-(((x1-x0)/(f(x1)-f(x0)))*f(x1));
   if(abs(x2-x1)<e)
       x2
       break;
   else
       i=i+1;
       x0=x1
       x1=x2
   end
end