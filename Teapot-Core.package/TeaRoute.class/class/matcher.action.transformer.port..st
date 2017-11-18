instance creation
matcher: aTeaRequestMatcher action: aTeaAction transformer: aResponseTransformer port: portNumber
	^ self new 
		setMatcher: aTeaRequestMatcher
		action: aTeaAction
		transformer: aResponseTransformer
		port: portNumber "XXX only used by teapsoon inspector"