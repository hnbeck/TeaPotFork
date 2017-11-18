private
padUrlSegments: anUrl with: padding size: anInteger
	| urlSegments |
	urlSegments := anUrl segments isEmptyOrNil 
		ifTrue: [ OrderedCollection new ]
		ifFalse: [ self trimTrailingSlash: anUrl segments ].
	urlSegments size < segments size
		ifTrue: [ urlSegments := urlSegments forceTo: anInteger paddingWith: padding ].
	^ urlSegments