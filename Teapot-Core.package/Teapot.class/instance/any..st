url mapping
any: patternActionAssoc
	self
		addRouteMethod: TeaMethodMatcher any
		pattern: patternActionAssoc key
		action: patternActionAssoc value