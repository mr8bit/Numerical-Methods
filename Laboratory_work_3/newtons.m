function [x1] = newtons (a, b,eps)
  x0 = a;
  if ( our_function(x0) * ddf(x0) > 0)
    while(1)
      x1 = x0 - our_function(x0)/df(x0);
      if (abs(x1-x0) < eps) 
        x0=x1;
      else 
        break
      endif
    end
  x0 = b;
  if (our_function(x0)*df(x0) > 0)
    while(1)
      x1 = x0 - our_function(x0)/df(x0);
      if (abs(x1-x0) < eps) 
        x0=x1;
      else 
        break
      endif
    end
  else 
    display("Поменяйте начальное приблежение")
  end
  
end
