as yet unclassified
changeCells: startPoint with: value
	gameMatrix
		at: startPoint y at: startPoint x put: value;
		at: startPoint y at: startPoint x + 1 put: value;
		at: startPoint y at: startPoint x + 2 put: value;
		at: startPoint y at: startPoint x + 3 put: value