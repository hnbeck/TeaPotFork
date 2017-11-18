tests
testTransformingErroHandlerResponse
	self assert: (TeaTestClient httpGetString: '/keynotfound') equals: 'XLII'.