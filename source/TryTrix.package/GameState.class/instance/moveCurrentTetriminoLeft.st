movement
moveCurrentTetriminoLeft
	"Tries to move the current Tetrimino in the left direction"

	((self inActiveState) and: [ currentTetrimino canGoLeft ]) ifTrue: [  
		currentTetrimino removeFromMatrix.
		currentTetrimino moveBy: (-1)@0.
		currentTetrimino placeOnMatrix.		
		].