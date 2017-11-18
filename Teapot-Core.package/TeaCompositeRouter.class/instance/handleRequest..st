zn delegate
handleRequest: aZnRequest
	| response |
	^ [ self evaluateBeforeFilters: aZnRequest.
	     response := self evaluateRouters: aZnRequest.
	     self evaluateAfterFilters: aZnRequest response: response.
	     response	
	   ] on: Exception 
	     do: [ :ex | self exceptionOccurred: ex request: aZnRequest ]