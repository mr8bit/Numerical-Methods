## Copyright (C) 2017 mr8bit

r=[ 0.2935];
x = [0.11 0.15 0.21 0.29 0.35 0.40];
y = [9.05421 6.61659 4.69170 3.3511069 2.73951 2.36522];
n=length(r);
xi = [x(1): 0.01: x(length(x))];
%задание промежyточныx точек для интерполирования

for k=1:length(xi)
  Rsn3(k) = newton(x,y,xi(k));
end;

for k=1:length(x)
  Rsn2(k)=newton(x,y,x(k));
end;

for k=1:length(r)
  Rsn1(k)=newton(x,y,r(k));
end;

hold on

plot(xi, Rsn3,'-r');
plot(r,Rsn1,'+b');
plot (x, y, 'or');
plot( x, Rsn2, 'g-');
title('Интерполяция методом Ньютона');
legend ('на промежyточныx точеках с шагом 0.01', 'значение в искомой точке',
'начальные значения', 'интерполяция на известных точках')
