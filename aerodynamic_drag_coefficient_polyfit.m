drag_data = readmatrix("Semester 1 Week 4 - Computer Practical - assessment - wind tunnel.xlsx");
drag_force = drag_data(:, 2);
velocity = drag_data(:, 1);
velocity_squared = velocity.^2;
coeffs_1 = polyfit(velocity_squared, drag_force, 1);
coeff_drag_linear = (2*coeffs_1(1))/(1.204 * 0.030); 

coeffs_2 = polyfit(velocity, drag_force, 2);
coeff_drag_quadratic = (2*coeffs_2(1))/(1.204 * 0.030);
