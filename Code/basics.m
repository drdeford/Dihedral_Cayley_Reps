n=100;
p=.2;

g1=random_graph(n,p);
g2=random_graph(n,p);
m1=make_rw_l(g1,n);
m2=make_rw_l(g2,n);

deg1=g1*ones(n,1);
deg2=g2*ones(n,1);

M=zeros(n,n,2);

M(:,:,1)=m1;
M(:,:,2)=m2;

D=make_D(M,n,2);

q=.5;

C=simple_hier_C([q,(1-q)],n,2);

CD=C*D;

[Mv,~]=eigs(CD,1);

[m1v,~]=eigs(m1,1);
[m2v,~]=eigs(m2,1);

mS=q*m1+(1-q)*m2;
[MSv,~]=eigs(mS,1);

S=q*g1+(1-q)*g2;
Sm=make_rw_l(S,n);
[Sv,~]=eigs(Sm,1);

%Compressed=sqrt(2)*Mv(1:n);%Mv(1:n)+Mv(n+1:2*n); %was no wieghts .5*((1/.4)*Mv(1:100)+(1/.6)*Mv(101:200));
comp=(1/q)*Mv(1:n)/norm((1/q)*Mv(1:n));


W=zeros(n);%only works for q=.5 right now

for i=1:n
    for j=1:n
        if g1(i,j)==1 && g2(i,j)==1
            W(i,j)=q*deg1(j)+(1-q)*deg2(j);
        end
        if g1(i,j)==1 && g2(i,j)==0
            W(i,j)=(1-q)*deg2(j);
        end
        if g1(i,j)==0 && g2(i,j)==1
            W(i,j)=q*deg1(j);
        end
        
    end
end


Wm=make_rw_l(W,n);

[Wv,~]=eigs(Wm,1);
        

clf
plot(MSv,'b*')
hold on
plot(Sv,'r*')

figure
plot(MSv-Sv,'b*')