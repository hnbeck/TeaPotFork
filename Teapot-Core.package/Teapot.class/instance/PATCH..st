url mapping
PATCH: patternActionAssoc
	self
		addRouteMethod: (TeaMethodMatcher exactly: #PATCH)
		pattern: patternActionAssoc key
		action: patternActionAssoc value