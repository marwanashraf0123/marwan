function [ path ] = getLine( x1, y1, x2, y2, numOfPoints )
    path = zeros(numOfPoints+1, 2);
    for n=1:numOfPoints+1
        path(n,1) = x1 + (n-1)*(x2-x1)/numOfPoints;
        path(n,2) = y1 + (n-1)*(y2-y1)/numOfPoints;
    end
end
