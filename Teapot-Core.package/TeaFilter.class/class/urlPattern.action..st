instance creation
urlPattern: anUrlPattern action: aTeaAction
	^ self new 
		setMatcher: (TeaRequestMatcher method: TeaMethodMatcher any url: anUrlPattern)
		action: aTeaAction
