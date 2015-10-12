as yet unclassified
preview: aTetrimino
      "Clear the prevous matrix "
	matrix atAllPut: 0.
	aTetrimino changeCells: 1@1 with: (aTetrimino colorIndex ) on: matrix.
	self changed.