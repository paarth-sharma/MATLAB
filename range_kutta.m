clc;                                              
clear all;

dydt = @(t, y)(-0.6*pi*0.1*0.1*sqrt(2*32.1)*sqrt(t))/((512*pi)/(3*t));
t0=input('Enter the value of t0 :  \n');
y0=input('Enter the value of y0 :  \n');
tn=input('Enter the value of t for which you want to find the value of y :  \n');
h=input('Enter the step length :  \n');                                      
i=0;

while i<tn
    k_1 = dydt(t0,y0);
    k_2 = dydt(t0+0.5*h,y0+0.5*h*k_1);
    k_3 = dydt((t0+0.5*h),(y0+0.5*h*k_2));
    k_4 = dydt(((t0)+h),(y0+k_3*h));
    next_y = y0 + ((1/6)*(k_1+2*k_2+2*k_3+k_4)*h);
    y0 = next_y;
    t0 = t0+h;
    i=i+h;
end 

fprintf('The value of y at t=%f is %f',t0,y0);