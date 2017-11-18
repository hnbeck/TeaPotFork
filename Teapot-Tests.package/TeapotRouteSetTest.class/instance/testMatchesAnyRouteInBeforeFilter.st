tests
testMatchesAnyRouteInBeforeFilter
	| response |
	response := TeaTestClient httpGet: '/secure/123'.
	self assert: response code equals: 401.
	
	response := TeaTestClient httpGet: '/protected/123'.
	self assert: response code equals: 401.
