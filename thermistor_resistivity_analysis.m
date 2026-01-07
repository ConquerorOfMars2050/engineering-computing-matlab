rhomatrix = readmatrix("Semester 1 Week 10 - thermistor.xlsx");
temperature = rhomatrix(:, 1);
rho = rhomatrix(:, 2);
temperaturemin = min(temperature);
rhomin = min(rho);
X = temperature .^5;
coeffs = polyfit(X, rho, 1);
fprintf("The lowest temperature is %g.\n", temperaturemin)
fprintf("The resistivity value cooresponding to the lowest temperature is %g.\n", rhomin);
fprintf("The intercept is %g.\n", coeffs(2));
fprintf("The gradient is %g.\n", coeffs(1));
Ttheor = [0:0.4:40];
rhotheor = coeffs(2) + (coeffs(1) .* ((Ttheor).^5));
Xtheor = Ttheor .^5;

fgr = figure;
tly = tiledlayout(1, 2);
ax1 = nexttile(tly, 1);
plot(ax1, temperature, rho, Ttheor, rhotheor);
xlabel("Measured Temp. / Theor. Temp.");
ylabel("Measured Resistivity / Theoretical Resistivity");

ax2 = nexttile(tly, 2);
plot(ax2, X, rho, Xtheor, rhotheor);
xlabel("Measured Temp. / Theor. Temp. pow(5)");
ylabel("Measured Resistivity / Theoretical Resistivity");
