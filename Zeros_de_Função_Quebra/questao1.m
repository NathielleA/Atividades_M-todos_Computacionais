function [outputArg1,outputArg2] = questao1(x, a, b)
    %(raiz, fx, ea, iteração)

    %Função
    f = @(x) sin(x) - (x)^2;

    %Limite de erro (eS)
    eS = 2/100;
    eA = 1;

    %Definindo o intervalo inicial [a, b]
    a = 0.5;
    b = 1;

    %Calculando os valores da função nos limites do intervalo
    fa = f(a);
    fb = f(b);

    x0 = (a + b)/2;
    fx0 = f(x0);

    ii = 0;
    oldX0 = x0;

    fprintf("Iter |   a   |   f(a)   |   b   |   f(b)   |   r   |   f(r)   |   Ea   |\n");
    fprintf("%d    %.4f    %.4f    %.4f    %.4f    %.4f    %.4f    %.4f\n", ii, a, fa, b, fb, x0, fx0, eA);

    if ((fa * fb) < 0)
        while (eA >= eS)
          ii = ii + 1;
          x0 = (a + b)/2;
          fx0 = f(x0);

          if (ii > 1)
            eA = abs((x0 - oldX0) / x0) * 100;
          else
            eA = 1;
          endif

          fprintf("%d    %.4f    %.4f    %.4f    %.4f    %.4f    %.4f    %.4f\n", ii, a, fa, b, fb, x0, fx0, eA);

          if ((fa * fx0) < 0)
             b = x0;
          else if ((fa * fx0) > 0)
             a = x0;
          end

          fa = f(a);
          fb = f(b);

          oldX0 = x0;
        end
    end

end
