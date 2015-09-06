initialization
init
	|result|
	result := TryTrixMorph new.
	result width: 175; height:500.
	result gameState: (GameState init).
	^result.