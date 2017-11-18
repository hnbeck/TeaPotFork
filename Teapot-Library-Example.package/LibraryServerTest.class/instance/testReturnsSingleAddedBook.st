tests - an empty library
testReturnsSingleAddedBook
	| added found |	
	added := client addBook: book1.
	found := client findBook: (added at: #id).
	
	self assert: found equals: added.