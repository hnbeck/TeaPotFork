url mapping
HEAD: patternActionAssoc
	self 
		addRouteMethod: (TeaMethodMatcher exactly: #HEAD) 
		pattern: patternActionAssoc key 
		action: patternActionAssoc value