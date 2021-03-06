function B=block_rep_even(A,row)

n=size(A);
n=n(1)/2;

b1=A(row,1)*sqrt(2*n);
b2=A(row,2)*sqrt(2*n);
b3=A(row,3)*sqrt(2*n);
b4=A(row,4)*sqrt(2*n);

Bs=zeros(2,2,(n-1));

for k=1:((n-2)/2)
    temp=reshape(A(row,5+(k-1)*4:8+(k-1)*4),2,2)';
    Bs(:,:,2*(k-1)+1 )=temp;
    Bs(:,:,2*(k-1)+2)=temp;
end
Bs=Bs*sqrt(n);


c=num2cell(Bs,[1 2]);

B=blkdiag(c{:});

B(2*n,2*n)=b1;
B(2*n-1,2*n-1)=b2;
B(2*n-2,2*n-2)=b3;
B(2*n-3,2*n-3)=b4;