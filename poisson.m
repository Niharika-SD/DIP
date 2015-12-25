%Poisson distribution plot
x = 0:50;
figure;plot(x, poisspdf(x, 10), x, poisspdf(x, 20),...
          x, poisspdf(x, 30), x, poisspdf(x, 40))
title('Poisson PDF with v=1')
legend('lambda=1', 'lambda=2', 'lambda=3', 'lambda=4') 

