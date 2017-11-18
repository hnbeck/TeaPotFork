response transformers
stringWithContentType: aZnMimeType 
	^ [ :aTeaResponse | | entity |
		entity := ZnStringEntity new
			contentType: (aZnMimeType charSet: aTeaResponse charSet; yourself);
			string: aTeaResponse body asString;
			yourself.
		self 
			znEntity: entity 
			code: aTeaResponse code 
			headers: aTeaResponse headers ]