clc; 
clear all;

f = @(x) (cos (x)).^2 ; % put dot '.' between expression and ^ since x is an array, do it for vectors too.
a = -0.25; 
b = 0.25;
N = input('Enter sub-interval');

h = (b-a)/N;
sum = 0;
for i = 1:(N-1)
    x(i) = a + (h*i);
    sum = sum + 2*f(x(i));
end
sum = sum + f(a) + f(b);
ans = sum * (h/2);

disp(ans);
disp(x);

