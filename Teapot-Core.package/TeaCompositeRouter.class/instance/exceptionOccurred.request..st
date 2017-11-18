private
exceptionOccurred: anException request: aZnRequest
	| handler |
	handler := errorhandlers 
		detect: [ :each | each canHandleError: anException ]
		ifNone: [ anException pass ].		
	^ handler handleError: anException request: (TeaRequest fromZnRequest: aZnRequest).
	