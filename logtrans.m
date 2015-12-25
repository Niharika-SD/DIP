function img = logtrans(file)
I = imread(file);
[M,N,X]= size(I);
I = reshape(I,M,N*X);
a = 1;
b = 30;
c = 1;
img = a+(b*log10(double(I)+c));
figure,imshow((reshape(uint8(img),M,N,X)),[]);
figure,imhist(I);
figure,imhist(uint8(img));
end