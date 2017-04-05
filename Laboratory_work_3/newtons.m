function [xi] = newtons (a, b,eps)
  xb = b;
  xa = a;
  
  while(abs(xb) > eps )
    p1 = our_function(xa);
    q1 = df(xa);
    xa -= p1/q1;
    xb = p1
   end
   xi = xb
    
endfunction
