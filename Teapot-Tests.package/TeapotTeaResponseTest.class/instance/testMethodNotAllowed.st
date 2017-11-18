tests
testMethodNotAllowed
	| response |
	response := TeaTestClient httpGet: '/notallowed'.
	self assert: response code equals: 405.