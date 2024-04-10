function [ii, f, trueError] = questao7(x, h, trueValue)

  %Estimando a derivada primeira da função fx
  x = 0.5;
  h = 1;
  trueValue = -0.9125; %Valor verdadeiro (cálculo na mão)

  xGrf = [];
  yGrf = [];

  fprintf("Tamanho do passo | diferença finita | erro verdadeiro\n");

  for ii = 0:11
    f = (func(x + h) - func(x - h))/2*h;
    h = h/10;
    trueError = trueValue - f;
    fprintf("        %i        |   %e  |      %f\n", ii, f, trueError);

    xGrf(ii + 1) = ii;
    yGrf(ii + 1) = trueError;
  endfor

  plot(xGrf, yGrf, "-");

endfunction
