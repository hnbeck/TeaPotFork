tests
testPlaceholderPost
	self assert: (TeaTestClient httpPostString: '/user/789/create') equals: '4-789'.	

	