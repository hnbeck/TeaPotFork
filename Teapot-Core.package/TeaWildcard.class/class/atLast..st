instance creation
atLast: aBoolean
	^ aBoolean
		ifTrue: [ TeaWildcardStop new ]
		ifFalse: [ TeaWildcard new ]