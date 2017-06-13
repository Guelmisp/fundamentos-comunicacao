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

%%%%% Onda triangular
triangular = A*sawtooth(2*pi*frequencia*t);


%Transformada
N = length(triangular);
k = 0:N-1;
T = N/fs;
freq = k/T;
ffttriangular = fft(triangular)/N;
cutoff=ceil(N/2);
ffttriangular=ffttriangular(1:cutoff);

figure(1)
subplot(2,1,1);
plot(t, triangular);
xlabel('Tempo (sec)');
ylabel('Amplitude') ;
title('Onda Triangular');

subplot(2,1,2);
plot(freq(1:cutoff), abs(ffttriangular));
xlabel('Freq in Hz');
ylabel('[Vs]') ;
title('Dominio da Frequencia');