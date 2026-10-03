% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

1 { sudoku(X,Y,N) : N = 1..4 } 1 :- X = 1..4, Y = 1..4.

:- sudoku(X,Y1,N), sudoku(X,Y2,N), Y1 != Y2.
:- sudoku(X1,Y,N), sudoku(X2,Y,N), X1 != X2.

:- initial(X,Y,N), not sudoku(X,Y,N).

subgrid(1,1,1).
subgrid(1,2,1).
subgrid(1,3,2).
subgrid(1,4,2).

subgrid(2,1,1).
subgrid(2,2,1).
subgrid(2,3,2).
subgrid(2,4,2).

subgrid(3,1,3).
subgrid(3,2,3).
subgrid(3,3,4).
subgrid(3,4,4).

subgrid(4,1,3).
subgrid(4,2,3).
subgrid(4,3,4).
subgrid(4,4,4).

:- sudoku(X1,Y1,N), sudoku(X2,Y2,N), 
	subgrid(X1,Y1,G), 
	subgrid(X2,Y2,G), 
	X1 != X2.
:- sudoku(X,Y1,N), sudoku(X,Y2,N),
	subgrid(X,Y1,G), subgrid(X,Y2,G),
	Y1 != Y2.

#show sudoku/3.
