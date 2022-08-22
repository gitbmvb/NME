function simpson13(func, a, b, n)
  if(rem(n,2) == 0)
    f = str2func(strcat("@(x) ", func));
    h = (b-a)/n;
    xs = a:h:b;
    sum1 = sum2 = 0; 
    for i = 2:2:n sum1 += f(xs(i)); endfor
    for j = 3:2:n-1 sum2 += f(xs(j)); endfor
    disp(h/3 * (f(a) + (4*sum1) + (2*sum2) + f(b)));
  else
    fprintf("Erro: '%d' não é um número par.\n", n);
  endif
endfunction