error handler
handleError: anException request: aTeaRequest
	| result |
	^ (self canHandleError: anException)
		ifTrue:
			[ result := action teaEvalActionOnException: anException request: aTeaRequest.
			result teaTransform: responseTransformer request: aTeaRequest ]
		ifFalse: 
			[ self error: 'Cannot handle ', anException printString ]