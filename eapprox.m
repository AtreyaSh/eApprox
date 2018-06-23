N = 100000;
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

n = log10(N);
n = [1:n];
for i = 1:length(n)
n(i) = 10^(n(i))
end

for i=1:length(n)
h = figure();
plot(g, 'linewidth', 1);
xlim([0 n(i)]);
hold on;
plot(0:n(i)/100:n(i),e^1,"r", 'linewidth', 0.2);
xlabel("N");
ylabel(['{mean[g(N)]}' sprintf('\n')]);
legend('mean[g(N)]', 'e','location', 'northeastoutside')
title("Monte-Carlo approximation of e")
print(h, "-dpng", strcat("eApprox_", num2str(n(i)), ".png")) 
disp(g(n(i)));
end