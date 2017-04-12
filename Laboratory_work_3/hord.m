function [b] = hord( a,b,eps )
  c =a;
  while( abs(our_function(c))>eps)
    c = a - (b-a) / (our_function(b) - our_function(a)) * our_function(a);
    b=c;
  end
end