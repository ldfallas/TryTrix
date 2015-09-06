as yet unclassified
rotateRight
	"Rotates the tetrimino matrix"
	| tempMatrix |
	tempMatrix := 
		Matrix rows: (tetriminoMatrix columnCount) 
			columns: (tetriminoMatrix rowCount).
			
	"Invert row and column number to rotate the tetrimino"
	1 to: (tetriminoMatrix columnCount)  do: [ :row |
		1 to: (tetriminoMatrix rowCount ) do: [ :column |
			tempMatrix at:  row 
				at: column 
				put: (tetriminoMatrix at: ((tetriminoMatrix rowCount + 1) - column) at: row).
			 ].
		 ].
	tetriminoMatrix  := tempMatrix.
		