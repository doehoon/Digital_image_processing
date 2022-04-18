clear all, close all
I = imread('fork.gif');
se = strel('disk', 2);
Id = imdilate(I, se);
Ie = imerode(I, se);
Ib = Id & ~ Ie;
Eb = Id & ~I;
Im = imsubtract(I,Ie);

figure;

subplot(2, 2, 1);
imshow(I,[]);
title('Original');

subplot(2, 2, 2);
imshow(Ib,[]);
title('Internal');

subplot(2, 2, 3);
imshow(Eb,[]);
title('External');

subplot(2, 2, 4);
imshow(Im,[]); 
title('Morphological');