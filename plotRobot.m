function [] = plotRobot( arm, th )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
    aa(1) = 0;
    bb(1) = 0;
    
    aa(2) = arm.L(1) * cosd(th(1) );
    bb(2) = arm.L(1) * sind(th(1) );

    aa(3) = aa(2) + arm.L(2) * cosd(th(2) + th(1));
    bb(3) = bb(2) + arm.L(2) * sind(th(2) + th(1) );
    
    plot(aa, bb,'r','linewidth',3);
end

