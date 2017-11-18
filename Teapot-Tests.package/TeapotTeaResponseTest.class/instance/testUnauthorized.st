tests
testUnauthorized
	| response |
	response := TeaTestClient httpGet: '/unauthorized'.
	self assert: response code equals: 401.
	self assert: response entity string equals: 'Unauthorized'.
	self assert: (response headers at: 'WWW-Authenticate') equals: 'tested unauthorized'.