book library
addBook: aDictionary		
	| response |
	response := ZnClient new
		url: self baseUrl, '/books';
		formAt: 'title' put:  (aDictionary at: #title);
		formAt: 'authors' put: (aDictionary at: #authors);
		post;
		response.
	^ self parseResponse: response