tests
testHandlesExceptionSet
	self assert: (TeaTestClient httpGetString: '/sub') equals: 'outofbounds/domainerror handled'.	
	self assert: (TeaTestClient httpGetString: '/domain') equals: 'outofbounds/domainerror handled'.		