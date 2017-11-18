tests
testBadRequest
	| response |
	response := TeaTestClient httpGet: '/badrequest'.
	self assert: response code equals: 400.
	self assert: response entity string equals: 'Bad Request'