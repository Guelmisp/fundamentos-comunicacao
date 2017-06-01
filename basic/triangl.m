% Funcao Triangular
% Funcao Triangular é uma funcao de tempo 't'.
% Uso y = triangl(t)
%
% triangl(t) = 1 - |t|   se |t| < 1
% triangl(t) = 0         se |t| > 1

function y = triangl(t)
    y = (1- abs(1)).*(t>=-1).*(t<1);
end