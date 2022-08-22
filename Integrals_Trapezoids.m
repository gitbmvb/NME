function trapezoidal(func, a, b, max_it, erro)
  f = str2func(strcat("@(x)",func));
  fprintf("Itr.\tSubintervalos\tTotal\n");
  n = 1;
  for i = 2:max_it
    h = (b-a)/n;
    total(i) = h/2 * (f(a)+f(b)) + h * sum(f(a:h:b));    
    fprintf("%d\t%d\t\t%d\n", i-1, n, total(i));
    n *= 2;  
    if(abs((total(i-1) - total(i))/total(i-1)) < erro)
      break
    endif
  endfor
  fplot(f, [a,b]);  
  grid on;  
endfunction