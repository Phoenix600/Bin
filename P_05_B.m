clc;
clear all;
close all;

% Taking inputs
N=input('Enter the value of N=');
y=input('Enter the sequence Y[K]=');

% To seperate real and imaginary part
yr=real(y);
yi=imag(y);

% Defining range for t
t=0:N-1;

% To plot real part of DFT
subplot(3,1,1);
stem(t,yr);
xlabel('TIME');
ylabel('AMPLITUDE');
title('INPUT SIGNAL');
grid on;

% To plot imaginary part of DFT
subplot(3,1,2);
stem(t,yi);
xlabel('TIME');
ylabel('AMPLITUDE');
title('INPUT SIGNAL');
grid on;

% To calculate IDFT of y(k)
x=ifft(y,N);

% to plot real part
subplot(3,1,3);
stem(t,x);
xlabel('TIME');
ylabel('AMPLITUDE');

title('OUTPUT SIGNAL');
grid on;
