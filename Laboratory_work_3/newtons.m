function [x1] = newtons (a, b,eps)
  x0=a;
  if ( our_function(x0)*ddf(x0) > 0)
    x1=x0-our_function(x0)/df(x0); 
      while (abs(x0-x1)>e)
        x0=x1; 
        x1=x0-our_function(x0)/df(x0)
    end 
   end
  x0 = b;
  if (our_function(x0)*df(x0) > 0)
    x1=x0-our_function(x0)/df(x0); 
      while (abs(x0-x1)>e)
        x0=x1; 
        x1=x0-our_function(x0)/df(x0)
    end 
  end
end
