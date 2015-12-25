img_f = imread('rbk_vgt.jpg');
img_m = imread('vgtfld.jpg');
im = cast(img_f,'double');
im_m = cast(img_m,'double');
for i = 1:3
    img_g(:,:,i) = im(:,:,i)./im_m(:,:);

end

imshow(img_g);