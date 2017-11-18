tests
testArbitraryContentType
	self 
		assert: (TeaTestClient httpGet: '/xml') contentType 
		equals: (ZnMimeType applicationXml charSet: 'utf-8'; yourself)