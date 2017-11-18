tests
testAuthentication
	self assert: (TeaTestClient httpGetString: '/secure?user=admin&pass=****') equals: 'protected'.
	self assert: (TeaTestClient httpGetString: '/secure/1/2/3?user=admin&pass=****') equals: 'protected'.
		
	self assert: (TeaTestClient httpGet: '/secure?user=user01&pass=****') code equals: 403.
	self assert: (TeaTestClient httpGet: '/secure/1/2/3?user=user02&pass=****') code equals: 403.	
	
	self assert: (TeaTestClient httpPostString: '/public?user=any') equals: 'public'.