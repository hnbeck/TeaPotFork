tests
testNoWildcard	
	self pattern: '/aa' matches: '/aa'.
	self pattern: '/aa' noMatch: '/bb'.