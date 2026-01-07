% Given the following complex numbers
z1 = 2 + 2j;
z2 = 2j;
% Complete the tasks set out in the instructions

compassplot(z1);
hold on
compassplot(z2);
hold on
compassplot(z1*z2);
hold on 
compassplot(z1 / z2);
hold off
legend(["z1", "z2", "z1*z2", "z1/z2"])
