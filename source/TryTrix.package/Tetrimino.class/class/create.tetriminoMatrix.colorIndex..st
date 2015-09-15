as yet unclassified
create: aGameMatrix tetriminoMatrix: aTetriminoMatrix colorIndex: colorIndex
	|result|
	result := Tetrimino new.
	result initWithMatrix: aGameMatrix
			 tetriminoMatrix: aTetriminoMatrix
			 colorIndex: colorIndex.
	^result.