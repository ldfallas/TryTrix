movement
moveCurrentTetriminoRight
	"Tries to move the current Tetrimino right"

	((self inActiveState) and: [ currentTetrimino canGoRight ]) ifTrue: [  
		currentTetrimino removeFromMatrix.
		currentTetrimino moveBy: 1@0.
		currentTetrimino placeOnMatrix.		
		].