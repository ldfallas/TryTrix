events
raise: eventSymbol
	"raises the given event"
      eventHandlers 
		at: eventSymbol 
		ifPresent: [ :block |  block value. ].