a=1; b=2; p=4; eps = 0.1;
Ih1 = simpsons(a,b,1);
Ih2 = simpsons(a,b,2);
R= abs((Ih1-Ih2)/(2^p-1));
n =1;
while (R > eps)
  Ih1 = Ih2;
  n = n+1;
  Ih2 = simpsons(a,b,2^n);
  R = abs((Ih1-Ih2)/(2^p-1));
end;
display("Количесвто итераций")
n  
display("Значение")
Ih2