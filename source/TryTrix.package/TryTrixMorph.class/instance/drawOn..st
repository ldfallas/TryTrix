drawing
drawOn: canvas
	"Draws the current game state"
	|rows columns  
	 areaWidth areaHeight  morphBounds contentMatrix|

	rows := gameState size x.
	columns := gameState size y.
		
	super drawOn: canvas.

	areaWidth := self width.
	areaHeight := self height.
	morphBounds := self bounds.
	contentMatrix := gameState.
	 
	self drawGameStateOn: canvas 
		 width:  areaWidth
		 height:  areaHeight
 		columns:  columns 
	  	rows:  rows
		morphBounds: morphBounds
		matrix: contentMatrix
		colors: colors.