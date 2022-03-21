I = imread('blood.tif');

I1 = imnoise(I, 'gaussian' ,0,0.3);
I2 = imnoise(I, 'salt & pepper' ,0.3);

S1 = edge(I1, 'Sobel');
S2 = edge(I2, 'Sobel');

R1 = edge(I1, 'Roberts');
R2 = edge(I2, 'Roberts');

figure;

subplot(2,2,1); 
imshow(S1); 
title('Sobel Gaussain')

subplot(2,2,2); 
imshow(S2);
title('Sobel Salt & Pepper')

subplot(2,2,3); 
imshow(R1);
title('Roberts Gaussain')

subplot(2,2,4); 
imshow(R2);
title('Roberts Salt & Pepper')