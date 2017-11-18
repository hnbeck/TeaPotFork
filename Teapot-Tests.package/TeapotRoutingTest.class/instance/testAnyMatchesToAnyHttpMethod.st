tests
testAnyMatchesToAnyHttpMethod
 	self assert: (TeaTestClient httpGetString: 'any') equals: 'any'.
 	self assert: (TeaTestClient httpPostString: 'any') equals: 'any'.
 	self assert: (TeaTestClient httpPutString: 'any') equals: 'any'.	
 	self assert: (TeaTestClient httpDeleteString: 'any') equals: 'any'.