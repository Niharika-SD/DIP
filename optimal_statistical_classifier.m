function optimal_statistical_classifier(filename,w,N,d)
I = imread(filename);
c = (I(1:end,1)+ I(1:end,2)+I(1:end,3))/3;
[m,n]= size(c);
for i= 1:w
for r=1:m
    for c=1:n
    mu(i) = (1/N(i))*mean(c);
    C(i)=(1/N(i))*(c.*c'-mu(i).*mu(i)');
    mu_vec = mu(i) * ones(m,n);
    exponent = -0.5* ((c-mu_vec)'*pinv(C(i))*(c-mu_vec)');
    posterior(r,c,i) = (1/(sqrt((1/2*pi)^d)* sqrt(det(C(i)))))*exp(exponent);

    end 
end
end
for r=1:m
    for c=1:n
        class(r,c)=max(posterior(r,c,:));
        if(class(r,c))==1
            I(r,c)=a;
        end
        elseif(class(r,c))==2
            I(r,c)=a;