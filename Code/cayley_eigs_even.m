function are_integers=cayley_eigs_even(A,L)

n=length(L);

B=zeros(size(A));

for i=1:n
    B=B+block_rep_even(A,L(i));
end

are_integers=sort(eig(B));%wasn't sorted before

