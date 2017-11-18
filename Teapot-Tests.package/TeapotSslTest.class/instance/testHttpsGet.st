tests
testHttpsGet
	self skip.
	"| result |
	result := ZnEasy get: 'https://localhost:1443/ssl'.
	self assert: result equals: 'secure'."