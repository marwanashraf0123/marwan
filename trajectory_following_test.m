%%%%% links dimensions
a1 = 18; a2 = 18; 
        %%%%%number of intermediate steps
n = 5; 
k= 34;
        %%%%%%array for all x,y coords
px_array = zeros(k*n,1);
py_array = zeros(k*n,1);

tracex_array = zeros(k*n,1);
tracey_array = zeros(k*n,1);

%array for all theta1 , theta2 values
theta1_array = zeros(k*n,1);
theta2_array = zeros(k*n,1);

theta1_array_deg = zeros (k*n,1);
theta2_array_deg = zeros (k*n,1); 
%%%% array for sim time 
t_array = zeros(k*n,1); 
sim_time_array = linspace (0,k,k*n); 

%%%%% for circles 
theta = linspace (0,(2*pi),n);
for s = 1:k
   if s == 1 
p1 = [0;6]; %first point
p2 = [0;10];   %second point 
   end
if s==2
p1 = [0;10]; %first point
p2 = [4;10];   %second point 
end
if s == 3
p1 = [4;10]; %first point
p2 = [4;6];   %second point
end
   if s == 4
p1 = [4;6]; %first point
p2 = [8;6];   %second point 
   end
if s==5
p1 = [8;6]; %first point
p2 = [8;8];   %second point 
end
if s == 6
p1 = [8;8]; %first point
p2 = [4;8];   %second point
end

if s == 7
p1 = [4;8]; %first point
p2 = [4;10];   %second point
end

if s==8
p1 = [4;10]; %first point
p2 = [8;10];   %second point
end

if s == 9
p1 = [8;10]; %first point
p2 = [8;6];   %second point
end

if s == 10
p1 = [8;6]; %first point
p2 = [8;10];   %second point
end
if s == 11
p1 = [8;10]; %first point
p2 = [10;10];   %second point
end
if s == 12
p1 = [10;10]; %first point
p2 = [10;6];   %second point
end
if s == 13
p1 = [10;6]; %first point
p2 = [14;6];   %second point
end
if s == 14
p1 = [14;6]; %first point
p2 = [14;10];   %second point
end
if s == 15
p1 = [14;10]; %first point
p2 = [10;10];   %second point
end
if s == 16
p1 = [10;10]; %first point
p2 = [14;10];   %second point
end
if s == 17
p1 = [14;10]; %first point
p2 = [16;10];   %second point
end
if s == 18
p1 = [16;10]; %first point
p2 = [16;10];   %second point
end
%%%%%%%%%88888
if s == 19
p1 = [16;10]; %first point
p2 = [16;8];   %second point
end

if s == 20
p1 = [16;8]; %first point
p2 = [18;8];   %second point
end
if s == 21
p1 = [18;8]; %first point
p2 = [18;10];   %second point
end
if s == 22
p1 = [18;10]; %first point
p2 = [18;6];   %second point
end
if s == 23
p1 = [18;6]; %first point
p2 = [18;10];   %second point
end
if s == 24
p1 = [18;10]; %first point
p2 = [24;10];   %second point

end
if s == 25
p1 = [24;10]; %first point
p2 = [22;6];   %second point
end
if s == 26
p1 = [22;6]; %first point
p2 = [24;10];   %second point
end
if s == 27
p1 = [24;10]; %first point
p2 = [26;10];   %second point
end
if s == 28
p1 = [26;10]; %first point
p2 = [26;6];   %second point
end
if s == 29
p1 = [26;6]; %first point
p2 = [26;10];   %second point
end
if s == 29
p1 = [26;10]; %first point
p2 = [28;10];   %second point
end
if s == 30
p1 = [28;10]; %first point
p2 = [28;8];   %second point
end
if s == 31
p1 = [28;8]; %first point
p2 = [27;8];   %second point
end
if s == 32
p1 = [27;8]; %first point
p2 = [27;10];   %second point
end
if s == 33
p1 = [27;10]; %first point
p2 = [28;10];   %second point
end
if s == 34
p1 = [28;10]; %first point
p2 = [28;6];   %second point
end

for i = 1:k*n 
t_array (i) = sim_time_array(i);
end

%%%%%% trajectory Generation

delta_p = p2 - p1 ; 
if s==1 
    for i = 1:n
         t = t_array (i);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
    end

end

if s==2
    j = 1;
        for i = n+1:2*n
         t = t_array (j);
         p = p1 + t*delta_p ;
 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j = j+1;
        end
    
end
 
   if s==3
       j=1;
    for i = (2*n+1):3*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
    end
   end
   
  if s==4
      j=1;
      for i = (3*n+1):4*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
     end
  end
  
   if s==5
       j=1;
      for i = (4*n+1):5*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
      end
   end
  
   if s==6
       j=1;
      for i = (5*n+1):6*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
     end
   end
   
if s==7
       j=1;
      for i = (6*n+1):7*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
     end
end
   
if s==8
    j = 1;
        for i = (7*n+1):8*n
       t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
        end 
end

