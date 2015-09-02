matrixInteraction
couldBePlacedAt: point 
	| insideMatrixBounds  |
	insideMatrixBounds := 
		(point y <= gameMatrix rowCount) 
		& (point y >  0)
		& (point x  > 0)
		& (point x < gameMatrix columnCount).
	^insideMatrixBounds.