tests
testStaticFile
	self assert: (TeaTestClient httpGetString: 'here/are/statics/a.txt') equals: 'a'.
	