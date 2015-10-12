movement
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
			nextTetrimino := Tetriminos create: (self getRandomTetriminoId) matrix: gameMatrix.
			self raise: #nextTetriminoChanged.
			self removeCompleteRows.
			(currentTetrimino couldBePlacedInGameMatrix) ifFalse: [ 
				self goToFinishedState.
				 ].
			].