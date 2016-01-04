[U,X]=qr(randn(80));

[V,Y]=qr(randn(80));

S=diag(2.^(-1:-1:-80));
A=U*S*V;


