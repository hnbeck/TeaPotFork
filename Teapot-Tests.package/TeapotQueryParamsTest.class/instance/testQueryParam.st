tests
testQueryParam
	self assert: (TeaTestClient httpGetString: '/query?foo=bar') equals: 'bar'.
	self assert: (TeaTestClient httpGetString: '/queryopt?foo=baz') equals: 'baz'.