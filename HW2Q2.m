img = imread('chestXray-dark.tif');

figure;

subplot(1,2,1);
imshow(img);

J = adapthisteq(img);

subplot(1,2,2);
imshow(J);
