tests
testFormParamsNotFound
	| result |
	result := ZnEasy post: 'http://localhost:1701/form' data: (ZnApplicationFormUrlEncodedEntity new 
		at: 'invalid1' put: 'abc'; 
		at: 'invalid2' put: '123'; 
		yourself).

	self assert: result entity string equals: 'no such param'