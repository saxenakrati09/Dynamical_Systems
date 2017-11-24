function f(rin,rout,N_steps,Niterate,dx)       % rin=parameter starting point, rout=parameter end point
Npre = 0.9*Niterate; Nplot = 0.1*Niterate;  %Nsteps for parameter step size, Ninterate for plotting last 10 percent iterates
x = zeros(Nplot,1);
x_near = zeros(Nplot,1);
step = (rout-rin)/N_steps
for r = rin:step:rout, 
  x(1) = 0.5;               % random intial state
  x_near(1)= 0.5+dx;
  for n = 1:Npre, 
    x(1) = r*x(1)*(1 - x(1));
    x_near(1) = r*x_near(1)*(1-x_near(1));
  end, 
  for n = 1:Nplot-1, 
    x(n+1) = r*x(n)*(1 - x(n));
    x_near(n+1) = r*x_near(n)*(1-x_near(n));
    diff= abs(x-x_near);
  end, 
  plot(r*ones(Nplot,1),diff ,'.', 'markersize', 1); 
  hold on; 
end, 
title('Bifurcation diagram of the logistic map'); 
xlabel('parameter values');  ylabel('liapunov exponent'); 
set(gca, 'xlim', [2.5 4.0]); 
hold off;