% 5a determine the DFT of a given sequnece using MATLAB and plot it's real and imaginary part
% Objs :
%{
    - To recognize the necessity of conversion of time-domain signal into frequency domain signal 
    - To extract various frequency components in the given signal for the designing the LTI systems

Algo  :
-------
    1. Read the input sequence 
    2. Read the length(N) of DFT
    3. Calculate the DFT X(k) for k = 0
            for n = 0 : N-1
    4. Repeat the step3 upto k = N-1
    5. Sep real and img valules
    6. Plot the respective graphs 

    %}

N=input('Enter the value of N    : ');
x=input('Enter the sequnece x(n) : ');
t=0:N-1;

% Plot-01 
subplot(3,3,1);
stem(t,x);
xlabel('Time');
ylabel('Amplitude');
title('Input Signal');

% DFT 
y=fft(x,N);
yr = real(y);
yi = imag(y);

% Plot the real part and imag part
subplot(3,1,2);
stem(t,yr);
xlabel('Time');
ylabel('Amps');
title('Output Signal Real');

subplot(3,1,3);
stem(t,yi);
xlabel('Time');
ylabel('Output signal Img');

