tea action
teaEvalActionOnException: anException request: aTeaRequest
	^ receiver 
		perform: selector 
		withEnoughArguments: { anException. aTeaRequest }
	
