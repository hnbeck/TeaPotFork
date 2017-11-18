tests
testReceivingOneArgKeywordMessage
	self assert: (TeaTestClient httpGetString: '/msg3/bar') equals: 'msg3 bar'.