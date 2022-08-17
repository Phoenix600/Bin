%{
Practical -08 : Echo addition and removal of echo in an audio signal using MATLAB 
Objective : 
	- To understnd the effect of echo on the audio signal 
	- To design a system to add and remove echo from the audio signal 

Algorithm :
-----------
	1. Read the audio file 
	2. Play the orignal audio sampling frequency
	3. Adding echo with the help of filter coefficients 
	4. Play the audio to check wheather the noise is added or not 
	5. Remove the echo with help of filter coeffcients 
	6. Play the audio to check wheather the echo is removed or not 
%}

% Wirte main code here 
clc;
clear all;
close all;

Fs = 44100;
y = audioread("nokia.mp4");
p = audioplayer(y,Fs);
play(p);

num = [1,zeros(1,4800),0.8];
den = [1];
x= filter(num,den,y);
p = audioplayer(x,fs);
%play(p);
%stop(p);

% Removing Echo : 
num = [1];
den = [1,zeros(1,4800),0.8];
r = filter(num,den,y);
p = audioplayer(r,Fs);
%play(p)
%stop(p);

