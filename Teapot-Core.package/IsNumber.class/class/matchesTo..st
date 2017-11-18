type constraint
matchesTo: aString
	Number readFrom: aString ifFail: [ ^false ].
	^ true