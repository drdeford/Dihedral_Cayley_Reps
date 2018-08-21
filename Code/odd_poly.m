function A=odd_poly(n)

A=zeros(2*n);


A(:,1)=ones(2*n,1);
A(1:n,2)=ones(n,1);
A(n+1:2*n,2)=-ones(n,1);
s=[0 1;1 0];
for k=1:((n-1)/2)
    z=exp(2*pi*1i*k/n);
    r=[z 0;0  z^(-1)];
    for l=0:(n-1)
        temp=r^l;
        A(l+1,3+(k-1)*4)=temp(1,1);
        A(l+1,4+(k-1)*4)=temp(1,2);
        A(l+1,5+(k-1)*4)=temp(2,1);
        A(l+1,6+(k-1)*4)=temp(2,2);
    end
end

for k=1:((n-1)/2)
    z=exp(2*pi*1i*k/n);
    r=[z 0;0  z^(-1)];
    for l=0:(n-1)
        temp=s*r^l;
        A(l+n+1,3+(k-1)*4)=temp(1,1);
        A(l+n+1,4+(k-1)*4)=temp(1,2);
        A(l+n+1,5+(k-1)*4)=temp(2,1);
        A(l+n+1,6+(k-1)*4)=temp(2,2);
    end
end

    
    

