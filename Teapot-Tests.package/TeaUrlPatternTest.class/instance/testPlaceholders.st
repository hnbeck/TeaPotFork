tests
testPlaceholders
	self pattern: '/<id>/a/b' matches: '/1/a/b'.
	self pattern: '/a/<id>/b' matches: '/a/2/b'.
	self pattern: '/a/b/<id>' matches: '/a/b/1'.	
	
	self pattern: '/<id>/a/b' noMatch: '/1/a/c'.
	self pattern: '/a/<id>/b' noMatch: '/a/2/c'.
	self pattern: '/a/b/<id>' noMatch: '/a/c/1'.