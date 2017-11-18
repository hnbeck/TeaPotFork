signaling
signalWithBookId: anInteger
	(self new initializeBookId: anInteger) signal: 'Book not found: ', anInteger asString