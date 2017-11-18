tests
testNotModified
	| response |
	response := TeaTestClient httpGet: '/notmodified'.
	self assert: response code equals: 304.