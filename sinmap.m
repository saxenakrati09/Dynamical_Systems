Npre = 800; Nplot = 200; 
x = zeros(Nplot,1); 
for r = 0:0.0005:1, 
  x(1) = 0.5; 
  for n = 1:Npre, 
    x(1) = r*sin(pi*x(1)); 
  end, 
  for n = 1:Nplot-1, 
    x(n+1) = r*sin(pi*x(n)); 
  end, 
  plot(r*ones(Nplot,1), x, '.', 'markersize', 1); 
  hold on; 
end, 
title('Bifurcation diagram of the sin map'); 
xlabel('r');  ylabel('x_n'); 
set(gca, 'xlim', [0 1.0]); 
hold off;