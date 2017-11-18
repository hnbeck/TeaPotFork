zn delegate
handleRequest: aZnRequest
	routes do: [ :each | | aZnResponse |
		aZnResponse := each handleRequest: aZnRequest.
		aZnResponse isNotFound ifFalse: [ ^ aZnResponse ] ].	
	^ ZnResponse notFound: aZnRequest uri