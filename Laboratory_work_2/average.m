function [ Ih ] = average(a,b,n)
h = (b-a)/n;
Ih = 0;
for i = 1:(n-1)
  x = (a+i*h+a+(i-1)*h)/2;
  F= integralf(x);
  Ih = Ih + F*h;
  end;  
end