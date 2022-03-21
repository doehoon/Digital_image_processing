I = imread('chestXray-dark.tif');

Is = imsharpen(I,'amount',5);

figure;

subplot(2,1,1);
imshow(I);
title('Original');

subplot(2,1,2);
imshow(Is);
title('Sharpened');