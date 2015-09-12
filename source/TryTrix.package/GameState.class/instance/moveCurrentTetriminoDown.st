as yet unclassified
moveCurrentTetriminoDown
	"Tries to move the current Tetrimino down"
	|tmp|
	((self inActiveState) and: [ currentTetrimino canGoDown ]) ifTrue: [  
		currentTetrimino removeFromMatrix.
		currentTetrimino moveBy: 0@1.
		currentTetrimino placeOnMatrix.		
		]
		ifFalse: [
			tmp := nextTetrimino.
			currentTetrimino := nextTetrimino.
			nextTetrimino := Tetriminos create: #I matrix: gameMatrix.		
			].