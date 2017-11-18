private
mustBeValidPlaceholder: aString
	((aString beginsWith: '<') and: [ aString endsWith: '>' ])
		ifFalse: [ self error: 'Invalid placeholder name: ', aString ]