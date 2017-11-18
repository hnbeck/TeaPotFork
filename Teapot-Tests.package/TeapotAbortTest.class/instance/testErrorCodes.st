tests
testErrorCodes
	self assert: (TeaTestClient httpGet: '/badrequest') code equals: 400.
	self assert: (TeaTestClient httpGet: '/unauthorized') code equals: 401.