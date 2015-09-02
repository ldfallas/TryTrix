as yet unclassified
moveCurrentTetriminoDown
	"Tries to move the current Tetrimino down"

	((self inActiveState) and: [ currentTetrimino canGoDown ]) ifTrue: [  
		currentTetrimino removeFromMatrix.
		currentTetrimino moveBy: 0@1.
		currentTetrimino placeOnMatrix.		
		].