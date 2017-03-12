## Copyright (C) 2017 mr8bit

r=[0.2935];
x = [0.11 0.15 0.21 0.29 0.35 0.40];
y = [9.05421 6.61659 4.69170 3.3511069 2.73951 2.36522];

n=length(r);

for k=1:n
  Rsl(k)=lagrange(x,y,r(k));
  Rsn(k)=newton(x,y,r(k));
end

Rsl
Rsn
