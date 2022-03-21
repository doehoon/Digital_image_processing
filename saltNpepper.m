I = imread('blood.tif');
Im = imnoise(I, 'salt & pepper' ,0.3);

H1 = fspecial('average', [3 3]); 
averge1 = imfilter(Im,H1); 
H2 = fspecial('average', [9 9]); 
averge2= imfilter(Im,H2); 
median1 = medfilt2(Im, [3 3]); 
median2 = medfilt2(Im, [9 9]); 

figure;

subplot(2,2,1); 
imshow(averge1); 
title('3x3 average')

subplot(2,2,2); 
imshow(averge2);
title('9x9 average')

subplot(2,2,3); 
imshow(median1);
title('3x3 median')

subplot(2,2,4); 
imshow(median2);
title('9x9 median')