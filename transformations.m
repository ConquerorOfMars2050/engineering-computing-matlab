P = [4 0 0 4 4 4 3.2 3.2 3   3   2 0;
     0 0 3 3 0 3 3.4 3.9 3.9 3.5 4 3];
figure; axis equal; grid on; hold on; 
plot(P(1,:), P(2,:), '-o', 'LineWidth', 1.5,'DisplayName','Original shape');
title('Matrices as transformations'); xlabel('x'); ylabel('y');
legend;
M = [2 0;
     0 -2]
S = [4 0;
     0 10]
angle = deg2rad(-50);
R = [cos(angle) -sin(angle)
     sin(angle)  cos(angle)]

A = [-1 0.5;
     0.5 -1];
T = inv(A)

B = R*S
