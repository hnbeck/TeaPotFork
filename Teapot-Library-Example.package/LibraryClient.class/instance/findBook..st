book library
findBook: bookId
	| response |
	response := ZnClient new
		url: self baseUrl, '/books/', bookId asString;
		get;
		response.
	self checkForNotFound: response book: bookId.
	^ self parseResponse: response