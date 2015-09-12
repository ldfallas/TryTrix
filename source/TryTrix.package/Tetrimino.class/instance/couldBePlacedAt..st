matrixInteraction
couldBePlacedAt: point 
	| insideMatrixBounds valueInGameMatrix valueInTetrimino hit|
	insideMatrixBounds := 
		((point y + (tetriminoMatrix rowCount - 1)) <= gameMatrix rowCount) 
		& (point y >  0)
		& (point x  > 0)
		& ((point x + (tetriminoMatrix columnCount - 1)) <= gameMatrix columnCount).
		
	hit := false.
	insideMatrixBounds ifTrue: [  
		"UGLY: We need to remove the tetrimino from the game matrix, because
		 it may hit itself while testing it"
		self changeCells: position with: 0.
		
		0 to: (tetriminoMatrix rowCount - 1) do: [ :row |
			0 to: (tetriminoMatrix columnCount - 1) do: [ :column |				
				valueInGameMatrix := gameMatrix at:(point y+row) at: (point x + column ).
				valueInTetrimino := tetriminoMatrix at: (row + 1) at: (column + 1).
					hit := hit | ((valueInGameMatrix  ~= 0) & (valueInTetrimino  ~= 0)).
				 ].
		 	].
		"We need to place the tetrimino again in the matrix "
		self changeCells: position with: colorIndex.
	].
	^(insideMatrixBounds & (hit not)).