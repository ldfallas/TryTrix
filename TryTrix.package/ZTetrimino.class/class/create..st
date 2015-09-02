initialization
create: initialGameMatrix 
	|result|
	result := ZTetrimino new.
	result initWithMatrix: initialGameMatrix.
	^result.