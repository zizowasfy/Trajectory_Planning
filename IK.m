function [q1,q2,q3] = IK(x,y,z)
    L1 = 1; L2 = 1; L3 = 1;     % Robot's Links
    m = -1 ;     % +1 elbow up ; -1 elbow down
    Y = z - L1; 
    X = sqrt(x^2+y^2);
    theta1 = atan2(y,x);
    theta2 = atan2(Y,X) - m * acos((X^2 + Y^2 + L2^2 - L3^2)/(2*L2*sqrt(X^2 + Y^2)));
    theta3 = m * (pi - acos((-(x^2 + y^2) - (z-L1)^2 + L2^2 + L3^2)/(2 * L2 * L3)));
    % theta2 = -m * atan((L3*cos(theta3))/(L2+L3*sin(theta3))) + atan((z-L1)/(sqrt(x^2+y^2)));
    [q1,q2,q3] = deal(theta1,theta2,theta3);
end