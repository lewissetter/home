%% ZinSITL: plot Z_in for a simi-infinite transmission line carrying a sinusoid
%
% user specified variables:
%   - Z_0: charcteristic impedance of the line
%   - l: length of the line wavelengths of the transmitted wave
%   - Z_L: load impedance
%
% usage:
% When a user sets the specified inputs, the program produces plots
% of the magnitue and phase of the input impedance of a corresponding
% semi inifinite transmission line up to the desired length.

% user specified inputs
Z_0 = 50; l = 5; Z_L = 10+j20;

% compute Z_in
lVals = 0:l/1000:l;
Z_in = Z_0 * (Z_L + 1j*Z_0*tan(2*pi*lVals)) ./ (Z_0 + 1j*Z_L*tan(2*pi*lVals));

% create plots
figure
subplot(2,1,1)
plot(lVals,abs(Z_in))
ylabel('|Z_{in}|')
subplot(2,1,2)
plot(lVals,angle(Z_in)*180/pi)
ylabel('\angle Z_{in}')
xlabel('\lambda from generator')
    