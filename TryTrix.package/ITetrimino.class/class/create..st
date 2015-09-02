initialization
create: gameMatrix 
	|result|
	result := ITetrimino new.
	result initWithMatrix: gameMatrix.
	^result.