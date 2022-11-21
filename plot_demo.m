%plotting

clc
clear all
close all % clear all plots on next run

x = 0:0.1:10 % start: step size: end of array
y = 5*sin(x)
z = 2*cos(2*x)

% plot(x,y)
% hold on % prints both plots on one graph
% plot(x,z)

%singular line to print both together
% plot(x,y,'r', x,z,'b')

%print on separate graphs
figure(1)
plot(x,y,'r')
figure(2)
plot(x,z,'b')
