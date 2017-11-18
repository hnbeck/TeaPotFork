tests
testSetsContentType
	self 
		assert: (TeaTestClient httpGet: '/plain') contentType 
		equals: ZnMimeType textPlain