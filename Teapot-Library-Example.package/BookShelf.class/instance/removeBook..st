book library
removeBook: bookId 
	^ books 
		removeKey: bookId 
		ifAbsent: [ BookNotFound signalWithBookId: bookId ]