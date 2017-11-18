book library
addBook: aDictionary
	| bookId |
	bookId := self uniqueId.
	^ books 
		at: bookId
		put: (aDictionary copyWith: #id -> bookId)