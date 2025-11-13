% main_script.m
% Foreground–Background Separation using ADMM (Robust PCA)

clc; clear; close all;

% 1. Read and preprocess the image
image = imread("D:\Sem 3\MFC sem 3\Project Files\simple_image.jpg");
gray_image = rgb2gray(image);
normalized_image = im2double(gray_image);

% 2. Separate foreground and background using ADMM
[background_L, foreground_S] = separate_foreground_background(normalized_image, [], 40, 1e-7);

% 3. Convert to displayable format
background_img = im2uint8(background_L);
foreground_img = im2uint8(abs(foreground_S));

% 4. Threshold the foreground to create a binary mask
foreground_thresh = imbinarize(foreground_img, 30/255);

% 5. Display the results
figure;
subplot(1,3,1); imshow(gray_image); title('Original Image');
subplot(1,3,2); imshow(background_img); title('Extracted Background');
subplot(1,3,3); imshow(foreground_thresh); title('Extracted Foreground');
