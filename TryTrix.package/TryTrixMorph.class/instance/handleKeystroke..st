as yet unclassified
handleKeystroke: anEvent
	"Keyboard interaction dispatching"

	| keyValue |
	keyValue := anEvent keyValue.
	
	keyValue = 31 "Down"
		ifTrue: [ gameState moveCurrentTetriminoDown . ]. 
	keyValue = 29 "Right"
		ifTrue: [ gameState moveCurrentTetriminoRight . ]. 
	keyValue = 28 "Left"
		ifTrue: [ gameState moveCurrentTetriminoLeft . ]. 
		
	self changed.