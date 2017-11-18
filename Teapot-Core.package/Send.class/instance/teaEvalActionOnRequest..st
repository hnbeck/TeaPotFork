tea action
teaEvalActionOnRequest: aTeaRequest
	^ receiver 
		perform: selector 
		withEnoughArguments: { aTeaRequest }
	
