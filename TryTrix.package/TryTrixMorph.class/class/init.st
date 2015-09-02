initialization
init
	|result|
	result := TryTrixMorph new.
	result width: 200; height:400.
	result gameState: (GameState init).
	^result.