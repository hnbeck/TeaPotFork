tests
testRedirect
	| response |
	response := TeaTestClient httpGetNoRedirect: '/redirect'.
	self assert: response code equals: 302.
	self assert: (response headers at: 'Location') equals: '/target'.