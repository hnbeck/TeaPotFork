instance creation
message: aSymbol to: anObject
	^ self new 
		setSelector: aSymbol 
		receiver: anObject