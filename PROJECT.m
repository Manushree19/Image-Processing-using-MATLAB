%Name: Manushree Patel
%Roll No: AU2340014
%ENR112 Linear Algebra Laboratory Section 1 
%%%%% PROJECT %%%%%

%This project is based on image processing which will include various
%functionalities such as flipping, mirroring, adding of two images
%and spotting the difference between two images

%The main idea of taking up this project was that an image is an matrix and
%all the matrix operations could performed on it and we can see how we can
%use there operations to get the desired output.

%Matrices on the first outlook seems like a very simple mathematical structure but
%its integration into various sectors makes it more universal. The
%functionalities which have been used in this project have real life
%applications as well which are described in the report.

%Adding of two images:

I = imread('/Users/manushreepatel/Desktop/pattern.png')
J = imread('/Users/manushreepatel/Desktop/background.png')
figure;
imshow(I);
title('First Image');
g = size(I)
J = imresize(J,[g(1),g(2)])
figure;
imshow(J);
title('Second Image');

for i = 1:g(1)
    for j = 1:g(2)
        for k = 1:3
    K(i,j,k) = (I(i,j,k)+J(i,j,k));
        end
    end
end
figure;
imshow(K)
title('Final Image(Added image)');

%Spotting difference between two images

x = imread('/Users/manushreepatel/Desktop/image1.png');
y = imread('/Users/manushreepatel/Desktop/image2.png');

g2 = size(x);
y = imresize(y,[g2(1),g2(2)]);
figure;
imshow(x);
title('Image1');
figure;
imshow(y);
title('Image2');
figure;
imshow(x-y);
title('Difference of two images');

%Brightening/Darkening an image with Addition/Subtraction

a = imread('/Users/manushreepatel/Desktop/Originalphoto.png');
subplot(1,3,1);
imshow(a);
title('Original Photo');
subplot(1,3,2);
a_bright = a+75;
imshow(a_bright);
title('Brightened Image');
subplot(1,3,3);
a_dark = a-75;
imshow(a_dark);
title('Darkened Image');

%Mirroring/Flipping an image: (Horizontal and Vertical flipping)

figure;
A = imread('/Users/manushreepatel/Desktop/Directions.png');
h_mirr = A(:, end:-1:1, :);
v_mirr = A(end:-1:1, :, :);
subplot(1, 3, 1);
imshow(A);
title('Original');

subplot(1, 3, 2);
imshow(h_mirr);
title('Horizontal Mirror');

subplot(1, 3, 3);
imshow(v_mirr);
title('Vertical Mirror');


