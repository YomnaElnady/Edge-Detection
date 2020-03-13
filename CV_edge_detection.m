%% read the image
im = imread('cameraman.tif');   % read the image

%% apply three appeaoches for edge detection (1st deravitive, 2nd deravitive and canny algorithm)
firstDeravitive_im = edge(im,'Prewitt');  % filter the image with first deravitive filter
secondDreavitive_im = edge(firstDeravitive_im,'Prewitt');  % obtain second deravitive by applying first deravitive filter again
canny_im = edge(im,'canny');   % filter the image with canny filter

%% Display the original and filtered images to compare results
imshow(im)
title('Original Image')
imshow(firstDeravitive_im)
title('First deravitive filtered Image')
figure(1)
imshow(im)
title('Original Image')
figure(2)
imshow(secondDreavitive_im)
title('Second deravitive filtered Image')
figure(3)
imshow(canny_im)
title('canny filtered Image')