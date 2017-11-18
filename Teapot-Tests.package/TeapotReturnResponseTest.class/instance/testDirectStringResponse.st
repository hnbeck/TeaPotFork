tests
testDirectStringResponse
	self assert: (TeaTestClient httpGetString: '/resp1') equals: 'direct response'.	