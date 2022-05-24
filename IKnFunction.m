function [theta1_1,theta2_1,theta1_2,theta2_2] = IKnFunction(px,py,a1,a2)
cos_theta2= ((px)^2+(py)^2-(a1)^2-(a2)^2)/(2*a1*a2);
if cos_theta2 <=1 

theta2_1 = acos(cos_theta2); %theta_1 first_soln
theta2_2 = -acos(cos_theta2); %theta_1 second_soln 

first_term = atan(py/px);
second_term_firstsoln = atan((a2*sin (theta2_1))/(a1+a2*cos(theta2_1)));  
second_term_secondsoln = atan((a2*sin (theta2_2))/(a1+a2*cos(theta2_2))); 

theta1_1 = first_term - second_term_firstsoln ; 
theta1_2 = first_term - second_term_secondsoln ; 
end


