clc;
clear all;

X = [0 1.5 2 2.5];
Y = [2.713 4.4817 7.3891 12.1825];
p = 2.25; %point at which I want f(x)
n = length(X);
DD = zeros(n, n);

for i=1:n
    DD(i,1) = Y(i);
end

for j=2:n
    for i=j:n
        DD(i, j) = (DD(i,j-1)-DD(i-1, j-1))/(X(i)-X(i-j+1));
    end
end

for i=1:n
    prod(i) = 1;
    for j=1:(i-1)
        prod(i) = (p-X(j))*prod(i);
    end
end

sum = 0;
for i = 1:n
    sum = sum + DD(i, i)*prod(i);
end

disp(sum);
