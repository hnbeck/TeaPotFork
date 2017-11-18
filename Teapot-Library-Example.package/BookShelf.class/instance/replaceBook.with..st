book library
replaceBook: bookId with: aDictionary
	^ books 
		at: bookId 
		put: (aDictionary copyWith: #id -> bookId)