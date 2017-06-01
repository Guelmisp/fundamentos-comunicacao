%Laboratorio 1 - Fundamentos de Comunicacoes
% Parte 1

%A = 0.5Vp
A = 0.25;

% frequencia de amostragem
fs = 1000;

% periodo de amostragem
Ts = 1/fs;

% F = 100hz
frequencia = 100;

%intervalo de amostragem
t = 0:Ts:5;
n = length(t);

%%%%% Onda Senoidal
senoide = A*sin(2*pi*frequencia*t);

%Transformada
N = length(senoide);
k = 0:N-1;
T = N/fs;
freq = k/T;
fftSenoide = fft(senoide)/N;
cutoff=ceil(N/2);
fftSenoide=fftSenoide(1:cutoff);

figure(1)
subplot(2,1,1);
plot(t, senoide);
xlabel('Tempo (sec)');
ylabel('Amplitude') ;
title('Onda Senoidal');

subplot(2,1,2);
plot(freq(1:cutoff), abs(fftSenoide));
xlabel('Freq in Hz');
ylabel('[Vs]') ;
title('Dominio da Frequencia');


