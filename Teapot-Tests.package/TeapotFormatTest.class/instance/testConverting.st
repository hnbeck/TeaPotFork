tests
testConverting
	self assert: (TeaTestClient httpGetString: '/a') equals: 'IV'.	