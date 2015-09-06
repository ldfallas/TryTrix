matrixInteraction
placeOnMatrix
	|success|
	(self couldBePlacedAt: position)
		ifTrue: [
			self changeCellsFrom: position. 
			success := true. 
		]
		ifFalse: [ success := false. ].
	^success.