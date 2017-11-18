url mapping
GET: patternActionAssoc
	self 
		addRouteMethod: (TeaMethodMatcher exactly: #GET) 
		pattern: patternActionAssoc key 
		action: patternActionAssoc value