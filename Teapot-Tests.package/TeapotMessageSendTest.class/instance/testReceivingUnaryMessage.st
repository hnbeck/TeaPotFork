tests
testReceivingUnaryMessage
	self assert: (TeaTestClient httpGetString: '/msg1') equals: 'msg1 result'.