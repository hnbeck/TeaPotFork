url pattern segment
matches: urlSegments rest: adjacentPatterns placeholders: aDictionary
	^ adjacentPatterns first 
		matches: urlSegments allButFirst 
		rest: adjacentPatterns allButFirst 
		placeholders: aDictionary