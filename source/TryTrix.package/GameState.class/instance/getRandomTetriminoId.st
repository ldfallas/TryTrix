currentState
getRandomTetriminoId
	"Returns a random id for the next tetrimino"

	|    |

	^ (tetriminoKinds at: (randomGenerator  nextInt: (tetriminoKinds size ))).