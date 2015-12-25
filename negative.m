function img = negative(file)
I = imread(file);
[M,N,X]= size(I);
I = reshape(I,M,N*X);
img = 255-I;
figure,imshow(reshape(img,M,N,X));
figure,imhist(I);
figure,imhist(img);
end