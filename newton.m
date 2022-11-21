clc;
clear all;
format long;
syms x;

f= @(x) 4*(x^2) - (exp(x)) - exp(-x);

df(x) = diff(f,x);

for i= 0:1:100
    if (f(i)*f(i+1)<0)
        a=i
        b=i+1
        break;
    end
end    

x0=(a+b)/2
e=10^(-9);
n=1000;
i=1;

while(i<=n)
   x1=x0-(f(x0)/eval(df(x0)));
   if(abs(x1-x0)<e)
       x1
       break;
   else
       i=i+1;
       x0=x1;    
   end
end