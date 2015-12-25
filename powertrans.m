function img = powertrans(file)
I = imread(file);
[M,N,X]= size(I);
I = reshape(I,M,N*X);
a = 0;
b = 10;
c = 0.75;
C = c*ones(M,N*X); 
img = a+(b*(double(I).^C));
figure,imshow((reshape(mat2gray(uint8(img)),M,N,X)),[]);
%figure,imhist(I);
%figure,imhist(img);
end