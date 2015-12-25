function ImageInterpol (img, M, N)

I = imread(img);
%I1 = rezise(I, [512 512])
[m,n] = size(I);
Image_new = zeros(M,N);
for R = 1:M
    for C = 1:N
        r = floor(R*m/M);
        c = floor(C*n/N);
        if(r == 0);
            r = ceil(R*m/M);
        else
            r = floor(R*m/M);
        end
            if(c == 0)
                c = ceil(C*n/N);
            else
                c = floor(C*n/N);
            end
              Image_new(R,C) = I(r,c);        
     end
end
Image_new = uint8(Image_new);
imshow(Image_new);
end

