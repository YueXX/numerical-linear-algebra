function [Q,R] = house( A )
% Househoulder algorithm
% The input is matrix A, output R is the upper triangular matrix, Q is 
% the orthogonal matrix
A=[1 2 3; 2 3 4; 3 4 6];
[m,n]=size(A);

q=eye(m);
for k=1:n
    
  x=A(k:m,k);
  
  e=[1;zeros(n-k,1)];
  
  xe=sign(x(1))*norm(x)*e;
  v=xe + x;
  
  v=v/norm(v);
  
  % Some problem right here
  A(k:m,k:n)= A(k:m,k:n)-2*v*(v'* A(k:m,k:n));
  
  
  q=eye(k)-2*v*v';
  Q=q/norm(q);
  R=A;
    
end







end

