function [result] = questao6 (expEuler, x, trueValue, trueError, relativedError eA)

  %Determinar o critério de erro que garante três algarismos significativos
  eS = percet(0,5 × 102−3)
  
  expEuler = 1;
  x = 0.5;

  trueValue = 1.648721;
  exactValue = exp(1)^x;


  ii = 0;
  while (abs(estimatedError)<eS)
    ii = ii + 1;
    expEuler = expEuler + (x^ii)/factorial(ii);
    eA =
  endwhile

endfunction
