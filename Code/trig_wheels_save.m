oddf=figure;
hold on
evenf=figure;
hold on
while 1>0
for i=1:10000
figure(oddf);
clf;
eval(strcat('a',num2str(2*i+1),'=odd_poly_n_trig(',num2str(2*i+1),');'));
eval(strcat('a_eig',num2str(2*i+1),'=eig(a',num2str(2*i+1),');'));
eval(strcat('a=a_eig',num2str(2*i+1),';'));
plot(a,'b*')
title(strcat('n=',num2str(2*i+1)))
xlim([-1 1])
ylim([-1 1])
pause(.1)
figure(evenf);
clf;
eval(strcat('a',num2str(2*i+2),'=even_poly_n_trig(',num2str(2*i+2),');'));
eval(strcat('a_eig',num2str(2*i+2),'=eig(a',num2str(2*i+2),');'));
eval(strcat('a=a_eig',num2str(2*i+2),';'));
plot(a,'b*')
title(strcat('n=',num2str(2*i+2)))
xlim([-1 1])
ylim([-1 1])
pause(.1)
end
end