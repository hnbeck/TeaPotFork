book library
removeBook: bookId
	| response |
	response := ZnClient new
		url: self baseUrl, '/books/', bookId asString;
		delete;
		response.
	self checkForNotFound: response book: bookId.
	^ self parseResponse: response