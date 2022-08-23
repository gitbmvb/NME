function differentiationTaylorSeries(func, xs, i)
  f = str2func(strcat("@(x) ",func));
  h = diff(xs)(1);
  g = (f(xs(i-1)) - 2*f(xs(i)) + f(xs(i+1)))/(h*h);
  disp(g);
endfunction