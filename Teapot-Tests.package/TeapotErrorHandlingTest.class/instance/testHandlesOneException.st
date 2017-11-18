tests
testHandlesOneException
	self assert: (TeaTestClient httpGetString: '/zerodiv') equals: 'zerodiv handled'.	