as yet unclassified
drawGameStateOn: canvas 
		width: areaWidth height: areaHeight 
		columns: columns rows: rows 
		morphBounds: morphBounds
		matrix: contentMatrix
		colors:  colorPalette
	"Draw the contents of the specified matrix on the given canvas"
	|cellWidth cellHeight currentValue currentColor rectangle|
      cellWidth :=   (areaWidth / columns) asFloat truncated.
	cellHeight :=   (areaHeight / rows) asFloat truncated.
	1 to: rows do: [ :row |
		1 to: columns do: [ :column|
			currentValue := contentMatrix at: row at: column .
			currentValue ~= 0 ifTrue: [ 
				currentColor := (colorPalette at: currentValue).
				rectangle := Rectangle left: (morphBounds left) + ((column - 1)*cellWidth) 
												right: (morphBounds left) + ((column - 1)*cellWidth) + cellWidth
												top: (morphBounds top) + ((row - 1)*cellHeight )
												bottom: (morphBounds top) + ((row - 1)*cellHeight ) + cellHeight.
				canvas frameAndFillRectangle: rectangle
						fillColor:  currentColor
						borderWidth:  1
						borderColor: (Color white).
				 ]
			 ]
		 ].
	