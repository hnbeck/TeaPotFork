tests
testCollectingSubexpressions
	self assert: (TeaTestClient httpGetString: '/abc3/4/xxx') equals: '3'.	
	self assert: (TeaTestClient httpGetString: '/1/aabbcc/2/foobar') equals: '1aabbccfoobar'.