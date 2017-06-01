% Degrau unitario
% Funcao degrau unitario é uma funcao de tempo 't'.
% Uso y = udegrau(t)
%
% udegrau(t) = 0    se t <  0
% udegrau(t) = 1    se t >= 1

function y = udegrau(t)
    y = (t >= 0); 
end