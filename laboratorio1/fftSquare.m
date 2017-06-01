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

%%%%% Onda quadrada
quadrada = A*square(2*pi*frequencia*t);


%Transformada
N = length(quadrada);
k = 0:N-1;
T = N/fs;
freq = k/T;
fftquadrada = fft(quadrada)/N;
cutoff=ceil(N/2);
fftquadrada=fftquadrada(1:cutoff);

figure(1)
subplot(2,1,1);
plot(t, quadrada);
xlabel('Tempo (sec)');
ylabel('Amplitude') ;
title('Onda Quadrada');

subplot(2,1,2);
plot(freq(1:cutoff), abs(fftquadrada));
xlabel('Freq in Hz');
ylabel('[Vs]') ;
title('Dominio da Frequencia');