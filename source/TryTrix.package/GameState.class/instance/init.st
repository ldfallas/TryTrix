initialization
init
      rows := 20.
   	columns := 10.
	gameMatrix := Matrix rows: rows columns: columns element: 0.
	tetriminoKinds := { #T . #I . #Z. #S. #J. #L. #O. }.
	randomGenerator := Random new.
	randomGenerator initialize.
	
	currentTetrimino :=  Tetriminos create: (self getRandomTetriminoId) matrix:gameMatrix.
	nextTetrimino :=  Tetriminos create: (self getRandomTetriminoId)  matrix:gameMatrix.
	
	eventHandlers := Dictionary new.
	
	state := #inital.
	(currentTetrimino placeOnMatrix) ifFalse: [self goToFinishedState].