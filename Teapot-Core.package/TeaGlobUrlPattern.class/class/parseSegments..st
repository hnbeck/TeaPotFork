private
parseSegments: aString
	| tokens |
	tokens := aString findTokens: '/'.
	^ tokens collectWithIndex: [ :each :idx | 
		self createSegment: each atLast: idx = tokens size ]