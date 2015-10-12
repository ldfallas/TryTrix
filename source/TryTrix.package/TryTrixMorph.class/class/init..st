initialization
init: gameState
	|result|
	result := TryTrixMorph new.
	result width: 175; height:395.
	result gameState: gameState.
	result color: Color black.
	^result.