instance creation
fromString: aString atLast: aBoolean
	| class |
	class := aBoolean ifTrue: [ TeaLiteralStop ] ifFalse: [ TeaLiteral ].
	^ class new setLiteral: aString