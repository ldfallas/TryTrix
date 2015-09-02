as yet unclassified
drawOn: canvas
	"Draws the current game state"
	|rows columns currentValue rectangle currentColor cellWidth cellHeight|

	rows := gameState size x.
	columns := gameState size y.
	
	super drawOn: canvas.
	
	cellWidth :=   ((self width) / columns) asFloat truncated.
	cellHeight :=   ((self height) / rows) asFloat truncated.
	1 to: rows do: [ :row |
		1 to: columns do: [ :column|
			currentValue := gameState at: row at: column .
			currentValue ~= 0 ifTrue: [ 
				currentColor := Color red.
				rectangle := Rectangle left: (self bounds left) + ((column - 1)*cellWidth) 
                                                      right: (self bounds left) + ((column - 1)*cellWidth) + cellWidth
                                                      top: (self bounds top) + ((row - 1)*cellHeight )
                                                      bottom: (self bounds top) + ((row - 1)*cellHeight ) + cellHeight.
				canvas frameAndFillRectangle: rectangle
						fillColor:  currentColor
						borderWidth:  1
						borderColor: (Color white).
				 ]
			 ]
		 ].
	