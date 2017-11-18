tests
testOverride
	self 
		assert: (TeaTestClient httpGet: '/html') contentType 
		equals: ZnMimeType textHtml