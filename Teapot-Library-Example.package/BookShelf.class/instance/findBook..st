book library
findBook: bookId 
	^ books 
		at: bookId
		ifAbsent: [ BookNotFound signalWithBookId: bookId ]