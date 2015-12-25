function img = piece_lin(file)
I = imread(file);
[M,N,X]= size(I);
I = reshape(I,M,N*X);
m =(2^8)/(2^16-2^8);
for i =1:M
    for j= 1:N*X
        if(I(i,j)< (2^8)-1);
            I(i,j)=0;
        elseif(I(i,j) > (2^14)-1)
            I(i,j)= (2^8)-1;
        else
        end
    end
end         
img = a+(b*(double(I).^C));
figure,imshow((reshape(mat2gray(uint8(img)),M,N,X)),[]);
figure,imhist(I);
figure,imhist(img);
end