I = imread('blood.tif');

I = uint8(I);
I = im2gray(I);
I = double(I);

F = zeros(size(I));

Mx = [1 0; 0 -1];
My = [0 1; -1 0];

for i = 1:size(I, 1) - 1
    for j = 1:size(I, 2) - 1
  
        Gx = sum(sum(Mx.*I(i:i+1, j:j+1)));
        Gy = sum(sum(My.*I(i:i+1, j:j+1)));

        F(i, j) = sqrt(Gx.^2 + Gy.^2);
         
    end
end

thresholdValue = 100;
output_image = max(F, thresholdValue);
output_image(output_image == round(thresholdValue)) = 0;

F = uint8(F);
figure, imshow(F);