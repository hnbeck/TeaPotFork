tests
testOk
	| response |
	response := TeaTestClient httpGet: '/ok'.
	self assert: response code equals: 200.
	self assert: response entity string equals: 'tested ok'.