private
addRouteMethod: aTeaMethodMatcher pattern: pattern action: aTeaAction
	current := dynamicRouter addRoute:
		(TeaRoute
			matcher: (TeaRequestMatcher method: aTeaMethodMatcher url: pattern asTeaUrlPattern)
			action: aTeaAction
			transformer: defaultOutput
			port: server port)