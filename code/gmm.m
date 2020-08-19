clc
clear
load seasuptrix.mat
[row,col]=size(seasuptrix);
sstpre=zeros(row,col+10);
for inputrow=1:row
    
    Z=zeros(col,1);
    X=seasuptrix(inputrow,:);
    K=cumsum(X,2);

    for i=2:col
        Z(i)=(K(i)+K(i-1))/2;
    end
    Z(1)=[];

    B=[-1.*Z,ones(length(Z),1)];
    Y=X(2:end)';

    c=(B'*B)\B'*Y;
    a=c(1);
    b=c(2);

    F=[];F(1)=K(1);
    for j=2:(col+10)
        F(j)=(K(1)-b/a)/exp(a*(j-1))+b/a;
    end

    G = []; G(1) = X(1);
    for k = 2:(col+10)
        G(k) = F(k) - F(k-1); 
    end
    sstpre(inputrow,:)=G;
end  