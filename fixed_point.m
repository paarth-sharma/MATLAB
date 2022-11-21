clc
clear all;
format long %prints out all results in long format

f= @(x) tan(x) - (4*x);
%g= @(x) x - x^3 - 4*x^2 + 10;
g= @(x) x - tan(x) + (4*x);

for i=0:0.1:10
    if(f(i)*f(i+1) < 0)
        a = i
        b = i+1
        break;
    end
end

x0 = (a+b)/2
e = 10^(-9);
n = 1000;
i = 1;

while(i <= n)
    x1 = g(x0);
    if(abs(x1-x0)<e)
        x1
        break;
    else
        x0 = x1
        i = i+1;
    end
end
