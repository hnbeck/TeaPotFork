private
createSegment: aString atLast: aBoolean
	aString = '*' 
		ifTrue: [ ^ TeaWildcard atLast: aBoolean ].
	(aString beginsWith: '<')
		ifTrue: [ ^ TeaPlaceholder fromString: aString atLast: aBoolean ].
	^ TeaLiteral fromString: aString atLast: aBoolean