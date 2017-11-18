tests
testRedirect
	self assert: (TeaTestClient httpGetString: '/redirect') equals: 'redirected here'.
	