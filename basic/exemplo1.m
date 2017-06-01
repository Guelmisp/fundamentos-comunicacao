% Exemplo de plot de funcao
% y(t) = exp(-t)*sin(6*pi*t)*u(t)

% Tamanho do vetor no eixo X
% t varia de -2 a 3 com incremento 0.01
t = [-2:0.01:3];

%Sinal
y = exp(-t).*sin(6*pi*t).*udegrau(t);

%Plot
figure(1);
fig1 = plot(t,y);
set(fig1, 'Linewidth', 2);

%\it = italico | \bf = boldface
xlabel('\it t');
ylabel('\{\bf y\}\_\{rm time domain\}');

