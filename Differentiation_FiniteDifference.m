function finite_difference(xs, ys)
  n = length(xs);
  dx = zeros(1, n);
  dx(1) = (ys(2)-ys(1))/(xs(2)-xs(1));
  dx(n) = (ys(n)-ys(n-1))/(xs(n)-xs(n-1));
  for i = 2:n-1
    dx(i) = (ys(i+1)-ys(i-1))/(xs(i+1)-xs(i-1));
  endfor
  disp(dx);
endfunction