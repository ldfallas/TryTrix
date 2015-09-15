initialization
initWithMatrix: aGameMatrix tetriminoMatrix: aTetriminoMatrix colorIndex: aColorIndex
	gameMatrix := aGameMatrix.
	tetriminoMatrix := aTetriminoMatrix.
	position := 1@1.
	colorIndex := aColorIndex.
	^self.