tests
testMultipleBeforeHandlers
	TeaTestClient httpGet: '/secure?user=admin&pass=****'.
	TeaTestClient httpGet: '/secure/1/2/3?user=admin&pass=****'.	
	TeaTestClient httpGet: '/secure?user=user01&pass=****'. "403 before second filter"
	TeaTestClient httpPost: '/public?user=pubuser'.		
		
	self assert: log asArray equals: #(admin admin pubuser).