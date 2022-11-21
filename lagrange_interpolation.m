clc;
clear all;

n=4;
x = [0,0.25,0.5,0.75];
f_x = [1,1.64872,2.71828,4.48169];

p = 0.43; %point at which I want the value of func.

for i=1:n
    L(i)=1;
    for j=1:n
        if j~=i
            L(i) = ((p-x(j))/(x(i)-x(j)))* L(i);
        end
    end
end

sum =0;
for i=1:n
    sum = sum + (L(i)*f_x(i));
end

disp(sum);
