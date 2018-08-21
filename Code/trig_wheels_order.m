oddf=figure;
hold on
evenf=figure;
hold on
while 1>0
for i=1:10000
figure(oddf);
clf;
a=odd_poly_n_trig(2*i+1);
inds=zeros(1,2*i+1);
k=2*i+1;
inds(1)=1;
for z=1:k
    inds(z+1)=k+z;
end

for z=1:k-1
    inds(k+z+1)=z+1;
end



b=a(inds,:);

plot(eig(b),'b*')
title(strcat('n=',num2str(2*i+1)))
xlim([-1 1])
ylim([-1 1])
pause(.5)
figure(evenf);
clf;

a=even_poly_n_trig(2*i+2);
inds=zeros(1,2*i+2);
k=2*i+2;
inds(1)=1;
for z=1:k
    inds(z+1)=k+z;
end

for z=1:k-1
    inds(k+z+1)=z+1;
end



b=a(inds,:);

plot(eig(b),'b*')
title(strcat('n=',num2str(2*i+2)))
xlim([-1 1])
ylim([-1 1])
pause(.5)
end
end