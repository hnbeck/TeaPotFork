tests
testPlaceholderAtLast
	self assert: (TeaTestClient httpGetString: 'user/12') equals: '1-12'
	