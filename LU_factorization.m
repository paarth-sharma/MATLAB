clc;
clear all;

A = [10,8,-3,1,16; 
     2,10,1,-4,9; 
     3,-4,10,1,10; 
     2,2,-3,10,11];

n = 5; %store the no. of elements in a row

for i = 1: n
    for j = i+1: n-1
        A(j,:) = A(j,:) - ((A(j,i)/A(i,i))*A(i,:));
    end
end

disp(A);


X(n)= A(n,n+1)/A(n,n);

for i=(n-1):-1:1
    sum = 0;
    for j = (i+1):n
        sum = sum + A(i,j)*X(j);
    end
    X(i) = (A(i,n+1)-sum)/A(i,i);
end

disp(X);



