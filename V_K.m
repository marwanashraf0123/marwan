function [sp] = V_K(q1d,q2d,q1,q2)
 l1 = 8;
 l2 = 8;
 sp(1) = 0;
 sp(2) = 0 ;
 
J=[ -l1 *sind(q1)-l1*sind(q1+q2),  -l2*sind(q1+q2); ...
    l1*cosd(q1)+l2*cosd(q1+q2), l2*cosd(q1+q2)];
Vel = J .* [q1d;q2d];
sp(1) = Vel(1);    
sp(2)= Vel(2);

end

