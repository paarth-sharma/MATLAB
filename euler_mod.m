clc;
clear all;
f = @(t, y)(-y + 2*cos(t));

a = 0;
b = 1;
h = 0.2;
n = (b-a)/h;

t(1) = 0;
y(1) = 1;

for i=1:n
    t(i+1) = t(i) + h;
    y1(i+1) = y(i) + h*f(t(i), y(i));
    y(i+1) = y(i) + (h/2)*(f(t(i), y(i)) + f(t(i+1), y1(i+1)));
end

disp(y);