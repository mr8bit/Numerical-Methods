function [ x ] = poldel( a,b,eps )
% Метод дихотомии
a1 = a;
b1 = b;
x = (a+b)/2;
while (b1-a1>=eps)
  f1 = our_function(a1);
  f3 = our_function(x);
  if(f3 == 0 )
    display(x);
    break
  end
  if (f1*f3 < 0)
    b1 = x;
  else
    a1 = x;
  end
  x = (a1+b1)/2;
end;
end