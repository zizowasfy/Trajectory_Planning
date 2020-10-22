function [x,y,z] = FK(L,q)
    L(1) = L1;
    L(2) = L2;
    L(3) = L3;
    q(1) = theta1;
    q(2) = theta2;
    q(3) = theta3;
    
    T_H = RotR("z",theta1) * Trans("z",L1) * RotR("y",theta2) * ...
        Trans("x",L2) * RotR("y",theta3) * Trans("x",L3);
    
    [x,y,z] = deal(T_H(1,4),T_H(2,4),T_H(3,4));
end