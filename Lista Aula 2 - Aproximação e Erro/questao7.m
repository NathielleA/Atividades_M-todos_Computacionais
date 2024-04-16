function [ii, f, trueError] = questao7(x, h, trueValue)

  %Estimando a derivada primeira da função fx
  %x = 0.5;
  h = 1;
  trueValue = -0.9125; %Valor verdadeiro (cálculo na mão)

  df = @(x) -0.4*x.^3 - 0.45*x.^2 - x - 0.25;
  trueDerivate = df(0.5);

  xGrf = [];
  yGrf = [];

  disp("Tamanho do passo | Diferença finita | Erro verdadeiro");

  for ii = 0:11
    f = (func(0.5 + h) - func(0.5 - h))/(2*h);
    h = h/10;
    trueError = trueValue - f;

    % Tabela de resultados
    fprintf('       %9d | %.14f | %.14f\n', ii, f, trueError);

    xGrf(ii + 1) = h;
    yGrf(ii + 1) = abs(trueError);
  endfor

  loglog(xGrf, yGrf, "-");

endfunction
