matrixInteraction
rotateRight
	"Rotates the tetrimino matrix"

	| tempMatrix |

	tempMatrix := self rotateRightMatrix: tetriminoMatrix.
	tetriminoMatrix := tempMatrix