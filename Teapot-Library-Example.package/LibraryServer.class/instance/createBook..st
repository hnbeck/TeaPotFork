routes
createBook: request
	| book |
	book := bookShelf addBook: (self makeBook: request).
	^ TeaResponse created
		body: book;
		location: '/books/', (book at: #id) asString