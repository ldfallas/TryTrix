matrixInteraction
couldBePlacedAt: point withTetriminoMatrix: customTetriminoMatrix
	| insideMatrixBounds valueInGameMatrix valueInTetrimino hit|
	insideMatrixBounds := 
		((point y + (customTetriminoMatrix rowCount - 1)) <= gameMatrix rowCount) 
		& (point y >  0)
		& (point x  > 0)
		& ((point x + (customTetriminoMatrix columnCount - 1)) <= gameMatrix columnCount).
		
	hit := false.
	insideMatrixBounds ifTrue: [  

		
		0 to: (customTetriminoMatrix rowCount - 1) do: [ :row |
			0 to: (customTetriminoMatrix columnCount - 1) do: [ :column |				
				valueInGameMatrix := gameMatrix at:(point y+row) at: (point x + column ).
				valueInTetrimino := customTetriminoMatrix at: (row + 1) at: (column + 1).
					hit := hit | ((valueInGameMatrix  ~= 0) & (valueInTetrimino  ~= 0)).
				 ].
		 	].

	].
	^(insideMatrixBounds & (hit not)).