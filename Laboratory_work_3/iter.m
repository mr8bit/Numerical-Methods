function X=iter(A,B,eps)
% Решение системы уравнений AX=B 
% методом простых итераций
% A - матрица системы уравнений
% b - вектор столбец свободных членов
% norma - норма матрицы А
% eps - точность численного решения
delta=eps*(1-our_function(A))/our_function(A);
X0=B; % Задание начального приближения
X1=A*X0+B;
while our_function(X1-X0)>delta
  X0=X1;
  X1=A*X0+B;
end;
X=X1;
endfunction