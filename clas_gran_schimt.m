%function[q]=clas_gran_schimt(A)
%Classical Gran_schimt proces, 
%lots of rounding error when rank(A) is small

%A=[2 3 8; 5 6 7; 3 4 6 ];


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


%end