initialization
init
      rows := 50.
   	columns := 12.
	gameMatrix := Matrix rows: rows columns: columns element: 0.
	currentTetrimino :=  Tetriminos create: #I matrix:gameMatrix.
	nextTetrimino :=  Tetriminos create: #Z matrix:gameMatrix.
	
	state := #inital.
	(currentTetrimino placeOnMatrix) ifFalse: [self goToFinishedState].