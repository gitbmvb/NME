function [ans] = lagrange(X, Y, value)
  if value < min(X) || value > max(X)
    disp("Erro: O valor está fora do intervalo de interpolação.");
  else
    n = size(X, 2);
    str = "@(x)\t";
    for i = 1:n
      for j = 1:n
        if j != i
          str = strcat(str,
          sprintf("(x-%d)/(%d) * ", X(1,j), (X(1,i) - X(1,j))));
        endif
      endfor
      str = strcat(str, sprintf(" %d + ", Y(1,i)));
    endfor
    f = str2func(str(1:length(str)-2));
    #fplot(f, [min(X), max(X)]);
    #grid on;
    ans = f(value);
  endif
endfunction