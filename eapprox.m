N = 1000000;
s = 0;
k = 0;
f = 0;

for i=1:N
  while s <= 1
    s = s + rand;
    k = k + 1;
   end
f(i) = k;
s = 0;
k = 0;
end

# disp(f)
disp(mean(f))