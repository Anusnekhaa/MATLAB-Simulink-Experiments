clc;
clear;
close all;

% Parameters
N = 10;                  % Number of bits
Tb = 1;                  % Bit duration
fs = 1000;               % Sampling frequency
f0 = 5;                  % Frequency for bit 0
f1 = 10;                 % Frequency for bit 1

% Generate random binary data
bits = randi([0 1], 1, N);

t = 0:1/fs:Tb-1/fs;
signal = [];
received_bits = zeros(1, N);

% FSK Modulation
for i = 1:N
    if bits(i) == 0
        s = cos(2*pi*f0*t);
    else
        s = cos(2*pi*f1*t);
    end
    signal = [signal s];
end

% FSK Demodulation using frequency correlation
for i = 1:N
    segment = signal((i-1)*length(t)+1:i*length(t));

    ref0 = cos(2*pi*f0*t);
    ref1 = cos(2*pi*f1*t);

    score0 = sum(segment .* ref0);
    score1 = sum(segment .* ref1);

    received_bits(i) = score1 > score0;
end

% Plot results
time = (0:length(signal)-1)/fs;

figure;

subplot(3,1,1);
stairs(0:N, [bits bits(end)], 'LineWidth', 1.5);
xlim([0 N]);
ylim([-0.2 1.2]);
title('Original Binary Data');
xlabel('Time (bit intervals)');
ylabel('Bit');
grid on;

subplot(3,1,2);
plot(time, signal);
title('BFSK Modulated Signal');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;

subplot(3,1,3);
stairs(0:N, [received_bits received_bits(end)], ...
    'LineWidth', 1.5);
xlim([0 N]);
ylim([-0.2 1.2]);
title('Demodulated Binary Data');
xlabel('Time (bit intervals)');
ylabel('Bit');
grid on;

% Display results
disp('Original bits:');
disp(bits);

disp('Demodulated bits:');
disp(received_bits);

disp('Successful recovery:');
disp(isequal(bits, received_bits));
