function [result] = questao6 ()

  %Determinar o critério de erro que garante três algarismos significativos
  eS = 0.05 / 100;

  expEuler = 1;
  x = 0.5;

  trueValue = 1.648721;
  exactValue = exp(1)^x;

  eA = 1;
  eT = 0;

  ii = 0;
  while (abs(eA)>=abs(eS)) %loop até que o erro apriximado seja menor que o critério de erro
    ii = ii + 1;
    prevAprox = expEuler;
    expEuler = expEuler + (x^ii)/factorial(ii) %adiciona mais um termo
    eA = abs((expEuler - prevAprox)/expEuler) %calculando o erro aproximado
    eT = abs((trueValue - expEuler)/trueValue) %calculando o erro verdadeiro
  endwhile

endfunction
