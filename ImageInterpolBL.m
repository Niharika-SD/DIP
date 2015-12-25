function ImageInterpolBL(img, M, N)
I = imread(img);
I= I/255;
[m,n] = size(I);
Image_new = zeros(M,N);
for R = 1:M
    for C = 1:N
        r = R*m/M;
        r2 = ceil(r);
        r4 = ceil(r);
        if (floor(r)~=0)
        r1 = floor(r);
        r3 = floor(r);
        else
           r1 = ceil(r);
           r3 = ceil(r); 
        end
        c = C*n/N;
        c4 = ceil(c);
        c2 = ceil(c);
        if(floor(c)~=0)
        c3 = floor(c);
        c1 = floor(c);
        else
            c3 = ceil(c);
            c1 = ceil(c);
        end
        r5 = r;
        r6 = r; 
        c5 = c1;
        c6 = c3;
        I1 = I(r1,c1)+(((r5-r1)/(r2-r1))*(I(r2,c2)-I(r1,c1)));
        I2 = I(r3,c3)+(((r6-r3)/(r4-r3))*(I(r4,c4)-I(r3,c3)));
        p = I2 + (((c-c6)/(c5-c6))*(I1-I2));
        Image_new(R,C) = p;     
    end
end
imshow(Image_new);
end
