as yet unclassified
create: aGameMatrix tetriminoMatrix: aTetriminoMatrix 
	|result|
	result := Tetrimino new.
	result initWithMatrix: aGameMatrix tetriminoMatrix: aTetriminoMatrix.
	^result.