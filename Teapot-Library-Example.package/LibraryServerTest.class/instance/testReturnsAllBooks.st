tests  - a non empty library
testReturnsAllBooks
	| books |	
	books := client 
		addBook: book1;
		addBook: book2;
		books.
		
	self 
		assert: books size 
		equals: 2.
	
	