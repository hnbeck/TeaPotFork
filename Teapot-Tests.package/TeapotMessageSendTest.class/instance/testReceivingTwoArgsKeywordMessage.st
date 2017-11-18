tests
testReceivingTwoArgsKeywordMessage
	self assert: (TeaTestClient httpGetString: '/msg2/foo') equals: 'msg2 foo'.