private
httpDeleteString: aString
	^ ZnClient new
		url: 'http://localhost:1701/', aString;
		delete

	