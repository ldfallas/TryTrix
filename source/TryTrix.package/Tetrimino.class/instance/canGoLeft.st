matrixInteraction
canGoLeft
	^ self couldBePlacedAt: ((position x) - 1)@(position y).