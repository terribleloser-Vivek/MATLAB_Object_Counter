image = imread("A.jpg);
imshow(image);

%convert rgb image to gray image
gray=rgb2gray(image)
imshow(gray)

%Histogram Plot
imhist(gray)

BW = gray>210;
imshow(BW);

%Submask creation radius 4
se =strel('disk',4);

%applying  mask onm image
afteropening =imopen(BW,se);
imshow(afteropening);l

%to remove noise
aftreclosing = imclose(BW,se);
imshow(aftreclosing);

imshowpair(image,afterclosing,'montage');

[L,num] = bwlabel(~afterclosing,4);
