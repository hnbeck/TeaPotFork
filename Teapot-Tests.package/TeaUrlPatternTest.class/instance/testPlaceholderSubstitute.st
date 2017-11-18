tests
testPlaceholderSubstitute
	| placeholders |
	
	placeholders := self pattern: '/<id>/a/b' matches: '/123/a/b'.
	self assert: (placeholders at: #id) equals: '123'.
	
	placeholders := self pattern: '/a/<id>/b' matches: '/a/25/b'.
	self assert: (placeholders at: #id) equals: '25'.
	
	placeholders := self pattern: '/a/b/<id>' matches: '/a/b/xyz'.	
	self assert: (placeholders at: #id) equals: 'xyz'.		
