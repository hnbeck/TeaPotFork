routes
readBook: request
	^ bookShelf findBook: (request at: #id)