tests
testWildcards
	self pattern: '/*/1/2' matches: '/0/1/2'.
	self pattern: '/a/b/*' matches: '/a/b/c'.
	self pattern: '/x/*/z' matches: '/x/y/z'.
	
	self pattern: '/*/1/2' noMatch: '/a/1/z'.	
	self pattern: '/a/b/*' noMatch: '/a/1/z'.	
	self pattern: '/x/*/z' noMatch: '/a/1/z'.					

	