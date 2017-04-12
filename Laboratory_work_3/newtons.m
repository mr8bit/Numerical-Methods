function [x0] = newtons (a, b,eps)
  x0=a;
  if ( our_function(x0)*ddf(x0) > eps)
    while 1
      x1 = x0 - our_function(x0)/df(x0);
      if (abs(x1-x0) < eps)
        display(x1);
        break;
      else 
        x0=x1;
      end
    end
   end
  if (our_function(x0)*df(x0) > 0)
    while 1
      x1 = x0 - our_function(x0)/df(x0);
      if (abs(x1-x0) < eps)
        display(x1);
        break;
      else 
        x0=x1;
      end
    end
  end
end
