function robot(L,v)

% T_H = RotR("z",theta1) * Trans("z",L1) * RotR("y",theta2) * Trans("x",L2) * RotR("y",theta3) * Trans("x",L3) 
% v  = [theta1 theta2 d3]

% figure;


% view([128.0 15.4])

T1 = RotR("z",v(1)) * Trans("z",L(1));
plot3(0,0,0,'ro','MarkerSize',5,'LineWidth', 5 , 'DisplayName' , 'Joint 0');

hold on
axis([-1 3 -1 3 -1 3])    % Question 3
% view(20,12)           % Question 3
view([-23.25 35.19])
xlabel("x-axis")
ylabel("y-axis")
zlabel("z-axis")
grid on

plot3([0 T1(1,4)],[0 T1(2,4)],[0 T1(3,4)],'-b','LineWidth', 3 , 'DisplayName' , 'Link 1');
plot3(T1(1,4),T1(2,4),T1(3,4),'ro','MarkerSize',5,'LineWidth', 5 , 'DisplayName' , 'Joint 1');


T2 = RotR("z",v(1)) * Trans("z",L(1)) * RotR("y",v(2)) * Trans("x",L(2));
plot3([T1(1,4) T2(1,4)],[T1(2,4) T2(2,4)],[T1(3,4) T2(3,4)],'-g','LineWidth', 4 , 'DisplayName' , 'Link 2');
plot3(T2(1,4),T2(2,4),T2(3,4),'ro','MarkerSize',5,'LineWidth', 5 , 'DisplayName' , 'Joint 2');


T3 = RotR("z",v(1)) * Trans("z",L(1)) * RotR("y",v(2)) * Trans("x",L(2)) * RotR("y",v(3)) * Trans("x",L(3));
plot3([T2(1,4) T3(1,4)],[T2(2,4) T3(2,4)],[T2(3,4) T3(3,4)],'-m','LineWidth', 5 , 'DisplayName' , 'Link 3');
plot3(T3(1,4),T3(2,4),T3(3,4),'ro','Markersize',5,'LineWidth',5 , 'DisplayName' , 'End-Effector');


legend;
end


