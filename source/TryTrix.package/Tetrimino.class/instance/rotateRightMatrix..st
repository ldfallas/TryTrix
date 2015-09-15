matrixInteraction
rotateRightMatrix: matrixToRotate
	| tempMatrix |
	tempMatrix := 
		Matrix rows: matrixToRotate columnCount 
					columns: matrixToRotate rowCount.	
		
	"Invert row and column number to rotate the tetrimino"
	1 to: matrixToRotate columnCount do: [ :row | 
		1 to: matrixToRotate rowCount do: [ :column | 
			tempMatrix 
				at: row 
				at: column 
				put: (matrixToRotate at: matrixToRotate rowCount + 1 - column at: row) 
			]
	 ].
	^ tempMatrix.