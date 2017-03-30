function [ Ih ] = simpsons(a, b, n)
  h = (b-a)/n;
  Ih = 0;
  for i = 0:1:(n)
    x=a+i*h;
    F(i+1) = integralf(x);
  end;
  for i = 1:2:(n-2)
    Ih= Ih + h*(F(i)+4*F(i+1)+2*F(i+2));
  end;  
Ih;
end