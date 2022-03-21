img = imread("rice.tif"); 
figure;

subplot(1,3,1);
imshow(img);

subplot(1,3,2);
imhist(img);

subplot(1,3,3);
im2bw(img, 0.44);