private
evaluateRouters: aZnRequest
	routers do: [ :each | | response |
		response := each handleRequest: aZnRequest.
		response isNotFound ifFalse: [ ^ response ] ].
	^ ZnResponse notFound: aZnRequest uri