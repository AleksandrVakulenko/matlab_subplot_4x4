
function Positions = get_pos_for_sp()

%----------------------
%-- FOR 4 parameters --
%----------------------


% Positions: row - picture num; column - 1-xpos 2-ypos 3-xsize 4-ysize.
% Pictures placed in 2 column and 3 rows, numeration from left to right and
% from up to down.

Positions = zeros(4, 4);

%Borders-----------------
UpBorder = 0.05;
DownBorder = 0.075;
LeftBorder = 0.055;
RightBorder = 0.02;
%------------------------

%MidSpaces---------------
YmidSpace = 0.08;
XmidSpace = 0.06;
%------------------------

Xsize = (1 - LeftBorder - XmidSpace - RightBorder)/2;
Ysize = (1 - UpBorder - YmidSpace - DownBorder)/2;


Positions(4,1) = LeftBorder + 1*Xsize + 1*XmidSpace;
Positions(4,2) = DownBorder;
Positions(4,3) = Xsize;
Positions(4,4) = Ysize;

Positions(3,1) = LeftBorder;
Positions(3,2) = DownBorder;
Positions(3,3) = Xsize;
Positions(3,4) = Ysize;

Positions(2,1) = LeftBorder + 1*Xsize + 1*XmidSpace;
Positions(2,2) = DownBorder + Ysize + YmidSpace;
Positions(2,3) = Xsize;
Positions(2,4) = Ysize;

Positions(1,1) = LeftBorder;
Positions(1,2) = DownBorder + Ysize + YmidSpace;
Positions(1,3) = Xsize;
Positions(1,4) = Ysize;


clearvars UpBorder DownBorder LeftBorder RightBorder YmidSpace XmidSpace Xsize Ysize

end

