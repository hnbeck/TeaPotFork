tests
testDefaultQueryParam
	self assert: (TeaTestClient httpGetString: '/queryopt') equals: 'default'.	