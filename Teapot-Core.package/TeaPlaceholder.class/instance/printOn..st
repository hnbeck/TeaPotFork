printing
printOn: aStream
	aStream 
		nextPut: $<;
		nextPutAll: placeholderName;
		nextPut: $>