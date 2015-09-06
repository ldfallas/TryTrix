initialization
create: kind matrix: gameMatrix 
	| resultTetrimino|    

	"kind = #I ifTrue: [ resultTetrimino := ITetrimino create: gameMatrix  ]."
	kind = #I ifTrue: [ 
		resultTetrimino := 
			Tetrimino 
				create: gameMatrix 
				tetriminoMatrix: (Matrix rows: 1 columns: 4 contents: { 1. 1. 1. 1. })  
		].
	"kind = #Z ifTrue: [ resultTetrimino := ZTetrimino create: gameMatrix  ]."
	kind = #Z ifTrue: [ 
		resultTetrimino := 
			Tetrimino 
				create: gameMatrix 
				tetriminoMatrix: 
					(Matrix rows: 2 
						columns: 3 
						contents: { 1. 1. 0.
									0. 1. 1. })  
		].


	kind = #T ifTrue: [ 
		resultTetrimino := 
			Tetrimino 
				create: gameMatrix 
				tetriminoMatrix: 
					(Matrix rows: 2 
						columns: 3 
						contents: { 1. 1. 1.
									0. 1. 0. })  
		].
	
	resultTetrimino ifNil:[ Object error: 'Invalid Tetrimino' ].
	^ resultTetrimino .