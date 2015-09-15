initialization
init
      rows := 50.
   	columns := 10.
	gameMatrix := Matrix rows: rows columns: columns element: 0.
	tetriminoKinds := { #T . #I . #Z . }.
	randomGenerator := Random new.
	randomGenerator initialize.
	
	currentTetrimino :=  Tetriminos create: (self getRandomTetriminoId) matrix:gameMatrix.
	nextTetrimino :=  Tetriminos create: (self getRandomTetriminoId)  matrix:gameMatrix.
	
	
	
	state := #inital.
	(currentTetrimino placeOnMatrix) ifFalse: [self goToFinishedState].