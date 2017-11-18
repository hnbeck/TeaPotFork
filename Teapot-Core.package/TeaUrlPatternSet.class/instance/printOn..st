printing
printOn: aStream
	aStream nextPut: ${.
	patterns 
		do: [ :each | each printOn: aStream ]
		separatedBy: [ aStream nextPut: $. ].
	aStream nextPut: $}.