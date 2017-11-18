tests
testAbortSupportsAnyObject
	self assert: (TeaTestClient httpGetString: '/abortstring') equals: 'abort test'.