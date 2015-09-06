as yet unclassified
rotateCurrentTetrimino
	"Rotates the current tetrimino to the right"
	
	((self inActiveState) and: [ currentTetrimino canRotate]) ifTrue: [  
		currentTetrimino removeFromMatrix.
		currentTetrimino rotateRight.
		currentTetrimino placeOnMatrix.		
		].