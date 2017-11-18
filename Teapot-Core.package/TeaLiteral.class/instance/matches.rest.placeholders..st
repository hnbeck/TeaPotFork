url pattern segment
matches: urlSegments rest: adjacentPatterns placeholders: aDictionary
	^ literal = urlSegments first and: 
		[ adjacentPatterns first 
			matches: urlSegments allButFirst 
			rest: adjacentPatterns allButFirst 
			placeholders: aDictionary ]