tests
testWildcardEnd
	self assert: (TeaTestClient httpGetString: '/x/y/foo') equals: '5'.	
	