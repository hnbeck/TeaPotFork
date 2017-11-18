url matcher
matchesUrl: anUrl placeholders: aDictionary
	| urlSegments |
	urlSegments := self padUrlSegments: anUrl with: TeaPadding size: segments size.
	segments isEmpty
		ifTrue: [ ^ urlSegments isEmpty ].
	^ segments first 
		matches: urlSegments 
		rest: segments allButFirst 
		placeholders: aDictionary