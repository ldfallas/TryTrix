as yet unclassified
drawOn: canvas
	"Morph drawing code"
      super drawOn: canvas.
	self drawGameStateOn: canvas 
		width: (self width) height: (self height)
		columns: (matrix columnCount) rows: (matrix rowCount) 
		morphBounds: (self bounds)
		matrix: matrix
		colors:  { Color red. 
					Color magenta.
					Color yellow.
					Color green.
					Color blue.
					Color lightGray.
					Color orange. }.