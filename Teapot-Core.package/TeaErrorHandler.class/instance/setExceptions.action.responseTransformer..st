initialization
setExceptions: anExceptionSet action: aTeaAction responseTransformer: aResponseTransformer
	exceptions := anExceptionSet.
	action := aTeaAction.
	responseTransformer := aResponseTransformer.
	^ self