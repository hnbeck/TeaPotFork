tests
testShorterPatternEndedWildcard	
 	self pattern: '/a/*' matches: '/a/b/c'.
	self pattern: '/*' matches: '/1/2/3'.
	
 	self pattern: '/a/*' noMatch: '/b/b/c'.
	self pattern: '/a/b' noMatch: '/a/b/c'.	