as yet unclassified
handleKeystroke: anEvent
	"Keyboard interaction dispatching"

	| keyValue |
	keyValue := anEvent keyValue.
	
	keyValue = 31 "Down"
		ifTrue: [ gameState moveCurrentTetriminoDown . ]. 
	self changed.