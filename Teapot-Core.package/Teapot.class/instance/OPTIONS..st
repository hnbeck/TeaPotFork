url mapping
OPTIONS: patternActionAssoc
	self
		addRouteMethod: (TeaMethodMatcher exactly: #OPTIONS)
		pattern: patternActionAssoc key
		action: patternActionAssoc value