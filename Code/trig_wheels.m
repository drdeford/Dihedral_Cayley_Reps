oddf=figure;
hold on
evenf=figure;
hold on
while 1>0
for i=500:10000
figure(oddf);
clf;
plot(eig(odd_poly_n_trig(2*i+1)),'b*')
title(strcat('n=',num2str(2*i+1)))
xlim([-1 1])
ylim([-1 1])
pause(.5)
figure(evenf);
clf;
plot(eig(even_poly_n_trig(2*i+2)),'b*')
title(strcat('n=',num2str(2*i+2)))
xlim([-1 1])
ylim([-1 1])
pause(.5)
end
end