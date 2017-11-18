tests
testStreamingContent
	self 
		assert: (TeaTestClient httpGet: '/stream') contents asString 
		equals: self content
	