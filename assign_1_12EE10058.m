function img = fcn_czbread_12EE10058(filename) 
%opening the file
fid = fopen(filename);
if(fid < 0)
%error condition for file opening
    error('error opening file')
else
%reading the file identifier
file.id = fread(fid,16,'uint8');
%reading the file status
file.status = fread(fid,1,'uint8');
%reading row and column data
file.rows = fread(fid,1,'uint64');
file.col = fread(fid,1,'uint64');
%reading the image format
file.bpp = fread(fid,1,'uint8');
%condition for grayscale
if(file.status == 1)
%retrieve the image data
   A = fread(fid,(file.rows*file.col*file.bpp/8),'uint8');
   B = reshape(A/256,file.rows,file.col);
%condition for rgb image 
elseif(file.status == 2)
%retrieve the image data
   A = fread(fid,(file.rows*file.col*file*3*bpp/8),'uint8');
   B = reshape(A/256,file.rows,file.col,3);
else
    error('file format not specified')
end
fclose(fid);
end
%conversion to .bmp format
imwrite(B,'myczb.bmp');
img = 'myczb.bmp';
end