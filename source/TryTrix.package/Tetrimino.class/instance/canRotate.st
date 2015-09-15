matrixInteraction
canRotate
	|result tmpMatrix|
	"UGLY: We need to remove the tetrimino from the game matrix, because
	it may hit itself while testing it"
	self changeCells: position with: 0.
	tmpMatrix := self rotateRightMatrix: tetriminoMatrix.
	result := self couldBePlacedAt: position withTetriminoMatrix: tmpMatrix.
	"We need to place the tetrimino again in the matrix "
	self changeCells: position with: colorIndex.
	^result.