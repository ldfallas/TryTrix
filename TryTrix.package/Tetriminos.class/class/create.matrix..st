initialization
create: kind matrix: gameMatrix 
	| resultTetrimino|    

	kind = #I ifTrue: [ resultTetrimino := ITetrimino create: gameMatrix  ].
	kind = #Z ifTrue: [ resultTetrimino := ZTetrimino create: gameMatrix  ].
	
	resultTetrimino ifNil:[ Object error: 'Invalid Tetrimino' ].
	^ resultTetrimino .