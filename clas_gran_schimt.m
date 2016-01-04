function[q,R]=clas_gran_schimt(A)
%Classical Gran_schimt proces, 
%Input matrix A, output the q matrix of 
%QR decomposition




[m,n]=size(A);
q=zeros(m,n);


for i=1:n
 c=A(:,i);
    r=c;
 

 for j=1:(i-1)
 
     R(j,i)=dot(c,q(:,j));
     r=r-dot(c,q(:,j))*q(:,j);
      
 end
    R(i,i)=norm(r);
    q(:,i)=r/norm(r);
      
end


end