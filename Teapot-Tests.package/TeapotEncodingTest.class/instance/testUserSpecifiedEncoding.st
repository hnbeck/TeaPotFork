tests
testUserSpecifiedEncoding
	| response |
	response := TeaTestClient httpGet: '/enc'.
	self 
		assert: response entity string
		equals: 'árvíztűrő tükörfúrógép'.		
	self 
		assert: response contentType charSet
		equals: 'iso-8859-2'