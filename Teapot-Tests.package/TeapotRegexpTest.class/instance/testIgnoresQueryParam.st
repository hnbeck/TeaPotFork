tests
testIgnoresQueryParam
	self assert: (TeaTestClient httpGetString: '/k/?param=value') equals: 'regexp'.	