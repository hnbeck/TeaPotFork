tests
testAfterFilterCanModifyResponse
	| response |
	
	response := TeaTestClient httpGet: '/after/header-value'.
	self assert: response entity string equals: 'after-return'.
	self assert: (response headers at: 'header-key') equals: 'header-value'.
	
	response := TeaTestClient httpPost: '/after/notfound'.
	self assert: response code equals: 404.
	self assert: (response headers at: 'header-key') equals: 'notfound'.