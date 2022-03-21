I = imread('blood.tif');

H1 = fspecial('average', [3 3]); 
averge1 = imfilter(I,H1); 
H2 = fspecial('average', [9 9]); 
averge2= imfilter(I,H2); 
median1 = medfilt2(I, [3 3]); 
median2 = medfilt2(I, [9 9]); 

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
