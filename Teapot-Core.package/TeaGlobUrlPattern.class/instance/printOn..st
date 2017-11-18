printing
printOn: aStream
	aStream nextPut: $'.
	segments 
		do: [ :each | each printOn: aStream ]
		separatedBy: [ aStream nextPut: $/ ].
	aStream nextPut: $'.