as yet unclassified
start
	"start the game"

	| window trytrixmorph tetriminiopreview gameState|
	gameState := GameState init.
	trytrixmorph := TryTrixMorph init: gameState.
	tetriminiopreview := TetriminoPreview new.
	tetriminiopreview init.
	tetriminiopreview preview: (gameState nextTetrimino).
	window := StandardWindow new.
	window 
		addMorph: trytrixmorph
		fullFrame: ((0.25@0 corner: 0.75@1.0) asLayoutFrame ) ;		
		addMorph: tetriminiopreview		
		fullFrame: ((0@0 corner: 0.20@0.20) asLayoutFrame ) .
	trytrixmorph on: #nextTetriminoChanged do: [ 
		tetriminiopreview preview: (gameState nextTetrimino).
		Transcript show: 'Changing tetriminos' 
		].
	
	window 
			title: 'TryTrix';
			themeChanged;
			openInWorld. 