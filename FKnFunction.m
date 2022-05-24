function [ax,ay,bx,by]= FKnFunction (a1,a2,theta1,theta2)
ax = a1*cos(theta1); 
ay = a1*sin(theta1);

bx = ax + a2*cos(theta1+theta2);
by = ay + a2*sin(theta1+theta2);

