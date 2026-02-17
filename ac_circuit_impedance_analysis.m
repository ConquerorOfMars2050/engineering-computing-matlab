% AC Circuit Impedance Analysis
% Calculates total complex impedance of an RLC circuit (Resistor, Inductor, Capacitor)

% System Parameters
R = 50;          % Resistance in Ohms
L = 10e-3;       % Inductance in Henries (10mH)
C = 100e-12;     % Capacitance in Farads (100pF - Typical readout capacitance)
f = 1e6;         % Frequency in Hz (1 MHz signal)

% Angular Frequency
omega = 2 * pi * f;

% Calculate Complex Impedances (Z = R + jX)
Z_R = R;                        % Resistor (Real component)
Z_L = 1j * omega * L;           % Inductor (Positive Imaginary)
Z_C = 1 / (1j * omega * C);     % Capacitor (Negative Imaginary)

% Case 1: Components in Series
Z_series = Z_R + Z_L + Z_C;

% Case 2: Components in Parallel (Inverse Sum)
Z_parallel = 1 / ( (1/Z_R) + (1/Z_L) + (1/Z_C) );

% Convert to Polar Form for Magnitude/Phase Analysis
magnitude = abs(Z_series);
phase_angle = angle(Z_series) * (180/pi);

% Output Results
disp(['Total Series Impedance magnitude: ', num2str(magnitude), ' Ohms']);
disp(['Phase Shift: ', num2str(phase_angle), ' degrees']);
