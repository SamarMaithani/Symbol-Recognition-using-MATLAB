warning off 
% Clear all
clc, close all, clear all
% Read image
image=imread('image4.jpg');
% Show image
figure; imshow(image);
title('ORIGINAL IMAGE')
% Convert to gray scale
if size(image,3)==3 %RGB image
    image=rgb2gray(image);
end
figure; imshow(image); title('Grayscale Image');
% Convert to BW
threshold = graythresh(image);
ibin =~imbinarize(image,threshold);
figure; imshow(ibin); title('Binary (Black and White) Image');
% Remove all object containing fewer than 30 pixels
ibin = bwareaopen(ibin,30);
figure; imshow(ibin); title('After Removing some objects');
g=strel('disk',1);
ibin = imclose(ibin,g);
figure; imshow(ibin); title('After Morphological Closing');
%Storage matrix word from image
word=[ ];
re=ibin;
%Opens text.txt as file for write
tfile = fopen('text.txt', 'wt');
% Load templates
load templates
global templates
% Compute the number of letters in template file
num_letters=size(templates,2);
while 1
    %Calling 'lines' function to separate lines in text
    [fl re]=lines(re);
    imgn=fl;
        
    % Label and count connected components
    [L Ne] = bwlabel(imgn);    
    for n=1:Ne
        [r,c] = find(L==n);
        % Extract letter
        n1=imgn(min(r):max(r),min(c):max(c));  
        % Resize letter (same size of template)
        img_r=imresize(n1,[42 24]);
        %figure; imshow(img_r);
        % Call fcn to convert image to text
        letter=read_letter(img_r,num_letters);
        % Letter concatenation
        word=[word letter];
    end
    
    fprintf(tfile,'%s\n',word);%Write 'word' in text file (upper)
    % Clear 'word' variable
    word=[ ];
    %*When the sentences finish, breaks the loop
    if isempty(re)  %See variable 're' in 'lines' function
        break
    end    
end
fclose(tfile);
%Open 'text.txt' file
winopen('text.txt')
clear all