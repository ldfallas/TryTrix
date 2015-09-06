matrixInteraction
couldBePlacedAt: point 
	| insideMatrixBounds  |
	insideMatrixBounds := 
		((point y + (tetriminoMatrix rowCount - 1)) <= gameMatrix rowCount) 
		& (point y >  0)
		& (point x  > 0)
		& ((point x + (tetriminoMatrix columnCount - 1)) <= gameMatrix columnCount).
	^insideMatrixBounds.