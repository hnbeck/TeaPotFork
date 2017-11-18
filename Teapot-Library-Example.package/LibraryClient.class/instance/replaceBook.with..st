book library
replaceBook: bookId with: aDictionary
	| response |
	response := ZnClient new
		url: self baseUrl, '/books/', bookId asString;
		formAt: 'title' put:  (aDictionary at: #title);
		formAt: 'authors' put: (aDictionary at: #authors);
		put;
		response.
	^ self parseResponse: response