tests - an empty library
testSignalsErrorWhenRemoving
	self 
		should: [ client removeBook: 1 ]
		raise: BookNotFound