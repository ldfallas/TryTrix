initialization
gameState: aGameState 
	gameState := aGameState.
	eventHandlers := Dictionary new.
	gameState 
			on: #nextTetriminoChanged
			do: [ self raise: #nextTetriminoChanged] .
	colors := { Color red. 
					Color magenta.
					Color yellow.
					Color green.
					Color blue.
					Color lightGray.
					Color orange. }.