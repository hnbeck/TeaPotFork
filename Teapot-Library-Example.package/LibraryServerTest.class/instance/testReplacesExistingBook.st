tests  - a non empty library
testReplacesExistingBook
	| old new id |
	old := client addBook: book1.
	id := old at: #id.
	
	client 
		replaceBook: id 
		with: book2.		
	new := client findBook: id.
	
	self 
		assert: new 
		equals: (book2 copyWith: #id -> id)