initialization
init
	|result|
	result := TryTrixMorph new.
	result width: 150; height:400.
	result gameState: (GameState init).
	^result.