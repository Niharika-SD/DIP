img = imread('IMGP8132.jpg');
img2 = imread('IMGP7967.JPG');
i = imhistmatch(img,img2);
figure,imshow(i);
figure,imshow(img2);
figure,imhist(i);
figure,imhist(img2);