I = imread('testpat2.tif');
I2 = im2double(I);
whos I2

H = fspecial('average',5);
II = imfilter(double(I), H,'conv','circular');

%filtered image
J = imnoise(double(II),'gaussian',0, 0.06);
figure;
imshow(J);
title('Degraded image');

%using inverse filter
nsr = 0.06 / var(I(:));
III = deconvwnr(J, H, nsr);
figure;
imshow(III);
title('A - Restorated image');

%using wiener filter
K = wiener2(J,[5 5]);
figure;
imshow(K);
title('B - Restorated image');

