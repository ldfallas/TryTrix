initialization
init
      rows := 50.
   	columns := 12.
	gameMatrix := Matrix rows: rows columns: columns element: 0.
	currentTetrimino :=  Tetriminos create: #Z matrix:gameMatrix.
	nextTetrimino :=  Tetriminos create: #I matrix:gameMatrix.
	
	state := #inital.
	(currentTetrimino placeOnMatrix) ifFalse: [self goToFinishedState].