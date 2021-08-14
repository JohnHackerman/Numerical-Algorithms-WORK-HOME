%Questao 3
%func1 = @(x,y) y*log(x+1); % Primeira EDO
%func2 = @(x,y) y*(x**2 -1); % Segunda EDO
%func3 = @(x,y) 1-(y/x); % Terceira EDO
%---------------------a)


%-------------------------------------
%---------METODO DE EULER-------------
%-------------------------------------


fprintf ('\n\nSolução da Questão 3 pelo metodo de Euler a): Discretização');
func1 = @(x,y) y*log(x+1); % Primeira EDO
  x0 = 0;
  y0 = 1;
  h = 0.1;
  n = 10;
  x0_c = 1;
  y0_c = 1;
  xx = 0:0.1:1;
  xx3 = 1:0.1:2;
  [X1, Y1] = Euler(func1, x0, y0, h, n );
    printTabXY( X1, 'X1', Y1, 'y aprox', '%8.6f', 'Euler');
    A = [Y1];   
%---------------------b)
fprintf ('\n\nSolução da Questão 3 b) metodo de Euler: Discretização');
func2 = @(x,y) y*(x**2 -1); % Segunda EDO
  [X2, Y2] = Euler(func2, x0, y0, h, n );
    printTabXY( X2, 'X2', Y2, 'y aprox', '%8.6f', 'Euler');
     B = [Y2];    
%---------------------c)
fprintf ('\n\nSolução da Questão 3 c) metodo de Euler: Discretização');
func3 = @(x,y) 1-(y/x); % Terceira EDO
   [X3, Y3] = Euler(func3, x0_c, y0_c, h, n );
      printTabXY( X3, 'X3', Y3, 'y aprox', '%8.6f', 'Euler');
      C = [Y3];   
%-------------PLOTANDO A DISCRITAZAO DE A) B) e C)
plot(xx,A,'-r','marker','o','markerfacecolor','r', xx,B,'--b','linewidth',2, xx3,C,'--*k');
title('Funcoes a) b) c) para o metodo Euler','fontsize',20)
axis([0 2 0.4 1.6]);
xlabel('x','fontsize',20);
ylabel('y','fontsize',20);
legend('a)y*log(x+1)','b)y*(x**2 -1)','c)1-(y/x)','location','northeast');
hold on;


%-----------------------------------------------
%---------METODO DE EULER MELHORADO-------------
%-----------------------------------------------


fprintf ('\n\nSolução da Questão 3 a) pelo metodo de Euler Melhorado: Discretização');
func1 = @(x,y) y*log(x+1); % Primeira EDO
  [X1_impvd, Y1_impvd] = EulerMelhorado(func1, x0, y0, h, n );
    printTabXY( X1_impvd, 'X1_impvd', Y1_impvd, 'y aprox', '%8.6f', 'Euler');
    A_impvd = [Y1_impvd];   
%---------------------b)
fprintf ('\n\nSolução da Questão 3 b) pelo metodo de Euler Melhorado: Discretização');
func2 = @(x,y) y*(x**2 -1); % Segunda EDO
  [X2_impvd, Y2_impvd] = EulerMelhorado(func2, x0_c, y0_c, h, n );
    printTabXY( X2_impvd, 'X2_impvd', Y2_impvd, 'y aprox', '%8.6f', 'Euler');
    B_impvd = [Y2_impvd];    
%---------------------c)
fprintf ('\n\nSolução da Questão 3c) pelo metodo de Euler Melhorado: Discretização');
func3 = @(x,y) 1-(y/x); % Terceira EDO
   [X3_impvd, Y3_impvd] = EulerMelhorado(func3, x0_c, y0_c, h, n );
      printTabXY( X3_impvd, 'X3_impvd', Y3_impvd, 'y aprox', '%8.6f', 'Euler');
      C_impvd = [Y3_impvd];   
%-------------PLOTANDO A DISCRITAZAO DE A) B) e C)
figure
plot(xx,A_impvd,'-r','marker','o','markerfacecolor','r', xx,B_impvd,'--b','linewidth',2, xx3,C_impvd,'--*k');
title('Funcoes a) b) c) para o metodo Euler Melhorado','fontsize',20)
%axis([0 2 0.4 1.6]);
xlabel('x','fontsize',20);
ylabel('y','fontsize',20);
legend('a)y*log(x+1)','b)y*(x**2 -1)','c)1-(y/x)','location','northeast');
hold on;


%------------------------------------------------
%---------METODO DE EULER MODIFICADO-------------
%------------------------------------------------


fprintf ('\n\nSolução da Questão 3 a) pelo metodo de Euler Modificado: Discretização');
func1 = @(x,y) y*log(x+1); % Primeira EDO
  [X1_modf, Y1_modf] = EulerModificado(func1, x0, y0, h, n );
    printTabXY( X1_modf, 'X1_modf', Y1_modf, 'y aprox', '%8.6f', 'Euler');
    A_modf = [Y1_modf];   
%---------------------b)
fprintf ('\n\nSolução da Questão 3 b) pelo metodo de Euler Modificado: Discretização');
func2 = @(x,y) y*(x**2 -1); % Segunda EDO
  [X2_modf, Y2_modf] = EulerModificado(func2, x0_c, y0_c, h, n );
    printTabXY( X2_modf, 'X2_modf', Y2_modf, 'y aprox', '%8.6f', 'Euler');
    B_modf = [Y2_modf];    
%---------------------c)
fprintf ('\n\nSolução da Questão 3c) pelo metodo de Euler Modificado: Discretização');
func3 = @(x,y) 1-(y/x); % Terceira EDO
   [X3_modf, Y3_modf] = EulerModificado(func3, x0_c, y0_c, h, n );
      printTabXY( X3_modf, 'X3_modf', Y3_modf, 'y aprox', '%8.6f', 'Euler');
      C_modf = [Y3_modf];   
%-------------PLOTANDO A DISCRITAZAO DE A) B) e C)
figure
plot(xx,A_modf,'-r','marker','o','markerfacecolor','r', xx,B_modf,'--b','linewidth',2, xx3,C_modf,'--*k');
title('Funcoes a) b) c) para o metodo Euler Modificado','fontsize',20)
%axis([0 2 0.4 1.6]);
xlabel('x','fontsize',20);
ylabel('y','fontsize',20);
legend('a)y*log(x+1)','b)y*(x**2 -1)','c)1-(y/x)','location','northeast');
hold on;