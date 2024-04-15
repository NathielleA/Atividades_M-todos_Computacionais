function [result] = questao6 ()

  %Determinar o critério de erro que garante três algarismos significativos
  eS = 0.05 / 100;

  expEuler = 1;
  x = 0.5;

  trueValue = 1.648721;
  exactValue = exp(1)^x;

  eA = 1;
  eT = abs((trueValue - expEuler)/trueValue);

  % Tabela de resultados
  disp('Iteração | Valor Aproximado | Erro Verdadeiro | Erro Absoluto');
  fprintf('%9d | %16.8f | %13.8f | %13.8f\n', 0, expEuler, eT, eA);

  ii = 0;
  while (abs(eA)>=abs(eS)) %loop até que o erro apriximado seja menor que o critério de erro
    ii = ii + 1;
    prevAprox = expEuler;
    expEuler = expEuler + (x^ii)/factorial(ii); %adiciona mais um termo
    eA = abs((expEuler - prevAprox)/expEuler); %calculando o erro aproximado
    eT = abs((trueValue - expEuler)/trueValue); %calculando o erro verdadeiro

    %Exibindo resultados na tabela
    fprintf('%9d | %16.8f | %13.8f | %13.8f\n', 0, expEuler, eT, eA);
  endwhile



endfunction
