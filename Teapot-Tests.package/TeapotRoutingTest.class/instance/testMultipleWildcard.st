tests
testMultipleWildcard
	self assert: (TeaTestClient httpGetString: 'x/foo/bar/z/baz') equals: '6'.
	self assert: (TeaTestClient httpGetString: 'x/foo/bar/z/baz/123') equals: '6'.
	