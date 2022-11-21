clc;
clear all;

A=[1,1,0,0; 1,2,0,1; 0,0,3,3; 0,1,2,3];
x0 = [1; 1; 0; 1];

epsilon=input('\n Enter the tolerance of error ');
%error of tolerance you want. for exmple 0.001 or 0.0001 etc.

k0 = 1;
v = A*x0; 
k1 = max(abs(v));
err=abs(k0-k1);
%Calculating the greatest eigenvalue and the corresponding eigenvector.
 while err>epsilon  
   v=A*x0; 
   k1 = norm(v,"inf");
   x0 = v/k1;
   err = abs(k0-k1);
   k0=k1;
 end
fprintf('\n The greatest eigenvalue is %2.5f \n',k0);
disp(' The corresponding eigenvector is:');
disp(x0);
%fprintf('\n %2.5f',x0);
