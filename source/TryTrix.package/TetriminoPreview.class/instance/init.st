as yet unclassified
init
	"Initialized the current tetrimino matrix"

	matrix := Matrix rows: 4 columns: 4 element: 0.
	self color: (Color black).
	