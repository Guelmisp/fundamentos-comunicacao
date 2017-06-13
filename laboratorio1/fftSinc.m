%Laboratorio 1 - Fundamentos de Comunicacoes
% Parte 1

%A = 0.5Vp
A = 0.25;

% frequencia de amostragem
fs = 20000000;

% periodo de amostragem
Ts = 1/fs;

% F = 100hz
frequencia = 100000;

%intervalo de amostragem
t = 0:Ts:0.001;
n = length(t);

%%%%% Onda Sinc
sincF = A*sinc(pi*frequencia*t);


%Transformada
N = length(sincF);
k = 0:N-1;
T = N/fs;
freq = k/T;
fftsincF = fft(sincF)/N;
cutoff=ceil(N/2);
fftsincF=fftsincF(1:cutoff);

figure(1)
subplot(2,1,1);
plot(t, sincF);
xlabel('Tempo (sec)');
ylabel('Amplitude') ;
title('Sinal Sinc');

subplot(2,1,2);
plot(freq(1:cutoff), abs(fftsincF));
xlabel('Freq in Hz');
ylabel('[Vs]') ;
title('Dominio da Frequencia');