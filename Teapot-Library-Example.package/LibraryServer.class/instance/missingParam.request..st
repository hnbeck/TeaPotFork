error handlers
missingParam: aTeaNoSuchParam request: aZnRequest
	^ TeaResponse badRequest body:
		{ 
			#code -> 'MALFORMED_INPUT'. 
			#message -> ('Missing parameter: ', aTeaNoSuchParam param)
		} asDictionary