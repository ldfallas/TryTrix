initialization
init
	|result|
	result := TryTrixMorph new.
	result width: 175; height:395.
	result gameState: (GameState init).
	result color: Color black.
	^result.