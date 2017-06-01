% Funcao Retangular
% Funcao Retangular é uma funcao de tempo 't'.
% Uso y = rect(t)
%
% rect(t) = 1    se |t| < 0.5
% rect(t) = 0    se |t| > 0.5

function y = rect(t)
    y = (sign(t+0.5) - sign(t-0.5) > 0);
end