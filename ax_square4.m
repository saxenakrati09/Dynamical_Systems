Npre = 2500; Nplot = 200; 
x = zeros(Nplot,1); 
for r = 1.62:0.00005:1.64, 
  x(1) = 1.63; 
  for n = 1:Npre, 
    x(1) = r-x(1)^2; 
  end, 
  for n = 1:Nplot-1, 
    x(n+1) = r-x(n)^2; 
  end, 
  plot(r*ones(Nplot,1), x, '.', 'markersize', 2); 
  hold on; 
end, 
title('Bifurcation diagram of the "a-x^2" map'); 
xlabel('r');  ylabel('x_n'); 
set(gca, 'xlim', [1.62 1.64]);
set(gca, 'ylim', [-2 2]);
hold off;