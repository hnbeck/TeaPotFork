tests
testPlaceholderInside
	self assert: (TeaTestClient httpGetString: 'user/34/create') equals: '2-34'.	
	