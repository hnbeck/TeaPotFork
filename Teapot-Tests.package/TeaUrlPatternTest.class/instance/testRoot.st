tests
testRoot
	self pattern: '/' matches: '/'.	
	self pattern: '/' noMatch: '/a'.	
	self pattern: '/a' noMatch: '/'.
	self pattern: '/a/b' noMatch: '/'.	