function [ Ih] = trapeze(a,b,n)
  h = (b-a)/n;
  Ih = 0;
  for i = 0:1:(n-1)
    x=a+i*h;
    F = integralf(x);
    if (i == 0 || i == n-1)
      Ih = Ih + h*F/2;
    end;
    Ih= Ih + h*F;
   end;
end