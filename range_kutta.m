clc;
clear all;
A = @(x)((512*pi)/x)
f = @(x, t)((-0.6*pi*r*r)*sqrt(2*g)*sqrt(x))/(A(x));

a = 0;
b = 1;
h = 0.2;
n = (b-a)/h;

t(1) = 0;
y(1) = 1;

for i=1:n
    t(i+1) = t(i) + h;
    k1 = h * (f())

end

disp(y);