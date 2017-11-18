tests
testRegexpMatch
	self assert: (TeaTestClient httpGetString: 'k/') equals: 'regexp'.	