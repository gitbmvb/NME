function bissecao(func, a, b, max_it, tol)
  clc;
  f = eval(strcat("@(x)\t", func));
  if f(a) * f(b) > 0
    disp("Não há raízes neste intervalo.");
  else
    fprintf("i\ta\tb\txm\tf(xm)\tTol\n");
    for i = 1: max_it 
      pMedio = (a + b)/2;
      tol_test = abs((b-a)/2); 
      fprintf("%1.0f %1.4f %1.4f %1.4f %1.4f %1.4f\n",
      i, a, b, pMedio, f(pMedio), tol_test);
      if tol_test <= tol
        fprintf("====================================");
        fprintf("\nRaiz aproximada: %1.2f\nIterações necessárias: %1.0f\nPrecisão:%2.10f\n", 
        pMedio, i, tol);
        fplot(f);
        title("Gráfico da função");
        xlabel("x");
        ylabel("f(x)");
        grid on;
        break;
      endif      
      if f(pMedio) * f(a) < 0
        b = pMedio;
      else
        a = pMedio;
      endif         
    endfor    
  endif
endfunction
