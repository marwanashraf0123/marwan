function [ pos ] = getfkine( arm, theta )
    th = 0; 
    pos(1) = 0;
    pos(2) = 0;
    for n=1:length(arm.L)
        th = th + theta(n)+arm.offset(n);
        pos(1) = pos(1) + arm.L(n) * cosd(th);
        pos(2) = pos(2) + arm.L(n) * sind(th);
    end
end

