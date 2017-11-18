private
checkForNotFound: aZnResponse book: bookId
	404 = aZnResponse code 
		ifTrue: [ BookNotFound signalWithBookId: bookId ]