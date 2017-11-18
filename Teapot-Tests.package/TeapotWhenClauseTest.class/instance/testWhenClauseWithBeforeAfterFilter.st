tests
testWhenClauseWithBeforeAfterFilter
	self 
		assert: (TeaTestClient httpGetString: 'beforeurl') 
		equals: 'before'.
	self 
		assert: (TeaTestClient httpGetString: 'afterurl') 
		equals: 'after'.