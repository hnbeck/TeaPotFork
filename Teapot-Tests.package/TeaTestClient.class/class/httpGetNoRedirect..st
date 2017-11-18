private
httpGetNoRedirect: aString
	^ ZnClient new
		followRedirects: false;
		get: 'http://localhost:1701/', aString;		
		response

	