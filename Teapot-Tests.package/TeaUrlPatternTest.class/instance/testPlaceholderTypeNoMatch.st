tests
testPlaceholderTypeNoMatch
	self pattern: '/<id:IsInteger>' noMatch: '/foobar'.	
	self pattern: '/<id:IsNumber>' noMatch: '/foobar'.
	self pattern: '/<id:IsInteger>' noMatch: '/12.3'.

	
	