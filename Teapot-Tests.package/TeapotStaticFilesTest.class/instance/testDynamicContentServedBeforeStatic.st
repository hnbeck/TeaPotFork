tests
testDynamicContentServedBeforeStatic
	self assert: (TeaTestClient httpGetString: 'here/are/statics/b.txt') equals: 'dynamic'.
	