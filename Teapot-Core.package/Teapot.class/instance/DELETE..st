url mapping
DELETE: patternActionAssoc
	self
		addRouteMethod: (TeaMethodMatcher exactly: #DELETE)
		pattern: patternActionAssoc key
		action: patternActionAssoc value