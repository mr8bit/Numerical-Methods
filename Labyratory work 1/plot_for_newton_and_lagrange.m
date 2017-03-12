## Copyright (C) 2017 mr8bit

r=[ 0.2935];
x = [0.11 0.15 0.21 0.29 0.35 0.40];
y = [9.05421 6.61659 4.69170 3.3511069 2.73951 2.36522];
n=length(r);
xi = [x(1): 0.01: x(length(x))];
%задание промежyточныx точек для интерполирования

for k=1:length(r)
  Rsn1(k)=newton(x,y,r(k));
end;

for k=1:length(xi)
  Rsn3(k) = newton(x,y,xi(k));
end;

for k=1:length(r)
  Rsl1(k)=lagrange(x,y,r(k));
end;

for k=1:length(xi)
  Rsl3(k) = lagrange(x,y,xi(k));
end;
disp("Значение в точке r")
disp("Методом ньютона")
Rsn1
disp("Методом Лагранжа")
Rsl1


disp("Значения промежyточныx точках")
disp("----------")
disp("Число точек")
length(xi)
disp("----------")
disp("Методом ньютона")
Rsn3
disp("Методом Лагранжа")
Rsl3


hold on

plot(r,Rsn1,'or');
plot(r,Rsl1,'+b');
plot(xi, Rsn3,'-r');
plot(xi, Rsl3,'--b');
