close all;
clear ;
clc;
%-------------------------------------------------------------------------------------------------------------%
Input_Image_1 = imread('00153v.jpg');
figure;
imshow(Input_Image_1);
title('Original Image');
trivial_image_1 = Trivial_Solution(Input_Image_1);
figure;
imshow(trivial_image_1);
title('Trivial Solution');
imwrite(trivial_image_1, 'Trivial_00153v.jpg');
Aligned_SSD_1 = Colorizing_Image(Input_Image_1);
figure;
imshow(Aligned_SSD_1);
title('Aligned SSD image');
imwrite(Aligned_SSD_1, 'Aligned_SSD_00153v.jpg');
[enhanced_aligned_ssd_1,shift_g_ssd_1, shift_r_ssd_1] = Align_SSD(Input_Image_1); 
figure;
imshow(enhanced_aligned_ssd_1);
title('Enhanced Aligned SSD image');
imwrite(enhanced_aligned_ssd_1, 'Enhanced_Aligned_SSD_00153v.jpg');
[aligned_ncc_1,shift_g_ncc_1, shift_r_ncc] = Align_NCC(Input_Image_1);
figure; 
imshow(aligned_ncc_1);
title('Aligned NCC image');
imwrite(aligned_ncc_1,'Aligned_NCC_00153v.jpg');
%-------------------------------------------------------------------------------------------------------------%
%************************ ************** ******    2      ***** ************************ *********************%
%-------------------------------------------------------------------------------------------------------------%
Input_Image_2 = imread('00149v.jpg');
figure;
imshow(Input_Image_2);
title('Original Image');
trivial_image_2 = Trivial_Solution(Input_Image_2);
figure;
imshow(trivial_image_2);
title('Trivial Solution');
imwrite(trivial_image_2, 'Trivial_00149v.jpg');
Aligned_SSD_2 = Colorizing_Image(Input_Image_2);
figure;
imshow(Aligned_SSD_2);
title('Aligned SSD image');
imwrite(Aligned_SSD_2, 'Aligned_SSD_00149v.jpg');
[enhanced_aligned_ssd_2,shift_g_ssd_2, shift_r_ssd_2] = Align_SSD(Input_Image_2); 
figure;
imshow(enhanced_aligned_ssd_2);
title('Enhanced Aligned SSD image');
imwrite(enhanced_aligned_ssd_2, 'Enhanced_Aligned_SSD_00149v.jpg');
[aligned_ncc_2,shift_g_ncc_2, shift_r_ncc_2] = Align_NCC(Input_Image_2);
figure; 
imshow(aligned_ncc_2);
title('Aligned NCC image');
imwrite(aligned_ncc_2,'Aligned_NCC_00149v.jpg');
%-------------------------------------------------------------------------------------------------------------%
%************************ ************** ******    3      ***** ************************ *********************%
%-------------------------------------------------------------------------------------------------------------%
Input_Image_3 = imread('00351v.jpg');
figure;
imshow(Input_Image_3);
title('Original Image');
trivial_image_3 = Trivial_Solution(Input_Image_3);
figure;
imshow(trivial_image_3);
title('Trivial Solution');
imwrite(trivial_image_3, 'Trivial_00351v.jpg');
Aligned_SSD_3 = Colorizing_Image(Input_Image_3);
figure;
imshow(Aligned_SSD_3);
title('Aligned SSD image');
imwrite(Aligned_SSD_3, 'Aligned_SSD_00351v.jpg');
[enhanced_aligned_ssd_3,shift_g_ssd_3, shift_r_ssd_3] = Align_SSD(Input_Image_3); 
figure;
imshow(enhanced_aligned_ssd_3);
title('Enhanced Aligned SSD image');
imwrite(enhanced_aligned_ssd_3, 'Enhanced_Aligned_SSD_00351v.jpg');
[aligned_ncc_3,shift_g_ncc_3, shift_r_ncc_3] = Align_NCC(Input_Image_3);
figure; 
imshow(aligned_ncc_3);
title('Aligned NCC image');
imwrite(aligned_ncc_3,'Aligned_NCC_00351v.jpg');
%-------------------------------------------------------------------------------------------------------------%
%************************ ************** ******    4     ***** ************************ **********************%
%-------------------------------------------------------------------------------------------------------------%
Input_Image_4 = imread('00398v.jpg');
figure;
imshow(Input_Image_4);
title('Original Image');
trivial_image_4 = Trivial_Solution(Input_Image_4);
figure;
imshow(trivial_image_4);
title('Trivial Solution');
imwrite(trivial_image_4, 'Trivial_00398v.jpg');
Aligned_SSD_4 = Colorizing_Image(Input_Image_4);
figure;
imshow(Aligned_SSD_4);
title('Aligned SSD image');
imwrite(Aligned_SSD_4, 'Aligned_SSD_00398v.jpg');
[enhanced_aligned_ssd_4,shift_g_ssd_4, shift_r_ssd_4] = Align_SSD(Input_Image_4); 
figure;
imshow(enhanced_aligned_ssd_4);
title('Enhanced Aligned SSD image');
imwrite(enhanced_aligned_ssd_4, 'Enhanced_Aligned_SSD_00398v.jpg');
[aligned_ncc_4,shift_g_ncc_4, shift_r_ncc_4] = Align_NCC(Input_Image_4);
figure; 
imshow(aligned_ncc_4);
title('Aligned NCC image');
imwrite(aligned_ncc_4,'Aligned_NCC_00398v.jpg');
%-------------------------------------------------------------------------------------------------------------%
%************************ ************** ******    5      ***** ************************ *********************%
%-------------------------------------------------------------------------------------------------------------%
Input_Image_5 = imread('01112v.jpg');
figure;
imshow(Input_Image_5);
title('Original Image');
trivial_image_5 = Trivial_Solution(Input_Image_5);
figure;
imshow(trivial_image_5);
title('Trivial Solution');
imwrite(trivial_image_5, 'Trivial_01112v.jpg');
Aligned_SSD_5 = Colorizing_Image(Input_Image_5);
figure;
imshow(Aligned_SSD_5);
title('Aligned SSD image');
imwrite(Aligned_SSD_5, 'Aligned_SSD_01112v.jpg');
[enhanced_aligned_ssd_5,shift_g_ssd_5, shift_r_ssd_5] = Align_SSD(Input_Image_5); 
figure;
imshow(enhanced_aligned_ssd_5);
title('Enhanced Aligned SSD image');
imwrite(enhanced_aligned_ssd_5, 'Enhanced_Aligned_SSD_01112v.jpg');
[aligned_ncc_5,shift_g_ncc_5, shift_r_ncc_5] = Align_NCC(Input_Image_5);
figure; 
imshow(aligned_ncc_5);
title('Aligned NCC image');
imwrite(aligned_ncc_5,'Aligned_NCC_01112v.jpg');
%-------------------------------------------------------------------------------------------------------------%
%************************ ************** ******    6     ***** ************************ **********************%
%-------------------------------------------------------------------------------------------------------------%
Input_Image_6 = imread('00125v.jpg');
figure;
imshow(Input_Image_6);
title('Original Image');
trivial_image_6 = Trivial_Solution(Input_Image_6);
figure;
imshow(trivial_image_6);
title('Trivial Solution');
imwrite(trivial_image_6, 'Trivial_00125v.jpg');
Aligned_SSD_6 = Colorizing_Image(Input_Image_6);
figure;
imshow(Aligned_SSD_6);
title('Aligned SSD image');
imwrite(Aligned_SSD_6, 'Aligned_SSD_00125v.jpg');
[enhanced_aligned_ssd_6,shift_g_ssd_6, shift_r_ssd_6] = Align_SSD(Input_Image_6); 
figure;
imshow(enhanced_aligned_ssd_6);
title('Enhanced Aligned SSD image');
imwrite(enhanced_aligned_ssd_6, 'Enhanced_Aligned_SSD_00125v.jpg');
[aligned_ncc_6,shift_g_ncc_6, shift_r_ncc_6] = Align_NCC(Input_Image_6);
figure; 
imshow(aligned_ncc_6);
title('Aligned NCC image');
imwrite(aligned_ncc_6,'Aligned_NCC_00125v.jpg');
%------------------------------------------------------------------------------------------------------------%
