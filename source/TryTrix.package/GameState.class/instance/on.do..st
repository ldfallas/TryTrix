events
on: eventName do: aBlock
	"Subscribe to an event"
	eventHandlers at: eventName put: aBlock.