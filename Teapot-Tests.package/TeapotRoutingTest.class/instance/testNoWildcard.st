tests
testNoWildcard
	self assert: (TeaTestClient httpGetString: '') equals: '1'.
	self assert: (TeaTestClient httpGetString: '/a') equals: '2'.	
	