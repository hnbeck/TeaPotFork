tea action
teaEvalActionOnRequest: aTeaRequest response: aZnResponse
	^ receiver 
		perform: selector 
		withEnoughArguments: { aTeaRequest. aZnResponse }
	
