%Sine Wave
clc;
clear all;
close all; 

t=0:0.1:pi;
y1=sin(2*pi*t);
subplot(3,3,1);
plot(t,y1);
ylabel('Voltage(Volts)->');
xlabel('(a)time(Sec)->');
title('SINE SEQUENCE');

%Cosine Wave
clc;
t=0:0.1:pi;
y2=cos(2*pi*t);
subplot(3,3,2);
plot(t,y2);
ylabel('Voltage(Volts)->');
xlabel('(b)time(Sec)->');
title('COSINE SEQUENCE');

% Sine + Cosine Wave
Z = y1 + y2;
subplot(3,3,3);
plot(t,Z);
ylabel('Voltage(Volts)->');
xlabel('(b)time(Sec)->');
title('COSINE SEQUENCE');


% Ramp Signal
clc;
n1=input('Enter the length of the ramp signal:');
t=0:n1;
subplot(3,3,4);
stem(t,t);
ylabel('Voltage(Volts)->');
xlabel('(c)N->');
title('RAMP SEQUENCE');

% Exponential Signal.
clc;
n2=input('Enter the length of the exponential sequence:');
t=0:n2;
a=input('Enter  the "a" value:');
y2=exp(a*t);
subplot(3,3,5);
plot(t,y2);
ylabel('Voltage(Volts)->');
xlabel('(d)N->');
title('EXPONENTIAL SEQUENCE');

% Unit Step Sequence
clc;
n3=input('Enter the length of the unit sequence:');
t=0:1:n3-1;
y1=ones(1,n3);
subplot(3,3,6);
stem(t,y1);
ylabel('Voltage(Volts)->');
xlabel('(e)N->');
title('UNIT STEP SEQUENCE');

% Unit Impulse  signal.
clc;
t=-5:5;
y=[zeros(1,5),ones(1,1),zeros(1,5)];
subplot(3,3,7);
stem(t,y);
ylabel('Voltage(Volts)->');
xlabel('(f)N->');
title('UNIT IMPULSE SEQUENCE');

