tests
testNotFound
	| response |
	response := TeaTestClient httpGet: '/notfound'.
	self assert: response code equals: 404.