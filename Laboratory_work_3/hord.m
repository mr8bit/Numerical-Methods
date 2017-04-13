function [b] = hord( a,b,eps )
  while(abs(b - a) > eps)
        a = b - (b - a) * our_function(b)/(our_function(b) - our_function(a));
        b = a + (a - b) * our_function(a)/(our_function(a) - our_function(b));
   end 
    
end