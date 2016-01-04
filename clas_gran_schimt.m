function[q]=clas_gran_schimt(A)
%Classical Gran_schimt proces, 
%Input matrix A, output the q matrix of 
%QR decomposition




[m,n]=size(A);
q=zeros(m,n);


for i=1:n
 c=A(:,i);
    r=c;
 

 for j=1:(i-1)
 
     r=r-dot(c,q(:,j))*q(:,j);
      
 end
    
    q(:,i)=r/norm(r);
      
end


end