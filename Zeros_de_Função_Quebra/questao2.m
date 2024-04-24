function [result] = questao2()
    f = @(x) x^3 - 9*x + 3;
    a = 0;
    b = 1;

    lim_erro = 0.005;

    fa = f(a);
    fb = f(b);

    fprintf("Iter |   a   |   f(a)   |   b   |   f(b)    |    r   |   f(r)   |   Ea   |\n");

    ii = 0;

    if (fa * fb < 0)
      while (true)
        ii = ii + 1;
        r = b - (fb * (b - a)) / (fb - fa);
        fr = f(r);

        if ii > 1
            eA = abs((r - raiz_a) / r) * 100;
        else
            eA = 100;
        end

        fprintf("%d    %.4f    %.4f    %.4f    %.4f    %.4f    %.4f    %.4f\n", ii, a, fa, b, fb, r, fr, eA);

        if eA < lim_erro
            raiz = r;
            break;
        end

        if fa * fr < 0
            b = r;
            fb = fr;
        else
            a = r;
            fa = fr;
        end
        raiz_a = r;
    end
  end
end
