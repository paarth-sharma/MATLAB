clc
clear all;
format long;

f = @(x) (cos (x)).^2 ; % put dot '.' between expression and ^ since x is an array, do it for vectors too.
a = -0.25; 
b = 0.25;
N = input('Enter sub-interval');

h = (b-a)/N;
sum = 0;
for i = 1:(N-1)
    x(i) = a + (h*i);
    if rem(i, 2) == 0
        sum = sum + 2*f(x(i));
    else 
        sum = sum + 4*f(x(i));
    end
end
sum = sum + f(a) + f(b);
ans = sum * (h/3);

disp(ans);
disp(x);

