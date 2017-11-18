url pattern segment
matches: urlSegments rest: adjacentPatterns placeholders: aDictionary
	(typeConstraint matchesTo: urlSegments first) 
		ifFalse: [ ^ false ].			
	aDictionary 
		at: placeholderName 
		put: (typeConstraint parseString: urlSegments first).				
	^ adjacentPatterns first 
		matches: urlSegments allButFirst 
		rest: adjacentPatterns allButFirst 
		placeholders: aDictionary