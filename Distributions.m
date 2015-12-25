%normal distribution plot
x = -3:.01:3;
figure; subplot(2, 1, 1)
plot(x, normpdf(x, 0, 1), x, normpdf(x, 1, 1),...
          x, normpdf(x, 2, 1), x, normpdf(x, 4, 1))
     title('Normal PDF with sigma=1')
     legend('v=0', 'v=1', 'v=2', 'v=4')
subplot(2,1,2)
     plot(x, normpdf(x, 1, 0.25), x, normpdf(x, 1, 0.50),...
          x, normpdf(x, 1, 1.00), x, normpdf(x, 1, 2.00))
      title('Normal PDF with v=1')
     legend('sigma=0.25', 'sigma=0.50', 'sigma=1.00', 'sigma=2.00')  
  
%Poisson distribution plot
x = 0:50;
figure;
plot(x, poisspdf(x, 10), x, poisspdf(x, 20),...
          x, poisspdf(x, 30), x, poisspdf(x, 40));
title('Poisson PDF with v=1')
legend('lambda=1', 'lambda=2', 'lambda=3', 'lambda=4') 


%nakagami plot
colors=['r','g','b'] ;
m = 1;

x = 0:0.05:3;
figure;
for w = 1:3
y = zeros(1,length(x));
for ii = 1:length(x)
y(ii)=((2*m^m)/(gamma(m)*w^m))*x(ii)^(2*m-1)*exp(-((m/w)*x(ii)^2));
 
end
subplot(3,1,w)
plot(x,y,colors(w))
grid on 
end
xlabel('Support'); 
ylabel('PDF'); 
title('nakagami probability density function')
hleg1 = legend('w=1','w=2','w=3');
set(hleg1,'Location','NorthEast')
axis([0 3 0 2]);

%Rayleigh plot
x = 0:0.01:10;
figure;
plot(x, raylpdf(x, 1), x, raylpdf(x, 2),...
          x, raylpdf(x, 3), x, raylpdf(x, 4))
      title('Rayleigh PDF ')
      legend('sigma=1', 'sigma=2', 'sigma=3', 'sigma=4')
      hold;
      
%Gumbel distribution

x = linspace(-3,6,1000);
y2 = gevpdf(x,0,1,0);
y1 = gevpdf(x,0,2,0);
figure;
plot(x,y2,'g',x,y1,'r')
legend('s=1','s=2')
title('Gumbel distribution')


%rician plot 
 x = linspace(0, 8, 100);
 k = 0.25:0.25:1 ;
 m = 1:1:4 ;
 figure;
 for j=1:4
 for i = 1:length(x)
y(i) = ricepdf(x(i), 1, k(j));
 end
 subplot(4,1,j);plot(x,y);
 title('Rice PDF with v = 1')
legend('s=0.25', 's=0.50', 's=1.00', 's=2.00')
 end
 figure;
for j=1:4
 for i = 1:length(x)
y(i) = ricepdf(x(i), m(j),1);
 end
 subplot(4,1,j);plot(x,y);
end
title('Rice PDF with s = 1')
legend('v=1', 'v=2', 'v=3', 'v=4')





