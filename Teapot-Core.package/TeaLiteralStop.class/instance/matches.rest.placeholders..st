url pattern segment
matches: urlSegments rest: adjacentPatterns placeholders: aDictionary
	^ urlSegments size = 1 and: [ literal = urlSegments first ]