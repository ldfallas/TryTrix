gameStateManagement
removeCompleteRows
	"Search for complete rows in the game matrix and remove them"
	|continue |
	continue := true.
	
	[ continue ] doWhileTrue: [ 
		1 to: (gameMatrix rowCount) do: [ :row |
			(self isRowFull: row) ifTrue: [ 
					self removeRow: row.
				 ].
			 ].
			continue := false.
		 ].
      