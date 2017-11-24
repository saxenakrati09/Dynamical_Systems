Npre = 200; Nplot = 100; 
x = zeros(Nplot,1);
x1 = zeros(Nplot,1);
for r = 2.5:0.005:4.0, 
  x(1) = rand;
  x1(1) = x(1)+0.001;
  for n = 1:Npre, 
    x(1) = r*x(1)*(1 - x(1));
    x1(1) = r*x1(1)*(1 - x1(1));
  end, 
  for n = 1:Nplot-1, 
    x(n+1) = r*x(n)*(1 - x(n));
    x1(n+1) = r*x1(n)*(1 - x1(n));
    
  end, 
  diff= abs(x-x1);
  for t = 1:1:99
      liap(t) = log(diff(t+1)/diff(t));
  end,
  plot(r*ones(1,99), liap, '.', 'markersize', 2); 
  hold on; 
end, 
title('liapunov diagram of the logistic map'); 
xlabel('r');  ylabel('liapunov values'); 
set(gca, 'xlim', [2.5 4.0]); 
hold off;