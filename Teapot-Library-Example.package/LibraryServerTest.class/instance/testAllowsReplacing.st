tests - an empty library
testAllowsReplacing
	client 
		replaceBook: 1 
		with: book1.
	self 
		assert: client books size
		equals: 1.
		