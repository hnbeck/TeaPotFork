url matcher
matchesUrl: anUrl placeholders: aDictionary
	^ patterns anySatisfy: [ :each | each matchesUrl: anUrl placeholders: aDictionary ]