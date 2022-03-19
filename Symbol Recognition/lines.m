function [fl re]=lines(im_text)
% Divide text in lines
im_text=clip(im_text);
%figure; imshow(im_text); title('After cropping');
%pause(2);
num_lines=size(im_text,1);
for s=1:num_lines
    if sum(im_text(s,:))==0
        nm=im_text(1:s-1, :); % First line matrix
        rm=im_text(s:end, :);% Remain line matrix
        fl = clip(nm);
        %figure; imshow(fl); title('After cropping first line');
        %pause(3);
        re=clip(rm);
        %figure; imshow(re); title('After cropping remaining lines');
        %pause(2);
        break
    else
        fl=im_text;%Only one line.
        re=[ ];
    end
end

function img_out=clip(img_in)
[f c]=find(img_in);
img_out=img_in(min(f):max(f),min(c):max(c));%Crops image