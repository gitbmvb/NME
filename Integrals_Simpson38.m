function simpson38(func, a, b, n)
  if(rem(n,3) == 0)
    f = str2func(strcat("@(x) ", func));
    h = (b-a)/n;
    xs = a:h:b;
    sum1 = sum2 = 0; 
    for i = 2:3:n-1 sum1 += f(xs(i)) + f(xs(i+1)); endfor
    for j = 4:3:n-2 sum2 += f(xs(j)); endfor
    disp(3/8*h*(f(a) + (3*sum1) + (2*sum2) + f(b)));
  else
    fprintf("Erro: '%d' não é divisível por 3.\n", n);
  endif
endfunction