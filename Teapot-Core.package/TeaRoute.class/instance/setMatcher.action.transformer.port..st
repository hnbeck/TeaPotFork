initialization
setMatcher: aTeaRequestMatcher action: aTeaAction transformer: aResponseTransformer port: portNumber
	requestMatcher := aTeaRequestMatcher.
	action := aTeaAction.
	responseTransformer := aResponseTransformer.
	port := portNumber.
	^ self