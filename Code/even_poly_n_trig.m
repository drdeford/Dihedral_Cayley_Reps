function A=even_poly_n_trig(n)

A=zeros(2*n);


A(:,1)=ones(2*n,1);
A(1:n,2)=ones(n,1);
A(n+1:2*n,2)=-ones(n,1);

for i=1:n
    if mod(i-1,2)==0
        A(i,3:4)=ones(1,2);
    end
    
    if mod(i-1,2)==1
        A(i,3:4)=-ones(1,2);
    end
end

for i=1:n
        if mod(i-1,2)==0
        A(i+n,3)=1;
        A(i+n,4)=-1;
        end
    
    if mod(i-1,2)==1
        A(i+n,3)=-1;
        A(i+n,4)=1;
    end
end
    
    

A(:,1:4)=A(:,1:4)/sqrt(2*n);


s=[0 1;1 0];




for k=1:((n-2)/2)
        z=2*pi*k/n;
    for l=0:(n-1)
        temp=[cos(z*l) -sin(z*l);sin(z*l) cos(z*l)];
        A(l+1,5+(k-1)*4)=temp(1,1)/(sqrt(n));
        A(l+1,6+(k-1)*4)=temp(1,2)/(sqrt(n));
        A(l+1,7+(k-1)*4)=temp(2,1)/(sqrt(n));
        A(l+1,8+(k-1)*4)=temp(2,2)/(sqrt(n));
    end
end



for k=1:((n-2)/2)
        z=2*pi*k/n;
    for l=0:(n-1)
        temp=s*[cos(z*l) -sin(z*l);sin(z*l) cos(z*l)];
        A(l+n+1,5+(k-1)*4)=temp(1,1)/(sqrt(n));
        A(l+n+1,6+(k-1)*4)=temp(1,2)/(sqrt(n));
        A(l+n+1,7+(k-1)*4)=temp(2,1)/(sqrt(n));
        A(l+n+1,8+(k-1)*4)=temp(2,2)/(sqrt(n));
    end
end

    
    

