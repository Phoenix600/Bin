clc; % Clear command Prompt.
clear all;
close all;
syms t w %creating t and w as symbol
x = t *exp(-3*t) * heaviside(t); % heaviside(t) is a function to represent unit step signal
X= fourier(x,w); % fourier transform of x with respect to w. 
 
w = -20 : 0.1 : 20; %  range of w for the magnitude and phase plot.
X = subs(X,w); % substitute value of w in X which is FT of x.

subplot(2,2,1);
X1=abs(X);
plot(w,X1,'-r');
grid on;
ylabel('Amplitude w.r.t. frequency');
xlabel('Frequency in radians');
title('Amplitude plot1');
 
subplot(2,2,2);
X2=angle(X);
plot(w,X2,'-b');
grid on;
xlabel('Frequency in radians');
ylabel('Phase w.r.t. frequency');
title('Phase plot');
 
subplot(2,2,3);
X3=real(X);
plot(w,X3,'-y');
grid on;
xlabel('Frequency in radians');
ylabel('real part');
title('real part of X');
 
subplot(2,2,4);
X4=imag(X);
plot(w,X4,'-g');
grid on;
xlabel('Frequency in radians');
ylabel('imaginary part');
title('imaginary part of X');
