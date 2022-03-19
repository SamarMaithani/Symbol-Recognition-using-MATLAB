%CREATING TEMPLATES
%Capital Letters
A=imread('letters_numbers\A.png');B=imread('letters_numbers\B.png');
C=imread('letters_numbers\C.png');D=imread('letters_numbers\D.png');
E=imread('letters_numbers\E.png');F=imread('letters_numbers\F.png');
G=imread('letters_numbers\G.png');H=imread('letters_numbers\H.png');
I=imread('letters_numbers\I.png');J=imread('letters_numbers\J.png');
K=imread('letters_numbers\K.png');L=imread('letters_numbers\L.png');
M=imread('letters_numbers\M.png');N=imread('letters_numbers\N.png');
O=imread('letters_numbers\O.png');P=imread('letters_numbers\P.png');
Q=imread('letters_numbers\Q.png');R=imread('letters_numbers\R.png');
S=imread('letters_numbers\S.png');T=imread('letters_numbers\T.png');
U=imread('letters_numbers\U.png');V=imread('letters_numbers\V.png');
W=imread('letters_numbers\W.png');X=imread('letters_numbers\X.png');
Y=imread('letters_numbers\Y.png');Z=imread('letters_numbers\Z.png');
%Numbers
one=imread('letters_numbers\1.png');  two=imread('letters_numbers\2.png');
three=imread('letters_numbers\3.png');four=imread('letters_numbers\4.png');
five=imread('letters_numbers\5.png'); six=imread('letters_numbers\6.png');
seven=imread('letters_numbers\7.png');eight=imread('letters_numbers\8.png');
nine=imread('letters_numbers\9.png'); zero=imread('letters_numbers\0.png');
%small letters
a=imread('letters_numbers\a.png'); i=imread('letters_numbers\i.png');
b=imread('letters_numbers\b.png'); c=imread('letters_numbers\c.png');
d=imread('letters_numbers\d.png'); e=imread('letters_numbers\e.png');
f=imread('letters_numbers\f.png'); g=imread('letters_numbers\g.png');
h=imread('letters_numbers\h.png'); j=imread('letters_numbers\j.png');
k=imread('letters_numbers\k.png'); l=imread('letters_numbers\l.png');
m=imread('letters_numbers\m.png'); n=imread('letters_numbers\n.png');
o=imread('letters_numbers\o.png'); p=imread('letters_numbers\p.png');
q=imread('letters_numbers\q.png'); r=imread('letters_numbers\r.png');
s=imread('letters_numbers\s.png'); t=imread('letters_numbers\t.png');
u=imread('letters_numbers\u.png'); v=imread('letters_numbers\v.png');
w=imread('letters_numbers\w.png'); x=imread('letters_numbers\x.png');
y=imread('letters_numbers\y.png'); z=imread('letters_numbers\z.png');
letter=[A B C D E F G H I J K L M...
    N O P Q R S T U V W X Y Z];
number=[one two three four five...
    six seven eight nine zero];
small_letter=[a b c d e f g h i j...
    k l m n o p q r s t u v w x y z];
character=[letter number small_letter];
templates=mat2cell(character,42,[24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24]);

save ('templates','templates')
clear all
