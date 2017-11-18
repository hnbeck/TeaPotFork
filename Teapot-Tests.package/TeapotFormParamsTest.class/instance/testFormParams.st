tests
testFormParams
	| result |
	result := ZnEasy post: 'http://localhost:1701/form' data: (ZnApplicationFormUrlEncodedEntity new 
		at: 'foo' put: 'abc'; 
		at: 'bar' put: '123'; 
		yourself).

	self assert: result entity string equals: 'abc-123'.