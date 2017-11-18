routes
deleteBook: request		
	^ bookShelf removeBook: (request at: #id)
	
