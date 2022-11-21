%working with matrices

clc
clear all;

A = [1,5,6; 2,0,1; 1,3,2]
B = [1,3,6; 5,1,2]
C = [5; 7; 1]
D = [1,1; 1,1; 1,1]
E= [1,0,0; 0,1,0; 0,0,1]
F=[0,0,0,0; 0,0,0,0; 0,0,0,0]
G= [5,5,5; 5,5,5; 5,5,5]

%shorthand for matrices
U = ones(100, 100) %matrix with all 1s and size is 100*100
V = eye(3) %identity matrix of order 3
W = zeros(2) %matrix filled with 0s and order 3

X = det(A) %determinant of A
Y = inv(A) %inverse of A
Z = transpose(A) %transpose of A

Nm = A*A %normal matrix multiplication
Sm = A.* A %each element is multiplied with its equivalent once (component-wise)

size(A) %order of matrix
numel(A) %number of elements in matrix

size(B, 1) % ,1 stands for rows and ,2 will represent columns
size(B, 2)