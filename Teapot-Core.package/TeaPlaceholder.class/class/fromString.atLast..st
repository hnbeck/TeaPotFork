instance creation
fromString: aString atLast: aBoolean
	| spec typeConstraint key |
	self mustBeValidPlaceholder: aString.
	spec := aString allButFirst allButLast findTokens: ':'.
	key := spec first.
	typeConstraint := spec at: 2 ifAbsent: #IsObject.
	^ self 
		createPlaceholderName: key 
		typeConstraint: (Smalltalk at: typeConstraint asSymbol)
		atLast: aBoolean