function A=odd_poly_n_trig(n)

A=zeros(2*n);


A(:,1)=ones(2*n,1)/sqrt(2*n);
A(1:n,2)=ones(n,1)/sqrt(2*n);
A(n+1:2*n,2)=-ones(n,1)/sqrt(2*n);
s=[0 1;1 0];
for k=1:((n-1)/2)
    z=2*pi*k/n;
    for l=0:(n-1)
        temp=[cos(z*l) -sin(z*l);sin(z*l) cos(z*l)];
        A(l+1,3+(k-1)*4)=temp(1,1)/(sqrt(n));
        A(l+1,4+(k-1)*4)=temp(1,2)/(sqrt(n));
        A(l+1,5+(k-1)*4)=temp(2,1)/(sqrt(n));
        A(l+1,6+(k-1)*4)=temp(2,2)/(sqrt(n));
    end
end

for k=1:((n-1)/2)
    z=2*pi*k/n;
    for l=0:(n-1)
        temp=s*[cos(z*l) -sin(z*l);sin(z*l) cos(z*l)];
        A(l+n+1,3+(k-1)*4)=temp(1,1)/(sqrt(n));
        A(l+n+1,4+(k-1)*4)=temp(1,2)/(sqrt(n));
        A(l+n+1,5+(k-1)*4)=temp(2,1)/(sqrt(n));
        A(l+n+1,6+(k-1)*4)=temp(2,2)/(sqrt(n));
    end
end

    
    

