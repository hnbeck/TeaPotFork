tests
testCreated
	| response |
	response := TeaTestClient httpGet: '/created'.
	self assert: response code equals: 201.
	self assert: response entity string equals: 'Created'.
	self assert: (response headers at: 'Location') equals: '/created'.