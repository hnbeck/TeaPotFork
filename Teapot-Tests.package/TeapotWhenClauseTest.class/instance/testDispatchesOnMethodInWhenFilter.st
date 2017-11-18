tests
testDispatchesOnMethodInWhenFilter
	self 
		assert: (TeaTestClient httpGetString: '/when') 
		equals: 'get'.	
	self 
		assert: (TeaTestClient httpPutString: '/when/pval') 
		equals: 'param-dispatch'.
	self 
		assert: (TeaTestClient httpPostString: '/when') 
		equals: 'post'.
	self 
		assert: (TeaTestClient httpDeleteString: '/when') 
		equals: 'unfiltered'.
		
	self assert: (TeaTestClient httpGet: '/never') isNotFound.