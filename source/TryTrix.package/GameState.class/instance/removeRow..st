gameStateManagement
removeRow: rowNumber
	"Removes the specified row and moves the contents of the matrix down"
	
	(rowNumber - 1) to: 1 by: -1 do: [ :row |
		1 to: (gameMatrix columnCount) do: [ :column |
			gameMatrix at: (row+1) at: column put: (gameMatrix at: row at: column).
			 ]
		 ].
	"Clean up the first row"
	1 to: (gameMatrix columnCount) do: [ :column |
			gameMatrix at: 1 at: column put: 0.
			 ]