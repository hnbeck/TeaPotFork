tests
testDefault
	self 
		assert: (TeaTestClient httpGet: '/default') contentType 
		equals: ZnMimeType textPlain