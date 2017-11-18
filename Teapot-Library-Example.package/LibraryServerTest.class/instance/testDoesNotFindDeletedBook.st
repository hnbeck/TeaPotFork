tests  - a non empty library
testDoesNotFindDeletedBook
	book1 := client addBook: book1.
	book2 := client addBook: book2.
			
	client removeBook: (book1 at: #id).
	
	self 
		should: [ client findBook: (book1 at: #id) ] 
		raise: BookNotFound.	
	self 
		assert: client books size 
		equals: 1.
	self 
		assert: client books first 
		equals: book2.
	