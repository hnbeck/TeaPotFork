tests
testPlaceholderFirst
	self assert: (TeaTestClient httpGetString: '54/user') equals: '3-54'.

	