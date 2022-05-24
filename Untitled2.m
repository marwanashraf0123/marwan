clear;
clc;

roboArm.L = [80,80];
roboArm.offset = [0, 0];

plot(0,0,'b*');
axis([-17 17 -17 17]);
hold on;

ind = 1;

delay = 0.05;
numOfSteps = 5;

path = [getLine(5,0,5,10,numOfSteps);
        getLine(5,10,10,10,numOfSteps);
        getLine(10,10,10,0,numOfSteps);
        getLine(10,0,15,0,numOfSteps);
        getLine(15,0,15,5,numOfSteps);
        getLine(15,5,10,5,numOfSteps);
        getLine(10,5,10,10,numOfSteps);
        getLine(10,10,15,10,numOfSteps);
        getLine(15,10,15,5,numOfSteps);
        getLine(15,5,15,0,numOfSteps);
        getLine(15,0,20,0,numOfSteps);
        getLine(20,0,20,10,numOfSteps);
        getLine(20,10,25,10,numOfSteps);
        getLine(25,10,25,0,numOfSteps);
        getLine(25,0,20,0,numOfSteps);
        getLine(20,0,30,0,numOfSteps);
        getLine(30,0,35,0,numOfSteps);
        getLine(35,0,35,5,numOfSteps);
        getLine(35,5,30,5,numOfSteps);
        getLine(30,5,30,10,numOfSteps);
        getLine(30,10,30,5,numOfSteps);
        getLine(30,5,35,5,numOfSteps);
        getLine(35,5,35,10,numOfSteps);
        getLine(35,5,35,10,numOfSteps);
        getLine(35,10,35,0,numOfSteps);
        getLine(35,0,40,0,numOfSteps);
        getLine(40,0,45,10,numOfSteps);
        getLine(45,10,40,10,numOfSteps);
         getLine(40,10,45,10,numOfSteps);
        getLine(45,10,40,0,numOfSteps);
        getLine(40,0,50,0,numOfSteps);
        getLine(50,0,50,10,numOfSteps);
        getLine(50,10,55,10,numOfSteps);
        getLine(55,10,55,5,numOfSteps);
        getLine(55,5,60,5,numOfSteps);
        getLine(60,5,60,10,numOfSteps);
        getLine(60,10,55,10,numOfSteps);
        getLine(55,10,55,5,numOfSteps);
        getLine(55,10,55,5,numOfSteps);
         getLine(55,5,60,5,numOfSteps);
         getLine(60,5,60,0,numOfSteps);
         getLine(60,0,55,0,numOfSteps);
         
                
]  *2.5; 

for n = 1:length(path)
    theta = getikine(roboArm, [path(n,1), path(n,2)],'left');
    P = getfkine(roboArm, theta - roboArm.offset);
    locationX(ind) = P(1);
    locationY(ind) = P(2);
    f(ind)= theta(1);
    g(ind)= theta (2);
    
    ind = ind + 1;
    hold off;
    plot(locationX,locationY,'b');
    hold on;
    grid on;
    plotRobot(roboArm, theta);
    axis([-200 200 -200 200]);
    pause(delay);
end