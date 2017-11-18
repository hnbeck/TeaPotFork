tests
testDirectStreamResponse
	self assert: (TeaTestClient httpGetString: '/resp2') equals: 'direct stream'.	