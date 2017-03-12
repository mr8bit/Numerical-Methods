## Copyright (C) 2017 mr8bit

function s=lagrange(x,y,t)
  %Вычисление количества точек в массивах x,y
  n=length(x);
  s=0;
  % Расчет суммы произведений по формуле 2.6 для вычисления значения полинома Лагранжа в точке t
  for k=1:n
    p=1;
    for j=1:n
      if (j~=k)
        p=p*(t-x(j))/(x(k)-x(j));
      end
    end
    s=s+y(k)*p;
  end
end
