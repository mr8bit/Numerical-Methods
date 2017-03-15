## Copyright (C) 2017 mr8bit

% x — массив абсцисс экспериментальных точек, y — массив ординат
% экспериментальных точек, t — точка в которой требуется найти значение.
function z=newton(x,y,t)
  N=length(x);
  s=0;
  for i=1:N
    f(i,1) = y(i);
  end;
  for k=2:N
    for i=1:N-k+1
      f(i,k) = (f(i+1,k-1) - f(i,k-1))/(x(i+k-1)-x(i));
    end;
  end;
  s = y(1);
  for k=2:N
    r=1;
    for i=1:k-1
      r=r.*(t-x(i));
    end;
    s = f(1,k)*r+s;
  end;
  z=s;