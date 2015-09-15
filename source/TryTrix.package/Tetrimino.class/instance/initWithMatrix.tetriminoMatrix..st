initialization
initWithMatrix: aGameMatrix tetriminoMatrix: aTetriminoMatrix
	gameMatrix := aGameMatrix.
	tetriminoMatrix := aTetriminoMatrix.
	position := 1@1.
	^self.