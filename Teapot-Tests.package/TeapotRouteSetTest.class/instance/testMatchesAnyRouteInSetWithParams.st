tests
testMatchesAnyRouteInSetWithParams
	self assert: (TeaTestClient httpPostString: '/x/value1') equals: 'value1'.
	self assert: (TeaTestClient httpPostString: '/y/value2') equals: 'value2'.	