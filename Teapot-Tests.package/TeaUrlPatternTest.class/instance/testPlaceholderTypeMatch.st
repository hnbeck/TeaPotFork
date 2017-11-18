tests
testPlaceholderTypeMatch
	| placeholders |
	placeholders := self pattern: '/<id:IsInteger>' matches: '/12'.
	self assert: (placeholders at: #id) equals: 12.
	
	placeholders := self pattern: '/<id:IsInteger>/abc' matches: '/-34/abc'.
	self assert: (placeholders at: #id) equals: -34.
	
	placeholders := self pattern: '/<float:IsNumber>/<int:IsNumber>' matches: '/3.14/3'.
	self assert: (placeholders at: #float) equals: 3.14.
	self assert: (placeholders at: #int) equals: 3.	