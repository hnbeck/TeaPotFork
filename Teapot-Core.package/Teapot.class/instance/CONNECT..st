url mapping
CONNECT: patternActionAssoc
	self
		addRouteMethod: (TeaMethodMatcher exactly: #CONNECT)
		pattern: patternActionAssoc key
		action: patternActionAssoc value