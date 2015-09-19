gameStateManagement
isRowFull: rowNumber
	"Veifies if the given row is full"
	|isFull|

	isFull := true.
	1 to: (gameMatrix columnCount ) do: [ :column |
		(gameMatrix  at: rowNumber at: column ) = 0
			ifTrue: [ isFull := false. ]
		 ].
	^isFull.
