url mapping
PUT: patternActionAssoc
	self 
		addRouteMethod: (TeaMethodMatcher exactly: #PUT) 
		pattern: patternActionAssoc key 
		action: patternActionAssoc value