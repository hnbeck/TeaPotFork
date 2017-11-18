tests
testWildcardFirst
	self assert: (TeaTestClient httpGetString: 'foo/c') equals: '4'
	