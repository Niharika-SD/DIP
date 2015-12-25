 function SpaceTransformation (filename)
% I = imread(filename);
FID = fopen(filename);
    
    % Getting File Type Identifier
    Image.FileTypeIdentifier = fread(FID,16,'uint8');
    
    % Getting file type (Greyscale/Color)
    Image.statusflag = fread(FID,1,'uint8');
    
    % Getting Image height
    Image.height = fread(FID,1,'uint64');
    m = Image.height;
    
    % Getting Image width
    Image.width = fread(FID,1,'uint64');
    n = Image.width;
    
    % Getting Image bits per pixel
    Image.bpp = fread(FID,1,'uint8');
    
    % Getting the data value at each pixel and storing it in matrix ImageNew
    ImageNew=fread(FID,Image.height*Image.width*Image.bpp/8,'uint8');
    
    % Reshaping the data 
    Image.data = reshape(ImageNew, Image.height, Image.width, Image.bpp/8);
    
I1 = zeros(m,n);
for r = 1:m
    for c = 1:n
        theta = atan((c-(n/2))/(r-(m/2)));
        radius = sqrt(((r-(m/2))^2+(c-(n/2))^2));
        theta = abs(theta);
        theta = ceil(theta);
        radius = ceil(radius);
        if (theta==0 || radius ==0)
           I1(r,c) = I1(r,c-1);
        else 
           I1(r,c) = Image.data(radius,theta);
        end
       %x1 = ceil(r*cos(c/(2*pi)));
       %y1 = ceil(r*sin(c/(2*pi)));
       %I2(x1, y1) = I1((r*c),1); 
    end
end
I1 = uint8(I1);
imshow(I1);
imwrite(I1,'Bitmap.bmp','bmp');
end