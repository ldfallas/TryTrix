as yet unclassified
rotateCurrentTetrimino
	"Rotates the current tetrimino to the right"
	currentTetrimino removeFromMatrix.
	currentTetrimino rotateRight.
	currentTetrimino placeOnMatrix.		