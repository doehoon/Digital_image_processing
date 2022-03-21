I = imread('blood.tif');

I = uint8(I);
I = im2gray(I);
I = double(I);

F = zeros(size(I));

Mx = [-1 0 1; -2 0 2; -1 0 1];
My = [-1 -2 -1; 0 0 0; 1 2 1];

for i = 1:size(I, 1) - 2
    for j = 1:size(I, 2) - 2
  
        Gx = sum(sum(Mx.*I(i:i+2, j:j+2)));
        Gy = sum(sum(My.*I(i:i+2, j:j+2)));
                 
        F(i+1, j+1) = sqrt(Gx.^2 + Gy.^2);
         
    end
end

thresholdValue = 100; 
output_image = max(F, thresholdValue);
output_image(output_image == round(thresholdValue)) = 0;

F = uint8(F);
figure, imshow(F);