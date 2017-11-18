instance creation
for: anExceptionSet action: aTeaAction responseTransformer: aResponseTransformer
	^ self new 
		setExceptions: anExceptionSet 
		action: aTeaAction 
		responseTransformer: aResponseTransformer