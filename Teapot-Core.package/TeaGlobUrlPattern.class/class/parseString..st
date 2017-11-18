instance creation
parseString: aString
	^ self new setSegments: (self parseSegments: aString)