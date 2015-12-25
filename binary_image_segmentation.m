%clear all
%binary image segmentation

A = imread('test_petapixel.jpg');
k = imhist(A,256)/numel(A);
T=zeros(1,255);
T(1) =254;
for i = 1:255;
    num1 =0;
    den1 = 0;
    num2 =0;
    den2 =0;
    T(i)
    for l = 1:(T(i)-1)
     num1  = num1 + l*k(l);
     den1 = den1 + k(l);
    end
    mean1 = num1./den1 ;
    for j =T(i): 255
     num2  = num2 + j*k(j);
     den2 = den2 + k(j);
    end
    mean2 = num2./den2  ;
    T(i+1) = ceil((mean1 +mean2)/2);
    if T(i) == T(i+1);
     break  
    end

end
i
T(i)
image = A < T(i);
imshow(image);