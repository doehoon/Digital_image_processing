clear all, close all
I = imread('butterfly.gif');

se = strel('disk', 2);
I2 = imdilate(I,se);

SE = strel('rectangle', [1,1]);
I3 = imerode(I,SE);

sE = strel('disk',3)
I4 = imopen(I,sE)

figure;

subplot(2,2,1); 
imshow(I,[]); 
title('original')

subplot(2,2,2); 
imshow(I2,[]);
title('dilation')

subplot(2,2,3); 
imshow(I3,[]);
title('erosion')

subplot(2,2,4); 
imshow(I4,[]);
title('openning')