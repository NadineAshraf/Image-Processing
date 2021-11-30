
function [x,y, scores,Ix,Iy]=HarrisCorner(I)
I= imread ('checkerboard.png');
C = detectHarrisFeatures(I);
img = im2double (I);

figure (1);
subplot(1,2,1);
imshow (I);
title ('Original Image');

subplot(1,2,2);
imshow(img);
hold on
point_num = 50;
plot(C.selectStrongest(point_num).Location(:,1),C.selectStrongest(point_num).Location(:,2),'r*');
title('Harris corners Image')
%Some Important Variables
sigma1=sqrt(2);
Sigma=1;
Gaussian_img = imgaussfilt (img, sigma1);

figure (2);
subplot(1,2,1)
h = [-1 0 1];
Ix = imfilter(Gaussian_img,h);
imshow(Ix)
title('x derivative')
subplot(1,2,2)
h = [-1; 0; 1];
Iy = imfilter(Gaussian_img,h);
imshow(Iy)
title('y derivative')
% create X and Y Sobel filters
horizontal_filter = [1 0 -1; 2 0 -2; 1 0 -1];
vertical_filter = [1 2 1; 0 0 0 ; -1 -2 -1];

% using imfilter to get our gradient in each direction
dx= imfilter(img, horizontal_filter);
dy = imfilter(img, vertical_filter);
%2nd Step: Computing the Derivatives
Ix=conv2(double(I),dx,'same');
Iy=conv2(double(I),dy,'same');
Ixy=Ix.*Iy;
%The Derivative Masks
[dx,dy]=meshgrid(-1:1 ,-1:1);
hold on
%2nd Step: Smoothing using Gaussian Filter
g=fspecial('gaussian',5,Sigma);
Ix2=conv2(Ix.*Ix ,g,'same');
Iy2=conv2(Iy.*Iy ,g,'same');
Ixy=conv2(Ixy,g,'same');
figure(3);
subplot(1,2,1);
imshow(Ixy);
title('Smoothing');
hold on

% set empirical constant between 0.04-0.06
k = 0.04;

num_rows = size(I,1);
num_cols = size(I,2);

% create a matrix to hold the Harris values
H = zeros(num_rows, num_cols);

for y = 6:size(image,1)-6        
    for x = 6:size(image,2)-6     
        % calculate means (because mean is sum/num pixels)
        % generally, this algorithm calls for just finding a sum,
        % but using the mean makes visualization easier, in my code,
        % and it doesn't change which points are computed to be corners.
        % Ix2 mean
        Ix2_matrix = Ix2(y-2:y+2,x-2:x+2);
        Ix2_mean = sum(Ix2_matrix(:));
        
        % Iy2 mean
        Iy2_matrix = Iy2(y-2:y+2,x-2:x+2);
        Iy2_mean = sum(Iy2_matrix(:));
        
        % Ixy mean
        Ixy_matrix = Ixy(y-2:y+2,x-2:x+2);
        Ixy_mean = sum(Ixy_matrix(:));
        
        % compute R, using te matrix we just created
        Matrix = [Ix2_mean, Ixy_mean; 
                  Ixy_mean, Iy2_mean];
        R = det(Matrix) - (k * trace(Matrix)^2);
        
        % store the R values in our Harris Matrix
        H(y,x) = R;
     
    end
end
% set threshold of 'cornerness' to 5 times average R score
avg_r = mean(mean(H));
threshold = abs(5 * avg_r);

[row, col] = find(H > threshold);

scores = [];
%get all the values
for index = 1:size(row,1)
    %see what the values are
    r = row(index);
    c = col(index);
    scores = cat(2, scores,H(r,c));
end
y = row;
x = col;

imgResult = nonmaxsup2d(I);
figure(3);
subplot(1,2,2);
imshow(imgResult);
title('Non-MaximumSuppression');
end