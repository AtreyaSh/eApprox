N = 1000;
s = 0;
k = 0;
f = 0;
g = 0;
breaks = 10;

for i=1:N
  while s < 1
   s = s + rand;
   k = k + 1;
  end
  f(i) = k;
  g(i) = mean(f(1:i));
  s = 0;
  k = 0;
end

for i=1:N
  if mod(i,breaks) == 0
    h = figure('visible','off');
    plot(g(1:i), 'linewidth', 1);
    xlim([0 N]);
    ylim([2.6 3.6]);
    hold on;
    plot(0:breaks:N,e^1,"r", 'linewidth', 0.2);
    xlabel("N");
    ylabel(['{mean[f(1:N)]}' sprintf('\n')]);
    legend('mean[f(1:N)]', 'e','location', 'northeastoutside')
    title("Monte-Carlo approximation of e")
    print(h, "-dpng", strcat(pwd, "/results/", num2str(i), "eApprox_", num2str(N), ".png")) 
    disp(g(i));
  endif
end