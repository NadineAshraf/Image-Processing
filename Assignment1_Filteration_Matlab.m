%open both images
subplot(6,4,1);
img1=imread('noisy_lena1.png');
imshow(img1);
title('Image1');
subplot(6,4,5);
img2=imread('noisy_lena2.png');
imshow(img2);
title('Image2');
% Isolate red,Green,Blue channel in first image
subplot(6,4,2);
Red_img1=img1(:,:,1);
imshow(Red_img1);
title('Red Channel Img1');
subplot(6,4,3);
Green_img1=img1(:,:,2);
imshow(Green_img1);
title('Green Channel Img1');
subplot(6,4,4);
Blue_img1=img1(:,:,3);
imshow(Blue_img1);
title('Blue Channel Img1');
% Isolate red,Green,Blue channel in second image
subplot(6,4,6);
Red_img2=img2(:,:,1);
imshow(Red_img2);
title('Red Channel Img2');
subplot(6,4,7);
Green_img2=img2(:,:,2);
imshow(Green_img2);
title('Green Channel Img2');
subplot(6,4,8);
Blue_img2=img2(:,:,3);
imshow(Blue_img2);
title('Blue Channel Img2');
%Gaussian filter in first red image
subplot(6,4,9);
Gaussian_filter_red1=imgaussfilt(Red_img1,5);
imshow(Gaussian_filter_red1);
title('Guassian red Channel Img1');
%Gaussian filter in first Green image
subplot(6,4,10);
Gaussian_filter_green1=imgaussfilt(Green_img1,5);
imshow(Gaussian_filter_green1);
title('Guassian Green Channel Img1');
%Gaussian filter in first Blue image
subplot(6,4,11);
Gaussian_filter_blue1=imgaussfilt(Blue_img1,5);
imshow(Gaussian_filter_blue1);
title('Guassian Blue Channel Img1');
%Median filter in first Red image
subplot(6,4,12);
Median_filter_red1=medfilt2(Red_img1,[3 3]);
imshow(Median_filter_red1);
title('Median Red Channel Img1');
%Median filter in first Green image
subplot(6,4,13);
Median_filter_Green1=medfilt2(Green_img1,[3 3]);
imshow(Median_filter_Green1);
title('Median Green Channel Img1');
%Median filter in first Blue image
subplot(6,4,14);
Median_filter_Blue1=medfilt2(Blue_img1,[3 3]);
imshow(Median_filter_Blue1);
title('Median Blue Channel Img1');

%Gaussian filter in second red image
subplot(6,4,15);
Gaussian_filter_red2=imgaussfilt(Red_img2,5);
imshow(Gaussian_filter_red2);
title('Guassian red Channel Img2');
%Gaussian filter in second Green image
subplot(6,4,16);
Gaussian_filter_green2=imgaussfilt(Green_img2,5);
imshow(Gaussian_filter_green2);
title('Guassian Green Channel Img2');
%Gaussian filter in second Blue image
subplot(6,4,17);
Gaussian_filter_blue2=imgaussfilt(Blue_img2,5);
imshow(Gaussian_filter_blue2);
title('Guassian Blue Channel Img2');
%Median filter in second Red image
subplot(6,4,18);
Median_filter_red2=medfilt2(Red_img2,[3 3]);
imshow(Median_filter_red2);
title('Median Red Channel Img2');
%Median filter in second Green image
subplot(6,4,19);
Median_filter_Green2=medfilt2(Green_img2,[3 3]);
imshow(Median_filter_Green2);
title('Median Green Channel Img2');
%Median filter in second Blue image
subplot(6,4,20);
Median_filter_Blue2=medfilt2(Blue_img2,[3 3]);
imshow(Median_filter_Blue2);
title('Median Blue Channel Img2');
%first image after filtering
subplot(6,4,21);
F1=cat(3,Median_filter_red1,Gaussian_filter_green1,Median_filter_Blue1);
imshow(F1);
title('First Img After Filtering');
%Second Image after filtering
subplot(6,4,22);
F2=cat(3,Median_filter_red2,Median_filter_Green2,Median_filter_Blue2);
imshow(F2);
title('Second Img after Filtering');