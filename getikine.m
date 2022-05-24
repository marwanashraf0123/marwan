function [ theta ] = getikine( arm, pos, hand )
    l1 = arm.L(1);
    l2 = arm.L(2);
    z = sqrt(pos(1)*pos(1) + pos(2)*pos(2));
    
    
    if (z>(l1 + l2) || z<(l1-l2) )
        disp('unreachable');
        theta = [0,0];
    else
        a = acos( (z*z + l1*l1 - l2*l2)/(2*z*l1) );
        a = a *180 / pi;
        S = atan2(pos(2), pos(1)) * 180 / pi;
        if(strcmp(hand,'right') == 1)
            theta(1) = S - a;
        elseif(strcmp(hand,'left') == 1)
            theta(1) = S + a;
        end
    %     S = asin(( pos(2) - arm.L(1) * sind(theta(1)) ) / arm.L(2) ) * 180/pi;
    %     theta(2) = S - theta(1);
        
%         S = acos(( pos(1) - l1 * cosd(theta(1)) ) / l2 ) * 180/pi;
%         theta(2) = S - theta(1);
        
        if ( isreal(theta(1)) )
            S = atan2(pos(2) - l1*sind(theta(1)) , pos(1)-l1*cosd(theta(1)) ) *180/pi;
            theta(2) = (S - theta(1));
          if(strcmp(hand,'right') == 1)
                 theta(2) = (S - theta(1));
            elseif(strcmp(hand,'left') == 1)
                theta(2) = (S - theta(1));
            end
        
           if ( isreal(theta(2)) &&  isreal(theta(1)))
            %     if(strcmp(hand,'Right') == 0)
                
            %if(theta(2) < 0)
                     %   theta(2) = -theta(2);
                    
           %end
                %end
            else
                disp('unreachable');
                theta = [0,0];
            end
        else
            disp('unreachable');
            theta = [0,0];
        end
       theta(1) = theta(1) - arm.offset(1);
       theta(2) = theta(2) - arm.offset(2);
    end
    
end

