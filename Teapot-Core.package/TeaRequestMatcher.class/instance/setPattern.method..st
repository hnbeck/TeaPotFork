initialization
setPattern: anUrlPattern method: aMethodMatcher
	urlPattern := anUrlPattern.
	methodMatcher := aMethodMatcher.
	whenClause := [ :anyRequest | true ].
	^ self