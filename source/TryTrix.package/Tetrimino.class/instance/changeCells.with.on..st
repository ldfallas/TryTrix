matrixInteraction
changeCells: aPoint with: anInteger on: matrix
	0 to: (tetriminoMatrix rowCount - 1) do:  [ :row |
		0 to: (tetriminoMatrix columnCount - 1 ) do: [ :column |
			 ((tetriminoMatrix at: (row + 1) at: (column + 1)) = 1)
				ifTrue: [  
			 		matrix at: (aPoint y + row )
					 			  at: (aPoint x + column )
								  put:  anInteger.
						]
			 ]
		 ].