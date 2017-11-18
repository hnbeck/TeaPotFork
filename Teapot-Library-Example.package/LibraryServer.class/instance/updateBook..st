routes
updateBook: request
	^ bookShelf 
		replaceBook: (request at: 'id') 
		with: (self makeBook: request)

	

	