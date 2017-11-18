tests
testMatchesAnyRouteInSet
	self assert: (TeaTestClient httpGetString: '/a') equals: 'abc'.
	self assert: (TeaTestClient httpGetString: '/b') equals: 'abc'.
	self assert: (TeaTestClient httpGetString: '/c') equals: 'abc'.