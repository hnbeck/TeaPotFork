tests
testValueAsExceptionHandler
	self assert: (TeaTestClient httpGetString: '/nonbool') equals: 'nonbool handled'.	