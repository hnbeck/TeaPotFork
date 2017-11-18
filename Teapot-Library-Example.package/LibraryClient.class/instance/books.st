book library
books
	| response |
	response := ZnClient new
		url: self baseUrl, '/books';
		get;
		response.		
	^ self parseResponse: response

