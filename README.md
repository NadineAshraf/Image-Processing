Hello, This project is for colorizing images using Matlab.

First : Trivial Solution
1. Read the input image into a matrix.
2. Divide the image into three equal parts (channels) and store them  into three matrices.
3. Combine the three channels in one colored image.

Second : SSD Alignment
1. Read the input image into a matrix.
2. Divide the image into three equal parts (channels) and store them  into three matrices.
3. Choose a reasonable range for channels alignment.
4. Choose a reasonable Margin to get rid of the corrupted borders.
5. Choose a certain channel to behave as a fixed window.
6. Align the other two channels by searching over the fixed window of possible displacements, score each one using the sum of squared differences (SSD) (euclidean distance) as an  image matching metric.
7. Take the displacement with the best score (minimum).
8. Shift the two channels by according to the displacement selected in the pervious step.
9. Combine the three channels in one colored image.
10. Finally to improve the quality of the output image we can use a sharpening filter.

Third : Enhanced SSD
1. Read the input image into a matrix.
2. Divide the image into three equal parts (channels) and store them  into three matrices.
3. Choose a reasonable range for channels alignment.
4. Crop the three channels into smaller widows to search over wider range .
5. Choose a certain window to behave as a fixed window.
6. Align the other two channels by searching over the fixed window of possible displacements, score each one using the sum of squared differences (SSD) (euclidean distance) as an image matching metric.
7. Take the displacement with the best score (minimum).
8. Shift the two channels by according to the displacement selected in the pervious step.
9. Combine the three channels in one colored image.
10. Finally to improve the quality of the output image we can use a sharpening filter.

Fourth: Normal Cross Correlation
1. Read the input image into a matrix.
2. Divide the image into three equal parts (channels) and store them  into three matrices.
3. Choose a reasonable range for channels alignment.
4. Apply a canny edge detector on the three images.
5. Choose a certain channel to behave as a fixed window.
6. Align the other two channels by searching over the fixed window of possible displacements, score each one using the norm cross correlation as an  image matching metric.
7. select the displacement corresponding to the maximum correlation .
8. Shift the two channels by according to the displacement selected in the pervious step.
9. Combine the three channels in one colored image.
10. Finally to improve the quality of the output image we can use a sharpening filter.
