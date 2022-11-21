clc;
clear all;

f=@(x) x^2-29;

for i=0:1:10
    if(f(i)*f(i+1)<0)
        a = i
        b = i+1
        break;
    end
end

% question 1

c = (a+b)/2
counter = 0

while(abs(f(c)) > 0.001)
    if(f(a)*f(c) < 0)
        b = c
    else 
        a = c
    end
    c =(a+b)/2 %update c again
    counter = counter + 1
end

