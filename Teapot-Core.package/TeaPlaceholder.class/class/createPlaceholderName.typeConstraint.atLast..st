private
createPlaceholderName: key typeConstraint: aTypeConstraint atLast: aBoolean
	| class |
	class := aBoolean
		ifTrue: [ TeaPlaceholderStop ]
		ifFalse: [ TeaPlaceholder ].
	^ class new 
		setPlaceholderName: key 
		typeConstraint: aTypeConstraint