tests
testLongerPatternEndedWildcard
	self pattern: '/a/b/c/*' matches: '/a/b/c'.
	self pattern: '/1/2/3/*/*' matches: '/1/2/3'.
	
	self pattern: '/a/b/c/*' noMatch: '/a/b'.