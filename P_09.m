%{
Practical-08 : 
    Analysis of audio signal in time and frequency doman 
Objective :
    - To understand the recording of audio signal 
    - To understand the method for the analysis of audio signal in time and frequency domain 
Alogorthm :
    1. Specify the sampling frequency, bits/sec and channels for the audio signal 
    2. Create the objecet with specified parameters to record the audio signal
    3. Record the audio signal  
    4. Play the audio signal 
    5. Plot audio signal in time domain 
    6. FFT on audio signal is calculated.
    7. Analize the audio signal in time and frequencyy domain.    
%}

% Write main code here 
clc;
clear all;
close all;
Fs = 44100;
bits = 16;
channels = 1;
r = recordaudio(Fs,bits,channels);
duration = 5;
disp('Rec started ..');
recordblocking(r,duration);
disp('Rec stopped ...');
x=getaudiodata(x);
sound(x,Fs,bits);
t = 0:1/Fs:(length(x)-1)/Fs;


% Plotting the graph 
subplot(2,1,1);
plot(t,x,'linewidth',1.5);
xlabel('Time');
ylabel('Amplitude');
title('Audio signal in time domain');

% Calculatin the FFT of audio signal 
n=lenght(x);
F=0:(n-1)*FS/n;
y=fft(x,n);
Fo = (-n/2:n/2-1).*(Fs/n)
yo = fftshift(y);
Ayo = abs(yo);

% Plotting the audio signal in Freq domain 
subplot(2,1,2);
plot(Fo,Ayo,'linewiidth',1.5);
xlabel('Freq-->');
ylabel('Amplitude-->');
title('Audio signal in freq domain');


