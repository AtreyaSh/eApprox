N = 1000;
s = 0;
k = 0;
f = 0;
g = 0;

for i=1:N
  while s <= 1
   s = s + rand;
   k = k + 1;
  end
  f(i) = k;
  g(i) = mean(f(1:i));
  s = 0;
  k = 0;
end

disp(g(N));
plot(g);