error handlers
bookNotFound: aBookNotFound request: aZnRequest
	^ TeaResponse notFound body:
		{ 
			#code -> 'NOT_FOUND'. 
			#message -> ('No such book: ', aBookNotFound bookId asString)
		} asDictionary