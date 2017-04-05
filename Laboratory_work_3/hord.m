function [b] = hord( a,b,eps )
  c =a;
  while( abs(our_function(c))>eps)
    c =(a*our_function(b)-b*our_function(a))/(our_function(b)-our_function(a));
    if ( our_function(a)*our_function(c)<0 )
     b = c;
    else 
     a =c;
  end
end