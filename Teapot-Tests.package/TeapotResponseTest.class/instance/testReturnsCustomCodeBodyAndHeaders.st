tests
testReturnsCustomCodeBodyAndHeaders
	| response |
	response := TeaTestClient httpGet: '/test400'.
	self assert: response entity string equals: 'malformed input'.
	self assert: response code equals: 400.
	self assert: (response headers at: 'my-header') equals: 'my-value'.