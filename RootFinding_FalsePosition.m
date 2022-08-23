function posicao_falsa(func, a, b, max_it, tol)
  close all; clc;
  f = eval(strcat("@(x)\t", func));
  if f(a) * f(b) > 0
    disp("Não há raízes neste intervalo.");
  else
    fprintf("i\ta\tb\txm\tf(xm)\tTol\n");
    for i = 1: max_it 
      x = (a*f(b) - b*f(a))/(f(b) - f(a));
      tol_test = abs(f(x)); 
      fprintf("%1.0f %1.4f %1.4f %1.4f %1.4f %1.4f\n",
      i, a, b, x, f(x), tol_test);
      if tol_test <= tol
        fprintf("====================================");
        fprintf("\nRaiz aproximada: %1.2f\nIterações necessárias: %1.0f\nPrecisão:%2.10f\n", 
        x, i, tol);
        fplot(f);
        title("Gráfico da função");
        xlabel("x");
        ylabel("f(x)");
        grid on;
        break;
      endif      
      if f(x) * f(a) < 0
        b = x;
      else
        a = x;
      endif         
    endfor    
  endif
endfunction
