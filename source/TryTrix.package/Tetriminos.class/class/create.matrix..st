initialization
create: kind matrix: gameMatrix 
	| resultTetrimino|    
	
	kind = #I ifTrue: [ 
		resultTetrimino := 
			Tetrimino 
				create: gameMatrix 
				tetriminoMatrix: (Matrix rows: 1 columns: 4 contents: { 1. 1. 1. 1. })
				colorIndex: 1
		].
	
	kind = #Z ifTrue: [ 
		resultTetrimino := 
			Tetrimino 
				create: gameMatrix 
				tetriminoMatrix: 
					(Matrix rows: 2 
						columns: 3 
						contents: { 1. 1. 0.
										0. 1. 1. })  
				colorIndex: 2.
		].

	kind = #S ifTrue: [ 
		resultTetrimino := 
			Tetrimino 
				create: gameMatrix 
				tetriminoMatrix: 
					(Matrix rows: 2 
						columns: 3 
						contents: { 0. 1. 1.
										1. 1. 0. })  
				colorIndex: 3.
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
				colorIndex: 4.
		].

	kind = #J ifTrue: [ 
		resultTetrimino := 
			Tetrimino 
				create: gameMatrix 
				tetriminoMatrix: 
					(Matrix rows: 2 
						columns: 3 
						contents: { 1. 1. 1.
										0. 0. 1. })  
				colorIndex: 5.
		].

	kind = #L ifTrue: [ 
		resultTetrimino := 
			Tetrimino 
				create: gameMatrix 
				tetriminoMatrix: 
					(Matrix rows: 2 
						columns: 3 
						contents: { 1. 1. 1.
										1. 0. 0. })  
				colorIndex: 6.
		].
	
	kind = #O ifTrue: [ 
		resultTetrimino := 
			Tetrimino 
				create: gameMatrix 
				tetriminoMatrix: 
					(Matrix rows: 2 
						columns: 2 
						contents: { 1. 1. 
										1. 1. })  
				colorIndex: 7.
		].
	
	resultTetrimino ifNil:[ Object error: 'Invalid Tetrimino' ].
	^ resultTetrimino .