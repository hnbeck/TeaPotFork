tests
testServerError
	| response |
	response := TeaTestClient httpGet: '/servererror'.
	self assert: response code equals: 500.
	self assert: response entity string equals: 'tested server error'