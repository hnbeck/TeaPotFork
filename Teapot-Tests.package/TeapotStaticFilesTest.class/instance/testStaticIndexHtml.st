tests
testStaticIndexHtml
	self assert: (TeaTestClient httpGetString: 'here/are/statics') equals: 'static index'.
	