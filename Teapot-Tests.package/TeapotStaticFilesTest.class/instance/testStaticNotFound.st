tests
testStaticNotFound
	self assert: (TeaTestClient httpGet: 'here/are/statics/notfound.txt') code equals: 404.
	