close all;
clear ;
clc;
figure(1);
img1=imread('agra.jpg');
subplot(2,2,1);
imshow(img1);
title('Original Image');
Gray_Image = rgb2gray(img1);
subplot(2,2,2);
imshow(Gray_Image);
title('Gray Image');
subplot(2,2,3);
[ gabs_1 , gangle_1 ] = imgradient (Gray_Image , 'sobel');
gabs_2=imcomplement(gabs_1 > 75);
 imshow(gabs_2);
title('Sobel Edge Detection')
subplot(2,2,4);
Median_filter=medfilt2(Gray_Image,[3 3]);
imshow(Median_filter);
title('Filtered Image');
figure(2);
subplot(1,2,1)
filter_x = [ 0 0 0 ; 0 2 0 ; 0 0 0 ] - 1/9*[ 1 1 1 ; 1 1 1 ;1 1 1];
Sharpen_Filter = imfilter(Gray_Image, filter_x);
imshow(Sharpen_Filter);
title('Sharpening Filter')
subplot(1,2,2);
Sharpen_Filter = im2double(Sharpen_Filter);
gabs_2 =  im2double(gabs_2);
output = (0.3*gabs_2 + 0.2*Sharpen_Filter);
imshow(output);
title('Blend Sharpen & Edge');
figure(3);
subplot(1,1,1);
img_canny = edge(Gray_Image,'Canny');
img_canny=imcomplement(img_canny );
imshow(img_canny)
title('Canny Edge Detection')

