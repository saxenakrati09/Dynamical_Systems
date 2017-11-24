close all, clear all, clc
avalues=0:0.005:4;

N=1200;
for a=avalues
   x0=rand(1);
   % x0=0.1;
    x=x0;
    for n=1:1000
        x=a*x*(1-x);
    end
    for n=1000:N
        x=a*x*(1-x);
        plot(a,x)
        % plot(a,x,'o','MarkerSize',1)
        hold on
    end
end