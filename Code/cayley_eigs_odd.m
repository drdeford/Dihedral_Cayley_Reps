function are_integers=cayley_eigs_odd(A,L)

n=length(L);

B=zeros(size(A));

for i=1:n
    B=B+block_rep_odd(A,L(i));
end
are_integers=eig(B);

