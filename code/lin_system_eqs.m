% Function to solve linear systems
%------example--------
%  3x + 5y – 6z = 11
%  4x – 6y +  z =  9
% -2x + 3y + 5z = –13 
%-----------------------
%A = [	1/2 	1/2 	0; 
%	 	2/3 	1/4 	2/5; 
%	 	0 	1/4 	3/5	];
%inv(A) * [x; y; z]

A = [1/2 1/2; 2/3 1/4; 0 1/4];
inv(A) * [x; y];
z = 1-x-y;
