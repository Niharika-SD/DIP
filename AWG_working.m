img = imread('rbk.jpg');
r = img(:,:,1);
g = img(:,:,2);
b = img(:,:,3);
rmax = max(max(r));
bmax = max(max(b));
gmax = max(max(g));
alp = gmax/rmax;
bet = gmax/bmax;
img(:,:,1) = alp*r;
img(:,:,3) = b*bet;
figure,imshow(img)
rmax = max(max(r));
bmax = max(max(b));
gmax = max(max(g));
alp = gmax/rmax;
bet = gmax/bmax;
img(:,:,1) = alp*r;
img(:,:,3) = b*bet;
figure,imshow(img)