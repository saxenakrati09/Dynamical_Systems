close all, clear all  clc
avalues=3:0.0001:4;

N=1000;
for a=avalues
   x(1)=rand(1);
   % x0=0.1;
    for n=1:N
        x(n+1)=a*x(n)*(1-x(n));
    end
    for i=1:N
        y(i)=log(a*(1-2*x(i)))/2.3025;
    end
        z=sum(y);
        v=z/N;
        plot(a,v)
        % plot(a,x,'o','MarkerSize',1)
        hold on
end        