if s==9
       j=1;
      for i = (8*n+1):9*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
     end
end
if s==10
    
    j = 1;
     for i = (9*n+1):10*n
        ft = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
     end
end


if s==11
       j=1;
      for i = (10*n+1):11*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
     end
end

if s==12
    
    j = 1;
        for i = (11*n+1):12*n
 t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
        end
end

if s==13
       j=1;
      for i = (12*n+1):13*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
     end
end

if s==14
       j=1;
      for i = (13*n+1):14*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
     end
end



if s==15
       j=1;
      for i = (14*n+1):15*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
     end
end

if s==16
       j=1;
      for i = (15*n+1):16*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
     end
end

if s==17
       j=1;
      for i = (16*n+1):17*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
     end
end

if s==18
   
    j = 1;
        for i = (17*n+1):18*n
  t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
        end
end

if s==19
       j=1;
      for i = (18*n+1):19*n
         t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
     end
end

if s==20
    
    j = 1;
        for i = (19*n+1):20*n
 t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
        end
end



if s==21
     
    j = 1;
        for i = (20*n+1):21*n
 t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
        end
end
if s==22
     
    j = 1;
        for i = (21*n+1):22*n
 t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
        end
end
if s==23
     
    j = 1;
        for i = (22*n+1):23*n
 t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
        end
end
if s==24
     
    j = 1;
        for i = (23*n+1):24*n
 t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
        end
end
if s==25
     
    j = 1;
        for i = (24*n+1):25*n
 t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
        end
end
if s==26
     
    j = 1;
        for i = (25*n+1):26*n
 t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
        end
end
if s==27
     
    j = 1;
        for i = (26*n+1):27*n
 t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
        end
end
if s==28
     
    j = 1;
        for i = (27*n+1):28*n
 t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
        end
end
if s==29
     
    j = 1;
        for i = (28*n+1):29*n
 t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
        end
end
if s==30
     
    j = 1;
        for i = (29*n+1):30*n
 t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
        end
end
if s==31
     
    j = 1;
        for i = (30*n+1):31*n
 t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
        end
end
if s==32
     
    j = 1;
        for i = (31*n+1):32*n
 t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
        end
end
if s==33
     
    j = 1;
        for i = (32*n+1):33*n
 t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
        end
end
if s==34
     
    j = 1;
        for i = (33*n+1):34*n
 t = t_array (j);
         p = p1 + t*delta_p ;

 %all possible x,y coordinates between p1&p2
 px_array(i)= p(1) ;  
 py_array(i)= p(2) ;
 j=j+1;
        end
end

end



        %%%%%%%Calling the inverse kina func to get the two solns of the first pos.
[theta1_1,theta2_1,theta1_2,theta2_2] = IKnFunction(px_array(1),py_array(1),a1,a2);

        %%%%%%%% choosing the first solution for the first pos. 
 theta1_previous = theta1_1 ; theta2_previous = theta2_1 ;  
 
        %%% calling the inverse Kin fn for every point btw p1&p2
for i = 1:k*n 
  
    px = px_array (i); py = py_array(i);
    
    [theta1_1,theta2_1,theta1_2,theta2_2] = IKnFunction(px,py,a1,a2);
    if (((theta1_1 - theta1_previous)^2) - ((theta2_1 - theta2_previous)^2)) < (((theta1_2 - theta1_previous)^2) - ((theta2_2 - theta2_previous)^2))
        theta1 = theta1_1 ; theta2= theta2_1 ;
    else 
        theta1 = theta1_2 ; theta2= theta2_2 ;  
    end
 
    %%%%% saving the value of each theta in the theta array 
        theta1_array(i) = theta1 ; theta2_array(i) = theta2 ;

end 

%%%%%%%%%%%%% Animation 
xAxisArrayXCoords = [0 25];
xAxisArrayYCoords = [0 0];

yAxisArrayXCoords = [0 0];
yAxisArrayYCoords = [0 25]; 

for i = 1:k*n 
    ax= a1*cos(theta1_array(i)); 
    ay= a1*sin(theta1_array(i));

    bx= ax + a2*cos(theta1_array(i)+theta2_array(i));
    by= ay + a2*sin(theta1_array(i)+theta2_array(i));
     tracex_array (i) = bx ; tracey_array (i) = by ; 
     
     link1xcoords = [0 ax];
     link1ycoords = [0 ay];
     link2xcoords = [ax bx]; 
     link2ycoords = [ay by];
     
    plot (xAxisArrayXCoords,xAxisArrayYCoords, 'r',yAxisArrayXCoords, yAxisArrayYCoords,'g');
    hold on ; 
    plot (link1xcoords,link1ycoords, 'b',link2xcoords,link2ycoords, 'c');
    hold on ; 
    plot (tracex_array,tracey_array,'k');
    hold off ; 
    pause (0.05);
end 

for i= 1:k*n
    theta1_array_deg(i) = (theta1_array (i) * 180)/ pi ;
    theta2_array_deg(i) = (theta2_array (i) * 180)/ pi ;
end 
