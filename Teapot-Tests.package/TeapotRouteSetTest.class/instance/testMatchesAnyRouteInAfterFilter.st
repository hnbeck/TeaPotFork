tests
testMatchesAnyRouteInAfterFilter
	| response |
	response := TeaTestClient httpGet: '/a'.
	self assert: (response headers at: 'test') equals: 'ab'.
	
	response := TeaTestClient httpGet: '/b'.
	self assert: (response headers at: 'test') equals: 'ab'.
		
	response := TeaTestClient httpGet: '/c'.
	self assert: (response headers at: 'test' ifAbsent: nil) equals: nil.
