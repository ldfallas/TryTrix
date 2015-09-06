initialization
init
      rows := 50.
   	columns := 10.
	gameMatrix := Matrix rows: rows columns: columns element: 0.
	currentTetrimino :=  Tetriminos create: #T matrix:gameMatrix.
	nextTetrimino :=  Tetriminos create: #I matrix:gameMatrix.
	
	state := #inital.
	(currentTetrimino placeOnMatrix) ifFalse: [self goToFinishedState].