tests
testWildcardInside
	self assert: (TeaTestClient httpGetString: 'a/bar/b') equals: '3'
	