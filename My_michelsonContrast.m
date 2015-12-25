function contrast = My_michelsonContrast(filename)
image = imread(filename);
%[M,N,X]= size(I);
%image = reshape(I,M,N*X);
I_max = max(max(max(image)));
I_min = min(min(min(image)));

% Compute contrast
contrast = (I_max-I_min)/(I_max+I_min);