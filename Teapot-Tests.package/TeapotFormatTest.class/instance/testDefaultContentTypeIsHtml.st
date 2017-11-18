tests
testDefaultContentTypeIsHtml
	self 
		assert: (TeaTestClient httpGet: '/default') contentType 
		equals: ZnMimeType textHtml